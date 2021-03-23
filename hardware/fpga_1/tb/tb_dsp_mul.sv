`timescale 1ns / 1ps

module tb_dsp_mul();

    // Declarations - Registers
    parameter C_WIDTH = 17;
    reg aclk;
    reg r_aresetn;
    reg signed [C_WIDTH-1: 0] r_in_a;
    reg signed [C_WIDTH-1: 0] r_in_b;
    reg signed [2*C_WIDTH: 0] r_out;
    // Declarations - Wires
    wire w_aclk;
    wire w_aresetn;
    wire [C_WIDTH-1: 0] w_in_a;
    wire [C_WIDTH-1: 0] w_in_b;
    wire [2*C_WIDTH: 0] w_out;

    // Assignments
    assign w_aclk = aclk;
    assign w_aresetn = r_aresetn;
    assign w_in_a = r_in_a;
    assign w_in_b = r_in_b;

    dsp_mul #(.VALUE_WIDTH(C_WIDTH)) DUT
    (
        .i_clk(w_aclk),
        .i_aresetn(w_aresetn),
        .i_mul_a(w_in_a),
        .i_mul_b(w_in_b),
        .o_out(w_out)
    );

    // Test Cases
    initial begin
        r_aresetn = 0;
        r_in_a = 0;
        r_in_b = 0;
        r_out = 0;

        #20 r_aresetn = 1;
        // Case 1: (3 * 4) = 12
        r_in_a = 3;
        r_in_b = 4;

        // Case 2: -2 * 5 = -10
        #10 r_in_a = -2;

        // Case 3: Verifying that if valid is 0 nothing changes (should not see (5 + 6) * 7 = 77)
        r_in_b = 5;
    end

    // clock generator (100MHz)
	initial
	begin
		aclk = 0;
		forever
		  #5 aclk = ~aclk;
	end
    
    // Pick up outputs, compare with inputs
    always @ (posedge aclk)
    begin
        r_out <= w_out;
        $display("Module Returned: %d", w_out);
    end 

endmodule