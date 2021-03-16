`timescale 1ns / 1ps
module tb_path_switch();
    parameter VALUE_WIDTH = 17;

    // Declarations
    reg r_select;
    reg [VALUE_WIDTH-1:0] r_in0;
    reg [VALUE_WIDTH-1:0] r_in1;
    wire [VALUE_WIDTH-1:0] w_out0;
    wire [VALUE_WIDTH-1:0] w_out1;

    path_switch #(.VALUE_WIDTH(VALUE_WIDTH)) DUT
    (
        .i_select(r_select),
        .i_in0(r_in0),
        .i_in1(r_in1),
        .o_out0(w_out0),
        .o_out1(w_out1)
    );

    initial begin
        r_select = 0;
        r_in0 = 17'hABAB;
        r_in1 = 17'hCDCD;

        #10 r_select = 1;
        #2 r_select = 0;
    end
endmodule
