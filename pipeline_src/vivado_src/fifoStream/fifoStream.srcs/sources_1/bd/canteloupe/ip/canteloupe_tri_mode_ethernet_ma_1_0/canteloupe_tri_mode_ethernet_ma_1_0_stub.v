// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Wed Mar 31 02:19:54 2021
// Host        : BA3145WS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_tri_mode_ethernet_ma_1_0/canteloupe_tri_mode_ethernet_ma_1_0_stub.v
// Design      : canteloupe_tri_mode_ethernet_ma_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tri_mode_ethernet_mac_2_example_design,Vivado 2018.3.1" *)
module canteloupe_tri_mode_ethernet_ma_1_0(mdio, mdc, tx_axis_fifo_tdata, 
  tx_axis_fifo_tvalid, tx_axis_fifo_tlast, tx_axis_fifo_tready, rx_axis_fifo_tdata, 
  rx_axis_fifo_tvalid, rx_axis_fifo_tlast, rx_axis_fifo_tready, glbl_rstn, gtx_clk_bufg, 
  s_axi_aclk, dcm_locked, mii_txd, mii_tx_en, mii_tx_er, mii_rxd, mii_rx_dv, mii_rx_er, mii_rx_clk, 
  mii_tx_clk)
/* synthesis syn_black_box black_box_pad_pin="mdio,mdc,tx_axis_fifo_tdata[7:0],tx_axis_fifo_tvalid,tx_axis_fifo_tlast,tx_axis_fifo_tready,rx_axis_fifo_tdata[7:0],rx_axis_fifo_tvalid,rx_axis_fifo_tlast,rx_axis_fifo_tready,glbl_rstn,gtx_clk_bufg,s_axi_aclk,dcm_locked,mii_txd[3:0],mii_tx_en,mii_tx_er,mii_rxd[3:0],mii_rx_dv,mii_rx_er,mii_rx_clk,mii_tx_clk" */;
  inout mdio;
  output mdc;
  input [7:0]tx_axis_fifo_tdata;
  input tx_axis_fifo_tvalid;
  input tx_axis_fifo_tlast;
  output tx_axis_fifo_tready;
  output [7:0]rx_axis_fifo_tdata;
  output rx_axis_fifo_tvalid;
  output rx_axis_fifo_tlast;
  input rx_axis_fifo_tready;
  input glbl_rstn;
  input gtx_clk_bufg;
  input s_axi_aclk;
  input dcm_locked;
  output [3:0]mii_txd;
  output mii_tx_en;
  output mii_tx_er;
  input [3:0]mii_rxd;
  input mii_rx_dv;
  input mii_rx_er;
  input mii_rx_clk;
  input mii_tx_clk;
endmodule
