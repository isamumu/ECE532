`timescale 1ns / 1ps
module one_dimension_dct
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
    integer i;
    integer j;
    // Input AXI-Stream
    reg [2:0] r_curr_input_col; // Tracks the current index of the matrix that will be written into, since Block Size is 8 3 bits are needed to represent the columns
    // DCT
    wire signed [VALUE_WIDTH-1:0] w_a_values [0:BLOCK_SIZE-1][0:3]; // aml = a_values[l][m]
    (* ram_style = "registers" *) reg signed [VALUE_WIDTH-1:0] r_input_pixels [0:BLOCK_SIZE-1];
    // wire signed [2*VALUE_WIDTH-1:0] w_output_coefficients [0:BLOCK_SIZE-1];
    reg [2:0] r_dsp_add_1_setup; // Index of the DCT coefficient that has just entered setup (loaded into dsp_add_input_pixels, etc)
    reg [2:0] r_dsp_add_2_load; // Index of the DCT coefficient that is currently being loaded into the DSP this cycle
    reg [2:0] r_dsp_add_3_preadd; // Index of the DCT coefficient that is currently being preadded
    reg [2:0] r_dsp_add_4_mul; // Index of the DCT coefficient that is currently being multiplied
    reg [2:0] r_dsp_add_5_finished; // Index of the DCT coefficient that is now available to be read
    reg [2:0] r_dsp_sub_1_setup; // Index of the DCT coefficient that has just entered setup (loaded into dsp_add_input_pixels, etc)
    reg [2:0] r_dsp_sub_2_load; // Index of the DCT coefficient that is currently being loaded into the DSP this cycle
    reg [2:0] r_dsp_sub_3_presub; // Index of the DCT coefficient that is currently being pre-subtracted
    reg [2:0] r_dsp_sub_4_mul; // Index of the DCT coefficient that is currently being multiplied
    reg [2:0] r_dsp_sub_5_finished; // Index of the DCT coefficient that is now available to be read
    (* ram_style = "registers" *) reg signed [VALUE_WIDTH-1:0] r_dsp_add_input_pixel_a [0:3]; // Each yL value needs 4 DSP blocks
    (* ram_style = "registers" *) reg signed [VALUE_WIDTH-1:0] r_dsp_add_input_pixel_b [0:3];
    (* ram_style = "registers" *) reg signed [VALUE_WIDTH-1:0] r_dsp_add_input_a_value [0:3];
    wire signed [2*VALUE_WIDTH:0] w_dsp_add_output [0:3];
    (* ram_style = "registers" *) reg signed [VALUE_WIDTH-1:0] r_dsp_sub_input_pixel_a [0:3]; // Each yL value needs 4 DSP blocks
    (* ram_style = "registers" *) reg signed [VALUE_WIDTH-1:0] r_dsp_sub_input_pixel_b [0:3];
    (* ram_style = "registers" *) reg signed [VALUE_WIDTH-1:0] r_dsp_sub_input_a_value [0:3];
    wire signed [2*VALUE_WIDTH:0] w_dsp_sub_output [0:3];
    (* ram_style = "registers" *) reg signed [2*VALUE_WIDTH:0] r_output_coefficients [0:BLOCK_SIZE-1];
    wire w_dsp_enable;

    // Output AXI-Stream
    reg signed [AXIS_DATA_WIDTH-1:0] r_o_axis_TDATA;
    reg r_o_axis_TLAST;
    reg [2:0] r_next_output_col; // Since Block Size is 8 3 bits are needed to represent the columns

    // Assignments
    // Input AXI-Stream
    assign o_axis_TREADY = (r_core_state == STATE_INPUT_COLLECTION) ? 1 : 0;
    //DCT
    assign w_dsp_enable = (r_core_state == STATE_COMPUTATION) ? 1 : 0;
    // generate
    //     genvar L;
    //     for (L = 0; L < BLOCK_SIZE; L = L + 1)
    //     begin: yL
    //         if (L % 2 == 0)
    //         begin
    //             assign w_output_coefficients[L] = 
    //               ((w_a_values[L][0] * (r_input_pixels[0] + r_input_pixels[BLOCK_SIZE-1-0])) >>> SCALE)
    //             + ((w_a_values[L][1] * (r_input_pixels[1] + r_input_pixels[BLOCK_SIZE-1-1])) >>> SCALE)
    //             + ((w_a_values[L][2] * (r_input_pixels[2] + r_input_pixels[BLOCK_SIZE-1-2])) >>> SCALE)
    //             + ((w_a_values[L][3] * (r_input_pixels[3] + r_input_pixels[BLOCK_SIZE-1-3])) >>> SCALE)
    //             ;
    //         end
    //         else
    //         begin
    //             assign w_output_coefficients[L] = 
    //               ((w_a_values[L][0] * (r_input_pixels[0] - r_input_pixels[BLOCK_SIZE-1-0])) >>> SCALE)
    //             + ((w_a_values[L][1] * (r_input_pixels[1] - r_input_pixels[BLOCK_SIZE-1-1])) >>> SCALE)
    //             + ((w_a_values[L][2] * (r_input_pixels[2] - r_input_pixels[BLOCK_SIZE-1-2])) >>> SCALE)
    //             + ((w_a_values[L][3] * (r_input_pixels[3] - r_input_pixels[BLOCK_SIZE-1-3])) >>> SCALE)
    //             ;
    //         end
    //     end
    // endgenerate
    // Output AXI-Stream
    assign o_axis_TVALID = (r_core_state == STATE_OUTPUT_TRANSMISSION) ? 1 : 0;
    assign o_axis_TDATA = r_o_axis_TDATA;
    assign o_axis_TLAST = r_o_axis_TLAST;

    // TODO: See if this synthesizes
    // a values for y0
    assign w_a_values[0][0] = 'd45;
    assign w_a_values[0][1] = 'd45;
    assign w_a_values[0][2] = 'd45;
    assign w_a_values[0][3] = 'd45;

    // a values for y1
    assign w_a_values[1][0] = 'd63;
    assign w_a_values[1][1] = 'd53;
    assign w_a_values[1][2] = 'd36;
    assign w_a_values[1][3] = 'd12;

    // a values for y2
    assign w_a_values[2][0] = 'd59;
    assign w_a_values[2][1] = 'd24;
    assign w_a_values[2][2] = 'b11111111111101000; // -24
    assign w_a_values[2][3] = 'b11111111111000101; // -59
    
    // a values for y3
    assign w_a_values[3][0] = 'd53;
    assign w_a_values[3][1] = 'b11111111111110100; // -12
    assign w_a_values[3][2] = 'b11111111111000001; // -63
    assign w_a_values[3][3] = 'b11111111111011100; // -36

    // a values for y4
    assign w_a_values[4][0] = 'd45;
    assign w_a_values[4][1] = 'b11111111111010011;
    assign w_a_values[4][2] = 'b11111111111010011;
    assign w_a_values[4][3] = 'd45;

    // a values for y5
    assign w_a_values[5][0] = 'd36;
    assign w_a_values[5][1] = 'b11111111111000001; // -63
    assign w_a_values[5][2] = 'd12;
    assign w_a_values[5][3] = 'd53;

    // a values for y6
    assign w_a_values[6][0] = 'd24;
    assign w_a_values[6][1] = 'b11111111111000101; // -59
    assign w_a_values[6][2] = 'd59;
    assign w_a_values[6][3] = 'b11111111111101000; // -24

    // a values for y7
    assign w_a_values[7][0] = 'd12;
    assign w_a_values[7][1] = 'b11111111111011100; // -36
    assign w_a_values[7][2] = 'd53;
    assign w_a_values[7][3] = 'b11111111111000001; // -63
    
    // Modules
    dsp_add #(.VALUE_WIDTH(VALUE_WIDTH)) dsp_add_0
    (
        .i_clk(i_clk),
        .i_aresetn(w_dsp_enable),
        .i_preadd_a(r_dsp_add_input_pixel_a[0]),
        .i_preadd_b(r_dsp_add_input_pixel_b[0]),
        .i_mul(r_dsp_add_input_a_value[0]),
        .o_out(w_dsp_add_output[0])
    );
    dsp_add #(.VALUE_WIDTH(VALUE_WIDTH)) dsp_add_1
    (
        .i_clk(i_clk),
        .i_aresetn(w_dsp_enable),
        .i_preadd_a(r_dsp_add_input_pixel_a[1]),
        .i_preadd_b(r_dsp_add_input_pixel_b[1]),
        .i_mul(r_dsp_add_input_a_value[1]),
        .o_out(w_dsp_add_output[1])
    );
    dsp_add #(.VALUE_WIDTH(VALUE_WIDTH)) dsp_add_2
    (
        .i_clk(i_clk),
        .i_aresetn(w_dsp_enable),
        .i_preadd_a(r_dsp_add_input_pixel_a[2]),
        .i_preadd_b(r_dsp_add_input_pixel_b[2]),
        .i_mul(r_dsp_add_input_a_value[2]),
        .o_out(w_dsp_add_output[2])
    );
    dsp_add #(.VALUE_WIDTH(VALUE_WIDTH)) dsp_add_3
    (
        .i_clk(i_clk),
        .i_aresetn(w_dsp_enable),
        .i_preadd_a(r_dsp_add_input_pixel_a[3]),
        .i_preadd_b(r_dsp_add_input_pixel_b[3]),
        .i_mul(r_dsp_add_input_a_value[3]),
        .o_out(w_dsp_add_output[3])
    );
    dsp_sub #(.VALUE_WIDTH(VALUE_WIDTH)) dsp_sub_0
    (
        .i_clk(i_clk),
        .i_aresetn(w_dsp_enable),
        .i_presub_a(r_dsp_sub_input_pixel_a[0]),
        .i_presub_b(r_dsp_sub_input_pixel_b[0]),
        .i_mul(r_dsp_sub_input_a_value[0]),
        .o_out(w_dsp_sub_output[0])
    );
    dsp_sub #(.VALUE_WIDTH(VALUE_WIDTH)) dsp_sub_1
    (
        .i_clk(i_clk),
        .i_aresetn(w_dsp_enable),
        .i_presub_a(r_dsp_sub_input_pixel_a[1]),
        .i_presub_b(r_dsp_sub_input_pixel_b[1]),
        .i_mul(r_dsp_sub_input_a_value[1]),
        .o_out(w_dsp_sub_output[1])
    );
    dsp_sub #(.VALUE_WIDTH(VALUE_WIDTH)) dsp_sub_2
    (
        .i_clk(i_clk),
        .i_aresetn(w_dsp_enable),
        .i_presub_a(r_dsp_sub_input_pixel_a[2]),
        .i_presub_b(r_dsp_sub_input_pixel_b[2]),
        .i_mul(r_dsp_sub_input_a_value[2]),
        .o_out(w_dsp_sub_output[2])
    );
    dsp_sub #(.VALUE_WIDTH(VALUE_WIDTH)) dsp_sub_3
    (
        .i_clk(i_clk),
        .i_aresetn(w_dsp_enable),
        .i_presub_a(r_dsp_sub_input_pixel_a[3]),
        .i_presub_b(r_dsp_sub_input_pixel_b[3]),
        .i_mul(r_dsp_sub_input_a_value[3]),
        .o_out(w_dsp_sub_output[3])
    );


    always @ (posedge i_clk)
    begin
        if (i_aresetn == 1'b0)
        begin
            r_core_state <= STATE_INPUT_COLLECTION;
            // Input AXI-Stream
            r_curr_input_col <= 0;
            // DCT
            // Resetting Input matrix
            r_dsp_add_1_setup <= 0;
            r_dsp_add_2_load <= 0;
            r_dsp_add_3_preadd <= 0;
            r_dsp_add_4_mul <= 0;
            r_dsp_add_5_finished <= 0;
            r_dsp_sub_1_setup <= 1;
            r_dsp_sub_2_load <= 0;
            r_dsp_sub_3_presub <= 0;
            r_dsp_sub_4_mul <= 0;
            r_dsp_sub_5_finished <= 0;
            for (i=0; i<BLOCK_SIZE; i=i+1)
            begin
                r_input_pixels[i] <= 0;
                r_output_coefficients[i] <= 0;
            end
            for (j=0; j<4; j=j+1)
            begin
                r_dsp_add_input_pixel_a[j] <= 0;
                r_dsp_add_input_pixel_b[j] <= 0;
                r_dsp_add_input_a_value[j] <= 0;
                r_dsp_sub_input_pixel_a[j] <= 0;
                r_dsp_sub_input_pixel_b[j] <= 0;
                r_dsp_sub_input_a_value[j] <= 0;
            end
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
                            for(j=1; j<4; j=j+1)
                            begin
                                r_dsp_add_input_pixel_a[j] <= r_input_pixels[j];
                                r_dsp_add_input_pixel_b[j] <= r_input_pixels[BLOCK_SIZE-1-j];
                                r_dsp_add_input_a_value[j] <= w_a_values[0][j];
                                r_dsp_sub_input_pixel_a[j] <= r_input_pixels[j];
                                r_dsp_sub_input_pixel_b[j] <= r_input_pixels[BLOCK_SIZE-1-j];
                                r_dsp_sub_input_a_value[j] <= w_a_values[1][j];
                            end
                            // Edge Case: last pixel was just received therefore must be loaded manually
                            r_dsp_add_input_pixel_a[0] <= r_input_pixels[0];
                            r_dsp_add_input_pixel_b[0] <= i_axis_TDATA[VALUE_WIDTH-1:0];
                            r_dsp_add_input_a_value[0] <= w_a_values[0][0];
                            r_dsp_sub_input_pixel_a[0] <= r_input_pixels[0];
                            r_dsp_sub_input_pixel_b[0] <= i_axis_TDATA[VALUE_WIDTH-1:0];
                            r_dsp_sub_input_a_value[0] <= w_a_values[1][0];
                            r_dsp_add_2_load <= r_dsp_add_1_setup;
                            r_dsp_add_1_setup <= r_dsp_add_1_setup + 2;
                            r_dsp_sub_2_load <= r_dsp_sub_1_setup;
                            r_dsp_sub_1_setup <= r_dsp_sub_1_setup + 2;
                        end
                        else
                        begin
                            r_curr_input_col <= r_curr_input_col + 1;
                            r_core_state <= r_core_state;
                            for(j=0; j<4; j=j+1)
                            begin
                                r_dsp_add_input_pixel_a[j] <= r_dsp_add_input_pixel_a[j];
                                r_dsp_add_input_pixel_b[j] <= r_dsp_add_input_pixel_b[j];
                                r_dsp_add_input_a_value[j] <= r_dsp_add_input_a_value[j];
                                r_dsp_sub_input_pixel_a[j] <= r_dsp_sub_input_pixel_a[j];
                                r_dsp_sub_input_pixel_b[j] <= r_dsp_sub_input_pixel_b[j];
                                r_dsp_sub_input_a_value[j] <= r_dsp_sub_input_a_value[j];
                            end
                            r_dsp_add_2_load <= r_dsp_add_2_load;
                            r_dsp_add_1_setup <= r_dsp_add_1_setup;
                            r_dsp_sub_2_load <= r_dsp_sub_2_load;
                            r_dsp_sub_1_setup <= r_dsp_sub_1_setup;                        
                        end
                    end
                    else
                    begin
                        r_input_pixels[r_curr_input_col] <= r_input_pixels[r_curr_input_col];
                        r_curr_input_col <= r_curr_input_col;
                        r_core_state <= r_core_state;
                        for(j=0; j<4; j=j+1)
                        begin
                            r_dsp_add_input_pixel_a[j] <= r_dsp_add_input_pixel_a[j];
                            r_dsp_add_input_pixel_b[j] <= r_dsp_add_input_pixel_b[j];
                            r_dsp_add_input_a_value[j] <= r_dsp_add_input_a_value[j];
                            r_dsp_sub_input_pixel_a[j] <= r_dsp_sub_input_pixel_a[j];
                            r_dsp_sub_input_pixel_b[j] <= r_dsp_sub_input_pixel_b[j];
                            r_dsp_sub_input_a_value[j] <= r_dsp_sub_input_a_value[j];
                        end
                        r_dsp_add_2_load <= r_dsp_add_2_load;
                        r_dsp_add_1_setup <= r_dsp_add_1_setup;
                        r_dsp_sub_2_load <= r_dsp_sub_2_load;
                        r_dsp_sub_1_setup <= r_dsp_sub_1_setup; 
                    end
                end
                STATE_COMPUTATION:
                begin
                    for(j=0; j<4; j=j+1)
                    begin
                        r_dsp_add_input_a_value[j] <= w_a_values[r_dsp_add_1_setup][j];
                        r_dsp_sub_input_a_value[j] <= w_a_values[r_dsp_sub_1_setup][j];
                    end
                    r_output_coefficients[r_dsp_add_5_finished] <= (w_dsp_add_output[0] 
                                                                  + w_dsp_add_output[1] 
                                                                  + w_dsp_add_output[2] 
                                                                  + w_dsp_add_output[3])
                                                                  >>> SCALE;
                    r_output_coefficients[r_dsp_sub_5_finished] <= (w_dsp_sub_output[0] 
                                                                  + w_dsp_sub_output[1] 
                                                                  + w_dsp_sub_output[2] 
                                                                  + w_dsp_sub_output[3])
                                                                  >>> SCALE;
                    if (r_dsp_sub_5_finished == BLOCK_SIZE-1)
                    begin
                        r_core_state <= STATE_OUTPUT_TRANSMISSION;
                        r_o_axis_TDATA <= r_output_coefficients[0][AXIS_DATA_WIDTH-1:0];
                        r_next_output_col <= 1;
                        for(j=0; j<4; j=j+1)
                        begin
                            r_dsp_add_input_pixel_a[j] <= 0;
                            r_dsp_add_input_pixel_b[j] <= 0;
                            r_dsp_sub_input_pixel_a[j] <= 0;
                            r_dsp_sub_input_pixel_b[j] <= 0;
                        end
                        r_dsp_add_5_finished <= 0;
                        r_dsp_add_4_mul      <= 0;
                        r_dsp_add_3_preadd   <= 0;
                        r_dsp_add_2_load     <= 0;
                        r_dsp_add_1_setup    <= 0;
                        r_dsp_sub_5_finished <= 0;
                        r_dsp_sub_4_mul      <= 0;
                        r_dsp_sub_3_presub   <= 0;
                        r_dsp_sub_2_load     <= 0;
                        r_dsp_sub_1_setup    <= 1;
                    end
                    else
                    begin
                        r_core_state <= r_core_state;
                        r_o_axis_TDATA <= r_o_axis_TDATA;
                        r_next_output_col <= r_next_output_col;
                        for(j=0; j<4; j=j+1)
                        begin
                            r_dsp_add_input_pixel_a[j] <= r_dsp_add_input_pixel_a[j];
                            r_dsp_add_input_pixel_b[j] <= r_dsp_add_input_pixel_b[j];
                            r_dsp_sub_input_pixel_a[j] <= r_dsp_sub_input_pixel_a[j];
                            r_dsp_sub_input_pixel_b[j] <= r_dsp_sub_input_pixel_b[j];
                        end
                        r_dsp_add_5_finished <= r_dsp_add_4_mul;
                        r_dsp_add_4_mul      <= r_dsp_add_3_preadd;
                        r_dsp_add_3_preadd   <= r_dsp_add_2_load;
                        r_dsp_add_2_load     <= r_dsp_add_1_setup;
                        r_dsp_add_1_setup    <= (r_dsp_add_1_setup == BLOCK_SIZE-2) ? 0 : r_dsp_add_1_setup + 2;
                        r_dsp_sub_5_finished <= r_dsp_sub_4_mul;
                        r_dsp_sub_4_mul      <= r_dsp_sub_3_presub;
                        r_dsp_sub_3_presub   <= r_dsp_sub_2_load;
                        r_dsp_sub_2_load     <= r_dsp_sub_1_setup;
                        r_dsp_sub_1_setup    <= (r_dsp_sub_1_setup == BLOCK_SIZE-1) ? 0 : r_dsp_sub_1_setup + 2;
                    end
                end
                STATE_OUTPUT_TRANSMISSION:
                begin
                    if (i_axis_TREADY == 1'b1 && r_o_axis_TLAST == 1'b1)
                    begin
                        r_o_axis_TDATA <= 0;
                        r_o_axis_TLAST <= 1'b0;
                        r_next_output_col <= 0;
                        // Resetting Input matrix
                        for(i=0; i<BLOCK_SIZE; i=i+1)
                        begin
                            r_input_pixels[i] <= 0;
                            r_output_coefficients[i] <= 0;
                        end
                        r_core_state <= STATE_INPUT_COLLECTION;
                    end
                    else if (i_axis_TREADY == 1'b1)
                    begin
                        r_o_axis_TDATA <= r_output_coefficients[r_next_output_col][AXIS_DATA_WIDTH-1:0]; // Can take 24 bits because we have arithmetically shifted (negatives stay negative, positives stay positive)
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