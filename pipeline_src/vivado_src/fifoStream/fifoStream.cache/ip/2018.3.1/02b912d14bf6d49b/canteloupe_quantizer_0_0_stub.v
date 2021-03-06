// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Tue Mar 23 21:39:23 2021
// Host        : BA3145WS04 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ canteloupe_quantizer_0_0_stub.v
// Design      : canteloupe_quantizer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "quantizer,Vivado 2018.3.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_clk, i_aresetn, i_axis_TVALID, o_axis_TREADY, 
  i_axis_TDATA, i_axis_TLAST, o_axis_TVALID, i_axis_TREADY, o_axis_TDATA, o_axis_TLAST)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_aresetn,i_axis_TVALID,o_axis_TREADY,i_axis_TDATA[23:0],i_axis_TLAST,o_axis_TVALID,i_axis_TREADY,o_axis_TDATA[15:0],o_axis_TLAST" */;
  input i_clk;
  input i_aresetn;
  input i_axis_TVALID;
  output o_axis_TREADY;
  input [23:0]i_axis_TDATA;
  input i_axis_TLAST;
  output o_axis_TVALID;
  input i_axis_TREADY;
  output [15:0]o_axis_TDATA;
  output o_axis_TLAST;
endmodule
