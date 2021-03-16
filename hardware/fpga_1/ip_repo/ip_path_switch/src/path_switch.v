`timescale 1ns / 1ps
module path_switch
    #(
        parameter VALUE_WIDTH = 17
    )
    (
        input i_select,

        input [VALUE_WIDTH-1:0] i_in0,
        input [VALUE_WIDTH-1:0] i_in1,

        output [VALUE_WIDTH-1:0] o_out0,
        output [VALUE_WIDTH-1:0] o_out1
    );
    localparam STATE_CROSSED = 1'b1;
    assign o_out0 = (i_select == STATE_CROSSED) ? i_in1 : i_in0;
    assign o_out1 = (i_select == STATE_CROSSED) ? i_in0 : i_in1;
endmodule    