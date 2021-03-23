`timescale 1ns / 1ps
module tb_transpose();
    /*
        Test matrices:
        1  | 2  | 3  | 4  | 5  | 6  | 7  | 8
        9  | 10 | 11 | 12 | 13 | 14 | 15 | 16
        17 | 18 | 19 | 20 | 21 | 22 | 23 | 24
        25 | 26 | 27 | 28 | 29 | 30 | 31 | 32
        33 | 34 | 35 | 36 | 37 | 38 | 39 | 40
        41 | 42 | 43 | 44 | 45 | 46 | 47 | 48
        49 | 50 | 51 | 52 | 53 | 54 | 55 | 56
        57 | 58 | 59 | 60 | 61 | 62 | 63 | 64
        Expected output:
        1,  2,  9,  17, 10, 3,  4,  11,
        18, 25, 33, 26, 19, 12, 5,  6,
        13, 20, 27, 34, 41, 49, 42, 35,
        28, 21, 14, 7,  8,  15, 22, 29,
        36, 43, 50, 57, 58, 51, 44, 37,
        30, 23, 16, 24, 31, 38, 45, 52,
        59, 60, 53, 46, 39, 32, 40, 47,
        54, 61, 62, 55, 48, 56, 63, 64,
    */
    // Declarations
    parameter VALUE_WIDTH = 17;
    parameter AXIS_DATA_WIDTH = 8*((VALUE_WIDTH - 1)/8 + 1);
    reg aclk;
    reg aresetn;
    reg r_test_enable;
    reg [31:0] r_num_data_received;
    reg signed [VALUE_WIDTH-1:0] r_test_data;
    // Registers - Input AXI-Stream
    reg r_i_axis_tvalid;
    reg signed [AXIS_DATA_WIDTH-1:0] r_i_axis_tdata;
    reg r_i_axis_tlast;
    // Wires - Input AXI-Stream
    wire w_o_axis_tready;
    // Registers - Output AXI-Stream
    reg r_i_axis_tready;
    // Wires - Output AXI-Stream
    wire w_o_axis_tvalid;
    wire signed [AXIS_DATA_WIDTH-1:0] w_o_axis_tdata;
    wire w_o_axis_tlast;

    zig_zag #(.VALUE_WIDTH(VALUE_WIDTH)) DUT 
    (
        .i_clk(aclk),
        .i_aresetn(aresetn),
        //Input AXI-Stream
        .i_axis_TVALID(r_i_axis_tvalid),
        .o_axis_TREADY(w_o_axis_tready),
        .i_axis_TDATA(r_i_axis_tdata),
        .i_axis_TLAST(r_i_axis_tlast),
        // Output AXI-Stream
        .o_axis_TVALID(w_o_axis_tvalid),
        .i_axis_TREADY(r_i_axis_tready),
        .o_axis_TDATA(w_o_axis_tdata),
        .o_axis_TLAST(w_o_axis_tlast)
    );

    // clock generator (100MHz)
	initial
	begin
		aclk = 0;
		forever
		  #5 aclk = ~aclk;
	end

    // start the testbench by resetting the system for 5 cycles
	initial
	begin
		aresetn = 0;
        r_test_enable = 0;
        r_num_data_received = 1;
        // r_test_data = 1;
        r_test_data = -1;
        r_i_axis_tvalid = 0;
        r_i_axis_tdata = 0;
        r_i_axis_tlast = 0;
        r_i_axis_tready = 1; // Always Ready
		repeat(5) @(posedge aclk);
		forever
			@(posedge aclk) aresetn = 1;
	end

    initial begin
        #50 r_test_enable = 1;
    end

    // Test Case: Feed in 8x8 matrix where a[i,j] = 8*i + j + 1 (1 - 64)
    // always @ (posedge aclk)
    // begin
    //     if (r_test_enable == 1'b1)
    //     begin
    //         if (r_test_data == 1 || w_o_axis_tready == 1'b1)
    //         begin
    //             r_i_axis_tdata <= r_test_data;
    //             if (r_test_data == 129)
    //             begin
    //                 r_i_axis_tvalid <= 0;
    //             end
    //             else
    //             begin
    //                 // if (r_test_data == 64)
    //                 // begin
    //                 //     r_i_axis_tlast <= 1'b1;
    //                 // end
    //                 r_i_axis_tvalid <= 1;
    //                 r_test_data <= r_test_data + 1;
    //             end
    //         end
    //         if (w_o_axis_tvalid == 1'b1)
    //         begin
    //             r_num_data_received <= r_num_data_received + 1;
    //             $display("Output %d: %f", r_num_data_received, w_o_axis_tdata);
    //             // if (w_o_axis_tlast)
    //             // begin
    //             //     $finish;
    //             // end
    //         end
             
    //     end
    // end
//     Test: Negative Numbers
     always @ (posedge aclk)
     begin
         if (r_test_enable == 1'b1)
         begin
             if (r_test_data == -1 || w_o_axis_tready == 1'b1)
             begin
                 r_i_axis_tdata <= r_test_data;
                 if (r_test_data == -129)
                 begin
                     r_i_axis_tvalid <= 0;
                 end
                 else
                 begin
                    //  if (r_test_data == -64)
                    //  begin
                    //      r_i_axis_tlast <= 1'b1;
                    //  end
                     r_i_axis_tvalid <= 1;
                     r_test_data <= r_test_data - 1;
                 end
             end
             if (w_o_axis_tvalid == 1'b1)
             begin
                 r_num_data_received <= r_num_data_received + 1;
                 $display("Output %d: %f", r_num_data_received, w_o_axis_tdata);
                //  if (w_o_axis_tlast)
                //  begin
                //      $finish;
                //  end
             end
            
         end
     end
endmodule
