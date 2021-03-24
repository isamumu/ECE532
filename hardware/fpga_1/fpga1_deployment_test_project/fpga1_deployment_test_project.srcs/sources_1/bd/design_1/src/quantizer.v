`timescale 1ns / 1ps
/*
    Current approach:
    - Take in all 64 values
    - Perform all quantizations
    - Output all 64 values
    Other approaches:
    - Take in 1 row, quantize, output 1 row
*/
module quantizer
    #(
        parameter BLOCK_SIZE = 8,
        parameter INPUT_VALUE_WIDTH = 17, // Total width associated with each value
        parameter SCALE = 7, // Int to Fixed Conversion = multiply by 2^7
        parameter OUTPUT_VALUE_WIDTH = INPUT_VALUE_WIDTH - SCALE, // When we quantize we eliminate the decimal portion, going back to integers
        parameter INPUT_AXIS_DATA_WIDTH = 8*((INPUT_VALUE_WIDTH - 1)/8 + 1),
        parameter OUTPUT_AXIS_DATA_WIDTH = 8*((OUTPUT_VALUE_WIDTH - 1)/8 + 1)
    )
    (
        input i_clk,
        input i_aresetn,
        // Input AXI-Stream
        input i_axis_TVALID,
        output o_axis_TREADY,
        input [INPUT_AXIS_DATA_WIDTH-1:0] i_axis_TDATA,
        input i_axis_TLAST,
        // Output AXI-Stream
        output o_axis_TVALID,
        input i_axis_TREADY,
        output [OUTPUT_AXIS_DATA_WIDTH-1:0] o_axis_TDATA,
        output o_axis_TLAST
    );

    // Declarations
    localparam STATE_INPUT_COLLECTION = 2'd0;
    localparam STATE_COMPUTATION = 2'd1;
    localparam STATE_OUTPUT_TRANSMISSION = 2'd2;
    reg [1:0] r_core_state;
    integer i;
    integer j;
    // Declarations - Input AXI-Stream
    reg [2:0] r_curr_input_row;
    reg [2:0] r_curr_input_col;
    (* ram_style = "registers" *) reg signed [INPUT_VALUE_WIDTH-1:0] r_input_coeffs [0:BLOCK_SIZE-1] [0:BLOCK_SIZE-1];
    // Declarations - Quantization
    reg [2:0] r_curr_quant_row;
    wire signed [INPUT_VALUE_WIDTH-1:0] w_quantization_table [0:BLOCK_SIZE-1] [0:BLOCK_SIZE-1]; // Quant table, q[row][col]
    (* ram_style = "registers" *) reg signed [2*INPUT_VALUE_WIDTH-1:0] r_quantized_coeffs [0:BLOCK_SIZE-1] [0:BLOCK_SIZE-1];
    // Declarations - Output AXI-Stream
    reg signed [OUTPUT_AXIS_DATA_WIDTH-1:0] r_o_axis_TDATA;
    reg r_o_axis_TLAST;
    reg [2:0] r_next_output_row; // Tracks the current index of the matrix that will be written out
    reg [2:0] r_next_output_col; // Since Block Size is 8 3 bits are needed to represent the columns

    // Assignments
    // Assignments - Input AXI-Stream
    assign o_axis_TREADY = (r_core_state == STATE_INPUT_COLLECTION) ? 1 : 0;
    // Assignments - Output AXI-Stream
    assign o_axis_TVALID = (r_core_state == STATE_OUTPUT_TRANSMISSION) ? 1 : 0;
    assign o_axis_TDATA = r_o_axis_TDATA;
    assign o_axis_TLAST = r_o_axis_TLAST;
    // Assignments - Quantizer
    assign w_quantization_table[0][0] = 'd8;
    assign w_quantization_table[0][1] = 'd12;
    assign w_quantization_table[0][2] = 'd13;
    assign w_quantization_table[0][3] = 'd8;
    assign w_quantization_table[0][4] = 'd5;
    assign w_quantization_table[0][5] = 'd3;
    assign w_quantization_table[0][6] = 'd3;
    assign w_quantization_table[0][7] = 'd2;

    assign w_quantization_table[1][0] = 'd11;
    assign w_quantization_table[1][1] = 'd11;
    assign w_quantization_table[1][2] = 'd9;
    assign w_quantization_table[1][3] = 'd7;
    assign w_quantization_table[1][4] = 'd5;
    assign w_quantization_table[1][5] = 'd2;
    assign w_quantization_table[1][6] = 'd2;
    assign w_quantization_table[1][7] = 'd2;

    assign w_quantization_table[2][0] = 'd9;
    assign w_quantization_table[2][1] = 'd10;
    assign w_quantization_table[2][2] = 'd8;
    assign w_quantization_table[2][3] = 'd5;
    assign w_quantization_table[2][4] = 'd3;
    assign w_quantization_table[2][5] = 'd2;
    assign w_quantization_table[2][6] = 'd2;
    assign w_quantization_table[2][7] = 'd2;

    assign w_quantization_table[3][0] = 'd9;
    assign w_quantization_table[3][1] = 'd8;
    assign w_quantization_table[3][2] = 'd6;
    assign w_quantization_table[3][3] = 'd4;
    assign w_quantization_table[3][4] = 'd3;
    assign w_quantization_table[3][5] = 'd1;
    assign w_quantization_table[3][6] = 'd2;
    assign w_quantization_table[3][7] = 'd2;

    assign w_quantization_table[4][0] = 'd7;
    assign w_quantization_table[4][1] = 'd6;
    assign w_quantization_table[4][2] = 'd3;
    assign w_quantization_table[4][3] = 'd2;
    assign w_quantization_table[4][4] = 'd2;
    assign w_quantization_table[4][5] = 'd1;
    assign w_quantization_table[4][6] = 'd1;
    assign w_quantization_table[4][7] = 'd2;

    assign w_quantization_table[5][0] = 'd5;
    assign w_quantization_table[5][1] = 'd4;
    assign w_quantization_table[5][2] = 'd2;
    assign w_quantization_table[5][3] = 'd2;
    assign w_quantization_table[5][4] = 'd2;
    assign w_quantization_table[5][5] = 'd1;
    assign w_quantization_table[5][6] = 'd1;
    assign w_quantization_table[5][7] = 'd1;

    assign w_quantization_table[6][0] = 'd3;
    assign w_quantization_table[6][1] = 'd2;
    assign w_quantization_table[6][2] = 'd2;
    assign w_quantization_table[6][3] = 'd1;
    assign w_quantization_table[6][4] = 'd1;
    assign w_quantization_table[6][5] = 'd1;
    assign w_quantization_table[6][6] = 'd1;
    assign w_quantization_table[6][7] = 'd1;

    assign w_quantization_table[7][0] = 'd2;
    assign w_quantization_table[7][1] = 'd1;
    assign w_quantization_table[7][2] = 'd1;
    assign w_quantization_table[7][3] = 'd1;
    assign w_quantization_table[7][4] = 'd1;
    assign w_quantization_table[7][5] = 'd1;
    assign w_quantization_table[7][6] = 'd1;
    assign w_quantization_table[7][7] = 'd1;
    
    always @ (posedge i_clk)
    begin
        if (i_aresetn == 1'b0)
        begin
            r_core_state <= STATE_INPUT_COLLECTION;
            // Input AXI-Stream
            r_curr_input_row <= 0;
            r_curr_input_col <= 0;
            // Quantizer
            r_curr_quant_row <= 0;
            // Resetting matrices
            for (i = 0; i < BLOCK_SIZE; i=i+1) begin
                for (j = 0; j < BLOCK_SIZE; j=j+1) begin
                    r_input_coeffs[i][j] <= 0;
                    r_quantized_coeffs[i][j] <= 0;
                end
            end
            // Output AXI-Stream
            r_o_axis_TDATA <= 0;
            r_o_axis_TLAST <= 1'b0;
            r_next_output_row <= 0;
            r_next_output_col <= 0;
        end
        else
        begin
            case (r_core_state)
                STATE_INPUT_COLLECTION:
                begin
                    if (i_axis_TVALID == 1'b1 && o_axis_TREADY == 1'b1 )
                    begin
                        r_input_coeffs[r_curr_input_row][r_curr_input_col] <= i_axis_TDATA[INPUT_VALUE_WIDTH-1:0];
                        // if ((r_curr_input_row == BLOCK_SIZE-1 && r_curr_input_col == BLOCK_SIZE-1) || i_axis_TLAST == 1'b1)
                        if ((r_curr_input_row == BLOCK_SIZE-1 && r_curr_input_col == BLOCK_SIZE-1)) // Disabled TLAST
                        begin
                            r_core_state <= STATE_COMPUTATION;
                            r_curr_input_row <= 0;
                            r_curr_input_col <= 0;
                        end
                        else if (r_curr_input_col == BLOCK_SIZE-1)
                        begin
                            r_core_state <= r_core_state;
                            r_curr_input_row <= r_curr_input_row + 1;
                            r_curr_input_col <= 0;
                        end
                        else
                        begin
                            r_core_state <= r_core_state;
                            r_curr_input_row <= r_curr_input_row;
                            r_curr_input_col <= r_curr_input_col + 1;
                        end
                    end
                end
                STATE_COMPUTATION:
                begin
                    for (i = 0; i < BLOCK_SIZE; i = i + 1)
                    begin
                        r_quantized_coeffs[r_curr_quant_row][i] <= 
                            (r_input_coeffs[r_curr_quant_row][i] * w_quantization_table[r_curr_quant_row][i]) >>> 2*SCALE; // Need to shift right because it's fixed point, then shift right again to eliminate all decimals; 
                    end
                    if (r_curr_quant_row == BLOCK_SIZE-1)
                    begin
                        r_core_state <= STATE_OUTPUT_TRANSMISSION;
                        r_curr_quant_row <= 0;
                        r_o_axis_TDATA <= (r_quantized_coeffs[0][0] == -1) ? 0 : r_quantized_coeffs[0][0][OUTPUT_AXIS_DATA_WIDTH-1:0]; // Workaround: If we see -1 we send 0
                        r_next_output_col <= 1;
                    end
                    else
                    begin
                        r_core_state <= r_core_state;
                        r_curr_quant_row <= r_curr_quant_row + 1;
                        r_o_axis_TDATA <= r_o_axis_TDATA;
                        r_next_output_col <= r_next_output_col;
                    end
                end
                STATE_OUTPUT_TRANSMISSION:
                begin
                    if (i_axis_TREADY == 1'b1 && r_o_axis_TLAST == 1'b1)
                    begin
                        r_core_state <= STATE_INPUT_COLLECTION;
                        r_o_axis_TDATA <= 0;
                        r_o_axis_TLAST <= 1'b0;
                        r_next_output_row <= 0;
                        r_next_output_col <= 0;
                        // Resetting Input matrix
                        for (i = 0; i < BLOCK_SIZE; i=i+1) begin
                            for (j = 0; j < BLOCK_SIZE; j=j+1) begin
                                r_input_coeffs[i][j] <= 0;
                                r_quantized_coeffs[i][j] <= 0;
                            end
                        end
                    end
                    else if (i_axis_TREADY == 1'b1)
                    begin
                        r_core_state <= r_core_state;
                        r_o_axis_TDATA <= (r_quantized_coeffs[r_next_output_row][r_next_output_col] == -1) ? 0 : r_quantized_coeffs[r_next_output_row][r_next_output_col][OUTPUT_AXIS_DATA_WIDTH-1:0]; // Use mask to ensure that negatives stay negative, positives stay positive, // Workaround: If we see -1 we send 0
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
                        r_core_state <= r_core_state;
                        r_o_axis_TDATA <= r_o_axis_TDATA;
                        r_o_axis_TLAST <= r_o_axis_TLAST;
                        r_next_output_row <= r_next_output_row;
                        r_next_output_col <= r_next_output_col;
                    end
                end
            endcase
        end
    end
endmodule
