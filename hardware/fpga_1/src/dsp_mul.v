(* use_dsp = "yes" *) module dsp_mul
    #(
        parameter VALUE_WIDTH = 17
    )
    (
        input i_clk,
        input i_aresetn,
        input  signed [VALUE_WIDTH-1:0] i_mul_a,
        input  signed [VALUE_WIDTH-1:0] i_mul_b,
        output signed [2*VALUE_WIDTH:0] o_out
    );

    // Declarations
    reg signed [VALUE_WIDTH-1:0] r_a_reg;
    reg signed [VALUE_WIDTH-1:0] r_b_reg;
    reg signed [2*VALUE_WIDTH:0] r_mul_reg;

    // Assignments
    assign o_out = r_mul_reg;

    always @(posedge i_clk)
    begin
        if (i_aresetn == 0)
        begin
            r_a_reg <= 0;
            r_b_reg <= 0;
            r_mul_reg <= 0;
        end
        else
        begin
            r_a_reg <= i_mul_a;
            r_b_reg <= i_mul_b;
            r_mul_reg <= r_a_reg * r_b_reg;
        end
    end
endmodule