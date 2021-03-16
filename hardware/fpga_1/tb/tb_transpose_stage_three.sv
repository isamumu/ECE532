`timescale 1ns / 1ps
module tb_transpose_stage_three();
    // Declarations
    parameter VALUE_WIDTH = 17;
    reg aclk;
    reg aresetn;
    reg r_test_enable;
    reg r_test_finished;
    /*
        Test matrices:
        ABAB, CDCD, EFEF, 0101, AAAA, BBBB, CCCC, DDDD,
        2323, 4545, 6767, 8989, EEEE, FFFF, 1111, 2222,

        4444, 5555, 6666, 7777, 8888, 9999, 0A0A, 1B1B,
        3D3D, 4E4E, 5F5F, 6060, 7171, 8282, 9393, A4A4,
        

        Expected output:
        ABAB, CDCD, EFEF, 0101, 2323, 4545, 6767, 8989,
        AAAA, BBBB, CCCC, DDDD, EEEE, FFFF, 1111, 2222,

        4444, 5555, 6666, 7777, 3D3D, 4E4E, 5F5F, 6060,
        8888, 9999, 0A0A, 1B1B, 7171, 8282, 9393, A4A4,
    */
    reg [VALUE_WIDTH-1:0] r_test_data [0:1][0:15];
    reg [31:0] r_index;
    reg [31:0] r_counter;
    reg r_i_enable;
    reg [VALUE_WIDTH-1:0] r_in0;
    reg [VALUE_WIDTH-1:0] r_in1;
    wire w_o_enable;
    wire [VALUE_WIDTH-1:0] w_out0;
    wire [VALUE_WIDTH-1:0] w_out1;

    // Modules
    transpose_stage_three #(.VALUE_WIDTH(VALUE_WIDTH)) DUT
    (
        .i_clk(aclk),
        .i_aresetn(aresetn),
        .i_enable(r_i_enable),
        .i_in0(r_in0),
        .i_in1(r_in1),
        .o_enable(w_o_enable),
        .o_out0(w_out0),
        .o_out1(w_out1)
    );

    // clock generator (100MHz)
	initial
	begin
		aclk = 1;
		forever
		  #5 aclk = ~aclk;
	end

    // start the testbench by resetting the system for 5 cycles
	initial
	begin
		aresetn = 0;
        r_test_enable = 0;
        r_test_finished = 0;
        r_index = 0;
        r_i_enable = 0;
        r_in0 = 0;
        r_in1 = 0;
        r_counter = 0;
        r_test_data [0][0] = 16'hABAB;
        r_test_data [0][1] = 16'hCDCD;
        r_test_data [0][2] = 16'hEFEF;
        r_test_data [0][3] = 16'h0101;
        r_test_data [1][0] = 16'h2323;
        r_test_data [1][1] = 16'h4545;
        r_test_data [1][2] = 16'h6767;
        r_test_data [1][3] = 16'h8989;

        r_test_data [0][4] = 16'hAAAA;
        r_test_data [0][5] = 16'hBBBB;
        r_test_data [0][6] = 16'hCCCC;
        r_test_data [0][7] = 16'hDDDD;
        r_test_data [1][4] = 16'hEEEE;
        r_test_data [1][5] = 16'hFFFF;
        r_test_data [1][6] = 16'h1111;
        r_test_data [1][7] = 16'h2222;

        r_test_data [0][8]  = 16'h4444;
        r_test_data [0][9]  = 16'h5555; 
        r_test_data [0][10] = 16'h6666;
        r_test_data [0][11] = 16'h7777;
        r_test_data [1][8]  = 16'h3D3D;
        r_test_data [1][9]  = 16'h4E4E;
        r_test_data [1][10] = 16'h5F5F;
        r_test_data [1][11] = 16'h6060;        

        r_test_data [0][12] = 16'h8888;
        r_test_data [0][13] = 16'h9999; 
        r_test_data [0][14] = 16'h0A0A;
        r_test_data [0][15] = 16'h1B1B;
        r_test_data [1][12] = 16'h7171;
        r_test_data [1][13] = 16'h8282;
        r_test_data [1][14] = 16'h9393;
        r_test_data [1][15] = 16'hA4A4;  

		repeat(5) @(posedge aclk);
		forever
        begin
			@(posedge aclk) aresetn = 1;
            @(posedge aclk) r_test_enable <= 1;
        end
	end

    always @(posedge aclk)
    begin
        if (r_test_enable == 1 && r_test_finished == 0)
        begin
            r_in0 <= (r_index <= 15) ? r_test_data[0][r_index] : 0;
            r_in1 <= (r_index <= 15) ? r_test_data[1][r_index] : 0;
            r_i_enable <= (r_index == 16) ? 0 : 1;
            r_test_finished <= (r_index == 16) ? 1 : 0;
            r_index <= r_index + 1;
        end
    end

    initial begin
        $monitor("Output 0: 0x%h", w_out0);
        $monitor("Output 1: 0x%h", w_out1);
    end

endmodule