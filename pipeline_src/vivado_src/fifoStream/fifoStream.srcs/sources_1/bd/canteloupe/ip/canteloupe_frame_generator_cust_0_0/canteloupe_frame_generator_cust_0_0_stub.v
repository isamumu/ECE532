// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Tue Mar 30 21:40:32 2021
// Host        : BA3145WS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top canteloupe_frame_generator_cust_0_0 -prefix
//               canteloupe_frame_generator_cust_0_0_ canteloupe_frame_generator_cust_0_0_stub.v
// Design      : canteloupe_frame_generator_cust_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "frame_generator_custom,Vivado 2018.3.1" *)
module canteloupe_frame_generator_cust_0_0(i_clk, i_aresetn, rx_mic_TVALID, rx_mic_TREADY, 
  rx_mic_TDATA, rx_mic_TLAST, tx_fifo_TVALID, tx_fifo_TREADY, tx_fifo_TDATA, tx_fifo_TLAST)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_aresetn,rx_mic_TVALID,rx_mic_TREADY,rx_mic_TDATA[15:0],rx_mic_TLAST,tx_fifo_TVALID,tx_fifo_TREADY,tx_fifo_TDATA[7:0],tx_fifo_TLAST" */;
  input i_clk;
  input i_aresetn;
  input rx_mic_TVALID;
  output rx_mic_TREADY;
  input [15:0]rx_mic_TDATA;
  input rx_mic_TLAST;
  output tx_fifo_TVALID;
  input tx_fifo_TREADY;
  output [7:0]tx_fifo_TDATA;
  output tx_fifo_TLAST;
endmodule
