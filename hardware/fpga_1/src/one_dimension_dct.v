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
    localparam STATE_INPUT_COLLECTION = 2'd0;
    localparam STATE_COMPUTATION = 2'd1;
    localparam STATE_OUTPUT_TRANSMISSION = 2'd2;
    reg [1:0] r_core_state;
    // Input AXI-Stream
    reg [2:0] r_curr_input_col; // Tracks the current index of the matrix that will be written into, since Block Size is 8 3 bits are needed to represent the columns
    // DCT
    wire signed [VALUE_WIDTH-1:0] r_a_values [0:BLOCK_SIZE-1][0:3]; // aml = a_values[l][m]
    (* ram_style = "registers" *) reg signed [VALUE_WIDTH-1:0] r_input_pixels [0:BLOCK_SIZE-1];
    // wire [VALUE_WIDTH-1:0] w_u_values [0:BLOCK_SIZE-1][0:3]; //um_row = u_values[row][m]
    wire signed [2*VALUE_WIDTH-1:0] w_output_coefficients [0:BLOCK_SIZE-1];
    // Output AXI-Stream
    reg signed [AXIS_DATA_WIDTH-1:0] r_o_axis_TDATA;
    reg r_o_axis_TLAST;
    reg [2:0] r_next_output_col; // Since Block Size is 8 3 bits are needed to represent the columns

    // Assignments
    // Input AXI-Stream
    assign o_axis_TREADY = (r_core_state == STATE_INPUT_COLLECTION) ? 1 : 0;
    //DCT
    generate
        genvar L;
        for (L = 0; L < BLOCK_SIZE; L = L + 1)
        begin: yL
            if (L % 2 == 0)
            begin
                assign w_output_coefficients[L] = 
                  ((r_a_values[L][0] * (r_input_pixels[0] + r_input_pixels[BLOCK_SIZE-1-0])) >>> SCALE)
                + ((r_a_values[L][1] * (r_input_pixels[1] + r_input_pixels[BLOCK_SIZE-1-1])) >>> SCALE)
                + ((r_a_values[L][2] * (r_input_pixels[2] + r_input_pixels[BLOCK_SIZE-1-2])) >>> SCALE)
                + ((r_a_values[L][3] * (r_input_pixels[3] + r_input_pixels[BLOCK_SIZE-1-3])) >>> SCALE)
                ;
            end
            else
            begin
                assign w_output_coefficients[L] = 
                  ((r_a_values[L][0] * (r_input_pixels[0] - r_input_pixels[BLOCK_SIZE-1-0])) >>> SCALE)
                + ((r_a_values[L][1] * (r_input_pixels[1] - r_input_pixels[BLOCK_SIZE-1-1])) >>> SCALE)
                + ((r_a_values[L][2] * (r_input_pixels[2] - r_input_pixels[BLOCK_SIZE-1-2])) >>> SCALE)
                + ((r_a_values[L][3] * (r_input_pixels[3] - r_input_pixels[BLOCK_SIZE-1-3])) >>> SCALE)
                ;
            end
        end
    endgenerate
    // Output AXI-Stream
    assign o_axis_TVALID = (r_core_state == STATE_OUTPUT_TRANSMISSION) ? 1 : 0;
    assign o_axis_TDATA = r_o_axis_TDATA;
    assign o_axis_TLAST = r_o_axis_TLAST;

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
            r_core_state <= STATE_INPUT_COLLECTION;
            // Input AXI-Stream
            r_curr_input_col <= 0;
            // DCT
            // Resetting Input matrix
            r_input_pixels[0] <= 0;
            r_input_pixels[1] <= 0;
            r_input_pixels[2] <= 0;
            r_input_pixels[3] <= 0;
            r_input_pixels[4] <= 0;
            r_input_pixels[5] <= 0;
            r_input_pixels[6] <= 0;
            r_input_pixels[7] <= 0;
            // Output AXI-Stream
            r_o_axis_TDATA <= 0;
            r_o_axis_TLAST <= 1'b0;
            r_next_output_col <= 0;
        end
        else
        begin
            case (r_core_state)
                STATE_INPUT_COLLECTION:
                begin
                    if (i_axis_TVALID == 1'b1)
                    begin
                        r_input_pixels[r_curr_input_col] <= i_axis_TDATA[VALUE_WIDTH-1:0];
                        // r_o_axis_TREADY <= 1'b0;
                        if ((r_curr_input_col == BLOCK_SIZE-1) || i_axis_TLAST == 1'b1)
                        begin
                            r_curr_input_col <= 0;
                            r_core_state <= STATE_COMPUTATION;
                        end
                        else
                        begin
                            r_curr_input_col <= r_curr_input_col + 1;
                            r_core_state <= r_core_state;
                        end
                    end
                    else
                    begin
                        r_input_pixels[r_curr_input_col] <= r_input_pixels[r_curr_input_col];
                        r_curr_input_col <= r_curr_input_col;
                        r_core_state <= r_core_state;
                    end
                end
                STATE_COMPUTATION:
                begin
                    r_o_axis_TDATA <= w_output_coefficients[0][AXIS_DATA_WIDTH-1:0];
                    r_next_output_col <= 1;
                    r_core_state <= STATE_OUTPUT_TRANSMISSION;
                end
                STATE_OUTPUT_TRANSMISSION:
                begin
                    if (i_axis_TREADY == 1'b1 && r_o_axis_TLAST == 1'b1)
                    begin
                        r_o_axis_TDATA <= 0;
                        r_o_axis_TLAST <= 1'b0;
                        r_next_output_col <= 0;
                        // Resetting Input matrix
                        r_input_pixels[0] <= 0;
                        r_input_pixels[1] <= 0;
                        r_input_pixels[2] <= 0;
                        r_input_pixels[3] <= 0;
                        r_input_pixels[4] <= 0;
                        r_input_pixels[5] <= 0;
                        r_input_pixels[6] <= 0;
                        r_input_pixels[7] <= 0;
                        r_core_state <= STATE_INPUT_COLLECTION;
                    end
                    else if (i_axis_TREADY == 1'b1)
                    begin
                        r_o_axis_TDATA <= w_output_coefficients[r_next_output_col][AXIS_DATA_WIDTH-1:0]; // Can take 24 bits because we have arithmetically shifted (negatives stay negative, positives stay positive)
                        if (r_next_output_col == BLOCK_SIZE-1)
                        begin
                            r_o_axis_TLAST <= 1'b1;
                            r_next_output_col <= 0;
                        end
                        else
                        begin
                            r_o_axis_TLAST <= 1'b0;
                            r_next_output_col <= r_next_output_col + 1;
                        end
                        r_core_state <= r_core_state;
                    end
                    else
                    begin
                        r_o_axis_TDATA <= r_o_axis_TDATA;
                        r_o_axis_TLAST <= r_o_axis_TLAST;
                        r_next_output_col <= r_next_output_col;
                        r_core_state <= r_core_state;
                    end
                end
            endcase
        end
    end
endmodule