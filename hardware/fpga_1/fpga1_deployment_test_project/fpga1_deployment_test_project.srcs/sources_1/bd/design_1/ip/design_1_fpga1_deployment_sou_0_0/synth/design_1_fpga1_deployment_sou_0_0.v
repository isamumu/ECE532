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


// IP VLNV: user.org:user:fpga1_deployment_source_block:1.0
// IP Revision: 2

(* X_CORE_INFO = "fpga1_deployment_source_block,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "design_1_fpga1_deployment_sou_0_0,fpga1_deployment_source_block,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_fpga1_deployment_sou_0_0 (
  i_clk,
  i_aresetn,
  i_packet_to_send,
  i_enable,
  o_test_axis_TVALID,
  i_test_axis_TREADY,
  o_test_axis_TDATA
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_aresetn, ASSOCIATED_BUSIF o_test_axis, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_aresetn RST" *)
input wire i_aresetn;
input wire [1087 : 0] i_packet_to_send;
input wire i_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_test_axis TVALID" *)
output wire o_test_axis_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_test_axis TREADY" *)
input wire i_test_axis_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME o_test_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_test_axis TDATA" *)
output wire [23 : 0] o_test_axis_TDATA;

  fpga1_deployment_source_block #(
    .AXIS_DATA_WIDTH(24),
    .NUM_TRANSFERS(64),
    .NUM_BITS_PER_TRANSFER(17)
  ) inst (
    .i_clk(i_clk),
    .i_aresetn(i_aresetn),
    .i_packet_to_send(i_packet_to_send),
    .i_enable(i_enable),
    .o_test_axis_TVALID(o_test_axis_TVALID),
    .i_test_axis_TREADY(i_test_axis_TREADY),
    .o_test_axis_TDATA(o_test_axis_TDATA)
  );
endmodule
