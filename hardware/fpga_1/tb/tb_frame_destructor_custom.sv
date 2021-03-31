`timescale 1ns / 1ps
module tb_frame_destructor_custom();
    /*
        
    */
    // Declarations
    parameter INPUT_VALUE_WIDTH = 8;
    parameter INPUT_AXIS_DATA_WIDTH = 8*((INPUT_VALUE_WIDTH - 1)/8 + 1);
    parameter OUTPUT_VALUE_WIDTH = 16;
    parameter OUTPUT_AXIS_DATA_WIDTH = 8*((OUTPUT_VALUE_WIDTH - 1)/8 + 1);
    reg aclk;
    reg aresetn;
    reg r_test_enable;
    reg [31:0] r_num_data_received;
    reg [31:0] r_num_data_sent;
    reg [INPUT_AXIS_DATA_WIDTH-1:0] r_test_array [0:63];
    reg [INPUT_VALUE_WIDTH-1:0] r_test_data;
    // Registers - Input AXI-Stream
    reg r_i_axis_tvalid;
    reg [INPUT_AXIS_DATA_WIDTH-1:0] r_i_axis_tdata;
    reg r_i_axis_tlast;
    // Wires - Input AXI-Stream
    wire w_o_axis_tready;
    // Registers - Output AXI-Stream
    reg r_i_axis_tready;
    // Wires - Output AXI-Stream
    wire w_o_axis_tvalid;
    wire signed [OUTPUT_AXIS_DATA_WIDTH-1:0] w_o_axis_tdata;
    wire w_o_axis_tlast;

    frame_destructor_custom #(.INPUT_VALUE_WIDTH(INPUT_VALUE_WIDTH), .OUTPUT_VALUE_WIDTH(OUTPUT_VALUE_WIDTH)) DUT 
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
        r_num_data_sent = 0;
        r_num_data_received = 1;
        r_test_data = 1;
        r_i_axis_tvalid = 0;
        r_i_axis_tdata = 0;
        r_i_axis_tlast = 0;
        r_i_axis_tready = 1; // Always Ready
        r_test_array[0]  = 8'h00;
        r_test_array[1]  = 8'h0A;
        r_test_array[2]  = 8'h35;
        r_test_array[3]  = 8'h00;
        r_test_array[4]  = 8'h00;
        r_test_array[5]  = 8'h04;
        r_test_array[6]  = 8'h00;
        r_test_array[7]  = 8'h0A;
        r_test_array[8]  = 8'h35;
        r_test_array[9]  = 8'h00;
        r_test_array[10] = 8'h00;
        r_test_array[11] = 8'h12;
        r_test_array[12] = 8'h00; // Packet Size is 30 bytes
        r_test_array[13] = 8'h1E;
        r_test_array[14] = 8'h01;
        r_test_array[15] = 8'h23;
        r_test_array[16] = 8'h45;
        r_test_array[17] = 8'h67;
        r_test_array[18] = 8'h03; // TLAST Marker should be seen with 45 67
        r_test_array[19] = 8'hFF;
        r_test_array[20] = 8'h89;
        r_test_array[21] = 8'hAB;
        r_test_array[22] = 8'hCD;
        r_test_array[23] = 8'hEF;
        r_test_array[24] = 8'h11;
        r_test_array[25] = 8'h22;
        r_test_array[26] = 8'h33;
        r_test_array[27] = 8'h44;
        r_test_array[28] = 8'h55;
        r_test_array[29] = 8'h66;
        r_test_array[30] = 8'h77;
        r_test_array[31] = 8'h88;
        r_test_array[32] = 8'h03; // TLAST Marker should be seen with 77 88
        r_test_array[33] = 8'hFF;
        r_test_array[34] = 8'h99;
        r_test_array[35] = 8'hAA;
        r_test_array[36] = 8'hBB;
        r_test_array[37] = 8'hCC;
        r_test_array[38] = 8'hDD;
        r_test_array[39] = 8'hEE;
        r_test_array[40] = 8'hFF;
        r_test_array[41] = 8'h10;
        r_test_array[42] = 8'h03; // TLAST Marker should be with FF 10
        r_test_array[43] = 8'hFF;
        // r_test_array[44] = 8'h;
        // r_test_array[45] = 8'h;
        // r_test_array[46] = 8'h;
        // r_test_array[47] = 8'h;
        // r_test_array[48] = 8'h;
        // r_test_array[49] = 8'h;
        // r_test_array[50] = 8'h;
        // r_test_array[51] = 8'h;
        // r_test_array[52] = 8'h;
        // r_test_array[53] = 8'h;
        // r_test_array[54] = 8'h;
        // r_test_array[55] = 8'h;
        // r_test_array[56] = 8'h;
        // r_test_array[57] = 8'h;
        // r_test_array[58] = 8'h;
        // r_test_array[59] = 8'h;
        // r_test_array[60] = 8'h;
        // r_test_array[61] = 8'h;
        // r_test_array[62] = 8'h;
        // r_test_array[63] = 8'h;
		repeat(5) @(posedge aclk);
		forever
			@(posedge aclk) aresetn = 1;
	end

    initial begin
        #50 r_test_enable = 1;
    end

    // Test Case: Feed in 8x8 matrix of 255 in Fixed Point
    always @ (posedge aclk)
    begin
        if (r_test_enable == 1'b1)
        begin
            if (r_num_data_sent == 0 || w_o_axis_tready == 1'b1)
            begin
                r_i_axis_tdata <= r_test_array[r_num_data_sent];
                r_i_axis_tlast <= 0;
                if (r_num_data_sent == 44)
                begin
                    r_i_axis_tvalid <= 0;
                    r_num_data_sent <= 0;
                end
                else
                begin
                    if (r_num_data_sent == 43)
                    begin
                        r_i_axis_tlast <= 1'b1;
                    end
                    r_i_axis_tvalid <= 1;
                    r_test_data <= r_test_data + 1;
                    r_num_data_sent <= r_num_data_sent + 1;
                end
            end
            if (w_o_axis_tvalid == 1'b1)
            begin
                r_num_data_received <= r_num_data_received + 1;
                $display("Output %d: %f", r_num_data_received, w_o_axis_tdata);
//                if (w_o_axis_tlast)
//                begin
//                    $finish;
//                end
            end
            
        end
    end

endmodule