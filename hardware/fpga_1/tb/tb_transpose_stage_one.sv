`timescale 1ns / 1ps
module tb_transpose_stage_one();
    // Declarations
    parameter VALUE_WIDTH = 17;
    reg aclk;
    reg aresetn;
    reg r_test_enable;
    reg r_test_finished;
    /*
        Test matrices:
        ABAB, CDCD, 
        2323, 4545, 
        
        EFEF, 0101,
        6767, 8989

        Expected output:
        ABAB, 2323,
        CDCD, 4545,

        EFEF, 6767,
        0101, 8989
    */
    reg [VALUE_WIDTH-1:0] r_test_data [0:3][0:3];
    reg [2:0] r_index;
    reg [31:0] r_counter;
    reg r_i_enable;
    reg [VALUE_WIDTH-1:0] r_in0;
    reg [VALUE_WIDTH-1:0] r_in1;
    wire w_o_enable;
    wire [VALUE_WIDTH-1:0] w_out0;
    wire [VALUE_WIDTH-1:0] w_out1;

    // Modules
    transpose_stage_one #(.VALUE_WIDTH(VALUE_WIDTH)) DUT
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
		repeat(5) @(posedge aclk);
		forever
        begin
			@(posedge aclk) aresetn = 1;
            @(posedge aclk) r_test_enable <= 1;
        end
	end
    
    // initial begin
    //     #70 r_test_enable = 1;
    // //    r_i_enable = 1;
    // end

    always @(posedge aclk)
    begin
        if (r_test_enable == 1 && r_test_finished == 0)
        begin
            r_in0 <= (r_index <= 3) ? r_test_data[0][r_index] : 0;
            r_in1 <= (r_index <= 3) ? r_test_data[1][r_index] : 0;
            r_i_enable <= (r_index == 4) ? 0 : 1;
            r_test_finished <= (r_index == 4) ? 1 : 0;
            r_index <= r_index + 1;
        end
    end

    // initial begin
    //     #70 r_in0 = r_test_data[0][0];
    //     r_in1 = r_test_data[1][0];
    //     r_i_enable = 1;

    //     #10 r_in0 = r_test_data[0][1];
    //     r_in1 = r_test_data[1][1];    

    //     #10 r_in0 = r_test_data[0][2];
    //     r_in1 = r_test_data[1][2]; 

    //     #10 r_in0 = r_test_data[0][3];
    //     r_in1 = r_test_data[1][3]; 
    //     r_i_enable = 0;
    // end

    initial begin
        $monitor("Output 0: 0x%h", w_out0);
        $monitor("Output 1: 0x%h", w_out1);
    end

endmodule