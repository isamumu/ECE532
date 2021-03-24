// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Mar 22 20:51:23 2021
// Host        : jhai-Lenovo-ideapad-520 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fpga1_deployment_sou_0_0_stub.v
// Design      : design_1_fpga1_deployment_sou_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fpga1_deployment_source_block,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_clk, i_aresetn, i_packet_to_send, i_enable, 
  o_test_axis_TVALID, i_test_axis_TREADY, o_test_axis_TDATA)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_aresetn,i_packet_to_send[1087:0],i_enable,o_test_axis_TVALID,i_test_axis_TREADY,o_test_axis_TDATA[23:0]" */;
  input i_clk;
  input i_aresetn;
  input [1087:0]i_packet_to_send;
  input i_enable;
  output o_test_axis_TVALID;
  input i_test_axis_TREADY;
  output [23:0]o_test_axis_TDATA;
endmodule
