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


// IP VLNV: user.org:user:two_dimension_dct:1.1
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_two_dimension_dct_0_0 (
  i_clk,
  i_aresetn,
  i_axis_TVALID,
  o_axis_TREADY,
  i_axis_TDATA,
  i_axis_TLAST,
  o_axis_TVALID,
  i_axis_TREADY,
  o_axis_TDATA,
  o_axis_TLAST
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_aresetn, ASSOCIATED_BUSIF i_axis:o_axis, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_aresetn RST" *)
input wire i_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 i_axis TVALID" *)
input wire i_axis_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 i_axis TREADY" *)
output wire o_axis_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 i_axis TDATA" *)
input wire [23 : 0] i_axis_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 i_axis TLAST" *)
input wire i_axis_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_axis TVALID" *)
output wire o_axis_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_axis TREADY" *)
input wire i_axis_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_axis TDATA" *)
output wire [23 : 0] o_axis_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME o_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_axis TLAST" *)
output wire o_axis_TLAST;

  two_dimension_dct #(
    .BLOCK_SIZE(8),
    .VALUE_WIDTH(17),
    .SCALE(7),
    .AXIS_DATA_WIDTH(24)
  ) inst (
    .i_clk(i_clk),
    .i_aresetn(i_aresetn),
    .i_axis_TVALID(i_axis_TVALID),
    .o_axis_TREADY(o_axis_TREADY),
    .i_axis_TDATA(i_axis_TDATA),
    .i_axis_TLAST(i_axis_TLAST),
    .o_axis_TVALID(o_axis_TVALID),
    .i_axis_TREADY(i_axis_TREADY),
    .o_axis_TDATA(o_axis_TDATA),
    .o_axis_TLAST(o_axis_TLAST)
  );
endmodule
