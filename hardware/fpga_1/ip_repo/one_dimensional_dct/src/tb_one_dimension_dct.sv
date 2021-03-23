`timescale 1ns / 1ps
module tb_one_dimension_dct();
    /*
        Expected Input:
        Fixed Value 1: 128.000000
        Fixed Value 2: 256.000000
        Fixed Value 3: 384.000000
        Fixed Value 4: 512.000000
        Fixed Value 5: 640.000000
        Fixed Value 6: 768.000000
        Fixed Value 7: 896.000000
        Fixed Value 8: 1024.000000
        Fixed Value 9: 1152.000000
        Fixed Value 10: 1280.000000
        Fixed Value 11: 1408.000000
        Fixed Value 12: 1536.000000
        Fixed Value 13: 1664.000000
        Fixed Value 14: 1792.000000
        Fixed Value 15: 1920.000000
        Fixed Value 16: 2048.000000
        Fixed Value 17: 2176.000000
        Fixed Value 18: 2304.000000
        Fixed Value 19: 2432.000000
        Fixed Value 20: 2560.000000
        Fixed Value 21: 2688.000000
        Fixed Value 22: 2816.000000
        Fixed Value 23: 2944.000000
        Fixed Value 24: 3072.000000
        Fixed Value 25: 3200.000000
        Fixed Value 26: 3328.000000
        Fixed Value 27: 3456.000000
        Fixed Value 28: 3584.000000
        Fixed Value 29: 3712.000000
        Fixed Value 30: 3840.000000
        Fixed Value 31: 3968.000000
        Fixed Value 32: 4096.000000
        Fixed Value 33: 4224.000000
        Fixed Value 34: 4352.000000
        Fixed Value 35: 4480.000000
        Fixed Value 36: 4608.000000
        Fixed Value 37: 4736.000000
        Fixed Value 38: 4864.000000
        Fixed Value 39: 4992.000000
        Fixed Value 40: 5120.000000
        Fixed Value 41: 5248.000000
        Fixed Value 42: 5376.000000
        Fixed Value 43: 5504.000000
        Fixed Value 44: 5632.000000
        Fixed Value 45: 5760.000000
        Fixed Value 46: 5888.000000
        Fixed Value 47: 6016.000000
        Fixed Value 48: 6144.000000
        Fixed Value 49: 6272.000000
        Fixed Value 50: 6400.000000
        Fixed Value 51: 6528.000000
        Fixed Value 52: 6656.000000
        Fixed Value 53: 6784.000000
        Fixed Value 54: 6912.000000
        Fixed Value 55: 7040.000000
        Fixed Value 56: 7168.000000
        Fixed Value 57: 7296.000000
        Fixed Value 58: 7424.000000
        Fixed Value 59: 7552.000000
        Fixed Value 60: 7680.000000
        Fixed Value 61: 7808.000000
        Fixed Value 62: 7936.000000
        Fixed Value 63: 8064.000000
        Fixed Value 64: 8192.000000
    */

    /*
        Expected Output:
        DCT Coefficient 0 0: 12.728
        DCT Coefficient 0 1: -6.442
        DCT Coefficient 0 2: 0.000
        DCT Coefficient 0 3: -0.673
        DCT Coefficient 0 4: -0.000
        DCT Coefficient 0 5: -0.201
        DCT Coefficient 0 6: 0.000
        DCT Coefficient 0 7: -0.051
        DCT Coefficient 1 0: 35.355
        DCT Coefficient 1 1: -6.442
        DCT Coefficient 1 2: 0.000
        DCT Coefficient 1 3: -0.673
        DCT Coefficient 1 4: -0.000
        DCT Coefficient 1 5: -0.201
        DCT Coefficient 1 6: 0.000
        DCT Coefficient 1 7: -0.051
        DCT Coefficient 2 0: 57.983
        DCT Coefficient 2 1: -6.442
        DCT Coefficient 2 2: 0.000
        DCT Coefficient 2 3: -0.673
        DCT Coefficient 2 4: -0.000
        DCT Coefficient 2 5: -0.201
        DCT Coefficient 2 6: 0.000
        DCT Coefficient 2 7: -0.051
        DCT Coefficient 3 0: 80.610
        DCT Coefficient 3 1: -6.442
        DCT Coefficient 3 2: 0.000
        DCT Coefficient 3 3: -0.673
        DCT Coefficient 3 4: -0.000
        DCT Coefficient 3 5: -0.201
        DCT Coefficient 3 6: 0.000
        DCT Coefficient 3 7: -0.051
        DCT Coefficient 4 0: 103.238
        DCT Coefficient 4 1: -6.442
        DCT Coefficient 4 2: 0.000
        DCT Coefficient 4 3: -0.673
        DCT Coefficient 4 4: -0.000
        DCT Coefficient 4 5: -0.201
        DCT Coefficient 4 6: 0.000
        DCT Coefficient 4 7: -0.051
        DCT Coefficient 5 0: 125.865
        DCT Coefficient 5 1: -6.442
        DCT Coefficient 5 2: 0.000
        DCT Coefficient 5 3: -0.673
        DCT Coefficient 5 4: -0.000
        DCT Coefficient 5 5: -0.201
        DCT Coefficient 5 6: 0.000
        DCT Coefficient 5 7: -0.051
        DCT Coefficient 6 0: 148.492
        DCT Coefficient 6 1: -6.442
        DCT Coefficient 6 2: 0.000
        DCT Coefficient 6 3: -0.673
        DCT Coefficient 6 4: -0.000
        DCT Coefficient 6 5: -0.201
        DCT Coefficient 6 6: 0.000
        DCT Coefficient 6 7: -0.051
        DCT Coefficient 7 0: 171.120
        DCT Coefficient 7 1: -6.442
        DCT Coefficient 7 2: 0.000
        DCT Coefficient 7 3: -0.673
        DCT Coefficient 7 4: -0.000
        DCT Coefficient 7 5: -0.201
        DCT Coefficient 7 6: 0.000
        DCT Coefficient 7 7: -0.051
    */
    // Declarations
    parameter VALUE_WIDTH = 17;
    parameter SCALE = 7;
    parameter AXIS_DATA_WIDTH = 8*((VALUE_WIDTH - 1)/8 + 1);
    reg aclk;
    reg aresetn;
    reg r_test_enable;
    reg [31:0] r_num_data_received;
    reg [VALUE_WIDTH-1:0] r_test_data;
    // Registers - Input AXI-Stream
    reg r_i_axis_tvalid;
    reg [AXIS_DATA_WIDTH-1:0] r_i_axis_tdata;
    reg r_i_axis_tlast;
    // Wires - Input AXI-Stream
    wire w_o_axis_tready;
    // Registers - Output AXI-Stream
    reg r_i_axis_tready;
    // Wires - Output AXI-Stream
    wire w_o_axis_tvalid;
    wire signed [AXIS_DATA_WIDTH-1:0] w_o_axis_tdata;
    wire w_o_axis_tlast;

    one_dimension_dct #(.VALUE_WIDTH(VALUE_WIDTH), .SCALE(SCALE)) DUT 
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
        r_test_data = 1;
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
    always @ (posedge aclk)
    begin
        if (r_test_enable == 1'b1)
        begin
            if (r_test_data == 1 || w_o_axis_tready == 1'b1)
            begin
                r_i_axis_tdata <= r_test_data << SCALE;
                if (r_test_data == 65)
                begin
                    r_i_axis_tvalid <= 0;
                end
                else
                begin
                    if (r_test_data == 64)
                    begin
                        r_i_axis_tlast <= 1'b1;
                    end
                    r_i_axis_tvalid <= 1;
                    r_test_data <= r_test_data + 1;
                end
            end
            if (w_o_axis_tvalid == 1'b1)
            begin
                r_num_data_received <= r_num_data_received + 1;
                $display("Output %d: %f", r_num_data_received, w_o_axis_tdata >>> SCALE);
//                if (w_o_axis_tlast)
//                begin
//                    $finish;
//                end
            end
            
        end
    end

endmodule
