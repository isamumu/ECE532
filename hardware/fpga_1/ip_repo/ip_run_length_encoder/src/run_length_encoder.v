`timescale 1ns / 1ps
module run_length_encoder
    #(
        parameter BLOCK_SIZE = 8,
        parameter VALUE_WIDTH = 10,
        parameter COUNTER_WIDTH = 6,
        parameter NUM_VALUES_PER_TRANSFER = 1,
        parameter TRANSFER_WIDTH = VALUE_WIDTH + COUNTER_WIDTH, // Upper bits are for counter, lower for Value
        parameter INPUT_AXIS_DATA_WIDTH = 8*((NUM_VALUES_PER_TRANSFER*VALUE_WIDTH - 1)/8 + 1),
        parameter OUTPUT_AXIS_DATA_WIDTH = 8*((NUM_VALUES_PER_TRANSFER*TRANSFER_WIDTH - 1)/8 + 1)
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
    localparam STATE_INPUT_COLLECTION = 0;
    localparam STATE_OUTPUT_TRANSMISSION = 1;
    reg r_core_state;
    integer i;
    integer j;
    // Declarations - Input AXI-Stream
    reg [2:0] r_curr_input_row; // Tracks the current index of the matrix that will be written into
    reg [2:0] r_curr_input_col; // Since Block Size is 8 3 bits are needed to represent the rows and columns
    // Declarations - Run Length Encoder
    (* ram_style = "registers" *) reg signed [VALUE_WIDTH-1:0] r_input_coeffs [0:BLOCK_SIZE-1][0:BLOCK_SIZE-1];
    reg signed [VALUE_WIDTH-1:0] r_curr_value;
    reg [COUNTER_WIDTH-1:0] r_counter;
    reg [2:0] r_curr_rle_row; // Tracks the current index of the matrix that will be encoded
    reg [2:0] r_curr_rle_col; // Since Block Size is 8 3 bits are needed to represent the rows and columns
    wire [TRANSFER_WIDTH-1:0] w_counter_shifted;
    wire [2:0] w_next_rle_row;
    wire [2:0] w_next_rle_col;
    wire w_last_entry;
    // Declarations - Output AXI-Stream
    reg r_o_axis_TVALID;
    reg signed [OUTPUT_AXIS_DATA_WIDTH-1:0] r_o_axis_TDATA;
    reg r_o_axis_TLAST;

    // Assignments
    // Assignments - Input AXI-Stream
    assign o_axis_TREADY = (r_core_state == STATE_INPUT_COLLECTION) ? 1 : 0;
    // Assignments - Run-Length Encoder
    assign w_counter_shifted = (w_last_entry == 1 && r_counter != 1) ? ((r_counter + 1) << (TRANSFER_WIDTH-COUNTER_WIDTH)) : r_counter << (TRANSFER_WIDTH-COUNTER_WIDTH);
    assign w_next_rle_col = (r_curr_rle_col == BLOCK_SIZE-1) ? 0 : (r_curr_rle_col + 1);
    assign w_next_rle_row = (r_curr_rle_col == BLOCK_SIZE-1) ? (r_curr_rle_row + 1) : r_curr_rle_row;
    assign w_last_entry = (r_curr_rle_row == (BLOCK_SIZE-1)) && (r_curr_rle_col == (BLOCK_SIZE-1));
    // Assignments - Output AXI-Stream
    assign o_axis_TVALID = r_o_axis_TVALID;
    assign o_axis_TDATA = r_o_axis_TDATA;
    assign o_axis_TLAST = r_o_axis_TLAST;

    always @ (posedge i_clk)
    begin
        if (i_aresetn == 1'b0)
        begin
            r_core_state <= STATE_INPUT_COLLECTION;
            // Input AXI-Stream
            r_curr_input_row <= 0;
            r_curr_input_col <= 0;
            // Run-Length Encoder
            r_curr_value <= 0;
            r_counter <= 0;
            r_curr_rle_row <= 0;
            r_curr_rle_col <= 0;
            // Resetting Input matrix
            for (i = 0; i < BLOCK_SIZE; i=i+1) begin
                for (j = 0; j < BLOCK_SIZE; j=j+1) begin
                    r_input_coeffs[i][j] <= 0;
                end
            end
            // Output AXI-Stream
            r_o_axis_TVALID <= 0;
            r_o_axis_TDATA <= 0;
            r_o_axis_TLAST <= 1'b0;
        end
        else
        begin
            case (r_core_state)
                STATE_INPUT_COLLECTION:
                begin
                    if (i_axis_TVALID == 1'b1 && o_axis_TREADY == 1'b1 )
                    begin
                        r_input_coeffs[r_curr_input_row][r_curr_input_col] <= i_axis_TDATA[VALUE_WIDTH-1:0];
                        // if ((r_curr_input_row == BLOCK_SIZE-1 && r_curr_input_col == BLOCK_SIZE-1) || i_axis_TLAST == 1'b1)
                        if ((r_curr_input_row == BLOCK_SIZE-1 && r_curr_input_col == BLOCK_SIZE-1)) // Disabled TLAST
                        begin
                            r_core_state <= STATE_OUTPUT_TRANSMISSION;
                            r_curr_input_row <= 0;
                            r_curr_input_col <= 0;
                            r_curr_value <= r_input_coeffs[0][0];
                            r_counter <= 1;
                            r_curr_rle_col <= 1; //Perform the first transition manually
                        end
                        else if (r_curr_input_col == BLOCK_SIZE-1)
                        begin
                            r_core_state <= r_core_state;
                            r_curr_input_row <= r_curr_input_row + 1;
                            r_curr_input_col <= 0;
                            r_curr_value <= r_curr_value;
                            r_counter <= r_counter;
                            r_curr_rle_col <= r_curr_rle_col;
                        end
                        else
                        begin
                            r_core_state <= r_core_state;
                            r_curr_input_row <= r_curr_input_row;
                            r_curr_input_col <= r_curr_input_col + 1;
                            r_curr_value <= r_curr_value;
                            r_counter <= r_counter;
                            r_curr_rle_col <= r_curr_rle_col;
                        end
                    end
                end
                STATE_OUTPUT_TRANSMISSION:
                begin
                    if (r_o_axis_TVALID == 1'b1)
                    begin
                        if (i_axis_TREADY == 1'b1)
                        begin
                            r_o_axis_TVALID <= 0;
                            if (r_o_axis_TLAST == 1'b1)
                            begin
                                r_core_state <= STATE_INPUT_COLLECTION;
                                r_curr_value <= 0;
                                r_counter <= 0;
                                r_curr_rle_row <= 0;
                                r_curr_rle_col <= 0;
                                r_o_axis_TDATA <= 0;
                                r_o_axis_TLAST <= 1'b0;
                                // Resetting Input matrix
                                for (i = 0; i < BLOCK_SIZE; i=i+1) begin
                                    for (j = 0; j < BLOCK_SIZE; j=j+1) begin
                                        r_input_coeffs[i][j] <= 0;
                                    end
                                end
                            end
                            else
                            begin
                                r_core_state <= r_core_state;
                                r_curr_value <= r_input_coeffs[r_curr_rle_row][r_curr_rle_col];
                                r_counter <= 1;
                                r_curr_rle_row <= (w_last_entry == 1) ? r_curr_rle_row : w_next_rle_row; //If this is the last entry, don't increment
                                r_curr_rle_col <= (w_last_entry == 1) ? r_curr_rle_col : w_next_rle_col;
                                r_o_axis_TDATA <= r_o_axis_TDATA;
                                r_o_axis_TLAST <= r_o_axis_TLAST;
                            end
                        end
                        else
                        begin
                            r_core_state <= r_core_state;
                            r_curr_value <= r_curr_value;
                            r_counter <= r_counter;
                            r_curr_rle_row <= r_curr_rle_row;
                            r_curr_rle_col <= r_curr_rle_col;
                            r_o_axis_TVALID <= r_o_axis_TVALID;
                            r_o_axis_TDATA <= r_o_axis_TDATA;
                            r_o_axis_TLAST <= r_o_axis_TLAST;
                        end
                    end
                    else
                    begin
                        if ((r_input_coeffs[r_curr_rle_row][r_curr_rle_col] != r_curr_value))
                        begin
                            r_o_axis_TVALID <= 1'b1;
                            r_o_axis_TDATA <= r_curr_value | w_counter_shifted;
                            r_o_axis_TLAST <= r_o_axis_TLAST;
                            r_counter <= r_counter;
                            r_curr_rle_row <= r_curr_rle_row;
                            r_curr_rle_col <= r_curr_rle_col;
                        end
                        else if (w_last_entry == 1'b1)
                        begin
                            r_o_axis_TVALID <= 1'b1;
                            r_o_axis_TDATA <= r_curr_value | w_counter_shifted;
                            r_o_axis_TLAST <= 1;
                            r_counter <= (r_counter != 1) ? (r_counter + 1): r_counter;
                            r_curr_rle_row <= r_curr_rle_row;
                            r_curr_rle_col <= r_curr_rle_col;
                        end
                        else
                        begin
                            r_o_axis_TVALID <= r_o_axis_TVALID;
                            r_o_axis_TDATA <= r_o_axis_TDATA;
                            r_o_axis_TLAST <= r_o_axis_TLAST;
                            r_counter <= r_counter + 1;
                            r_curr_rle_row <= w_next_rle_row;
                            r_curr_rle_col <= w_next_rle_col;
                        end
                    end
                end
            endcase
        end
    end
endmodule