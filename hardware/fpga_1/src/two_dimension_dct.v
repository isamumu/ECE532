`timescale 1ns / 1ps
module two_dimension_dct
    #(
        parameter BLOCK_SIZE = 8,
        parameter VALUE_WIDTH = 17, // Total width associated with each value
        parameter SCALE = 7, // Int to Fixed Conversion = multiply by 2^7
        parameter AXIS_DATA_WIDTH = 8*((VALUE_WIDTH - 1)/8 + 1)
    )
    (
        input i_clk,
        input i_aresetn,
        // Input AXI-Stream
        input i_axis_TVALID,
        output o_axis_TREADY,
        input [AXIS_DATA_WIDTH-1:0] i_axis_TDATA,
        input i_axis_TLAST,
        // Output AXI-Stream
        output o_axis_TVALID,
        input i_axis_TREADY,
        output [AXIS_DATA_WIDTH-1:0] o_axis_TDATA,
        output o_axis_TLAST
    );

    // Declarations
    // Wires - DCT 0 to Transpose
    wire w_dct0_to_trans_axis_tvalid;
    wire w_dct0_to_trans_axis_tready;
    wire [AXIS_DATA_WIDTH-1:0] w_dct0_to_trans_axis_tdata;
    wire w_dct0_to_trans_axis_tlast;
    // Wires - Transpose to DCT 1
    wire w_trans_to_dct1_axis_tvalid;
    wire w_trans_to_dct1_axis_tready;
    wire [AXIS_DATA_WIDTH-1:0] w_trans_to_dct1_axis_tdata;
    wire w_trans_to_dct1_axis_tlast;

    one_dimension_dct #(.BLOCK_SIZE(BLOCK_SIZE), .VALUE_WIDTH(VALUE_WIDTH), .SCALE(SCALE)) dct_0
    (
        .i_clk(i_clk),
        .i_aresetn(i_aresetn),
        .i_axis_TVALID(i_axis_TVALID),
        .o_axis_TREADY(o_axis_TREADY),
        .i_axis_TDATA(i_axis_TDATA),
        .i_axis_TLAST(i_axis_TLAST),
        .o_axis_TVALID(w_dct0_to_trans_axis_tvalid),
        .i_axis_TREADY(w_dct0_to_trans_axis_tready),
        .o_axis_TDATA(w_dct0_to_trans_axis_tdata),
        .o_axis_TLAST(w_dct0_to_trans_axis_tlast)
    );

    transpose #(.BLOCK_SIZE(BLOCK_SIZE), .VALUE_WIDTH(VALUE_WIDTH)) transpose_0
    (
        .i_clk(i_clk),
        .i_aresetn(i_aresetn),
        .i_axis_TVALID(w_dct0_to_trans_axis_tvalid),
        .o_axis_TREADY(w_dct0_to_trans_axis_tready),
        .i_axis_TDATA(w_dct0_to_trans_axis_tdata),
        .i_axis_TLAST(w_dct0_to_trans_axis_tlast),
        .o_axis_TVALID(w_trans_to_dct1_axis_tvalid),
        .i_axis_TREADY(w_trans_to_dct1_axis_tready),
        .o_axis_TDATA(w_trans_to_dct1_axis_tdata),
        .o_axis_TLAST(w_trans_to_dct1_axis_tlast)
    );

    one_dimension_dct #(.BLOCK_SIZE(BLOCK_SIZE), .VALUE_WIDTH(VALUE_WIDTH), .SCALE(SCALE)) dct_1
    (
        .i_clk(i_clk),
        .i_aresetn(i_aresetn),
        .i_axis_TVALID(w_trans_to_dct1_axis_tvalid),
        .o_axis_TREADY(w_trans_to_dct1_axis_tready),
        .i_axis_TDATA(w_trans_to_dct1_axis_tdata),
        .i_axis_TLAST(w_trans_to_dct1_axis_tlast),
        .o_axis_TVALID(o_axis_TVALID),
        .i_axis_TREADY(i_axis_TREADY),
        .o_axis_TDATA(o_axis_TDATA),
        .o_axis_TLAST(o_axis_TLAST)
    );
endmodule