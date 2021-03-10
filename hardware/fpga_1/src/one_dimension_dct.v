`timescale 1ns / 1ps
(* use_dsp = "no" *) module one_dimension_dct
    #(
        parameter BLOCK_SIZE = 8,
        parameter VALUE_WIDTH = 17, // Total width associated with each value
        parameter SCALE = 7, // Int to Fixed Conversion = multiply by 2^7
        parameter AXIS_DATA_WIDTH = 8*((VALUE_WIDTH - 1)/8 + 1)
    )
    (
        input i_clk,
        input i_aresetn,
        // Input AXI-Stream
        input i_axis_TVALID,
        output o_axis_TREADY,
        input [AXIS_DATA_WIDTH-1:0] i_axis_TDATA,
        input i_axis_TLAST,
        // Output AXI-Stream
        output o_axis_TVALID,
        input i_axis_TREADY,
        output [AXIS_DATA_WIDTH-1:0] o_axis_TDATA,
        output o_axis_TLAST
    );
    
    // Declarations
    reg r_busy;
    // Input AXI-Stream
    reg r_o_axis_TREADY;
    reg [2:0] r_curr_input_row; // Tracks the current index of the matrix that will be written into
    reg [2:0] r_curr_input_col; // Since Block Size is 8 3 bits are needed to represent the rows and columns
    // DCT
    wire signed [VALUE_WIDTH-1:0] r_a_values [0:BLOCK_SIZE-1][0:3]; // aml = a_values[l][m]
    (* ram_style = "registers" *) reg signed [VALUE_WIDTH-1:0] r_input_pixels [0:BLOCK_SIZE-1][0:BLOCK_SIZE-1];
    // wire [VALUE_WIDTH-1:0] w_u_values [0:BLOCK_SIZE-1][0:3]; //um_row = u_values[row][m]
    wire signed [2*VALUE_WIDTH-1:0] w_output_coefficients [0:BLOCK_SIZE-1][0:BLOCK_SIZE-1];
    // Output AXI-Stream
    reg r_o_axis_TVALID;
    reg signed [AXIS_DATA_WIDTH-1:0] r_o_axis_TDATA;
    reg r_o_axis_TLAST;
    reg [2:0] r_next_output_row; // Tracks the current index of the matrix that will be written out
    reg [2:0] r_next_output_col; // Since Block Size is 8 3 bits are needed to represent the columns

    // Assignments
    // Input AXI-Stream
    assign o_axis_TREADY = r_o_axis_TREADY;
    //DCT
    generate
        genvar row;
        for (row = 0; row < BLOCK_SIZE; row = row + 1)
        begin: genRow
            genvar L;
            for (L = 0; L < BLOCK_SIZE; L = L + 1)
            begin: yL
                if (L % 2 == 0)
                begin
                    assign w_output_coefficients[row][L] = 
                      ((r_a_values[L][0] * (r_input_pixels[row][0] + r_input_pixels[row][BLOCK_SIZE-1-0])) >>> SCALE)
                    + ((r_a_values[L][1] * (r_input_pixels[row][1] + r_input_pixels[row][BLOCK_SIZE-1-1])) >>> SCALE)
                    + ((r_a_values[L][2] * (r_input_pixels[row][2] + r_input_pixels[row][BLOCK_SIZE-1-2])) >>> SCALE)
                    + ((r_a_values[L][3] * (r_input_pixels[row][3] + r_input_pixels[row][BLOCK_SIZE-1-3])) >>> SCALE)
                    ;
                end
                else
                begin
                    assign w_output_coefficients[row][L] = 
                      ((r_a_values[L][0] * (r_input_pixels[row][0] - r_input_pixels[row][BLOCK_SIZE-1-0])) >>> SCALE)
                    + ((r_a_values[L][1] * (r_input_pixels[row][1] - r_input_pixels[row][BLOCK_SIZE-1-1])) >>> SCALE)
                    + ((r_a_values[L][2] * (r_input_pixels[row][2] - r_input_pixels[row][BLOCK_SIZE-1-2])) >>> SCALE)
                    + ((r_a_values[L][3] * (r_input_pixels[row][3] - r_input_pixels[row][BLOCK_SIZE-1-3])) >>> SCALE)
                    ;
                end
            end
        end
    endgenerate
    // Output AXI-Stream
    assign o_axis_TVALID = r_o_axis_TVALID;
    assign o_axis_TDATA = r_o_axis_TDATA;
    assign o_axis_TLAST = r_o_axis_TLAST;
    // assign o_axis_TLAST = (r_next_output_row == BLOCK_SIZE-1 && r_next_output_col == BLOCK_SIZE-1) ? 1'b1 : 1'b0;

    // TODO: See if this synthesizes
    // a values for y0
    assign r_a_values[0][0] = 'd45;
    assign r_a_values[0][1] = 'd45;
    assign r_a_values[0][2] = 'd45;
    assign r_a_values[0][3] = 'd45;

    // a values for y1
    assign r_a_values[1][0] = 'd63;
    assign r_a_values[1][1] = 'd53;
    assign r_a_values[1][2] = 'd36;
    assign r_a_values[1][3] = 'd12;

    // a values for y2
    assign r_a_values[2][0] = 'd59;
    assign r_a_values[2][1] = 'd24;
    assign r_a_values[2][2] = 'b11111111111101000; // -24
    assign r_a_values[2][3] = 'b11111111111000101; // -59
    
    // a values for y3
    assign r_a_values[3][0] = 'd53;
    assign r_a_values[3][1] = 'b11111111111110100; // -12
    assign r_a_values[3][2] = 'b11111111111000001; // -63
    assign r_a_values[3][3] = 'b11111111111011100; // -36

    // a values for y4
    assign r_a_values[4][0] = 'd45;
    assign r_a_values[4][1] = 'b11111111111010011;
    assign r_a_values[4][2] = 'b11111111111010011;
    assign r_a_values[4][3] = 'd45;

    // a values for y5
    assign r_a_values[5][0] = 'd36;
    assign r_a_values[5][1] = 'b11111111111000001; // -63
    assign r_a_values[5][2] = 'd12;
    assign r_a_values[5][3] = 'd53;

    // a values for y6
    assign r_a_values[6][0] = 'd24;
    assign r_a_values[6][1] = 'b11111111111000101; // -59
    assign r_a_values[6][2] = 'd59;
    assign r_a_values[6][3] = 'b11111111111101000; // -24

    // a values for y7
    assign r_a_values[7][0] = 'd12;
    assign r_a_values[7][1] = 'b11111111111011100; // -36
    assign r_a_values[7][2] = 'd53;
    assign r_a_values[7][3] = 'b11111111111000001; // -63
    
    always @ (posedge i_clk)
    begin
        if (i_aresetn == 1'b0)
        begin
            // Input AXI-Stream
            r_o_axis_TREADY <= 1'b0;
            r_curr_input_row <= 0;
            r_curr_input_col <= 0;
            // DCT
            r_busy <= 1'b0;
            // Resetting Input matrix
            r_input_pixels[0][0] <= 0;
            r_input_pixels[0][1] <= 0;
            r_input_pixels[0][2] <= 0;
            r_input_pixels[0][3] <= 0;
            r_input_pixels[0][4] <= 0;
            r_input_pixels[0][5] <= 0;
            r_input_pixels[0][6] <= 0;
            r_input_pixels[0][7] <= 0;
            r_input_pixels[1][0] <= 0;
            r_input_pixels[1][1] <= 0;
            r_input_pixels[1][2] <= 0;
            r_input_pixels[1][3] <= 0;
            r_input_pixels[1][4] <= 0;
            r_input_pixels[1][5] <= 0;
            r_input_pixels[1][6] <= 0;
            r_input_pixels[1][7] <= 0;
            r_input_pixels[2][0] <= 0;
            r_input_pixels[2][1] <= 0;
            r_input_pixels[2][2] <= 0;
            r_input_pixels[2][3] <= 0;
            r_input_pixels[2][4] <= 0;
            r_input_pixels[2][5] <= 0;
            r_input_pixels[2][6] <= 0;
            r_input_pixels[2][7] <= 0;
            r_input_pixels[3][0] <= 0;
            r_input_pixels[3][1] <= 0;
            r_input_pixels[3][2] <= 0;
            r_input_pixels[3][3] <= 0;
            r_input_pixels[3][4] <= 0;
            r_input_pixels[3][5] <= 0;
            r_input_pixels[3][6] <= 0;
            r_input_pixels[3][7] <= 0;
            r_input_pixels[4][0] <= 0;
            r_input_pixels[4][1] <= 0;
            r_input_pixels[4][2] <= 0;
            r_input_pixels[4][3] <= 0;
            r_input_pixels[4][4] <= 0;
            r_input_pixels[4][5] <= 0;
            r_input_pixels[4][6] <= 0;
            r_input_pixels[4][7] <= 0;
            r_input_pixels[5][0] <= 0;
            r_input_pixels[5][1] <= 0;
            r_input_pixels[5][2] <= 0;
            r_input_pixels[5][3] <= 0;
            r_input_pixels[5][4] <= 0;
            r_input_pixels[5][5] <= 0;
            r_input_pixels[5][6] <= 0;
            r_input_pixels[5][7] <= 0;
            r_input_pixels[6][0] <= 0;
            r_input_pixels[6][1] <= 0;
            r_input_pixels[6][2] <= 0;
            r_input_pixels[6][3] <= 0;
            r_input_pixels[6][4] <= 0;
            r_input_pixels[6][5] <= 0;
            r_input_pixels[6][6] <= 0;
            r_input_pixels[6][7] <= 0;
            r_input_pixels[7][0] <= 0;
            r_input_pixels[7][1] <= 0;
            r_input_pixels[7][2] <= 0;
            r_input_pixels[7][3] <= 0;
            r_input_pixels[7][4] <= 0;
            r_input_pixels[7][5] <= 0;
            r_input_pixels[7][6] <= 0;
            r_input_pixels[7][7] <= 0;
            // Output AXI-Stream
            r_o_axis_TVALID <= 1'b0;
            r_o_axis_TDATA <= 0;
            r_o_axis_TLAST <= 1'b0;
            r_next_output_row <= 0;
            r_next_output_col <= 0;
        end
        else
        begin
            if (i_axis_TVALID == 1'b1 && r_o_axis_TREADY == 1'b1 )
            begin
                r_input_pixels[r_curr_input_row][r_curr_input_col] <= i_axis_TDATA[VALUE_WIDTH-1:0];
                r_o_axis_TREADY <= 1'b0;
                if ((r_curr_input_row == BLOCK_SIZE-1 && r_curr_input_col == BLOCK_SIZE-1) || i_axis_TLAST == 1'b1)
                begin
                    r_busy <= 1'b1;
                    r_curr_input_row <= 0;
                    r_curr_input_col <= 0;
                    r_o_axis_TVALID <= 1'b1;
                    r_o_axis_TDATA <= w_output_coefficients[0][0];
                    r_next_output_col <= 1;
                end
                else if (r_curr_input_col == BLOCK_SIZE-1)
                begin
                    r_busy <= 1'b0;
                    r_curr_input_row <= r_curr_input_row + 1;
                    r_curr_input_col <= 0;
                    r_next_output_col <= 0;
                end
                else
                begin
                    r_busy <= 1'b0;
                    r_curr_input_row <= r_curr_input_row;
                    r_curr_input_col <= r_curr_input_col + 1;
                    r_next_output_col <= 0;
                end
            end
            else if (i_axis_TVALID == 1'b1 && r_busy != 1'b1)
            begin
                r_o_axis_TREADY <= 1'b1;
            end
            else if (r_busy == 1'b1)
            begin
                if (i_axis_TREADY == 1'b1 && r_o_axis_TLAST == 1'b1)
                begin
                    r_o_axis_TVALID <= 1'b0;
                    r_o_axis_TDATA <= 0;
                    r_o_axis_TLAST <= 1'b0;
                    r_next_output_row <= 0;
                    r_next_output_col <= 0;
                    r_busy <= 1'b0;
                    // Resetting Input matrix
                    r_input_pixels[0][0] <= 0;
                    r_input_pixels[0][1] <= 0;
                    r_input_pixels[0][2] <= 0;
                    r_input_pixels[0][3] <= 0;
                    r_input_pixels[0][4] <= 0;
                    r_input_pixels[0][5] <= 0;
                    r_input_pixels[0][6] <= 0;
                    r_input_pixels[0][7] <= 0;
                    r_input_pixels[1][0] <= 0;
                    r_input_pixels[1][1] <= 0;
                    r_input_pixels[1][2] <= 0;
                    r_input_pixels[1][3] <= 0;
                    r_input_pixels[1][4] <= 0;
                    r_input_pixels[1][5] <= 0;
                    r_input_pixels[1][6] <= 0;
                    r_input_pixels[1][7] <= 0;
                    r_input_pixels[2][0] <= 0;
                    r_input_pixels[2][1] <= 0;
                    r_input_pixels[2][2] <= 0;
                    r_input_pixels[2][3] <= 0;
                    r_input_pixels[2][4] <= 0;
                    r_input_pixels[2][5] <= 0;
                    r_input_pixels[2][6] <= 0;
                    r_input_pixels[2][7] <= 0;
                    r_input_pixels[3][0] <= 0;
                    r_input_pixels[3][1] <= 0;
                    r_input_pixels[3][2] <= 0;
                    r_input_pixels[3][3] <= 0;
                    r_input_pixels[3][4] <= 0;
                    r_input_pixels[3][5] <= 0;
                    r_input_pixels[3][6] <= 0;
                    r_input_pixels[3][7] <= 0;
                    r_input_pixels[4][0] <= 0;
                    r_input_pixels[4][1] <= 0;
                    r_input_pixels[4][2] <= 0;
                    r_input_pixels[4][3] <= 0;
                    r_input_pixels[4][4] <= 0;
                    r_input_pixels[4][5] <= 0;
                    r_input_pixels[4][6] <= 0;
                    r_input_pixels[4][7] <= 0;
                    r_input_pixels[5][0] <= 0;
                    r_input_pixels[5][1] <= 0;
                    r_input_pixels[5][2] <= 0;
                    r_input_pixels[5][3] <= 0;
                    r_input_pixels[5][4] <= 0;
                    r_input_pixels[5][5] <= 0;
                    r_input_pixels[5][6] <= 0;
                    r_input_pixels[5][7] <= 0;
                    r_input_pixels[6][0] <= 0;
                    r_input_pixels[6][1] <= 0;
                    r_input_pixels[6][2] <= 0;
                    r_input_pixels[6][3] <= 0;
                    r_input_pixels[6][4] <= 0;
                    r_input_pixels[6][5] <= 0;
                    r_input_pixels[6][6] <= 0;
                    r_input_pixels[6][7] <= 0;
                    r_input_pixels[7][0] <= 0;
                    r_input_pixels[7][1] <= 0;
                    r_input_pixels[7][2] <= 0;
                    r_input_pixels[7][3] <= 0;
                    r_input_pixels[7][4] <= 0;
                    r_input_pixels[7][5] <= 0;
                    r_input_pixels[7][6] <= 0;
                    r_input_pixels[7][7] <= 0;
                end
                else if (i_axis_TREADY == 1'b1)
                begin
                    r_o_axis_TVALID <= r_o_axis_TVALID;
                    r_o_axis_TDATA <= w_output_coefficients[r_next_output_row][r_next_output_col][AXIS_DATA_WIDTH-1:0]; // Can take 24 bits because we have arithmetically shifted (negatives stay negative, positives stay positive)
                    if (r_next_output_row == BLOCK_SIZE-1 && r_next_output_col == BLOCK_SIZE-1)
                    begin
                        r_o_axis_TLAST <= 1'b1;
                        r_next_output_row <= 0;
                        r_next_output_col <= 0;
                    end
                    else if (r_next_output_col == BLOCK_SIZE-1)
                    begin
                        r_o_axis_TLAST <= 1'b0;
                        r_next_output_row <= r_next_output_row + 1;
                        r_next_output_col <= 0;
                    end
                    else
                    begin
                        r_o_axis_TLAST <= 1'b0;
                        r_next_output_row <= r_next_output_row;
                        r_next_output_col <= r_next_output_col + 1;
                    end
                end
                else
                begin
                    r_o_axis_TVALID <= r_o_axis_TVALID;
                    r_o_axis_TDATA <= r_o_axis_TDATA;
                    r_o_axis_TLAST <= r_o_axis_TLAST;
                    r_next_output_row <= r_next_output_row;
                    r_next_output_col <= r_next_output_col;
                end
            end
        end
    end
endmodule
