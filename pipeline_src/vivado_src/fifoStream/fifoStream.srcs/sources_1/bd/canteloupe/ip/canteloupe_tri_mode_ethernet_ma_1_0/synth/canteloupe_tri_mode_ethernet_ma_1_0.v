// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: utoronto.ca:user:tri_mode_ethernet_mac_2_example_design:1.0
// IP Revision: 2

(* X_CORE_INFO = "tri_mode_ethernet_mac_2_example_design,Vivado 2018.3.1" *)
(* CHECK_LICENSE_TYPE = "canteloupe_tri_mode_ethernet_ma_1_0,tri_mode_ethernet_mac_2_example_design,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module canteloupe_tri_mode_ethernet_ma_1_0 (
  mdio,
  mdc,
  tx_axis_fifo_tdata,
  tx_axis_fifo_tvalid,
  tx_axis_fifo_tlast,
  tx_axis_fifo_tready,
  rx_axis_fifo_tdata,
  rx_axis_fifo_tvalid,
  rx_axis_fifo_tlast,
  rx_axis_fifo_tready,
  glbl_rstn,
  gtx_clk_bufg,
  s_axi_aclk,
  dcm_locked,
  mii_txd,
  mii_tx_en,
  mii_tx_er,
  mii_rxd,
  mii_rx_dv,
  mii_rx_er,
  mii_rx_clk,
  mii_tx_clk
);

inout wire mdio;
output wire mdc;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_fifo TDATA" *)
input wire [7 : 0] tx_axis_fifo_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_fifo TVALID" *)
input wire tx_axis_fifo_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_fifo TLAST" *)
input wire tx_axis_fifo_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_axis_fifo, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_axis_fifo TREADY" *)
output wire tx_axis_fifo_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_fifo TDATA" *)
output wire [7 : 0] rx_axis_fifo_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_fifo TVALID" *)
output wire rx_axis_fifo_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_fifo TLAST" *)
output wire rx_axis_fifo_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_axis_fifo, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_axis_fifo TREADY" *)
input wire rx_axis_fifo_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME glbl_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 glbl_rstn RST" *)
input wire glbl_rstn;
input wire gtx_clk_bufg;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *)
input wire s_axi_aclk;
input wire dcm_locked;
output wire [3 : 0] mii_txd;
output wire mii_tx_en;
output wire mii_tx_er;
input wire [3 : 0] mii_rxd;
input wire mii_rx_dv;
input wire mii_rx_er;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mii_rx_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 mii_rx_clk CLK" *)
input wire mii_rx_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mii_tx_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 mii_tx_clk CLK" *)
input wire mii_tx_clk;

  tri_mode_ethernet_mac_2_example_design inst (
    .mdio(mdio),
    .mdc(mdc),
    .tx_axis_fifo_tdata(tx_axis_fifo_tdata),
    .tx_axis_fifo_tvalid(tx_axis_fifo_tvalid),
    .tx_axis_fifo_tlast(tx_axis_fifo_tlast),
    .tx_axis_fifo_tready(tx_axis_fifo_tready),
    .rx_axis_fifo_tdata(rx_axis_fifo_tdata),
    .rx_axis_fifo_tvalid(rx_axis_fifo_tvalid),
    .rx_axis_fifo_tlast(rx_axis_fifo_tlast),
    .rx_axis_fifo_tready(rx_axis_fifo_tready),
    .glbl_rstn(glbl_rstn),
    .gtx_clk_bufg(gtx_clk_bufg),
    .s_axi_aclk(s_axi_aclk),
    .dcm_locked(dcm_locked),
    .mii_txd(mii_txd),
    .mii_tx_en(mii_tx_en),
    .mii_tx_er(mii_tx_er),
    .mii_rxd(mii_rxd),
    .mii_rx_dv(mii_rx_dv),
    .mii_rx_er(mii_rx_er),
    .mii_rx_clk(mii_rx_clk),
    .mii_tx_clk(mii_tx_clk)
  );
endmodule
