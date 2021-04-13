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


// IP VLNV: user.org:user:frame_generator_custom:1.2
// IP Revision: 1

(* X_CORE_INFO = "frame_generator_custom,Vivado 2018.3.1" *)
(* CHECK_LICENSE_TYPE = "canteloupe_frame_generator_cust_0_0,frame_generator_custom,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module canteloupe_frame_generator_cust_0_0 (
  i_clk,
  i_aresetn,
  rx_mic_TVALID,
  rx_mic_TREADY,
  rx_mic_TDATA,
  rx_mic_TLAST,
  tx_fifo_TVALID,
  tx_fifo_TREADY,
  tx_fifo_TDATA,
  tx_fifo_TLAST
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_aresetn, ASSOCIATED_BUSIF rx_mic:tx_fifo, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_aresetn RST" *)
input wire i_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_mic TVALID" *)
input wire rx_mic_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_mic TREADY" *)
output wire rx_mic_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_mic TDATA" *)
input wire [15 : 0] rx_mic_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_mic, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_mic TLAST" *)
input wire rx_mic_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_fifo TVALID" *)
output wire tx_fifo_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_fifo TREADY" *)
input wire tx_fifo_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_fifo TDATA" *)
output wire [7 : 0] tx_fifo_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_fifo, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_fifo TLAST" *)
output wire tx_fifo_TLAST;

  frame_generator_custom #(
    .INPUT_VALUE_WIDTH(16),
    .INPUT_AXIS_DATA_WIDTH(16),
    .FIFO_WIDTH(8),
    .OUTPUT_AXIS_DATA_WIDTH(8),
    .VALID_THRESHOLD(100),
    .DEST_ADDR(48'H000A35000004),
    .SRC_ADDR(48'H000A35000012),
    .MAX_SIZE(16'H04B0)
  ) inst (
    .i_clk(i_clk),
    .i_aresetn(i_aresetn),
    .rx_mic_TVALID(rx_mic_TVALID),
    .rx_mic_TREADY(rx_mic_TREADY),
    .rx_mic_TDATA(rx_mic_TDATA),
    .rx_mic_TLAST(rx_mic_TLAST),
    .tx_fifo_TVALID(tx_fifo_TVALID),
    .tx_fifo_TREADY(tx_fifo_TREADY),
    .tx_fifo_TDATA(tx_fifo_TDATA),
    .tx_fifo_TLAST(tx_fifo_TLAST)
  );
endmodule
