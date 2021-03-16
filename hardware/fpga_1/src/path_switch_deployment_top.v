`timescale 1ns / 1ps
module path_switch_deployment_top
(
    input i_select,
    input i_in0,
    input i_in1,
    output o_out0,
    output o_out1
);

    path_switch #(.VALUE_WIDTH(1)) DUT
    (
        .i_select(i_select),
        .i_in0(i_in0),
        .i_in1(i_in1),
        .o_out0(o_out0),
        .o_out1(o_out1)
    );
endmodule
