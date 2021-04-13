`timescale 1ns / 1ps
/*
        Direction:
        | 1 2 3 4 |
        | 5 6 7 8 |
        | 9 A B C |
        | D E F 0 |
        1 (Positive) represents moving in direction towards top right (eg. 6->3)
        -1 (Negative) represents moving in direction towards bottom left (eg. 6->9)
*/
module zig_zag
    #(
        parameter BLOCK_SIZE = 8,
        parameter VALUE_WIDTH = 10,
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
    localparam STATE_INPUT_COLLECTION = 0;
    localparam STATE_OUTPUT_TRANSMISSION = 1;
    localparam ZZ_STATE_DIAGONAL = 2'd0;
    localparam ZZ_STATE_VERTICAL = 2'd1; // zig-zag is currently located at a vertical wall (eg. j = 0 or j = BLOCK_SIZE - 1) and therefore the next move must be down
    localparam ZZ_STATE_HORIZONTAL = 2'd2; // zig-zag is currently located at a horizontal wall (eg. i = 0 or i = BLOCK_SIZE - 1) and therefore the next move must be to the right
    localparam DIR_POSITIVE = 1;
    localparam DIR_NEGATIVE = 0;
    reg r_core_state;
    reg [1:0] r_zz_state;
    integer i;
    integer j;
    // Declarations - Input AXI-Stream
    reg [2:0] r_curr_input_row; // Tracks the current index of the matrix that will be written into
    reg [2:0] r_curr_input_col; // Since Block Size is 8 3 bits are needed to represent the rows and columns
    // Declarations - Zig-Zag
    (* ram_style = "registers" *) reg signed [VALUE_WIDTH-1:0] r_input_coeffs [0:BLOCK_SIZE-1][0:BLOCK_SIZE-1];
    reg r_direction;
    wire [VALUE_WIDTH-1:0] w_diag_next_output_row;
    wire [VALUE_WIDTH-1:0] w_diag_next_output_col;
    // Declarations - Output AXI-Stream
    reg signed [AXIS_DATA_WIDTH-1:0] r_o_axis_TDATA;
    reg r_o_axis_TLAST;
    reg [2:0] r_next_output_row; // Tracks the current index of the matrix that will be written out
    reg [2:0] r_next_output_col; // Since Block Size is 8 3 bits are needed to represent the columns
    wire signed [AXIS_DATA_WIDTH-1:0] w_o_axis_tdata_mask;

    // Assignments
    // Assignments - Input AXI-Stream
    assign o_axis_TREADY = (r_core_state == STATE_INPUT_COLLECTION) ? 1 : 0;
    // Assignments - Zig-Zag
    assign w_diag_next_output_row = (r_direction == DIR_POSITIVE) ? (r_next_output_row - 1) : (r_next_output_row + 1);
    assign w_diag_next_output_col = (r_direction == DIR_POSITIVE) ? (r_next_output_col + 1) : (r_next_output_col - 1);
    // Assignments - Output AXI-Stream
    assign o_axis_TVALID = (r_core_state == STATE_OUTPUT_TRANSMISSION) ? 1 : 0;
    assign o_axis_TDATA = r_o_axis_TDATA;
    assign o_axis_TLAST = r_o_axis_TLAST;
    assign w_o_axis_tdata_mask = {(AXIS_DATA_WIDTH-VALUE_WIDTH){r_input_coeffs[r_next_output_row][r_next_output_col][VALUE_WIDTH-1]}} << VALUE_WIDTH;

    always @ (posedge i_clk)
    begin
        if (i_aresetn == 1'b0)
        begin
            r_core_state <= STATE_INPUT_COLLECTION;
            // Input AXI-Stream
            r_curr_input_row <= 0;
            r_curr_input_col <= 0;
            // Zig-Zag
            r_zz_state <= ZZ_STATE_DIAGONAL;
            r_direction <= DIR_NEGATIVE;
            // Resetting Input matrix
            for (i = 0; i < BLOCK_SIZE; i=i+1) begin
                for (j = 0; j < BLOCK_SIZE; j=j+1) begin
                    r_input_coeffs[i][j] <= 0;
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
                        r_input_coeffs[r_curr_input_row][r_curr_input_col] <= i_axis_TDATA[VALUE_WIDTH-1:0];
                        // if ((r_curr_input_row == BLOCK_SIZE-1 && r_curr_input_col == BLOCK_SIZE-1) || i_axis_TLAST == 1'b1)
                        if ((r_curr_input_row == BLOCK_SIZE-1 && r_curr_input_col == BLOCK_SIZE-1)) // Disabled TLAST
                        begin
                            r_core_state <= STATE_OUTPUT_TRANSMISSION;
                            r_curr_input_row <= 0;
                            r_curr_input_col <= 0;
                            r_o_axis_TDATA <= r_input_coeffs[0][0] | w_o_axis_tdata_mask;
                            r_next_output_col <= r_next_output_col + 1; //Perform the first transition manually
                        end
                        else if (r_curr_input_col == BLOCK_SIZE-1)
                        begin
                            r_core_state <= r_core_state;
                            r_curr_input_row <= r_curr_input_row + 1;
                            r_curr_input_col <= 0;
                            r_o_axis_TDATA <= r_o_axis_TDATA;
                            r_next_output_col <= r_next_output_col;
                        end
                        else
                        begin
                            r_core_state <= r_core_state;
                            r_curr_input_row <= r_curr_input_row;
                            r_curr_input_col <= r_curr_input_col + 1;
                            r_o_axis_TDATA <= r_o_axis_TDATA;
                            r_next_output_col <= r_next_output_col;
                        end
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
                            end
                        end
                        r_zz_state <= ZZ_STATE_DIAGONAL;
                        r_direction <= DIR_NEGATIVE;
                    end
                    else if (i_axis_TREADY == 1'b1)
                    begin
                        r_core_state <= r_core_state;
                        r_o_axis_TDATA <= r_input_coeffs[r_next_output_row][r_next_output_col][VALUE_WIDTH-1:0] | w_o_axis_tdata_mask; // Use mask to ensure that negatives stay negative, positives stay positive
                        if (r_next_output_row == BLOCK_SIZE-1 && r_next_output_col == BLOCK_SIZE-1)
                        begin
                            r_o_axis_TLAST <= 1'b1;
                            r_next_output_row <= 0;
                            r_next_output_col <= 0;
                            r_direction <= r_direction;
                            r_zz_state <= r_zz_state;
                        end
                        else
                        begin
                            r_o_axis_TLAST <= 0;
                            case (r_zz_state)
                                ZZ_STATE_DIAGONAL:
                                begin
                                    r_next_output_row <= w_diag_next_output_row;
                                    r_next_output_col <= w_diag_next_output_col;
                                    if (w_diag_next_output_row == 0 || w_diag_next_output_row == (BLOCK_SIZE-1))
                                    begin
                                        // Prioritize horizontal mode first, because at all corners we want to move horizontally
                                        r_zz_state <= ZZ_STATE_HORIZONTAL;
                                    end
                                    else if (w_diag_next_output_col == 0 || w_diag_next_output_col == (BLOCK_SIZE-1))
                                    begin
                                        r_zz_state <= ZZ_STATE_VERTICAL;
                                    end
                                    else
                                    begin
                                        r_zz_state <= ZZ_STATE_DIAGONAL;
                                    end
                                end
                                ZZ_STATE_VERTICAL:
                                begin
                                    /*
                                        Vertical wall:
                                        | 1 2 3 4 |
                                        | 5 6 7 8 |
                                        | 9 A B C |
                                        | D E F 0 |
                                        For instance, when 2 -> 5, we hit a vertical wall. In this case, we must then transition down to 9 and reverse the diagonal direction, before proceeding diagonally again
                                    */
                                    r_next_output_row <= r_next_output_row + 1;
                                    r_next_output_col <= r_next_output_col;
                                    r_direction <= (r_direction == DIR_POSITIVE) ? DIR_NEGATIVE : DIR_POSITIVE;
                                    r_zz_state <= ZZ_STATE_DIAGONAL;
                                end
                                ZZ_STATE_HORIZONTAL:
                                begin
                                    /*
                                        Horizontal wall:
                                        | 1 2 3 4 |
                                        | 5 6 7 8 |
                                        | 9 A B C |
                                        | D E F 0 |
                                        For instance, when 6 -> 3, we hit a horizontal wall. In this case, we must then transition right to 4 and reverse the diagonal direction, before proceeding diagonally again
                                    */
                                    r_next_output_row <= r_next_output_row;
                                    r_next_output_col <= r_next_output_col + 1;
                                    r_direction <= (r_direction == DIR_POSITIVE) ? DIR_NEGATIVE : DIR_POSITIVE;
                                    r_zz_state <= ZZ_STATE_DIAGONAL;
                                end
                            endcase
                        end
                    end
                    else
                    begin
                        r_core_state <= r_core_state;
                        r_o_axis_TDATA <= r_o_axis_TDATA;
                        r_o_axis_TLAST <= r_o_axis_TLAST;
                        r_next_output_row <= r_next_output_row;
                        r_next_output_col <= r_next_output_col;
                        r_zz_state <= r_zz_state;
                    end
                end
            endcase
        end
    end
endmodule