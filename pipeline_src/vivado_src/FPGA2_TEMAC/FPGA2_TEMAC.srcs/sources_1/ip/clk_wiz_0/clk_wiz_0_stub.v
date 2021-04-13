// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Mon Mar  8 23:06:34 2021
// Host        : BA3145WS05 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top clk_wiz_0 -prefix
//               clk_wiz_0_ clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(gtx_clk, saxi_aclk, refclk, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="gtx_clk,saxi_aclk,refclk,reset,locked,clk_in1" */;
  output gtx_clk;
  output saxi_aclk;
  output refclk;
  input reset;
  output locked;
  input clk_in1;
endmodule
