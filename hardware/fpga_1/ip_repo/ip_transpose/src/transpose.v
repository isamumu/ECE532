`timescale 1ns / 1ps
module transpose
    #(
        parameter BLOCK_SIZE = 8,
        parameter VALUE_WIDTH = 17,
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
    integer i;
    integer j;
    // Input AXI-Stream
    reg [2:0] r_curr_input_row; // Tracks the current index of the matrix that will be written into
    reg [2:0] r_curr_input_col; // Since Block Size is 8 3 bits are needed to represent the rows and columns
    // Transpose
    (* ram_style = "registers" *) reg signed [VALUE_WIDTH-1:0] r_input_coeffs [0:BLOCK_SIZE-1][0:BLOCK_SIZE-1];
    reg r_i_enable;
    reg [2:0] r_in_num_shifts; // Tracks how many times the input registers have been shifted
    (* ram_style = "registers" *) reg signed [VALUE_WIDTH-1:0] r_output_coeffs [0:BLOCK_SIZE-1][0:BLOCK_SIZE-1];
    reg [2:0] r_out_num_shifts; // Tracks how many times the output registers have been shifted
    wire w_i_enable;
    wire w_s1_o_enable [0:(BLOCK_SIZE/2)-1]; //All modules work in the same way so we only use 1 enable signal to reduce the number of gates
    wire w_s2_o_enable [0:(BLOCK_SIZE/2)-1];
    wire w_s3_o_enable [0:(BLOCK_SIZE/2)-1];
    wire [VALUE_WIDTH-1:0] w_s1_out [0:BLOCK_SIZE-1];
    wire [VALUE_WIDTH-1:0] w_s2_out [0:BLOCK_SIZE-1];
    wire [VALUE_WIDTH-1:0] w_s3_out [0:BLOCK_SIZE-1];
    // Output AXI-Stream
    reg signed [AXIS_DATA_WIDTH-1:0] r_o_axis_TDATA;
    wire signed [AXIS_DATA_WIDTH-1:0] w_o_axis_tdata_mask;
    reg r_o_axis_TLAST;
    reg [2:0] r_next_output_row; // Tracks the current index of the matrix that will be written out
    reg [2:0] r_next_output_col; // Since Block Size is 8 3 bits are needed to represent the columns

    // Assignments
    // Input AXI-Stream
    assign o_axis_TREADY = (r_core_state == STATE_INPUT_COLLECTION) ? 1 : 0;
    // Transpose
    assign w_i_enable = r_i_enable;
    // Output AXI-Stream
    assign o_axis_TVALID = (r_core_state == STATE_OUTPUT_TRANSMISSION) ? 1 : 0;
    assign o_axis_TDATA = r_o_axis_TDATA;
    assign o_axis_TLAST = r_o_axis_TLAST;
    assign w_o_axis_tdata_mask = {(AXIS_DATA_WIDTH-VALUE_WIDTH){r_output_coeffs[r_next_output_row][r_next_output_col][VALUE_WIDTH-1]}} << VALUE_WIDTH;

    // Modules
    transpose_stage_one #(.VALUE_WIDTH(VALUE_WIDTH)) s1_n0 (
        .i_clk(i_clk),
        .i_aresetn(i_aresetn),
        .i_enable(w_i_enable),
        .i_in0(r_input_coeffs[0][0]),
        .i_in1(r_input_coeffs[1][0]),
        .o_enable(w_s1_o_enable[0]),
        .o_out0(w_s1_out[0]),
        .o_out1(w_s1_out[1])
    );

    transpose_stage_one #(.VALUE_WIDTH(VALUE_WIDTH)) s1_n1 (
        .i_clk(i_clk),
        .i_aresetn(i_aresetn),
        .i_enable(w_i_enable),
        .i_in0(r_input_coeffs[2][0]),
        .i_in1(r_input_coeffs[3][0]),
        .o_enable(w_s1_o_enable[1]),
        .o_out0(w_s1_out[2]),
        .o_out1(w_s1_out[3])
    );

    transpose_stage_one #(.VALUE_WIDTH(VALUE_WIDTH)) s1_n2 (
        .i_clk(i_clk),
        .i_aresetn(i_aresetn),
        .i_enable(w_i_enable),
        .i_in0(r_input_coeffs[4][0]),
        .i_in1(r_input_coeffs[5][0]),
        .o_enable(w_s1_o_enable[2]),
        .o_out0(w_s1_out[4]),
        .o_out1(w_s1_out[5])
    );

    transpose_stage_one #(.VALUE_WIDTH(VALUE_WIDTH)) s1_n3 (
        .i_clk(i_clk),
        .i_aresetn(i_aresetn),
        .i_enable(w_i_enable),
        .i_in0(r_input_coeffs[6][0]),
        .i_in1(r_input_coeffs[7][0]),
        .o_enable(w_s1_o_enable[3]),
        .o_out0(w_s1_out[6]),
        .o_out1(w_s1_out[7])
    );

    transpose_stage_two #(.VALUE_WIDTH(VALUE_WIDTH)) s2_n0 (
        .i_clk(i_clk),
        .i_aresetn(i_aresetn),
        .i_enable(w_s1_o_enable[0]),
        .i_in0(w_s1_out[0]),
        .i_in1(w_s1_out[2]),
        .o_enable(w_s2_o_enable[0]),
        .o_out0(w_s2_out[0]),
        .o_out1(w_s2_out[1])
    );

    transpose_stage_two #(.VALUE_WIDTH(VALUE_WIDTH)) s2_n1 (
        .i_clk(i_clk),
        .i_aresetn(i_aresetn),
        .i_enable(w_s1_o_enable[1]),
        .i_in0(w_s1_out[1]),
        .i_in1(w_s1_out[3]),
        .o_enable(w_s2_o_enable[1]),
        .o_out0(w_s2_out[2]),
        .o_out1(w_s2_out[3])
    );

    transpose_stage_two #(.VALUE_WIDTH(VALUE_WIDTH)) s2_n2 (
        .i_clk(i_clk),
        .i_aresetn(i_aresetn),
        .i_enable(w_s1_o_enable[2]),
        .i_in0(w_s1_out[4]),
        .i_in1(w_s1_out[6]),
        .o_enable(w_s2_o_enable[2]),
        .o_out0(w_s2_out[4]),
        .o_out1(w_s2_out[5])
    );

    transpose_stage_two #(.VALUE_WIDTH(VALUE_WIDTH)) s2_n3 (
        .i_clk(i_clk),
        .i_aresetn(i_aresetn),
        .i_enable(w_s1_o_enable[3]),
        .i_in0(w_s1_out[5]),
        .i_in1(w_s1_out[7]),
        .o_enable(w_s2_o_enable[3]),
        .o_out0(w_s2_out[6]),
        .o_out1(w_s2_out[7])
    );

    transpose_stage_three #(.VALUE_WIDTH(VALUE_WIDTH)) s3_n0 (
        .i_clk(i_clk),
        .i_aresetn(i_aresetn),
        .i_enable(w_s2_o_enable[0]),
        .i_in0(w_s2_out[0]),
        .i_in1(w_s2_out[4]),
        .o_enable(w_s3_o_enable[0]),
        .o_out0(w_s3_out[0]),
        .o_out1(w_s3_out[1])
    );

    transpose_stage_three #(.VALUE_WIDTH(VALUE_WIDTH)) s3_n1 (
        .i_clk(i_clk),
        .i_aresetn(i_aresetn),
        .i_enable(w_s2_o_enable[1]),
        .i_in0(w_s2_out[2]),
        .i_in1(w_s2_out[6]),
        .o_enable(w_s3_o_enable[1]),
        .o_out0(w_s3_out[2]),
        .o_out1(w_s3_out[3])
    );

    transpose_stage_three #(.VALUE_WIDTH(VALUE_WIDTH)) s3_n2 (
        .i_clk(i_clk),
        .i_aresetn(i_aresetn),
        .i_enable(w_s2_o_enable[2]),
        .i_in0(w_s2_out[1]),
        .i_in1(w_s2_out[5]),
        .o_enable(w_s3_o_enable[2]),
        .o_out0(w_s3_out[4]),
        .o_out1(w_s3_out[5])
    );

    transpose_stage_three #(.VALUE_WIDTH(VALUE_WIDTH)) s3_n3 (
        .i_clk(i_clk),
        .i_aresetn(i_aresetn),
        .i_enable(w_s2_o_enable[3]),
        .i_in0(w_s2_out[3]),
        .i_in1(w_s2_out[7]),
        .o_enable(w_s3_o_enable[3]),
        .o_out0(w_s3_out[6]),
        .o_out1(w_s3_out[7])
    );

    always @ (posedge i_clk)
    begin
        if (i_aresetn == 1'b0)
        begin
            r_core_state <= STATE_INPUT_COLLECTION;
            // Input AXI-Stream
            r_curr_input_row <= 0;
            r_curr_input_col <= 0;
            // Transpose
            r_i_enable <= 0;
            r_in_num_shifts <= 0;
            r_out_num_shifts <= 0;
            // Resetting Input matrix
            for (i = 0; i < BLOCK_SIZE; i=i+1) begin
                for (j = 0; j < BLOCK_SIZE; j=j+1) begin
                    r_input_coeffs[i][j] <= 0;
                    r_output_coeffs[i][j] <= 0;
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
                        if ((r_curr_input_row == BLOCK_SIZE-1 && r_curr_input_col == BLOCK_SIZE-1) || i_axis_TLAST == 1'b1)
                        begin
                            r_core_state <= STATE_COMPUTATION;
                            r_i_enable <= 1;
                            r_curr_input_row <= 0;
                            r_curr_input_col <= 0;
                        end
                        else if (r_curr_input_col == BLOCK_SIZE-1)
                        begin
                            r_core_state <= r_core_state;
                            r_i_enable <= 0;
                            r_curr_input_row <= r_curr_input_row + 1;
                            r_curr_input_col <= 0;
                        end
                        else
                        begin
                            r_core_state <= r_core_state;
                            r_i_enable <= 0;
                            r_curr_input_row <= r_curr_input_row;
                            r_curr_input_col <= r_curr_input_col + 1;
                        end
                    end
                end
                STATE_COMPUTATION:
                begin
                    if (w_s3_o_enable[0] == 1'b1)
                    begin
                        // Implement output shift register
                        for (i = 0; i < BLOCK_SIZE; i=i+1) begin
                            for (j = 0; j < BLOCK_SIZE-1; j=j+1) begin
                                r_output_coeffs[i][j] <= r_output_coeffs[i][j+1];
                            end
                        end
                        r_output_coeffs[0][BLOCK_SIZE-1] <= w_s3_out[0];
                        r_output_coeffs[1][BLOCK_SIZE-1] <= w_s3_out[2];

                        r_output_coeffs[2][BLOCK_SIZE-1] <= w_s3_out[4];
                        r_output_coeffs[3][BLOCK_SIZE-1] <= w_s3_out[6];
                        
                        r_output_coeffs[4][BLOCK_SIZE-1] <= w_s3_out[1];
                        r_output_coeffs[5][BLOCK_SIZE-1] <= w_s3_out[3];
                        
                        r_output_coeffs[6][BLOCK_SIZE-1] <= w_s3_out[5];
                        r_output_coeffs[7][BLOCK_SIZE-1] <= w_s3_out[7];
                        
                        if (r_out_num_shifts == BLOCK_SIZE-1)
                        begin
                            r_core_state <= STATE_OUTPUT_TRANSMISSION;
                            r_out_num_shifts <= 0;
                            r_o_axis_TDATA <= r_output_coeffs[0][1]; // Needs to be column 1 value because the shift hasn't occurred yet
                            r_next_output_col <= 1;
                        end
                        else
                        begin
                            r_core_state <= r_core_state;
                            r_out_num_shifts <= r_out_num_shifts + 1;
                            r_o_axis_TDATA <= r_o_axis_TDATA;
                            r_next_output_col <= 0;
                        end
                    end
                    else
                    begin
                        for (i = 0; i < BLOCK_SIZE; i=i+1) begin
                            for (j = 0; j < BLOCK_SIZE; j=j+1) begin
                                r_output_coeffs[i][j] <= r_output_coeffs[i][j];
                            end
                        end
                        r_core_state <= r_core_state;
                        r_out_num_shifts <= r_out_num_shifts;
                        r_o_axis_TDATA <= r_o_axis_TDATA;
                        r_next_output_col <= 0;
                    end

                    if (r_i_enable == 1'b1)
                    begin
                        // Implement shift register
                        for (i = 0; i < BLOCK_SIZE; i=i+1) begin
                            for (j = 0; j < BLOCK_SIZE-1; j=j+1) begin
                                r_input_coeffs[i][j] <= r_input_coeffs[i][j+1];
                            end
                        end
                        if (r_in_num_shifts == BLOCK_SIZE-1)
                        begin
                            r_in_num_shifts <= 0;
                            r_i_enable <= 0;
                        end
                        else
                        begin
                            r_in_num_shifts <= r_in_num_shifts + 1;
                            r_i_enable <= r_i_enable;
                        end
                    end
                    else
                    begin
                        for (i = 0; i < BLOCK_SIZE; i=i+1) begin
                            for (j = 0; j < BLOCK_SIZE; j=j+1) begin
                                r_input_coeffs[i][j] <= r_input_coeffs[i][j];
                            end
                        end
                        r_in_num_shifts <= r_in_num_shifts;
                        r_i_enable <= r_i_enable;
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
                    end
                    else if (i_axis_TREADY == 1'b1)
                    begin
                        r_core_state <= r_core_state;
                        r_o_axis_TDATA <= r_output_coeffs[r_next_output_row][r_next_output_col][VALUE_WIDTH-1:0] | w_o_axis_tdata_mask; // Use mask to ensure that negatives stay negative, positives stay positive
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