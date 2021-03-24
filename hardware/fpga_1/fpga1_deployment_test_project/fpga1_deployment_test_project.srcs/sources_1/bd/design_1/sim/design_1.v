//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Mon Mar 22 20:50:22 2021
//Host        : jhai-Lenovo-ideapad-520 running 64-bit Ubuntu 20.04.2 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=12,numNonXlnxBlks=6,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (sys_clock);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;

  wire [0:0]aresetn_dout;
  wire clk_wiz_0_clk_out1;
  wire [95:0]expected_output_dout;
  (* CONN_BUS_INFO = "fpga1_deployment_rec_0_o_result_axis xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [7:0]fpga1_deployment_rec_0_o_result_axis_TDATA;
  (* CONN_BUS_INFO = "fpga1_deployment_rec_0_o_result_axis xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire fpga1_deployment_rec_0_o_result_axis_TVALID;
  (* CONN_BUS_INFO = "fpga1_deployment_sou_0_o_test_axis xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [23:0]fpga1_deployment_sou_0_o_test_axis_TDATA;
  (* CONN_BUS_INFO = "fpga1_deployment_sou_0_o_test_axis xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire fpga1_deployment_sou_0_o_test_axis_TREADY;
  (* CONN_BUS_INFO = "fpga1_deployment_sou_0_o_test_axis xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire fpga1_deployment_sou_0_o_test_axis_TVALID;
  wire [1087:0]input_packet_dout;
  (* CONN_BUS_INFO = "one_dimension_dct_0_o_axis xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [15:0]one_dimension_dct_0_o_axis_TDATA;
  (* CONN_BUS_INFO = "one_dimension_dct_0_o_axis xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire one_dimension_dct_0_o_axis_TLAST;
  (* CONN_BUS_INFO = "one_dimension_dct_0_o_axis xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire one_dimension_dct_0_o_axis_TREADY;
  (* CONN_BUS_INFO = "one_dimension_dct_0_o_axis xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire one_dimension_dct_0_o_axis_TVALID;
  (* CONN_BUS_INFO = "quantizer_0_o_axis xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [15:0]quantizer_0_o_axis_TDATA;
  (* CONN_BUS_INFO = "quantizer_0_o_axis xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire quantizer_0_o_axis_TLAST;
  (* CONN_BUS_INFO = "quantizer_0_o_axis xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire quantizer_0_o_axis_TREADY;
  (* CONN_BUS_INFO = "quantizer_0_o_axis xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire quantizer_0_o_axis_TVALID;
  wire sys_clock_1;
  (* CONN_BUS_INFO = "two_dimension_dct_0_o_axis xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [23:0]two_dimension_dct_0_o_axis_TDATA;
  (* CONN_BUS_INFO = "two_dimension_dct_0_o_axis xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire two_dimension_dct_0_o_axis_TLAST;
  (* CONN_BUS_INFO = "two_dimension_dct_0_o_axis xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire two_dimension_dct_0_o_axis_TREADY;
  (* CONN_BUS_INFO = "two_dimension_dct_0_o_axis xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire two_dimension_dct_0_o_axis_TVALID;
  wire [0:0]vio_0_probe_out0;
  (* CONN_BUS_INFO = "zig_zag_0_o_axis xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [15:0]zig_zag_0_o_axis_TDATA;
  (* CONN_BUS_INFO = "zig_zag_0_o_axis xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire zig_zag_0_o_axis_TLAST;
  (* CONN_BUS_INFO = "zig_zag_0_o_axis xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire zig_zag_0_o_axis_TREADY;
  (* CONN_BUS_INFO = "zig_zag_0_o_axis xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire zig_zag_0_o_axis_TVALID;

  assign sys_clock_1 = sys_clock;
  design_1_xlconstant_0_1 aresetn
       (.dout(aresetn_dout));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .resetn(aresetn_dout));
  design_1_input_packet_0 expected_output
       (.dout(expected_output_dout));
  design_1_fpga1_deployment_rec_0_0 fpga1_deployment_rec_0
       (.i_aresetn(aresetn_dout),
        .i_clk(clk_wiz_0_clk_out1),
        .i_expected_packet(expected_output_dout),
        .i_test_axis_TDATA(one_dimension_dct_0_o_axis_TDATA),
        .i_test_axis_TVALID(one_dimension_dct_0_o_axis_TVALID),
        .o_result_PASS(fpga1_deployment_rec_0_o_result_axis_TDATA),
        .o_result_TVALID(fpga1_deployment_rec_0_o_result_axis_TVALID),
        .o_test_axis_TREADY(one_dimension_dct_0_o_axis_TREADY));
  design_1_fpga1_deployment_sou_0_0 fpga1_deployment_sou_0
       (.i_aresetn(aresetn_dout),
        .i_clk(clk_wiz_0_clk_out1),
        .i_enable(vio_0_probe_out0),
        .i_packet_to_send(input_packet_dout),
        .i_test_axis_TREADY(fpga1_deployment_sou_0_o_test_axis_TREADY),
        .o_test_axis_TDATA(fpga1_deployment_sou_0_o_test_axis_TDATA),
        .o_test_axis_TVALID(fpga1_deployment_sou_0_o_test_axis_TVALID));
  design_1_xlconstant_0_0 input_packet
       (.dout(input_packet_dout));
  design_1_quantizer_0_0 quantizer_0
       (.i_aresetn(aresetn_dout),
        .i_axis_TDATA(two_dimension_dct_0_o_axis_TDATA),
        .i_axis_TLAST(two_dimension_dct_0_o_axis_TLAST),
        .i_axis_TREADY(quantizer_0_o_axis_TREADY),
        .i_axis_TVALID(two_dimension_dct_0_o_axis_TVALID),
        .i_clk(clk_wiz_0_clk_out1),
        .o_axis_TDATA(quantizer_0_o_axis_TDATA),
        .o_axis_TLAST(quantizer_0_o_axis_TLAST),
        .o_axis_TREADY(two_dimension_dct_0_o_axis_TREADY),
        .o_axis_TVALID(quantizer_0_o_axis_TVALID));
  design_1_run_length_encoder_0_0 run_length_encoder_0
       (.i_aresetn(aresetn_dout),
        .i_axis_TDATA(zig_zag_0_o_axis_TDATA),
        .i_axis_TLAST(zig_zag_0_o_axis_TLAST),
        .i_axis_TREADY(one_dimension_dct_0_o_axis_TREADY),
        .i_axis_TVALID(zig_zag_0_o_axis_TVALID),
        .i_clk(clk_wiz_0_clk_out1),
        .o_axis_TDATA(one_dimension_dct_0_o_axis_TDATA),
        .o_axis_TLAST(one_dimension_dct_0_o_axis_TLAST),
        .o_axis_TREADY(zig_zag_0_o_axis_TREADY),
        .o_axis_TVALID(one_dimension_dct_0_o_axis_TVALID));
  design_1_system_ila_0_0 system_ila_0
       (.SLOT_0_AXIS_tdata(fpga1_deployment_sou_0_o_test_axis_TDATA),
        .SLOT_0_AXIS_tlast(1'b0),
        .SLOT_0_AXIS_tready(fpga1_deployment_sou_0_o_test_axis_TREADY),
        .SLOT_0_AXIS_tvalid(fpga1_deployment_sou_0_o_test_axis_TVALID),
        .SLOT_1_AXIS_tdata(two_dimension_dct_0_o_axis_TDATA),
        .SLOT_1_AXIS_tlast(two_dimension_dct_0_o_axis_TLAST),
        .SLOT_1_AXIS_tready(two_dimension_dct_0_o_axis_TREADY),
        .SLOT_1_AXIS_tvalid(two_dimension_dct_0_o_axis_TVALID),
        .SLOT_2_AXIS_tdata(quantizer_0_o_axis_TDATA),
        .SLOT_2_AXIS_tlast(quantizer_0_o_axis_TLAST),
        .SLOT_2_AXIS_tready(quantizer_0_o_axis_TREADY),
        .SLOT_2_AXIS_tvalid(quantizer_0_o_axis_TVALID),
        .SLOT_3_AXIS_tdata(zig_zag_0_o_axis_TDATA),
        .SLOT_3_AXIS_tlast(zig_zag_0_o_axis_TLAST),
        .SLOT_3_AXIS_tready(zig_zag_0_o_axis_TREADY),
        .SLOT_3_AXIS_tvalid(zig_zag_0_o_axis_TVALID),
        .SLOT_4_AXIS_tdata(one_dimension_dct_0_o_axis_TDATA),
        .SLOT_4_AXIS_tlast(one_dimension_dct_0_o_axis_TLAST),
        .SLOT_4_AXIS_tready(one_dimension_dct_0_o_axis_TREADY),
        .SLOT_4_AXIS_tvalid(one_dimension_dct_0_o_axis_TVALID),
        .SLOT_5_AXIS_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fpga1_deployment_rec_0_o_result_axis_TDATA}),
        .SLOT_5_AXIS_tlast(1'b0),
        .SLOT_5_AXIS_tvalid(fpga1_deployment_rec_0_o_result_axis_TVALID),
        .clk(clk_wiz_0_clk_out1),
        .resetn(aresetn_dout));
  design_1_two_dimension_dct_0_0 two_dimension_dct_0
       (.i_aresetn(aresetn_dout),
        .i_axis_TDATA(fpga1_deployment_sou_0_o_test_axis_TDATA),
        .i_axis_TLAST(1'b0),
        .i_axis_TREADY(two_dimension_dct_0_o_axis_TREADY),
        .i_axis_TVALID(fpga1_deployment_sou_0_o_test_axis_TVALID),
        .i_clk(clk_wiz_0_clk_out1),
        .o_axis_TDATA(two_dimension_dct_0_o_axis_TDATA),
        .o_axis_TLAST(two_dimension_dct_0_o_axis_TLAST),
        .o_axis_TREADY(fpga1_deployment_sou_0_o_test_axis_TREADY),
        .o_axis_TVALID(two_dimension_dct_0_o_axis_TVALID));
  design_1_vio_0_0 vio_0
       (.clk(sys_clock_1),
        .probe_out0(vio_0_probe_out0));
  design_1_zig_zag_0_0 zig_zag_0
       (.i_aresetn(aresetn_dout),
        .i_axis_TDATA(quantizer_0_o_axis_TDATA),
        .i_axis_TLAST(quantizer_0_o_axis_TLAST),
        .i_axis_TREADY(zig_zag_0_o_axis_TREADY),
        .i_axis_TVALID(quantizer_0_o_axis_TVALID),
        .i_clk(clk_wiz_0_clk_out1),
        .o_axis_TDATA(zig_zag_0_o_axis_TDATA),
        .o_axis_TLAST(zig_zag_0_o_axis_TLAST),
        .o_axis_TREADY(quantizer_0_o_axis_TREADY),
        .o_axis_TVALID(zig_zag_0_o_axis_TVALID));
endmodule
