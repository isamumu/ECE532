// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Tue Mar 30 21:40:56 2021
// Host        : BA3145WS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ canteloupe_tri_mode_ethernet_ma_0_1_stub.v
// Design      : canteloupe_tri_mode_ethernet_ma_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tri_mode_ethernet_mac_2_example_design,Vivado 2018.3.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(sys_clock, phy2rmii_crs_dv, phy2rmii_rx_er, 
  phy2rmii_rxd, rmii2phy_tx_en, rmii2phy_txd, refclk, mdio, mdc, tx_axis_fifo_tdata, 
  tx_axis_fifo_tvalid, tx_axis_fifo_tlast, tx_axis_fifo_tready)
/* synthesis syn_black_box black_box_pad_pin="sys_clock,phy2rmii_crs_dv,phy2rmii_rx_er,phy2rmii_rxd[1:0],rmii2phy_tx_en,rmii2phy_txd[1:0],refclk,mdio,mdc,tx_axis_fifo_tdata[7:0],tx_axis_fifo_tvalid,tx_axis_fifo_tlast,tx_axis_fifo_tready" */;
  input sys_clock;
  input phy2rmii_crs_dv;
  input phy2rmii_rx_er;
  input [1:0]phy2rmii_rxd;
  output rmii2phy_tx_en;
  output [1:0]rmii2phy_txd;
  output refclk;
  inout mdio;
  output mdc;
  input [7:0]tx_axis_fifo_tdata;
  input tx_axis_fifo_tvalid;
  input tx_axis_fifo_tlast;
  output tx_axis_fifo_tready;
endmodule
