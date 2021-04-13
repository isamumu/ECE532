// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Tue Mar 30 21:39:04 2021
// Host        : BA3145WS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top canteloupe_zig_zag_0_0 -prefix
//               canteloupe_zig_zag_0_0_ canteloupe_zig_zag_0_0_sim_netlist.v
// Design      : canteloupe_zig_zag_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "canteloupe_zig_zag_0_0,zig_zag,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "zig_zag,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module canteloupe_zig_zag_0_0
   (i_clk,
    i_aresetn,
    i_axis_TVALID,
    o_axis_TREADY,
    i_axis_TDATA,
    i_axis_TLAST,
    o_axis_TVALID,
    i_axis_TREADY,
    o_axis_TDATA,
    o_axis_TLAST);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_aresetn, ASSOCIATED_BUSIF i_axis:o_axis, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 i_axis TVALID" *) input i_axis_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 i_axis TREADY" *) output o_axis_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 i_axis TDATA" *) input [15:0]i_axis_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 i_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input i_axis_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_axis TVALID" *) output o_axis_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_axis TREADY" *) input i_axis_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_axis TDATA" *) output [15:0]o_axis_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME o_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output o_axis_TLAST;

  wire i_aresetn;
  wire [15:0]i_axis_TDATA;
  wire i_axis_TREADY;
  wire i_axis_TVALID;
  wire i_clk;
  wire [14:0]\^o_axis_TDATA ;
  wire o_axis_TLAST;
  wire o_axis_TREADY;
  wire o_axis_TVALID;

  assign o_axis_TDATA[15] = \^o_axis_TDATA [14];
  assign o_axis_TDATA[14] = \^o_axis_TDATA [14];
  assign o_axis_TDATA[13] = \^o_axis_TDATA [14];
  assign o_axis_TDATA[12] = \^o_axis_TDATA [14];
  assign o_axis_TDATA[11] = \^o_axis_TDATA [14];
  assign o_axis_TDATA[10] = \^o_axis_TDATA [14];
  assign o_axis_TDATA[9:0] = \^o_axis_TDATA [9:0];
  canteloupe_zig_zag_0_0_zig_zag inst
       (.i_aresetn(i_aresetn),
        .i_axis_TDATA(i_axis_TDATA[9:0]),
        .i_axis_TREADY(i_axis_TREADY),
        .i_axis_TVALID(i_axis_TVALID),
        .i_clk(i_clk),
        .o_axis_TDATA({\^o_axis_TDATA [14],\^o_axis_TDATA [9:0]}),
        .o_axis_TREADY(o_axis_TREADY),
        .r_core_state_reg_0(o_axis_TVALID),
        .r_o_axis_TLAST_reg_0(o_axis_TLAST));
endmodule

module canteloupe_zig_zag_0_0_zig_zag
   (r_core_state_reg_0,
    o_axis_TDATA,
    r_o_axis_TLAST_reg_0,
    o_axis_TREADY,
    i_axis_TREADY,
    i_clk,
    i_axis_TVALID,
    i_aresetn,
    i_axis_TDATA);
  output r_core_state_reg_0;
  output [10:0]o_axis_TDATA;
  output r_o_axis_TLAST_reg_0;
  output o_axis_TREADY;
  input i_axis_TREADY;
  input i_clk;
  input i_axis_TVALID;
  input i_aresetn;
  input [9:0]i_axis_TDATA;

  wire \FSM_sequential_r_zz_state[0]_i_1_n_0 ;
  wire \FSM_sequential_r_zz_state[1]_i_1_n_0 ;
  wire \FSM_sequential_r_zz_state[1]_i_2_n_0 ;
  wire i_aresetn;
  wire [9:0]i_axis_TDATA;
  wire i_axis_TREADY;
  wire i_axis_TVALID;
  wire i_clk;
  wire [10:0]o_axis_TDATA;
  wire o_axis_TREADY;
  wire p_0_in;
  wire [15:0]p_2_in;
  wire r_core_state0__0;
  wire r_core_state1;
  wire r_core_state14_out;
  wire r_core_state_i_1_n_0;
  wire r_core_state_reg_0;
  wire r_curr_input_col;
  wire \r_curr_input_col[0]_i_1_n_0 ;
  wire \r_curr_input_col[1]_i_1_n_0 ;
  wire \r_curr_input_col[2]_i_2_n_0 ;
  wire \r_curr_input_col_reg_n_0_[0] ;
  wire \r_curr_input_col_reg_n_0_[1] ;
  wire \r_curr_input_col_reg_n_0_[2] ;
  wire \r_curr_input_row[0]_i_1_n_0 ;
  wire \r_curr_input_row[1]_i_1_n_0 ;
  wire \r_curr_input_row[2]_i_1_n_0 ;
  wire \r_curr_input_row_reg_n_0_[0] ;
  wire \r_curr_input_row_reg_n_0_[1] ;
  wire \r_curr_input_row_reg_n_0_[2] ;
  wire r_direction;
  wire r_direction_i_1_n_0;
  wire [9:0]r_input_coeffs;
  wire \r_input_coeffs[0][0][9]_i_2_n_0 ;
  wire \r_input_coeffs[0][0][9]_i_6_n_0 ;
  wire \r_input_coeffs[0][1][9]_i_1_n_0 ;
  wire \r_input_coeffs[0][2][9]_i_1_n_0 ;
  wire \r_input_coeffs[0][3][9]_i_1_n_0 ;
  wire \r_input_coeffs[0][3][9]_i_2_n_0 ;
  wire \r_input_coeffs[0][4][9]_i_1_n_0 ;
  wire \r_input_coeffs[0][5][9]_i_1_n_0 ;
  wire \r_input_coeffs[0][5][9]_i_2_n_0 ;
  wire \r_input_coeffs[0][6][9]_i_1_n_0 ;
  wire \r_input_coeffs[0][7][9]_i_1_n_0 ;
  wire \r_input_coeffs[1][0][9]_i_1_n_0 ;
  wire \r_input_coeffs[1][1][9]_i_1_n_0 ;
  wire \r_input_coeffs[1][2][9]_i_1_n_0 ;
  wire \r_input_coeffs[1][3][9]_i_1_n_0 ;
  wire \r_input_coeffs[1][4][9]_i_1_n_0 ;
  wire \r_input_coeffs[1][5][9]_i_1_n_0 ;
  wire \r_input_coeffs[1][6][9]_i_1_n_0 ;
  wire \r_input_coeffs[1][7][9]_i_1_n_0 ;
  wire \r_input_coeffs[2][0][9]_i_1_n_0 ;
  wire \r_input_coeffs[2][0][9]_i_2_n_0 ;
  wire \r_input_coeffs[2][1][9]_i_1_n_0 ;
  wire \r_input_coeffs[2][2][9]_i_1_n_0 ;
  wire \r_input_coeffs[2][3][9]_i_1_n_0 ;
  wire \r_input_coeffs[2][4][9]_i_1_n_0 ;
  wire \r_input_coeffs[2][5][9]_i_1_n_0 ;
  wire \r_input_coeffs[2][6][9]_i_1_n_0 ;
  wire \r_input_coeffs[2][7][9]_i_1_n_0 ;
  wire \r_input_coeffs[3][0][9]_i_1_n_0 ;
  wire \r_input_coeffs[3][0][9]_i_2_n_0 ;
  wire \r_input_coeffs[3][1][9]_i_1_n_0 ;
  wire \r_input_coeffs[3][2][9]_i_1_n_0 ;
  wire \r_input_coeffs[3][3][9]_i_1_n_0 ;
  wire \r_input_coeffs[3][4][9]_i_1_n_0 ;
  wire \r_input_coeffs[3][5][9]_i_1_n_0 ;
  wire \r_input_coeffs[3][6][9]_i_1_n_0 ;
  wire \r_input_coeffs[3][7][9]_i_1_n_0 ;
  wire \r_input_coeffs[4][0][9]_i_1_n_0 ;
  wire \r_input_coeffs[4][0][9]_i_2_n_0 ;
  wire \r_input_coeffs[4][1][9]_i_1_n_0 ;
  wire \r_input_coeffs[4][2][9]_i_1_n_0 ;
  wire \r_input_coeffs[4][3][9]_i_1_n_0 ;
  wire \r_input_coeffs[4][4][9]_i_1_n_0 ;
  wire \r_input_coeffs[4][5][9]_i_1_n_0 ;
  wire \r_input_coeffs[4][6][9]_i_1_n_0 ;
  wire \r_input_coeffs[4][7][9]_i_1_n_0 ;
  wire \r_input_coeffs[5][0][9]_i_1_n_0 ;
  wire \r_input_coeffs[5][0][9]_i_2_n_0 ;
  wire \r_input_coeffs[5][1][9]_i_1_n_0 ;
  wire \r_input_coeffs[5][2][9]_i_1_n_0 ;
  wire \r_input_coeffs[5][3][9]_i_1_n_0 ;
  wire \r_input_coeffs[5][4][9]_i_1_n_0 ;
  wire \r_input_coeffs[5][5][9]_i_1_n_0 ;
  wire \r_input_coeffs[5][6][9]_i_1_n_0 ;
  wire \r_input_coeffs[5][7][9]_i_1_n_0 ;
  wire \r_input_coeffs[6][0][9]_i_1_n_0 ;
  wire \r_input_coeffs[6][0][9]_i_2_n_0 ;
  wire \r_input_coeffs[6][1][9]_i_1_n_0 ;
  wire \r_input_coeffs[6][2][9]_i_1_n_0 ;
  wire \r_input_coeffs[6][3][9]_i_1_n_0 ;
  wire \r_input_coeffs[6][4][9]_i_1_n_0 ;
  wire \r_input_coeffs[6][5][9]_i_1_n_0 ;
  wire \r_input_coeffs[6][6][9]_i_1_n_0 ;
  wire \r_input_coeffs[6][7][9]_i_1_n_0 ;
  wire \r_input_coeffs[7][0][9]_i_1_n_0 ;
  wire \r_input_coeffs[7][1][9]_i_1_n_0 ;
  wire \r_input_coeffs[7][2][9]_i_1_n_0 ;
  wire \r_input_coeffs[7][3][9]_i_1_n_0 ;
  wire \r_input_coeffs[7][4][9]_i_1_n_0 ;
  wire \r_input_coeffs[7][5][9]_i_1_n_0 ;
  wire \r_input_coeffs[7][6][9]_i_1_n_0 ;
  wire \r_input_coeffs[7][7][9]_i_1_n_0 ;
  wire [9:0]r_input_coeffs__0__0;
  wire [9:0]\r_input_coeffs_reg[0][1] ;
  wire [9:0]\r_input_coeffs_reg[0][2] ;
  wire [9:0]\r_input_coeffs_reg[0][3] ;
  wire [9:0]\r_input_coeffs_reg[0][4] ;
  wire [9:0]\r_input_coeffs_reg[0][5] ;
  wire [9:0]\r_input_coeffs_reg[0][6] ;
  wire [9:0]\r_input_coeffs_reg[0][7] ;
  wire [9:0]\r_input_coeffs_reg[1][0] ;
  wire [9:0]\r_input_coeffs_reg[1][1] ;
  wire [9:0]\r_input_coeffs_reg[1][2] ;
  wire [9:0]\r_input_coeffs_reg[1][3] ;
  wire [9:0]\r_input_coeffs_reg[1][4] ;
  wire [9:0]\r_input_coeffs_reg[1][5] ;
  wire [9:0]\r_input_coeffs_reg[1][6] ;
  wire [9:0]\r_input_coeffs_reg[1][7] ;
  wire [9:0]\r_input_coeffs_reg[2][0] ;
  wire [9:0]\r_input_coeffs_reg[2][1] ;
  wire [9:0]\r_input_coeffs_reg[2][2] ;
  wire [9:0]\r_input_coeffs_reg[2][3] ;
  wire [9:0]\r_input_coeffs_reg[2][4] ;
  wire [9:0]\r_input_coeffs_reg[2][5] ;
  wire [9:0]\r_input_coeffs_reg[2][6] ;
  wire [9:0]\r_input_coeffs_reg[2][7] ;
  wire [9:0]\r_input_coeffs_reg[3][0] ;
  wire [9:0]\r_input_coeffs_reg[3][1] ;
  wire [9:0]\r_input_coeffs_reg[3][2] ;
  wire [9:0]\r_input_coeffs_reg[3][3] ;
  wire [9:0]\r_input_coeffs_reg[3][4] ;
  wire [9:0]\r_input_coeffs_reg[3][5] ;
  wire [9:0]\r_input_coeffs_reg[3][6] ;
  wire [9:0]\r_input_coeffs_reg[3][7] ;
  wire [9:0]\r_input_coeffs_reg[4][0] ;
  wire [9:0]\r_input_coeffs_reg[4][1] ;
  wire [9:0]\r_input_coeffs_reg[4][2] ;
  wire [9:0]\r_input_coeffs_reg[4][3] ;
  wire [9:0]\r_input_coeffs_reg[4][4] ;
  wire [9:0]\r_input_coeffs_reg[4][5] ;
  wire [9:0]\r_input_coeffs_reg[4][6] ;
  wire [9:0]\r_input_coeffs_reg[4][7] ;
  wire [9:0]\r_input_coeffs_reg[5][0] ;
  wire [9:0]\r_input_coeffs_reg[5][1] ;
  wire [9:0]\r_input_coeffs_reg[5][2] ;
  wire [9:0]\r_input_coeffs_reg[5][3] ;
  wire [9:0]\r_input_coeffs_reg[5][4] ;
  wire [9:0]\r_input_coeffs_reg[5][5] ;
  wire [9:0]\r_input_coeffs_reg[5][6] ;
  wire [9:0]\r_input_coeffs_reg[5][7] ;
  wire [9:0]\r_input_coeffs_reg[6][0] ;
  wire [9:0]\r_input_coeffs_reg[6][1] ;
  wire [9:0]\r_input_coeffs_reg[6][2] ;
  wire [9:0]\r_input_coeffs_reg[6][3] ;
  wire [9:0]\r_input_coeffs_reg[6][4] ;
  wire [9:0]\r_input_coeffs_reg[6][5] ;
  wire [9:0]\r_input_coeffs_reg[6][6] ;
  wire [9:0]\r_input_coeffs_reg[6][7] ;
  wire \r_input_coeffs_reg[7][0] ;
  wire \r_input_coeffs_reg[7][1] ;
  wire \r_input_coeffs_reg[7][2] ;
  wire \r_input_coeffs_reg[7][4] ;
  wire \r_input_coeffs_reg[7][6] ;
  wire \r_input_coeffs_reg_n_0_[0][0][0] ;
  wire \r_input_coeffs_reg_n_0_[0][0][1] ;
  wire \r_input_coeffs_reg_n_0_[0][0][2] ;
  wire \r_input_coeffs_reg_n_0_[0][0][3] ;
  wire \r_input_coeffs_reg_n_0_[0][0][4] ;
  wire \r_input_coeffs_reg_n_0_[0][0][5] ;
  wire \r_input_coeffs_reg_n_0_[0][0][6] ;
  wire \r_input_coeffs_reg_n_0_[0][0][7] ;
  wire \r_input_coeffs_reg_n_0_[0][0][8] ;
  wire \r_input_coeffs_reg_n_0_[0][0][9] ;
  wire \r_input_coeffs_reg_n_0_[7][0][0] ;
  wire \r_input_coeffs_reg_n_0_[7][0][1] ;
  wire \r_input_coeffs_reg_n_0_[7][0][2] ;
  wire \r_input_coeffs_reg_n_0_[7][0][3] ;
  wire \r_input_coeffs_reg_n_0_[7][0][4] ;
  wire \r_input_coeffs_reg_n_0_[7][0][5] ;
  wire \r_input_coeffs_reg_n_0_[7][0][6] ;
  wire \r_input_coeffs_reg_n_0_[7][0][7] ;
  wire \r_input_coeffs_reg_n_0_[7][0][8] ;
  wire \r_input_coeffs_reg_n_0_[7][0][9] ;
  wire \r_input_coeffs_reg_n_0_[7][1][0] ;
  wire \r_input_coeffs_reg_n_0_[7][1][1] ;
  wire \r_input_coeffs_reg_n_0_[7][1][2] ;
  wire \r_input_coeffs_reg_n_0_[7][1][3] ;
  wire \r_input_coeffs_reg_n_0_[7][1][4] ;
  wire \r_input_coeffs_reg_n_0_[7][1][5] ;
  wire \r_input_coeffs_reg_n_0_[7][1][6] ;
  wire \r_input_coeffs_reg_n_0_[7][1][7] ;
  wire \r_input_coeffs_reg_n_0_[7][1][8] ;
  wire \r_input_coeffs_reg_n_0_[7][1][9] ;
  wire \r_input_coeffs_reg_n_0_[7][2][0] ;
  wire \r_input_coeffs_reg_n_0_[7][2][1] ;
  wire \r_input_coeffs_reg_n_0_[7][2][2] ;
  wire \r_input_coeffs_reg_n_0_[7][2][3] ;
  wire \r_input_coeffs_reg_n_0_[7][2][4] ;
  wire \r_input_coeffs_reg_n_0_[7][2][5] ;
  wire \r_input_coeffs_reg_n_0_[7][2][6] ;
  wire \r_input_coeffs_reg_n_0_[7][2][7] ;
  wire \r_input_coeffs_reg_n_0_[7][2][8] ;
  wire \r_input_coeffs_reg_n_0_[7][2][9] ;
  wire \r_input_coeffs_reg_n_0_[7][3][0] ;
  wire \r_input_coeffs_reg_n_0_[7][3][1] ;
  wire \r_input_coeffs_reg_n_0_[7][3][2] ;
  wire \r_input_coeffs_reg_n_0_[7][3][3] ;
  wire \r_input_coeffs_reg_n_0_[7][3][4] ;
  wire \r_input_coeffs_reg_n_0_[7][3][5] ;
  wire \r_input_coeffs_reg_n_0_[7][3][6] ;
  wire \r_input_coeffs_reg_n_0_[7][3][7] ;
  wire \r_input_coeffs_reg_n_0_[7][3][8] ;
  wire \r_input_coeffs_reg_n_0_[7][3][9] ;
  wire \r_input_coeffs_reg_n_0_[7][4][0] ;
  wire \r_input_coeffs_reg_n_0_[7][4][1] ;
  wire \r_input_coeffs_reg_n_0_[7][4][2] ;
  wire \r_input_coeffs_reg_n_0_[7][4][3] ;
  wire \r_input_coeffs_reg_n_0_[7][4][4] ;
  wire \r_input_coeffs_reg_n_0_[7][4][5] ;
  wire \r_input_coeffs_reg_n_0_[7][4][6] ;
  wire \r_input_coeffs_reg_n_0_[7][4][7] ;
  wire \r_input_coeffs_reg_n_0_[7][4][8] ;
  wire \r_input_coeffs_reg_n_0_[7][4][9] ;
  wire \r_input_coeffs_reg_n_0_[7][5][0] ;
  wire \r_input_coeffs_reg_n_0_[7][5][1] ;
  wire \r_input_coeffs_reg_n_0_[7][5][2] ;
  wire \r_input_coeffs_reg_n_0_[7][5][3] ;
  wire \r_input_coeffs_reg_n_0_[7][5][4] ;
  wire \r_input_coeffs_reg_n_0_[7][5][5] ;
  wire \r_input_coeffs_reg_n_0_[7][5][6] ;
  wire \r_input_coeffs_reg_n_0_[7][5][7] ;
  wire \r_input_coeffs_reg_n_0_[7][5][8] ;
  wire \r_input_coeffs_reg_n_0_[7][5][9] ;
  wire \r_input_coeffs_reg_n_0_[7][6][0] ;
  wire \r_input_coeffs_reg_n_0_[7][6][1] ;
  wire \r_input_coeffs_reg_n_0_[7][6][2] ;
  wire \r_input_coeffs_reg_n_0_[7][6][3] ;
  wire \r_input_coeffs_reg_n_0_[7][6][4] ;
  wire \r_input_coeffs_reg_n_0_[7][6][5] ;
  wire \r_input_coeffs_reg_n_0_[7][6][6] ;
  wire \r_input_coeffs_reg_n_0_[7][6][7] ;
  wire \r_input_coeffs_reg_n_0_[7][6][8] ;
  wire \r_input_coeffs_reg_n_0_[7][6][9] ;
  wire \r_input_coeffs_reg_n_0_[7][7][0] ;
  wire \r_input_coeffs_reg_n_0_[7][7][1] ;
  wire \r_input_coeffs_reg_n_0_[7][7][2] ;
  wire \r_input_coeffs_reg_n_0_[7][7][3] ;
  wire \r_input_coeffs_reg_n_0_[7][7][4] ;
  wire \r_input_coeffs_reg_n_0_[7][7][5] ;
  wire \r_input_coeffs_reg_n_0_[7][7][6] ;
  wire \r_input_coeffs_reg_n_0_[7][7][7] ;
  wire \r_input_coeffs_reg_n_0_[7][7][8] ;
  wire \r_input_coeffs_reg_n_0_[7][7][9] ;
  wire \r_next_output_col[0]_i_1_n_0 ;
  wire \r_next_output_col[1]_i_1_n_0 ;
  wire \r_next_output_col[1]_i_2_n_0 ;
  wire \r_next_output_col[2]_i_1_n_0 ;
  wire \r_next_output_col[2]_i_2_n_0 ;
  wire \r_next_output_col[2]_i_3_n_0 ;
  wire \r_next_output_col[2]_i_4_n_0 ;
  wire \r_next_output_col_reg_n_0_[0] ;
  wire \r_next_output_col_reg_n_0_[1] ;
  wire \r_next_output_col_reg_n_0_[2] ;
  wire \r_next_output_row[0]_i_1_n_0 ;
  wire \r_next_output_row[1]_i_1_n_0 ;
  wire \r_next_output_row[1]_i_2_n_0 ;
  wire \r_next_output_row[2]_i_1_n_0 ;
  wire \r_next_output_row[2]_i_2_n_0 ;
  wire \r_next_output_row_reg_n_0_[0] ;
  wire \r_next_output_row_reg_n_0_[1] ;
  wire \r_next_output_row_reg_n_0_[2] ;
  wire r_o_axis_TDATA;
  wire \r_o_axis_TDATA[0]_i_12_n_0 ;
  wire \r_o_axis_TDATA[0]_i_13_n_0 ;
  wire \r_o_axis_TDATA[0]_i_14_n_0 ;
  wire \r_o_axis_TDATA[0]_i_15_n_0 ;
  wire \r_o_axis_TDATA[0]_i_16_n_0 ;
  wire \r_o_axis_TDATA[0]_i_17_n_0 ;
  wire \r_o_axis_TDATA[0]_i_18_n_0 ;
  wire \r_o_axis_TDATA[0]_i_19_n_0 ;
  wire \r_o_axis_TDATA[0]_i_20_n_0 ;
  wire \r_o_axis_TDATA[0]_i_21_n_0 ;
  wire \r_o_axis_TDATA[0]_i_22_n_0 ;
  wire \r_o_axis_TDATA[0]_i_23_n_0 ;
  wire \r_o_axis_TDATA[0]_i_24_n_0 ;
  wire \r_o_axis_TDATA[0]_i_25_n_0 ;
  wire \r_o_axis_TDATA[0]_i_26_n_0 ;
  wire \r_o_axis_TDATA[0]_i_27_n_0 ;
  wire \r_o_axis_TDATA[0]_i_2_n_0 ;
  wire \r_o_axis_TDATA[0]_i_3_n_0 ;
  wire \r_o_axis_TDATA[15]_i_15_n_0 ;
  wire \r_o_axis_TDATA[15]_i_16_n_0 ;
  wire \r_o_axis_TDATA[15]_i_17_n_0 ;
  wire \r_o_axis_TDATA[15]_i_18_n_0 ;
  wire \r_o_axis_TDATA[15]_i_19_n_0 ;
  wire \r_o_axis_TDATA[15]_i_1_n_0 ;
  wire \r_o_axis_TDATA[15]_i_20_n_0 ;
  wire \r_o_axis_TDATA[15]_i_21_n_0 ;
  wire \r_o_axis_TDATA[15]_i_22_n_0 ;
  wire \r_o_axis_TDATA[15]_i_23_n_0 ;
  wire \r_o_axis_TDATA[15]_i_24_n_0 ;
  wire \r_o_axis_TDATA[15]_i_25_n_0 ;
  wire \r_o_axis_TDATA[15]_i_26_n_0 ;
  wire \r_o_axis_TDATA[15]_i_27_n_0 ;
  wire \r_o_axis_TDATA[15]_i_28_n_0 ;
  wire \r_o_axis_TDATA[15]_i_29_n_0 ;
  wire \r_o_axis_TDATA[15]_i_2_n_0 ;
  wire \r_o_axis_TDATA[15]_i_30_n_0 ;
  wire \r_o_axis_TDATA[15]_i_5_n_0 ;
  wire \r_o_axis_TDATA[15]_i_6_n_0 ;
  wire \r_o_axis_TDATA[1]_i_12_n_0 ;
  wire \r_o_axis_TDATA[1]_i_13_n_0 ;
  wire \r_o_axis_TDATA[1]_i_14_n_0 ;
  wire \r_o_axis_TDATA[1]_i_15_n_0 ;
  wire \r_o_axis_TDATA[1]_i_16_n_0 ;
  wire \r_o_axis_TDATA[1]_i_17_n_0 ;
  wire \r_o_axis_TDATA[1]_i_18_n_0 ;
  wire \r_o_axis_TDATA[1]_i_19_n_0 ;
  wire \r_o_axis_TDATA[1]_i_20_n_0 ;
  wire \r_o_axis_TDATA[1]_i_21_n_0 ;
  wire \r_o_axis_TDATA[1]_i_22_n_0 ;
  wire \r_o_axis_TDATA[1]_i_23_n_0 ;
  wire \r_o_axis_TDATA[1]_i_24_n_0 ;
  wire \r_o_axis_TDATA[1]_i_25_n_0 ;
  wire \r_o_axis_TDATA[1]_i_26_n_0 ;
  wire \r_o_axis_TDATA[1]_i_27_n_0 ;
  wire \r_o_axis_TDATA[1]_i_2_n_0 ;
  wire \r_o_axis_TDATA[1]_i_3_n_0 ;
  wire \r_o_axis_TDATA[2]_i_12_n_0 ;
  wire \r_o_axis_TDATA[2]_i_13_n_0 ;
  wire \r_o_axis_TDATA[2]_i_14_n_0 ;
  wire \r_o_axis_TDATA[2]_i_15_n_0 ;
  wire \r_o_axis_TDATA[2]_i_16_n_0 ;
  wire \r_o_axis_TDATA[2]_i_17_n_0 ;
  wire \r_o_axis_TDATA[2]_i_18_n_0 ;
  wire \r_o_axis_TDATA[2]_i_19_n_0 ;
  wire \r_o_axis_TDATA[2]_i_20_n_0 ;
  wire \r_o_axis_TDATA[2]_i_21_n_0 ;
  wire \r_o_axis_TDATA[2]_i_22_n_0 ;
  wire \r_o_axis_TDATA[2]_i_23_n_0 ;
  wire \r_o_axis_TDATA[2]_i_24_n_0 ;
  wire \r_o_axis_TDATA[2]_i_25_n_0 ;
  wire \r_o_axis_TDATA[2]_i_26_n_0 ;
  wire \r_o_axis_TDATA[2]_i_27_n_0 ;
  wire \r_o_axis_TDATA[2]_i_2_n_0 ;
  wire \r_o_axis_TDATA[2]_i_3_n_0 ;
  wire \r_o_axis_TDATA[3]_i_12_n_0 ;
  wire \r_o_axis_TDATA[3]_i_13_n_0 ;
  wire \r_o_axis_TDATA[3]_i_14_n_0 ;
  wire \r_o_axis_TDATA[3]_i_15_n_0 ;
  wire \r_o_axis_TDATA[3]_i_16_n_0 ;
  wire \r_o_axis_TDATA[3]_i_17_n_0 ;
  wire \r_o_axis_TDATA[3]_i_18_n_0 ;
  wire \r_o_axis_TDATA[3]_i_19_n_0 ;
  wire \r_o_axis_TDATA[3]_i_20_n_0 ;
  wire \r_o_axis_TDATA[3]_i_21_n_0 ;
  wire \r_o_axis_TDATA[3]_i_22_n_0 ;
  wire \r_o_axis_TDATA[3]_i_23_n_0 ;
  wire \r_o_axis_TDATA[3]_i_24_n_0 ;
  wire \r_o_axis_TDATA[3]_i_25_n_0 ;
  wire \r_o_axis_TDATA[3]_i_26_n_0 ;
  wire \r_o_axis_TDATA[3]_i_27_n_0 ;
  wire \r_o_axis_TDATA[3]_i_2_n_0 ;
  wire \r_o_axis_TDATA[3]_i_3_n_0 ;
  wire \r_o_axis_TDATA[4]_i_12_n_0 ;
  wire \r_o_axis_TDATA[4]_i_13_n_0 ;
  wire \r_o_axis_TDATA[4]_i_14_n_0 ;
  wire \r_o_axis_TDATA[4]_i_15_n_0 ;
  wire \r_o_axis_TDATA[4]_i_16_n_0 ;
  wire \r_o_axis_TDATA[4]_i_17_n_0 ;
  wire \r_o_axis_TDATA[4]_i_18_n_0 ;
  wire \r_o_axis_TDATA[4]_i_19_n_0 ;
  wire \r_o_axis_TDATA[4]_i_20_n_0 ;
  wire \r_o_axis_TDATA[4]_i_21_n_0 ;
  wire \r_o_axis_TDATA[4]_i_22_n_0 ;
  wire \r_o_axis_TDATA[4]_i_23_n_0 ;
  wire \r_o_axis_TDATA[4]_i_24_n_0 ;
  wire \r_o_axis_TDATA[4]_i_25_n_0 ;
  wire \r_o_axis_TDATA[4]_i_26_n_0 ;
  wire \r_o_axis_TDATA[4]_i_27_n_0 ;
  wire \r_o_axis_TDATA[4]_i_2_n_0 ;
  wire \r_o_axis_TDATA[4]_i_3_n_0 ;
  wire \r_o_axis_TDATA[5]_i_12_n_0 ;
  wire \r_o_axis_TDATA[5]_i_13_n_0 ;
  wire \r_o_axis_TDATA[5]_i_14_n_0 ;
  wire \r_o_axis_TDATA[5]_i_15_n_0 ;
  wire \r_o_axis_TDATA[5]_i_16_n_0 ;
  wire \r_o_axis_TDATA[5]_i_17_n_0 ;
  wire \r_o_axis_TDATA[5]_i_18_n_0 ;
  wire \r_o_axis_TDATA[5]_i_19_n_0 ;
  wire \r_o_axis_TDATA[5]_i_20_n_0 ;
  wire \r_o_axis_TDATA[5]_i_21_n_0 ;
  wire \r_o_axis_TDATA[5]_i_22_n_0 ;
  wire \r_o_axis_TDATA[5]_i_23_n_0 ;
  wire \r_o_axis_TDATA[5]_i_24_n_0 ;
  wire \r_o_axis_TDATA[5]_i_25_n_0 ;
  wire \r_o_axis_TDATA[5]_i_26_n_0 ;
  wire \r_o_axis_TDATA[5]_i_27_n_0 ;
  wire \r_o_axis_TDATA[5]_i_2_n_0 ;
  wire \r_o_axis_TDATA[5]_i_3_n_0 ;
  wire \r_o_axis_TDATA[6]_i_12_n_0 ;
  wire \r_o_axis_TDATA[6]_i_13_n_0 ;
  wire \r_o_axis_TDATA[6]_i_14_n_0 ;
  wire \r_o_axis_TDATA[6]_i_15_n_0 ;
  wire \r_o_axis_TDATA[6]_i_16_n_0 ;
  wire \r_o_axis_TDATA[6]_i_17_n_0 ;
  wire \r_o_axis_TDATA[6]_i_18_n_0 ;
  wire \r_o_axis_TDATA[6]_i_19_n_0 ;
  wire \r_o_axis_TDATA[6]_i_20_n_0 ;
  wire \r_o_axis_TDATA[6]_i_21_n_0 ;
  wire \r_o_axis_TDATA[6]_i_22_n_0 ;
  wire \r_o_axis_TDATA[6]_i_23_n_0 ;
  wire \r_o_axis_TDATA[6]_i_24_n_0 ;
  wire \r_o_axis_TDATA[6]_i_25_n_0 ;
  wire \r_o_axis_TDATA[6]_i_26_n_0 ;
  wire \r_o_axis_TDATA[6]_i_27_n_0 ;
  wire \r_o_axis_TDATA[6]_i_2_n_0 ;
  wire \r_o_axis_TDATA[6]_i_3_n_0 ;
  wire \r_o_axis_TDATA[7]_i_12_n_0 ;
  wire \r_o_axis_TDATA[7]_i_13_n_0 ;
  wire \r_o_axis_TDATA[7]_i_14_n_0 ;
  wire \r_o_axis_TDATA[7]_i_15_n_0 ;
  wire \r_o_axis_TDATA[7]_i_16_n_0 ;
  wire \r_o_axis_TDATA[7]_i_17_n_0 ;
  wire \r_o_axis_TDATA[7]_i_18_n_0 ;
  wire \r_o_axis_TDATA[7]_i_19_n_0 ;
  wire \r_o_axis_TDATA[7]_i_20_n_0 ;
  wire \r_o_axis_TDATA[7]_i_21_n_0 ;
  wire \r_o_axis_TDATA[7]_i_22_n_0 ;
  wire \r_o_axis_TDATA[7]_i_23_n_0 ;
  wire \r_o_axis_TDATA[7]_i_24_n_0 ;
  wire \r_o_axis_TDATA[7]_i_25_n_0 ;
  wire \r_o_axis_TDATA[7]_i_26_n_0 ;
  wire \r_o_axis_TDATA[7]_i_27_n_0 ;
  wire \r_o_axis_TDATA[7]_i_2_n_0 ;
  wire \r_o_axis_TDATA[7]_i_3_n_0 ;
  wire \r_o_axis_TDATA[8]_i_12_n_0 ;
  wire \r_o_axis_TDATA[8]_i_13_n_0 ;
  wire \r_o_axis_TDATA[8]_i_14_n_0 ;
  wire \r_o_axis_TDATA[8]_i_15_n_0 ;
  wire \r_o_axis_TDATA[8]_i_16_n_0 ;
  wire \r_o_axis_TDATA[8]_i_17_n_0 ;
  wire \r_o_axis_TDATA[8]_i_18_n_0 ;
  wire \r_o_axis_TDATA[8]_i_19_n_0 ;
  wire \r_o_axis_TDATA[8]_i_20_n_0 ;
  wire \r_o_axis_TDATA[8]_i_21_n_0 ;
  wire \r_o_axis_TDATA[8]_i_22_n_0 ;
  wire \r_o_axis_TDATA[8]_i_23_n_0 ;
  wire \r_o_axis_TDATA[8]_i_24_n_0 ;
  wire \r_o_axis_TDATA[8]_i_25_n_0 ;
  wire \r_o_axis_TDATA[8]_i_26_n_0 ;
  wire \r_o_axis_TDATA[8]_i_27_n_0 ;
  wire \r_o_axis_TDATA[8]_i_2_n_0 ;
  wire \r_o_axis_TDATA[8]_i_3_n_0 ;
  wire \r_o_axis_TDATA_reg[0]_i_10_n_0 ;
  wire \r_o_axis_TDATA_reg[0]_i_4_n_0 ;
  wire \r_o_axis_TDATA_reg[0]_i_5_n_0 ;
  wire \r_o_axis_TDATA_reg[0]_i_6_n_0 ;
  wire \r_o_axis_TDATA_reg[0]_i_7_n_0 ;
  wire \r_o_axis_TDATA_reg[0]_i_8_n_0 ;
  wire \r_o_axis_TDATA_reg[0]_i_9_n_0 ;
  wire \r_o_axis_TDATA_reg[15]_i_11_n_0 ;
  wire \r_o_axis_TDATA_reg[15]_i_12_n_0 ;
  wire \r_o_axis_TDATA_reg[15]_i_13_n_0 ;
  wire \r_o_axis_TDATA_reg[15]_i_14_n_0 ;
  wire \r_o_axis_TDATA_reg[15]_i_7_n_0 ;
  wire \r_o_axis_TDATA_reg[15]_i_8_n_0 ;
  wire \r_o_axis_TDATA_reg[15]_i_9_n_0 ;
  wire \r_o_axis_TDATA_reg[1]_i_10_n_0 ;
  wire \r_o_axis_TDATA_reg[1]_i_4_n_0 ;
  wire \r_o_axis_TDATA_reg[1]_i_5_n_0 ;
  wire \r_o_axis_TDATA_reg[1]_i_6_n_0 ;
  wire \r_o_axis_TDATA_reg[1]_i_7_n_0 ;
  wire \r_o_axis_TDATA_reg[1]_i_8_n_0 ;
  wire \r_o_axis_TDATA_reg[1]_i_9_n_0 ;
  wire \r_o_axis_TDATA_reg[2]_i_10_n_0 ;
  wire \r_o_axis_TDATA_reg[2]_i_4_n_0 ;
  wire \r_o_axis_TDATA_reg[2]_i_5_n_0 ;
  wire \r_o_axis_TDATA_reg[2]_i_6_n_0 ;
  wire \r_o_axis_TDATA_reg[2]_i_7_n_0 ;
  wire \r_o_axis_TDATA_reg[2]_i_8_n_0 ;
  wire \r_o_axis_TDATA_reg[2]_i_9_n_0 ;
  wire \r_o_axis_TDATA_reg[3]_i_10_n_0 ;
  wire \r_o_axis_TDATA_reg[3]_i_4_n_0 ;
  wire \r_o_axis_TDATA_reg[3]_i_5_n_0 ;
  wire \r_o_axis_TDATA_reg[3]_i_6_n_0 ;
  wire \r_o_axis_TDATA_reg[3]_i_7_n_0 ;
  wire \r_o_axis_TDATA_reg[3]_i_8_n_0 ;
  wire \r_o_axis_TDATA_reg[3]_i_9_n_0 ;
  wire \r_o_axis_TDATA_reg[4]_i_10_n_0 ;
  wire \r_o_axis_TDATA_reg[4]_i_4_n_0 ;
  wire \r_o_axis_TDATA_reg[4]_i_5_n_0 ;
  wire \r_o_axis_TDATA_reg[4]_i_6_n_0 ;
  wire \r_o_axis_TDATA_reg[4]_i_7_n_0 ;
  wire \r_o_axis_TDATA_reg[4]_i_8_n_0 ;
  wire \r_o_axis_TDATA_reg[4]_i_9_n_0 ;
  wire \r_o_axis_TDATA_reg[5]_i_10_n_0 ;
  wire \r_o_axis_TDATA_reg[5]_i_4_n_0 ;
  wire \r_o_axis_TDATA_reg[5]_i_5_n_0 ;
  wire \r_o_axis_TDATA_reg[5]_i_6_n_0 ;
  wire \r_o_axis_TDATA_reg[5]_i_7_n_0 ;
  wire \r_o_axis_TDATA_reg[5]_i_8_n_0 ;
  wire \r_o_axis_TDATA_reg[5]_i_9_n_0 ;
  wire \r_o_axis_TDATA_reg[6]_i_10_n_0 ;
  wire \r_o_axis_TDATA_reg[6]_i_4_n_0 ;
  wire \r_o_axis_TDATA_reg[6]_i_5_n_0 ;
  wire \r_o_axis_TDATA_reg[6]_i_6_n_0 ;
  wire \r_o_axis_TDATA_reg[6]_i_7_n_0 ;
  wire \r_o_axis_TDATA_reg[6]_i_8_n_0 ;
  wire \r_o_axis_TDATA_reg[6]_i_9_n_0 ;
  wire \r_o_axis_TDATA_reg[7]_i_10_n_0 ;
  wire \r_o_axis_TDATA_reg[7]_i_4_n_0 ;
  wire \r_o_axis_TDATA_reg[7]_i_5_n_0 ;
  wire \r_o_axis_TDATA_reg[7]_i_6_n_0 ;
  wire \r_o_axis_TDATA_reg[7]_i_7_n_0 ;
  wire \r_o_axis_TDATA_reg[7]_i_8_n_0 ;
  wire \r_o_axis_TDATA_reg[7]_i_9_n_0 ;
  wire \r_o_axis_TDATA_reg[8]_i_10_n_0 ;
  wire \r_o_axis_TDATA_reg[8]_i_4_n_0 ;
  wire \r_o_axis_TDATA_reg[8]_i_5_n_0 ;
  wire \r_o_axis_TDATA_reg[8]_i_6_n_0 ;
  wire \r_o_axis_TDATA_reg[8]_i_7_n_0 ;
  wire \r_o_axis_TDATA_reg[8]_i_8_n_0 ;
  wire \r_o_axis_TDATA_reg[8]_i_9_n_0 ;
  wire r_o_axis_TLAST_i_1_n_0;
  wire r_o_axis_TLAST_reg_0;
  wire r_zz_state1;
  wire r_zz_state12_out;
  wire [1:0]r_zz_state__0;

  LUT6 #(
    .INIT(64'hFF00F308FF00FF00)) 
    \FSM_sequential_r_zz_state[0]_i_1 
       (.I0(r_zz_state12_out),
        .I1(r_core_state_reg_0),
        .I2(r_zz_state__0[1]),
        .I3(r_zz_state__0[0]),
        .I4(r_zz_state1),
        .I5(i_axis_TREADY),
        .O(\FSM_sequential_r_zz_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0420)) 
    \FSM_sequential_r_zz_state[0]_i_2 
       (.I0(r_direction),
        .I1(\r_next_output_row_reg_n_0_[2] ),
        .I2(\r_next_output_row_reg_n_0_[0] ),
        .I3(\r_next_output_row_reg_n_0_[1] ),
        .O(r_zz_state12_out));
  LUT6 #(
    .INIT(64'hF0F0F038F0F0F0F0)) 
    \FSM_sequential_r_zz_state[1]_i_1 
       (.I0(\FSM_sequential_r_zz_state[1]_i_2_n_0 ),
        .I1(r_core_state_reg_0),
        .I2(r_zz_state__0[1]),
        .I3(r_zz_state__0[0]),
        .I4(r_zz_state1),
        .I5(i_axis_TREADY),
        .O(\FSM_sequential_r_zz_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000810)) 
    \FSM_sequential_r_zz_state[1]_i_2 
       (.I0(r_direction),
        .I1(\r_next_output_col_reg_n_0_[1] ),
        .I2(\r_next_output_col_reg_n_0_[0] ),
        .I3(\r_next_output_col_reg_n_0_[2] ),
        .I4(r_zz_state12_out),
        .O(\FSM_sequential_r_zz_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "ZZ_STATE_HORIZONTAL:01,ZZ_STATE_DIAGONAL:00,ZZ_STATE_VERTICAL:10" *) 
  FDRE \FSM_sequential_r_zz_state_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_r_zz_state[0]_i_1_n_0 ),
        .Q(r_zz_state__0[0]),
        .R(\r_o_axis_TDATA[15]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "ZZ_STATE_HORIZONTAL:01,ZZ_STATE_DIAGONAL:00,ZZ_STATE_VERTICAL:10" *) 
  FDRE \FSM_sequential_r_zz_state_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_r_zz_state[1]_i_1_n_0 ),
        .Q(r_zz_state__0[1]),
        .R(\r_o_axis_TDATA[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    o_axis_TREADY_INST_0
       (.I0(r_core_state_reg_0),
        .O(o_axis_TREADY));
  LUT6 #(
    .INIT(64'h20ECECEC00000000)) 
    r_core_state_i_1
       (.I0(i_axis_TVALID),
        .I1(r_core_state_reg_0),
        .I2(r_core_state0__0),
        .I3(i_axis_TREADY),
        .I4(r_o_axis_TLAST_reg_0),
        .I5(i_aresetn),
        .O(r_core_state_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    r_core_state_i_2
       (.I0(\r_curr_input_row_reg_n_0_[2] ),
        .I1(\r_curr_input_row_reg_n_0_[0] ),
        .I2(\r_curr_input_row_reg_n_0_[1] ),
        .I3(\r_curr_input_col_reg_n_0_[2] ),
        .I4(\r_curr_input_col_reg_n_0_[0] ),
        .I5(\r_curr_input_col_reg_n_0_[1] ),
        .O(r_core_state0__0));
  FDRE r_core_state_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(r_core_state_i_1_n_0),
        .Q(r_core_state_reg_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD2)) 
    \r_curr_input_col[0]_i_1 
       (.I0(i_axis_TVALID),
        .I1(r_core_state_reg_0),
        .I2(\r_curr_input_col_reg_n_0_[0] ),
        .O(\r_curr_input_col[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \r_curr_input_col[1]_i_1 
       (.I0(\r_curr_input_col_reg_n_0_[0] ),
        .I1(i_axis_TVALID),
        .I2(r_core_state_reg_0),
        .I3(\r_curr_input_col_reg_n_0_[1] ),
        .O(\r_curr_input_col[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \r_curr_input_col[2]_i_1 
       (.I0(r_core_state_reg_0),
        .I1(r_o_axis_TDATA),
        .I2(i_aresetn),
        .O(r_curr_input_col));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \r_curr_input_col[2]_i_2 
       (.I0(\r_curr_input_col_reg_n_0_[0] ),
        .I1(\r_curr_input_col_reg_n_0_[1] ),
        .I2(i_axis_TVALID),
        .I3(r_core_state_reg_0),
        .I4(\r_curr_input_col_reg_n_0_[2] ),
        .O(\r_curr_input_col[2]_i_2_n_0 ));
  FDRE \r_curr_input_col_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_curr_input_col[0]_i_1_n_0 ),
        .Q(\r_curr_input_col_reg_n_0_[0] ),
        .R(r_curr_input_col));
  FDRE \r_curr_input_col_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_curr_input_col[1]_i_1_n_0 ),
        .Q(\r_curr_input_col_reg_n_0_[1] ),
        .R(r_curr_input_col));
  FDRE \r_curr_input_col_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_curr_input_col[2]_i_2_n_0 ),
        .Q(\r_curr_input_col_reg_n_0_[2] ),
        .R(r_curr_input_col));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \r_curr_input_row[0]_i_1 
       (.I0(r_core_state_reg_0),
        .I1(i_axis_TVALID),
        .I2(\r_curr_input_col_reg_n_0_[2] ),
        .I3(\r_curr_input_col_reg_n_0_[0] ),
        .I4(\r_curr_input_col_reg_n_0_[1] ),
        .I5(\r_curr_input_row_reg_n_0_[0] ),
        .O(\r_curr_input_row[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \r_curr_input_row[1]_i_1 
       (.I0(\r_curr_input_row_reg_n_0_[0] ),
        .I1(r_core_state1),
        .I2(i_axis_TVALID),
        .I3(r_core_state_reg_0),
        .I4(\r_curr_input_row_reg_n_0_[1] ),
        .O(\r_curr_input_row[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \r_curr_input_row[2]_i_1 
       (.I0(\r_curr_input_row_reg_n_0_[0] ),
        .I1(\r_curr_input_row_reg_n_0_[1] ),
        .I2(r_core_state1),
        .I3(i_axis_TVALID),
        .I4(r_core_state_reg_0),
        .I5(\r_curr_input_row_reg_n_0_[2] ),
        .O(\r_curr_input_row[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \r_curr_input_row[2]_i_2 
       (.I0(\r_curr_input_col_reg_n_0_[1] ),
        .I1(\r_curr_input_col_reg_n_0_[0] ),
        .I2(\r_curr_input_col_reg_n_0_[2] ),
        .O(r_core_state1));
  FDRE \r_curr_input_row_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_curr_input_row[0]_i_1_n_0 ),
        .Q(\r_curr_input_row_reg_n_0_[0] ),
        .R(r_curr_input_col));
  FDRE \r_curr_input_row_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_curr_input_row[1]_i_1_n_0 ),
        .Q(\r_curr_input_row_reg_n_0_[1] ),
        .R(r_curr_input_col));
  FDRE \r_curr_input_row_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_curr_input_row[2]_i_1_n_0 ),
        .Q(\r_curr_input_row_reg_n_0_[2] ),
        .R(r_curr_input_col));
  LUT6 #(
    .INIT(64'hFDDFFFFF02200000)) 
    r_direction_i_1
       (.I0(i_axis_TREADY),
        .I1(r_zz_state1),
        .I2(r_zz_state__0[0]),
        .I3(r_zz_state__0[1]),
        .I4(r_core_state_reg_0),
        .I5(r_direction),
        .O(r_direction_i_1_n_0));
  FDRE r_direction_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(r_direction_i_1_n_0),
        .Q(r_direction),
        .R(\r_o_axis_TDATA[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_input_coeffs[0][0][0]_i_1 
       (.I0(i_axis_TDATA[0]),
        .I1(r_core_state_reg_0),
        .O(r_input_coeffs[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \r_input_coeffs[0][0][1]_i_1 
       (.I0(i_axis_TDATA[1]),
        .I1(r_core_state_reg_0),
        .O(r_input_coeffs[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \r_input_coeffs[0][0][2]_i_1 
       (.I0(i_axis_TDATA[2]),
        .I1(r_core_state_reg_0),
        .O(r_input_coeffs[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \r_input_coeffs[0][0][3]_i_1 
       (.I0(i_axis_TDATA[3]),
        .I1(r_core_state_reg_0),
        .O(r_input_coeffs[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \r_input_coeffs[0][0][4]_i_1 
       (.I0(i_axis_TDATA[4]),
        .I1(r_core_state_reg_0),
        .O(r_input_coeffs[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \r_input_coeffs[0][0][5]_i_1 
       (.I0(i_axis_TDATA[5]),
        .I1(r_core_state_reg_0),
        .O(r_input_coeffs[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \r_input_coeffs[0][0][6]_i_1 
       (.I0(i_axis_TDATA[6]),
        .I1(r_core_state_reg_0),
        .O(r_input_coeffs[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \r_input_coeffs[0][0][7]_i_1 
       (.I0(i_axis_TDATA[7]),
        .I1(r_core_state_reg_0),
        .O(r_input_coeffs[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \r_input_coeffs[0][0][8]_i_1 
       (.I0(i_axis_TDATA[8]),
        .I1(r_core_state_reg_0),
        .O(r_input_coeffs[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \r_input_coeffs[0][0][9]_i_1 
       (.I0(i_aresetn),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h88B8888888888888)) 
    \r_input_coeffs[0][0][9]_i_2 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs_reg[7][0] ),
        .I5(\r_input_coeffs[0][0][9]_i_6_n_0 ),
        .O(\r_input_coeffs[0][0][9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_input_coeffs[0][0][9]_i_3 
       (.I0(i_axis_TDATA[9]),
        .I1(r_core_state_reg_0),
        .O(r_input_coeffs[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \r_input_coeffs[0][0][9]_i_4 
       (.I0(i_axis_TREADY),
        .I1(r_o_axis_TLAST_reg_0),
        .O(r_core_state14_out));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \r_input_coeffs[0][0][9]_i_5 
       (.I0(\r_curr_input_col_reg_n_0_[2] ),
        .I1(\r_curr_input_col_reg_n_0_[0] ),
        .I2(\r_curr_input_col_reg_n_0_[1] ),
        .O(\r_input_coeffs_reg[7][0] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_input_coeffs[0][0][9]_i_6 
       (.I0(\r_curr_input_row_reg_n_0_[1] ),
        .I1(\r_curr_input_row_reg_n_0_[2] ),
        .O(\r_input_coeffs[0][0][9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h88B8888888888888)) 
    \r_input_coeffs[0][1][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs_reg[7][1] ),
        .I5(\r_input_coeffs[0][0][9]_i_6_n_0 ),
        .O(\r_input_coeffs[0][1][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \r_input_coeffs[0][1][9]_i_2 
       (.I0(\r_curr_input_col_reg_n_0_[2] ),
        .I1(\r_curr_input_col_reg_n_0_[0] ),
        .I2(\r_curr_input_col_reg_n_0_[1] ),
        .O(\r_input_coeffs_reg[7][1] ));
  LUT6 #(
    .INIT(64'h88B8888888888888)) 
    \r_input_coeffs[0][2][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs_reg[7][2] ),
        .I5(\r_input_coeffs[0][0][9]_i_6_n_0 ),
        .O(\r_input_coeffs[0][2][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \r_input_coeffs[0][2][9]_i_2 
       (.I0(\r_curr_input_col_reg_n_0_[0] ),
        .I1(\r_curr_input_col_reg_n_0_[1] ),
        .I2(\r_curr_input_col_reg_n_0_[2] ),
        .O(\r_input_coeffs_reg[7][2] ));
  LUT6 #(
    .INIT(64'h88B8888888888888)) 
    \r_input_coeffs[0][3][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs[0][3][9]_i_2_n_0 ),
        .I5(\r_input_coeffs[0][0][9]_i_6_n_0 ),
        .O(\r_input_coeffs[0][3][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \r_input_coeffs[0][3][9]_i_2 
       (.I0(\r_curr_input_col_reg_n_0_[0] ),
        .I1(\r_curr_input_col_reg_n_0_[1] ),
        .I2(\r_curr_input_col_reg_n_0_[2] ),
        .O(\r_input_coeffs[0][3][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88B8888888888888)) 
    \r_input_coeffs[0][4][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs_reg[7][4] ),
        .I5(\r_input_coeffs[0][0][9]_i_6_n_0 ),
        .O(\r_input_coeffs[0][4][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \r_input_coeffs[0][4][9]_i_2 
       (.I0(\r_curr_input_col_reg_n_0_[0] ),
        .I1(\r_curr_input_col_reg_n_0_[2] ),
        .I2(\r_curr_input_col_reg_n_0_[1] ),
        .O(\r_input_coeffs_reg[7][4] ));
  LUT6 #(
    .INIT(64'h88B8888888888888)) 
    \r_input_coeffs[0][5][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs[0][5][9]_i_2_n_0 ),
        .I5(\r_input_coeffs[0][0][9]_i_6_n_0 ),
        .O(\r_input_coeffs[0][5][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \r_input_coeffs[0][5][9]_i_2 
       (.I0(\r_curr_input_col_reg_n_0_[0] ),
        .I1(\r_curr_input_col_reg_n_0_[2] ),
        .I2(\r_curr_input_col_reg_n_0_[1] ),
        .O(\r_input_coeffs[0][5][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88B8888888888888)) 
    \r_input_coeffs[0][6][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs_reg[7][6] ),
        .I5(\r_input_coeffs[0][0][9]_i_6_n_0 ),
        .O(\r_input_coeffs[0][6][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \r_input_coeffs[0][6][9]_i_2 
       (.I0(\r_curr_input_col_reg_n_0_[1] ),
        .I1(\r_curr_input_col_reg_n_0_[2] ),
        .I2(\r_curr_input_col_reg_n_0_[0] ),
        .O(\r_input_coeffs_reg[7][6] ));
  LUT6 #(
    .INIT(64'h88B8888888888888)) 
    \r_input_coeffs[0][7][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(r_core_state1),
        .I5(\r_input_coeffs[0][0][9]_i_6_n_0 ),
        .O(\r_input_coeffs[0][7][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[1][0][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs_reg[7][0] ),
        .I5(\r_input_coeffs[0][0][9]_i_6_n_0 ),
        .O(\r_input_coeffs[1][0][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[1][1][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs_reg[7][1] ),
        .I5(\r_input_coeffs[0][0][9]_i_6_n_0 ),
        .O(\r_input_coeffs[1][1][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[1][2][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs_reg[7][2] ),
        .I5(\r_input_coeffs[0][0][9]_i_6_n_0 ),
        .O(\r_input_coeffs[1][2][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[1][3][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs[0][3][9]_i_2_n_0 ),
        .I5(\r_input_coeffs[0][0][9]_i_6_n_0 ),
        .O(\r_input_coeffs[1][3][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[1][4][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs_reg[7][4] ),
        .I5(\r_input_coeffs[0][0][9]_i_6_n_0 ),
        .O(\r_input_coeffs[1][4][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[1][5][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs[0][5][9]_i_2_n_0 ),
        .I5(\r_input_coeffs[0][0][9]_i_6_n_0 ),
        .O(\r_input_coeffs[1][5][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[1][6][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs_reg[7][6] ),
        .I5(\r_input_coeffs[0][0][9]_i_6_n_0 ),
        .O(\r_input_coeffs[1][6][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[1][7][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(r_core_state1),
        .I5(\r_input_coeffs[0][0][9]_i_6_n_0 ),
        .O(\r_input_coeffs[1][7][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[2][0][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[1] ),
        .I4(\r_input_coeffs_reg[7][0] ),
        .I5(\r_input_coeffs[2][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[2][0][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_input_coeffs[2][0][9]_i_2 
       (.I0(\r_curr_input_row_reg_n_0_[0] ),
        .I1(\r_curr_input_row_reg_n_0_[2] ),
        .O(\r_input_coeffs[2][0][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[2][1][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[1] ),
        .I4(\r_input_coeffs_reg[7][1] ),
        .I5(\r_input_coeffs[2][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[2][1][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[2][2][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[1] ),
        .I4(\r_input_coeffs_reg[7][2] ),
        .I5(\r_input_coeffs[2][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[2][2][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[2][3][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[1] ),
        .I4(\r_input_coeffs[0][3][9]_i_2_n_0 ),
        .I5(\r_input_coeffs[2][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[2][3][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[2][4][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[1] ),
        .I4(\r_input_coeffs_reg[7][4] ),
        .I5(\r_input_coeffs[2][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[2][4][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[2][5][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[1] ),
        .I4(\r_input_coeffs[0][5][9]_i_2_n_0 ),
        .I5(\r_input_coeffs[2][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[2][5][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[2][6][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[1] ),
        .I4(\r_input_coeffs_reg[7][6] ),
        .I5(\r_input_coeffs[2][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[2][6][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[2][7][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[1] ),
        .I4(r_core_state1),
        .I5(\r_input_coeffs[2][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[2][7][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \r_input_coeffs[3][0][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs[3][0][9]_i_2_n_0 ),
        .I4(\r_input_coeffs_reg[7][0] ),
        .I5(\r_curr_input_row_reg_n_0_[2] ),
        .O(\r_input_coeffs[3][0][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_input_coeffs[3][0][9]_i_2 
       (.I0(\r_curr_input_row_reg_n_0_[1] ),
        .I1(\r_curr_input_row_reg_n_0_[0] ),
        .O(\r_input_coeffs[3][0][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \r_input_coeffs[3][1][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs[3][0][9]_i_2_n_0 ),
        .I4(\r_input_coeffs_reg[7][1] ),
        .I5(\r_curr_input_row_reg_n_0_[2] ),
        .O(\r_input_coeffs[3][1][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \r_input_coeffs[3][2][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs[3][0][9]_i_2_n_0 ),
        .I4(\r_input_coeffs_reg[7][2] ),
        .I5(\r_curr_input_row_reg_n_0_[2] ),
        .O(\r_input_coeffs[3][2][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \r_input_coeffs[3][3][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs[3][0][9]_i_2_n_0 ),
        .I4(\r_input_coeffs[0][3][9]_i_2_n_0 ),
        .I5(\r_curr_input_row_reg_n_0_[2] ),
        .O(\r_input_coeffs[3][3][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \r_input_coeffs[3][4][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs[3][0][9]_i_2_n_0 ),
        .I4(\r_input_coeffs_reg[7][4] ),
        .I5(\r_curr_input_row_reg_n_0_[2] ),
        .O(\r_input_coeffs[3][4][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \r_input_coeffs[3][5][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs[3][0][9]_i_2_n_0 ),
        .I4(\r_input_coeffs[0][5][9]_i_2_n_0 ),
        .I5(\r_curr_input_row_reg_n_0_[2] ),
        .O(\r_input_coeffs[3][5][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \r_input_coeffs[3][6][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs[3][0][9]_i_2_n_0 ),
        .I4(\r_input_coeffs_reg[7][6] ),
        .I5(\r_curr_input_row_reg_n_0_[2] ),
        .O(\r_input_coeffs[3][6][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8888888)) 
    \r_input_coeffs[3][7][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs[3][0][9]_i_2_n_0 ),
        .I4(r_core_state1),
        .I5(\r_curr_input_row_reg_n_0_[2] ),
        .O(\r_input_coeffs[3][7][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[4][0][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs_reg[7][0] ),
        .I4(\r_curr_input_row_reg_n_0_[2] ),
        .I5(\r_input_coeffs[4][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[4][0][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r_input_coeffs[4][0][9]_i_2 
       (.I0(\r_curr_input_row_reg_n_0_[0] ),
        .I1(\r_curr_input_row_reg_n_0_[1] ),
        .O(\r_input_coeffs[4][0][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[4][1][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs_reg[7][1] ),
        .I4(\r_curr_input_row_reg_n_0_[2] ),
        .I5(\r_input_coeffs[4][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[4][1][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[4][2][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs_reg[7][2] ),
        .I4(\r_curr_input_row_reg_n_0_[2] ),
        .I5(\r_input_coeffs[4][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[4][2][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[4][3][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs[0][3][9]_i_2_n_0 ),
        .I4(\r_curr_input_row_reg_n_0_[2] ),
        .I5(\r_input_coeffs[4][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[4][3][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[4][4][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs_reg[7][4] ),
        .I4(\r_curr_input_row_reg_n_0_[2] ),
        .I5(\r_input_coeffs[4][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[4][4][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[4][5][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs[0][5][9]_i_2_n_0 ),
        .I4(\r_curr_input_row_reg_n_0_[2] ),
        .I5(\r_input_coeffs[4][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[4][5][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[4][6][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs_reg[7][6] ),
        .I4(\r_curr_input_row_reg_n_0_[2] ),
        .I5(\r_input_coeffs[4][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[4][6][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[4][7][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(r_core_state1),
        .I4(\r_curr_input_row_reg_n_0_[2] ),
        .I5(\r_input_coeffs[4][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[4][7][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[5][0][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs_reg[7][0] ),
        .I5(\r_input_coeffs[5][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[5][0][9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r_input_coeffs[5][0][9]_i_2 
       (.I0(\r_curr_input_row_reg_n_0_[2] ),
        .I1(\r_curr_input_row_reg_n_0_[1] ),
        .O(\r_input_coeffs[5][0][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[5][1][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs_reg[7][1] ),
        .I5(\r_input_coeffs[5][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[5][1][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[5][2][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs_reg[7][2] ),
        .I5(\r_input_coeffs[5][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[5][2][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[5][3][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs[0][3][9]_i_2_n_0 ),
        .I5(\r_input_coeffs[5][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[5][3][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[5][4][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs_reg[7][4] ),
        .I5(\r_input_coeffs[5][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[5][4][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[5][5][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs[0][5][9]_i_2_n_0 ),
        .I5(\r_input_coeffs[5][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[5][5][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[5][6][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(\r_input_coeffs_reg[7][6] ),
        .I5(\r_input_coeffs[5][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[5][6][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[5][7][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[0] ),
        .I4(r_core_state1),
        .I5(\r_input_coeffs[5][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[5][7][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[6][0][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[1] ),
        .I4(\r_input_coeffs_reg[7][0] ),
        .I5(\r_input_coeffs[6][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[6][0][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_input_coeffs[6][0][9]_i_2 
       (.I0(\r_curr_input_row_reg_n_0_[2] ),
        .I1(\r_curr_input_row_reg_n_0_[0] ),
        .O(\r_input_coeffs[6][0][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[6][1][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[1] ),
        .I4(\r_input_coeffs_reg[7][1] ),
        .I5(\r_input_coeffs[6][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[6][1][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[6][2][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[1] ),
        .I4(\r_input_coeffs_reg[7][2] ),
        .I5(\r_input_coeffs[6][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[6][2][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[6][3][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[1] ),
        .I4(\r_input_coeffs[0][3][9]_i_2_n_0 ),
        .I5(\r_input_coeffs[6][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[6][3][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[6][4][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[1] ),
        .I4(\r_input_coeffs_reg[7][4] ),
        .I5(\r_input_coeffs[6][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[6][4][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[6][5][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[1] ),
        .I4(\r_input_coeffs[0][5][9]_i_2_n_0 ),
        .I5(\r_input_coeffs[6][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[6][5][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[6][6][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[1] ),
        .I4(\r_input_coeffs_reg[7][6] ),
        .I5(\r_input_coeffs[6][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[6][6][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[6][7][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_curr_input_row_reg_n_0_[1] ),
        .I4(r_core_state1),
        .I5(\r_input_coeffs[6][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[6][7][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[7][0][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs_reg[7][0] ),
        .I4(\r_curr_input_row_reg_n_0_[2] ),
        .I5(\r_input_coeffs[3][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[7][0][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[7][1][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs_reg[7][1] ),
        .I4(\r_curr_input_row_reg_n_0_[2] ),
        .I5(\r_input_coeffs[3][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[7][1][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[7][2][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs_reg[7][2] ),
        .I4(\r_curr_input_row_reg_n_0_[2] ),
        .I5(\r_input_coeffs[3][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[7][2][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[7][3][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs[0][3][9]_i_2_n_0 ),
        .I4(\r_curr_input_row_reg_n_0_[2] ),
        .I5(\r_input_coeffs[3][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[7][3][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[7][4][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs_reg[7][4] ),
        .I4(\r_curr_input_row_reg_n_0_[2] ),
        .I5(\r_input_coeffs[3][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[7][4][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[7][5][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs[0][5][9]_i_2_n_0 ),
        .I4(\r_curr_input_row_reg_n_0_[2] ),
        .I5(\r_input_coeffs[3][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[7][5][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[7][6][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(\r_input_coeffs_reg[7][6] ),
        .I4(\r_curr_input_row_reg_n_0_[2] ),
        .I5(\r_input_coeffs[3][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[7][6][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \r_input_coeffs[7][7][9]_i_1 
       (.I0(r_core_state14_out),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TVALID),
        .I3(r_core_state1),
        .I4(\r_curr_input_row_reg_n_0_[2] ),
        .I5(\r_input_coeffs[3][0][9]_i_2_n_0 ),
        .O(\r_input_coeffs[7][7][9]_i_1_n_0 ));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][0][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][0][9]_i_2_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg_n_0_[0][0][0] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][0][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][0][9]_i_2_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg_n_0_[0][0][1] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][0][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][0][9]_i_2_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg_n_0_[0][0][2] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][0][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][0][9]_i_2_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg_n_0_[0][0][3] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][0][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][0][9]_i_2_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg_n_0_[0][0][4] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][0][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][0][9]_i_2_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg_n_0_[0][0][5] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][0][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][0][9]_i_2_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg_n_0_[0][0][6] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][0][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][0][9]_i_2_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg_n_0_[0][0][7] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][0][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][0][9]_i_2_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg_n_0_[0][0][8] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][0][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][0][9]_i_2_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg_n_0_[0][0][9] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][1][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[0][1] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][1][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[0][1] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][1][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[0][1] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][1][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[0][1] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][1][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[0][1] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][1][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[0][1] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][1][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[0][1] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][1][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[0][1] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][1][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[0][1] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][1][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[0][1] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][2][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[0][2] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][2][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[0][2] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][2][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[0][2] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][2][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[0][2] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][2][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[0][2] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][2][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[0][2] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][2][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[0][2] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][2][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[0][2] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][2][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[0][2] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][2][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[0][2] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][3][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[0][3] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][3][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[0][3] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][3][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[0][3] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][3][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[0][3] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][3][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[0][3] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][3][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[0][3] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][3][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[0][3] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][3][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[0][3] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][3][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[0][3] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][3][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[0][3] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][4][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[0][4] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][4][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[0][4] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][4][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[0][4] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][4][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[0][4] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][4][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[0][4] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][4][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[0][4] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][4][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[0][4] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][4][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[0][4] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][4][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[0][4] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][4][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[0][4] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][5][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[0][5] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][5][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[0][5] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][5][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[0][5] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][5][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[0][5] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][5][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[0][5] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][5][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[0][5] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][5][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[0][5] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][5][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[0][5] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][5][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[0][5] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][5][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[0][5] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][6][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[0][6] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][6][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[0][6] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][6][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[0][6] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][6][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[0][6] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][6][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[0][6] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][6][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[0][6] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][6][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[0][6] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][6][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[0][6] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][6][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[0][6] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][6][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[0][6] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][7][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[0][7] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][7][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[0][7] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][7][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[0][7] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][7][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[0][7] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][7][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[0][7] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][7][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[0][7] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][7][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[0][7] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][7][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[0][7] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][7][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[0][7] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[0][7][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[0][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[0][7] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][0][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[1][0] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][0][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[1][0] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][0][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[1][0] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][0][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[1][0] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][0][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[1][0] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][0][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[1][0] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][0][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[1][0] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][0][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[1][0] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][0][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[1][0] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][0][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[1][0] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][1][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[1][1] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][1][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[1][1] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][1][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[1][1] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][1][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[1][1] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][1][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[1][1] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][1][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[1][1] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][1][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[1][1] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][1][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[1][1] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][1][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[1][1] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][1][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[1][1] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][2][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[1][2] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][2][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[1][2] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][2][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[1][2] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][2][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[1][2] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][2][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[1][2] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][2][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[1][2] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][2][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[1][2] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][2][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[1][2] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][2][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[1][2] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][2][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[1][2] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][3][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[1][3] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][3][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[1][3] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][3][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[1][3] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][3][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[1][3] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][3][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[1][3] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][3][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[1][3] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][3][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[1][3] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][3][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[1][3] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][3][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[1][3] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][3][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[1][3] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][4][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[1][4] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][4][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[1][4] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][4][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[1][4] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][4][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[1][4] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][4][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[1][4] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][4][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[1][4] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][4][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[1][4] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][4][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[1][4] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][4][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[1][4] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][4][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[1][4] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][5][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[1][5] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][5][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[1][5] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][5][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[1][5] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][5][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[1][5] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][5][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[1][5] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][5][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[1][5] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][5][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[1][5] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][5][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[1][5] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][5][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[1][5] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][5][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[1][5] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][6][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[1][6] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][6][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[1][6] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][6][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[1][6] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][6][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[1][6] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][6][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[1][6] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][6][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[1][6] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][6][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[1][6] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][6][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[1][6] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][6][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[1][6] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][6][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[1][6] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][7][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[1][7] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][7][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[1][7] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][7][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[1][7] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][7][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[1][7] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][7][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[1][7] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][7][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[1][7] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][7][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[1][7] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][7][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[1][7] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][7][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[1][7] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[1][7][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[1][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[1][7] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][0][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[2][0] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][0][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[2][0] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][0][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[2][0] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][0][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[2][0] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][0][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[2][0] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][0][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[2][0] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][0][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[2][0] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][0][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[2][0] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][0][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[2][0] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][0][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[2][0] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][1][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[2][1] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][1][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[2][1] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][1][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[2][1] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][1][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[2][1] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][1][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[2][1] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][1][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[2][1] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][1][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[2][1] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][1][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[2][1] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][1][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[2][1] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][1][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[2][1] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][2][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[2][2] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][2][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[2][2] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][2][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[2][2] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][2][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[2][2] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][2][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[2][2] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][2][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[2][2] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][2][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[2][2] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][2][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[2][2] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][2][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[2][2] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][2][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[2][2] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][3][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[2][3] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][3][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[2][3] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][3][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[2][3] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][3][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[2][3] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][3][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[2][3] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][3][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[2][3] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][3][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[2][3] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][3][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[2][3] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][3][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[2][3] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][3][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[2][3] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][4][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[2][4] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][4][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[2][4] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][4][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[2][4] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][4][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[2][4] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][4][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[2][4] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][4][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[2][4] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][4][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[2][4] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][4][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[2][4] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][4][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[2][4] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][4][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[2][4] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][5][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[2][5] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][5][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[2][5] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][5][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[2][5] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][5][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[2][5] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][5][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[2][5] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][5][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[2][5] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][5][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[2][5] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][5][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[2][5] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][5][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[2][5] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][5][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[2][5] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][6][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[2][6] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][6][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[2][6] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][6][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[2][6] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][6][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[2][6] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][6][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[2][6] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][6][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[2][6] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][6][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[2][6] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][6][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[2][6] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][6][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[2][6] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][6][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[2][6] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][7][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[2][7] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][7][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[2][7] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][7][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[2][7] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][7][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[2][7] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][7][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[2][7] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][7][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[2][7] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][7][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[2][7] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][7][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[2][7] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][7][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[2][7] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[2][7][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[2][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[2][7] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][0][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[3][0] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][0][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[3][0] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][0][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[3][0] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][0][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[3][0] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][0][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[3][0] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][0][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[3][0] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][0][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[3][0] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][0][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[3][0] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][0][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[3][0] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][0][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[3][0] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][1][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[3][1] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][1][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[3][1] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][1][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[3][1] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][1][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[3][1] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][1][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[3][1] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][1][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[3][1] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][1][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[3][1] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][1][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[3][1] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][1][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[3][1] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][1][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[3][1] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][2][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[3][2] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][2][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[3][2] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][2][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[3][2] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][2][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[3][2] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][2][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[3][2] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][2][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[3][2] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][2][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[3][2] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][2][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[3][2] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][2][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[3][2] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][2][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[3][2] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][3][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[3][3] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][3][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[3][3] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][3][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[3][3] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][3][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[3][3] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][3][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[3][3] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][3][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[3][3] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][3][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[3][3] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][3][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[3][3] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][3][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[3][3] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][3][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[3][3] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][4][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[3][4] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][4][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[3][4] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][4][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[3][4] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][4][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[3][4] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][4][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[3][4] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][4][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[3][4] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][4][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[3][4] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][4][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[3][4] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][4][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[3][4] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][4][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[3][4] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][5][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[3][5] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][5][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[3][5] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][5][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[3][5] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][5][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[3][5] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][5][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[3][5] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][5][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[3][5] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][5][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[3][5] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][5][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[3][5] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][5][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[3][5] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][5][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[3][5] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][6][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[3][6] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][6][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[3][6] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][6][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[3][6] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][6][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[3][6] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][6][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[3][6] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][6][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[3][6] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][6][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[3][6] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][6][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[3][6] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][6][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[3][6] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][6][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[3][6] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][7][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[3][7] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][7][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[3][7] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][7][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[3][7] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][7][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[3][7] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][7][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[3][7] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][7][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[3][7] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][7][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[3][7] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][7][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[3][7] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][7][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[3][7] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[3][7][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[3][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[3][7] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][0][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[4][0] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][0][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[4][0] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][0][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[4][0] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][0][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[4][0] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][0][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[4][0] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][0][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[4][0] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][0][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[4][0] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][0][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[4][0] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][0][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[4][0] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][0][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[4][0] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][1][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[4][1] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][1][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[4][1] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][1][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[4][1] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][1][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[4][1] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][1][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[4][1] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][1][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[4][1] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][1][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[4][1] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][1][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[4][1] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][1][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[4][1] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][1][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[4][1] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][2][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[4][2] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][2][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[4][2] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][2][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[4][2] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][2][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[4][2] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][2][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[4][2] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][2][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[4][2] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][2][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[4][2] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][2][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[4][2] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][2][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[4][2] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][2][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[4][2] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][3][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[4][3] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][3][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[4][3] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][3][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[4][3] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][3][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[4][3] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][3][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[4][3] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][3][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[4][3] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][3][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[4][3] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][3][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[4][3] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][3][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[4][3] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][3][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[4][3] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][4][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[4][4] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][4][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[4][4] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][4][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[4][4] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][4][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[4][4] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][4][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[4][4] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][4][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[4][4] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][4][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[4][4] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][4][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[4][4] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][4][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[4][4] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][4][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[4][4] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][5][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[4][5] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][5][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[4][5] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][5][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[4][5] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][5][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[4][5] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][5][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[4][5] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][5][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[4][5] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][5][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[4][5] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][5][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[4][5] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][5][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[4][5] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][5][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[4][5] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][6][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[4][6] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][6][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[4][6] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][6][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[4][6] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][6][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[4][6] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][6][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[4][6] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][6][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[4][6] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][6][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[4][6] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][6][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[4][6] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][6][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[4][6] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][6][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[4][6] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][7][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[4][7] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][7][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[4][7] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][7][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[4][7] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][7][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[4][7] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][7][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[4][7] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][7][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[4][7] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][7][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[4][7] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][7][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[4][7] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][7][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[4][7] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[4][7][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[4][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[4][7] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][0][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[5][0] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][0][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[5][0] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][0][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[5][0] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][0][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[5][0] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][0][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[5][0] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][0][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[5][0] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][0][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[5][0] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][0][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[5][0] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][0][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[5][0] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][0][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[5][0] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][1][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[5][1] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][1][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[5][1] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][1][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[5][1] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][1][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[5][1] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][1][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[5][1] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][1][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[5][1] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][1][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[5][1] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][1][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[5][1] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][1][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[5][1] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][1][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[5][1] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][2][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[5][2] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][2][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[5][2] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][2][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[5][2] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][2][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[5][2] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][2][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[5][2] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][2][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[5][2] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][2][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[5][2] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][2][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[5][2] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][2][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[5][2] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][2][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[5][2] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][3][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[5][3] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][3][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[5][3] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][3][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[5][3] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][3][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[5][3] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][3][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[5][3] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][3][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[5][3] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][3][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[5][3] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][3][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[5][3] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][3][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[5][3] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][3][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[5][3] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][4][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[5][4] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][4][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[5][4] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][4][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[5][4] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][4][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[5][4] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][4][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[5][4] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][4][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[5][4] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][4][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[5][4] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][4][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[5][4] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][4][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[5][4] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][4][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[5][4] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][5][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[5][5] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][5][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[5][5] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][5][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[5][5] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][5][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[5][5] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][5][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[5][5] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][5][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[5][5] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][5][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[5][5] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][5][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[5][5] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][5][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[5][5] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][5][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[5][5] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][6][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[5][6] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][6][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[5][6] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][6][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[5][6] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][6][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[5][6] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][6][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[5][6] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][6][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[5][6] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][6][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[5][6] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][6][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[5][6] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][6][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[5][6] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][6][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[5][6] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][7][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[5][7] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][7][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[5][7] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][7][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[5][7] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][7][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[5][7] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][7][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[5][7] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][7][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[5][7] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][7][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[5][7] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][7][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[5][7] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][7][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[5][7] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[5][7][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[5][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[5][7] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][0][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[6][0] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][0][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[6][0] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][0][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[6][0] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][0][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[6][0] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][0][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[6][0] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][0][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[6][0] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][0][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[6][0] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][0][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[6][0] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][0][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[6][0] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][0][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[6][0] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][1][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[6][1] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][1][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[6][1] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][1][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[6][1] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][1][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[6][1] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][1][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[6][1] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][1][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[6][1] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][1][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[6][1] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][1][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[6][1] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][1][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[6][1] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][1][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[6][1] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][2][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[6][2] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][2][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[6][2] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][2][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[6][2] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][2][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[6][2] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][2][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[6][2] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][2][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[6][2] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][2][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[6][2] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][2][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[6][2] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][2][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[6][2] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][2][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[6][2] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][3][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[6][3] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][3][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[6][3] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][3][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[6][3] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][3][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[6][3] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][3][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[6][3] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][3][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[6][3] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][3][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[6][3] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][3][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[6][3] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][3][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[6][3] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][3][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[6][3] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][4][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[6][4] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][4][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[6][4] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][4][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[6][4] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][4][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[6][4] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][4][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[6][4] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][4][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[6][4] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][4][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[6][4] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][4][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[6][4] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][4][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[6][4] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][4][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[6][4] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][5][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[6][5] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][5][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[6][5] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][5][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[6][5] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][5][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[6][5] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][5][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[6][5] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][5][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[6][5] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][5][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[6][5] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][5][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[6][5] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][5][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[6][5] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][5][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[6][5] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][6][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[6][6] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][6][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[6][6] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][6][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[6][6] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][6][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[6][6] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][6][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[6][6] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][6][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[6][6] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][6][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[6][6] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][6][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[6][6] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][6][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[6][6] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][6][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[6][6] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][7][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg[6][7] [0]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][7][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg[6][7] [1]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][7][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg[6][7] [2]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][7][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg[6][7] [3]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][7][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg[6][7] [4]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][7][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg[6][7] [5]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][7][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg[6][7] [6]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][7][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg[6][7] [7]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][7][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg[6][7] [8]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[6][7][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[6][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg[6][7] [9]),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][0][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg_n_0_[7][0][0] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][0][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg_n_0_[7][0][1] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][0][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg_n_0_[7][0][2] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][0][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg_n_0_[7][0][3] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][0][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg_n_0_[7][0][4] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][0][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg_n_0_[7][0][5] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][0][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg_n_0_[7][0][6] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][0][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg_n_0_[7][0][7] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][0][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg_n_0_[7][0][8] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][0][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][0][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg_n_0_[7][0][9] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][1][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg_n_0_[7][1][0] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][1][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg_n_0_[7][1][1] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][1][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg_n_0_[7][1][2] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][1][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg_n_0_[7][1][3] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][1][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg_n_0_[7][1][4] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][1][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg_n_0_[7][1][5] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][1][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg_n_0_[7][1][6] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][1][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg_n_0_[7][1][7] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][1][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg_n_0_[7][1][8] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][1][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][1][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg_n_0_[7][1][9] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][2][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg_n_0_[7][2][0] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][2][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg_n_0_[7][2][1] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][2][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg_n_0_[7][2][2] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][2][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg_n_0_[7][2][3] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][2][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg_n_0_[7][2][4] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][2][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg_n_0_[7][2][5] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][2][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg_n_0_[7][2][6] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][2][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg_n_0_[7][2][7] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][2][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg_n_0_[7][2][8] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][2][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][2][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg_n_0_[7][2][9] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][3][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg_n_0_[7][3][0] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][3][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg_n_0_[7][3][1] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][3][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg_n_0_[7][3][2] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][3][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg_n_0_[7][3][3] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][3][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg_n_0_[7][3][4] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][3][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg_n_0_[7][3][5] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][3][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg_n_0_[7][3][6] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][3][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg_n_0_[7][3][7] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][3][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg_n_0_[7][3][8] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][3][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][3][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg_n_0_[7][3][9] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][4][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg_n_0_[7][4][0] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][4][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg_n_0_[7][4][1] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][4][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg_n_0_[7][4][2] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][4][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg_n_0_[7][4][3] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][4][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg_n_0_[7][4][4] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][4][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg_n_0_[7][4][5] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][4][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg_n_0_[7][4][6] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][4][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg_n_0_[7][4][7] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][4][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg_n_0_[7][4][8] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][4][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][4][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg_n_0_[7][4][9] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][5][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg_n_0_[7][5][0] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][5][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg_n_0_[7][5][1] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][5][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg_n_0_[7][5][2] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][5][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg_n_0_[7][5][3] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][5][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg_n_0_[7][5][4] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][5][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg_n_0_[7][5][5] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][5][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg_n_0_[7][5][6] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][5][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg_n_0_[7][5][7] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][5][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg_n_0_[7][5][8] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][5][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][5][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg_n_0_[7][5][9] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][6][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg_n_0_[7][6][0] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][6][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg_n_0_[7][6][1] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][6][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg_n_0_[7][6][2] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][6][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg_n_0_[7][6][3] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][6][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg_n_0_[7][6][4] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][6][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg_n_0_[7][6][5] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][6][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg_n_0_[7][6][6] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][6][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg_n_0_[7][6][7] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][6][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg_n_0_[7][6][8] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][6][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][6][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg_n_0_[7][6][9] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][7][0] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[0]),
        .Q(\r_input_coeffs_reg_n_0_[7][7][0] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][7][1] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[1]),
        .Q(\r_input_coeffs_reg_n_0_[7][7][1] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][7][2] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[2]),
        .Q(\r_input_coeffs_reg_n_0_[7][7][2] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][7][3] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[3]),
        .Q(\r_input_coeffs_reg_n_0_[7][7][3] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][7][4] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[4]),
        .Q(\r_input_coeffs_reg_n_0_[7][7][4] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][7][5] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[5]),
        .Q(\r_input_coeffs_reg_n_0_[7][7][5] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][7][6] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[6]),
        .Q(\r_input_coeffs_reg_n_0_[7][7][6] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][7][7] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[7]),
        .Q(\r_input_coeffs_reg_n_0_[7][7][7] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][7][8] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[8]),
        .Q(\r_input_coeffs_reg_n_0_[7][7][8] ),
        .R(p_0_in));
  (* RAM_STYLE = "registers" *) 
  FDRE \r_input_coeffs_reg[7][7][9] 
       (.C(i_clk),
        .CE(\r_input_coeffs[7][7][9]_i_1_n_0 ),
        .D(r_input_coeffs[9]),
        .Q(\r_input_coeffs_reg_n_0_[7][7][9] ),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0F70)) 
    \r_next_output_col[0]_i_1 
       (.I0(r_zz_state__0[1]),
        .I1(r_core_state_reg_0),
        .I2(\r_next_output_col[2]_i_4_n_0 ),
        .I3(\r_next_output_col_reg_n_0_[0] ),
        .O(\r_next_output_col[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBAAFBFF08AA0800)) 
    \r_next_output_col[1]_i_1 
       (.I0(\r_next_output_col[1]_i_2_n_0 ),
        .I1(i_axis_TREADY),
        .I2(r_zz_state__0[1]),
        .I3(r_core_state_reg_0),
        .I4(r_o_axis_TDATA),
        .I5(\r_next_output_col_reg_n_0_[1] ),
        .O(\r_next_output_col[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h01000EFF0EFF0100)) 
    \r_next_output_col[1]_i_2 
       (.I0(r_direction),
        .I1(r_zz_state__0[0]),
        .I2(r_zz_state__0[1]),
        .I3(r_core_state_reg_0),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(\r_next_output_col_reg_n_0_[1] ),
        .O(\r_next_output_col[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE000FFFF)) 
    \r_next_output_col[2]_i_1 
       (.I0(r_o_axis_TLAST_reg_0),
        .I1(r_zz_state1),
        .I2(i_axis_TREADY),
        .I3(r_core_state_reg_0),
        .I4(i_aresetn),
        .O(\r_next_output_col[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BBBFFFFB8880000)) 
    \r_next_output_col[2]_i_2 
       (.I0(\r_next_output_col[2]_i_3_n_0 ),
        .I1(r_core_state_reg_0),
        .I2(\r_next_output_col_reg_n_0_[0] ),
        .I3(\r_next_output_col_reg_n_0_[1] ),
        .I4(\r_next_output_col[2]_i_4_n_0 ),
        .I5(\r_next_output_col_reg_n_0_[2] ),
        .O(\r_next_output_col[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000003CCC6CC9)) 
    \r_next_output_col[2]_i_3 
       (.I0(r_direction),
        .I1(\r_next_output_col_reg_n_0_[2] ),
        .I2(\r_next_output_col_reg_n_0_[0] ),
        .I3(\r_next_output_col_reg_n_0_[1] ),
        .I4(r_zz_state__0[0]),
        .I5(r_zz_state__0[1]),
        .O(\r_next_output_col[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2F202020)) 
    \r_next_output_col[2]_i_4 
       (.I0(i_axis_TREADY),
        .I1(r_zz_state__0[1]),
        .I2(r_core_state_reg_0),
        .I3(i_axis_TVALID),
        .I4(r_core_state0__0),
        .O(\r_next_output_col[2]_i_4_n_0 ));
  FDRE \r_next_output_col_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_next_output_col[0]_i_1_n_0 ),
        .Q(\r_next_output_col_reg_n_0_[0] ),
        .R(\r_next_output_col[2]_i_1_n_0 ));
  FDRE \r_next_output_col_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_next_output_col[1]_i_1_n_0 ),
        .Q(\r_next_output_col_reg_n_0_[1] ),
        .R(\r_next_output_col[2]_i_1_n_0 ));
  FDRE \r_next_output_col_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_next_output_col[2]_i_2_n_0 ),
        .Q(\r_next_output_col_reg_n_0_[2] ),
        .R(\r_next_output_col[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hDF20)) 
    \r_next_output_row[0]_i_1 
       (.I0(r_core_state_reg_0),
        .I1(r_zz_state__0[0]),
        .I2(i_axis_TREADY),
        .I3(\r_next_output_row_reg_n_0_[0] ),
        .O(\r_next_output_row[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0039FFFF00C60000)) 
    \r_next_output_row[1]_i_1 
       (.I0(r_direction),
        .I1(\r_next_output_row_reg_n_0_[0] ),
        .I2(r_zz_state__0[1]),
        .I3(r_zz_state__0[0]),
        .I4(\r_next_output_row[1]_i_2_n_0 ),
        .I5(\r_next_output_row_reg_n_0_[1] ),
        .O(\r_next_output_row[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \r_next_output_row[1]_i_2 
       (.I0(r_core_state_reg_0),
        .I1(r_zz_state__0[0]),
        .I2(i_axis_TREADY),
        .O(\r_next_output_row[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \r_next_output_row[2]_i_1 
       (.I0(\r_next_output_row[2]_i_2_n_0 ),
        .I1(r_core_state_reg_0),
        .I2(r_zz_state__0[0]),
        .I3(i_axis_TREADY),
        .I4(\r_next_output_row_reg_n_0_[2] ),
        .O(\r_next_output_row[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000003CCC9CC6)) 
    \r_next_output_row[2]_i_2 
       (.I0(r_direction),
        .I1(\r_next_output_row_reg_n_0_[2] ),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_next_output_row_reg_n_0_[0] ),
        .I4(r_zz_state__0[1]),
        .I5(r_zz_state__0[0]),
        .O(\r_next_output_row[2]_i_2_n_0 ));
  FDRE \r_next_output_row_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_next_output_row[0]_i_1_n_0 ),
        .Q(\r_next_output_row_reg_n_0_[0] ),
        .R(\r_next_output_col[2]_i_1_n_0 ));
  FDRE \r_next_output_row_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_next_output_row[1]_i_1_n_0 ),
        .Q(\r_next_output_row_reg_n_0_[1] ),
        .R(\r_next_output_col[2]_i_1_n_0 ));
  FDRE \r_next_output_row_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\r_next_output_row[2]_i_1_n_0 ),
        .Q(\r_next_output_row_reg_n_0_[2] ),
        .R(\r_next_output_col[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \r_o_axis_TDATA[0]_i_1 
       (.I0(\r_o_axis_TDATA[0]_i_2_n_0 ),
        .I1(\r_next_output_col_reg_n_0_[2] ),
        .I2(\r_o_axis_TDATA[0]_i_3_n_0 ),
        .I3(\r_input_coeffs_reg_n_0_[0][0][0] ),
        .I4(r_core_state_reg_0),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_12 
       (.I0(\r_input_coeffs_reg[3][7] [0]),
        .I1(\r_input_coeffs_reg[2][7] [0]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][7] [0]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][7] [0]),
        .O(\r_o_axis_TDATA[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_13 
       (.I0(\r_input_coeffs_reg_n_0_[7][7][0] ),
        .I1(\r_input_coeffs_reg[6][7] [0]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][7] [0]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][7] [0]),
        .O(\r_o_axis_TDATA[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_14 
       (.I0(\r_input_coeffs_reg[3][6] [0]),
        .I1(\r_input_coeffs_reg[2][6] [0]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][6] [0]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][6] [0]),
        .O(\r_o_axis_TDATA[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_15 
       (.I0(\r_input_coeffs_reg_n_0_[7][6][0] ),
        .I1(\r_input_coeffs_reg[6][6] [0]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][6] [0]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][6] [0]),
        .O(\r_o_axis_TDATA[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_16 
       (.I0(\r_input_coeffs_reg[3][5] [0]),
        .I1(\r_input_coeffs_reg[2][5] [0]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][5] [0]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][5] [0]),
        .O(\r_o_axis_TDATA[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_17 
       (.I0(\r_input_coeffs_reg_n_0_[7][5][0] ),
        .I1(\r_input_coeffs_reg[6][5] [0]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][5] [0]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][5] [0]),
        .O(\r_o_axis_TDATA[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_18 
       (.I0(\r_input_coeffs_reg[3][4] [0]),
        .I1(\r_input_coeffs_reg[2][4] [0]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][4] [0]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][4] [0]),
        .O(\r_o_axis_TDATA[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_19 
       (.I0(\r_input_coeffs_reg_n_0_[7][4][0] ),
        .I1(\r_input_coeffs_reg[6][4] [0]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][4] [0]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][4] [0]),
        .O(\r_o_axis_TDATA[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_2 
       (.I0(\r_o_axis_TDATA_reg[0]_i_4_n_0 ),
        .I1(\r_o_axis_TDATA_reg[0]_i_5_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[0]_i_6_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(\r_o_axis_TDATA_reg[0]_i_7_n_0 ),
        .O(\r_o_axis_TDATA[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_20 
       (.I0(\r_input_coeffs_reg[3][3] [0]),
        .I1(\r_input_coeffs_reg[2][3] [0]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][3] [0]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][3] [0]),
        .O(\r_o_axis_TDATA[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_21 
       (.I0(\r_input_coeffs_reg_n_0_[7][3][0] ),
        .I1(\r_input_coeffs_reg[6][3] [0]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][3] [0]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][3] [0]),
        .O(\r_o_axis_TDATA[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_22 
       (.I0(\r_input_coeffs_reg[3][2] [0]),
        .I1(\r_input_coeffs_reg[2][2] [0]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][2] [0]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][2] [0]),
        .O(\r_o_axis_TDATA[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_23 
       (.I0(\r_input_coeffs_reg_n_0_[7][2][0] ),
        .I1(\r_input_coeffs_reg[6][2] [0]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][2] [0]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][2] [0]),
        .O(\r_o_axis_TDATA[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_24 
       (.I0(\r_input_coeffs_reg[3][1] [0]),
        .I1(\r_input_coeffs_reg[2][1] [0]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][1] [0]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][1] [0]),
        .O(\r_o_axis_TDATA[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_25 
       (.I0(\r_input_coeffs_reg_n_0_[7][1][0] ),
        .I1(\r_input_coeffs_reg[6][1] [0]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][1] [0]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][1] [0]),
        .O(\r_o_axis_TDATA[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_26 
       (.I0(\r_input_coeffs_reg[3][0] [0]),
        .I1(\r_input_coeffs_reg[2][0] [0]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][0] [0]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg_n_0_[0][0][0] ),
        .O(\r_o_axis_TDATA[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_27 
       (.I0(\r_input_coeffs_reg_n_0_[7][0][0] ),
        .I1(\r_input_coeffs_reg[6][0] [0]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][0] [0]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][0] [0]),
        .O(\r_o_axis_TDATA[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[0]_i_3 
       (.I0(\r_o_axis_TDATA_reg[0]_i_8_n_0 ),
        .I1(\r_o_axis_TDATA_reg[0]_i_9_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[0]_i_10_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(r_input_coeffs__0__0[0]),
        .O(\r_o_axis_TDATA[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h80FF)) 
    \r_o_axis_TDATA[15]_i_1 
       (.I0(i_axis_TREADY),
        .I1(r_o_axis_TLAST_reg_0),
        .I2(r_core_state_reg_0),
        .I3(i_aresetn),
        .O(\r_o_axis_TDATA[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_15 
       (.I0(\r_input_coeffs_reg[3][3] [9]),
        .I1(\r_input_coeffs_reg[2][3] [9]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][3] [9]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][3] [9]),
        .O(\r_o_axis_TDATA[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_16 
       (.I0(\r_input_coeffs_reg_n_0_[7][3][9] ),
        .I1(\r_input_coeffs_reg[6][3] [9]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][3] [9]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][3] [9]),
        .O(\r_o_axis_TDATA[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_17 
       (.I0(\r_input_coeffs_reg[3][2] [9]),
        .I1(\r_input_coeffs_reg[2][2] [9]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][2] [9]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][2] [9]),
        .O(\r_o_axis_TDATA[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_18 
       (.I0(\r_input_coeffs_reg_n_0_[7][2][9] ),
        .I1(\r_input_coeffs_reg[6][2] [9]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][2] [9]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][2] [9]),
        .O(\r_o_axis_TDATA[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_19 
       (.I0(\r_input_coeffs_reg[3][1] [9]),
        .I1(\r_input_coeffs_reg[2][1] [9]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][1] [9]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][1] [9]),
        .O(\r_o_axis_TDATA[15]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_o_axis_TDATA[15]_i_2 
       (.I0(i_axis_TREADY),
        .I1(r_core_state_reg_0),
        .I2(r_o_axis_TDATA),
        .O(\r_o_axis_TDATA[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_20 
       (.I0(\r_input_coeffs_reg_n_0_[7][1][9] ),
        .I1(\r_input_coeffs_reg[6][1] [9]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][1] [9]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][1] [9]),
        .O(\r_o_axis_TDATA[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_21 
       (.I0(\r_input_coeffs_reg[3][0] [9]),
        .I1(\r_input_coeffs_reg[2][0] [9]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][0] [9]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg_n_0_[0][0][9] ),
        .O(\r_o_axis_TDATA[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_22 
       (.I0(\r_input_coeffs_reg_n_0_[7][0][9] ),
        .I1(\r_input_coeffs_reg[6][0] [9]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][0] [9]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][0] [9]),
        .O(\r_o_axis_TDATA[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_23 
       (.I0(\r_input_coeffs_reg[3][7] [9]),
        .I1(\r_input_coeffs_reg[2][7] [9]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][7] [9]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][7] [9]),
        .O(\r_o_axis_TDATA[15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_24 
       (.I0(\r_input_coeffs_reg_n_0_[7][7][9] ),
        .I1(\r_input_coeffs_reg[6][7] [9]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][7] [9]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][7] [9]),
        .O(\r_o_axis_TDATA[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_25 
       (.I0(\r_input_coeffs_reg[3][6] [9]),
        .I1(\r_input_coeffs_reg[2][6] [9]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][6] [9]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][6] [9]),
        .O(\r_o_axis_TDATA[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_26 
       (.I0(\r_input_coeffs_reg_n_0_[7][6][9] ),
        .I1(\r_input_coeffs_reg[6][6] [9]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][6] [9]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][6] [9]),
        .O(\r_o_axis_TDATA[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_27 
       (.I0(\r_input_coeffs_reg[3][5] [9]),
        .I1(\r_input_coeffs_reg[2][5] [9]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][5] [9]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][5] [9]),
        .O(\r_o_axis_TDATA[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_28 
       (.I0(\r_input_coeffs_reg_n_0_[7][5][9] ),
        .I1(\r_input_coeffs_reg[6][5] [9]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][5] [9]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][5] [9]),
        .O(\r_o_axis_TDATA[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_29 
       (.I0(\r_input_coeffs_reg[3][4] [9]),
        .I1(\r_input_coeffs_reg[2][4] [9]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][4] [9]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][4] [9]),
        .O(\r_o_axis_TDATA[15]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFC0CFEAE)) 
    \r_o_axis_TDATA[15]_i_3 
       (.I0(\r_input_coeffs_reg_n_0_[0][0][9] ),
        .I1(\r_o_axis_TDATA[15]_i_5_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[2] ),
        .I3(\r_o_axis_TDATA[15]_i_6_n_0 ),
        .I4(r_core_state_reg_0),
        .O(p_2_in[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_30 
       (.I0(\r_input_coeffs_reg_n_0_[7][4][9] ),
        .I1(\r_input_coeffs_reg[6][4] [9]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][4] [9]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][4] [9]),
        .O(\r_o_axis_TDATA[15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \r_o_axis_TDATA[15]_i_4 
       (.I0(r_core_state_reg_0),
        .I1(i_axis_TVALID),
        .I2(r_core_state1),
        .I3(\r_curr_input_row_reg_n_0_[1] ),
        .I4(\r_curr_input_row_reg_n_0_[0] ),
        .I5(\r_curr_input_row_reg_n_0_[2] ),
        .O(r_o_axis_TDATA));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_5 
       (.I0(\r_o_axis_TDATA_reg[15]_i_7_n_0 ),
        .I1(\r_o_axis_TDATA_reg[15]_i_8_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[15]_i_9_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(r_input_coeffs__0__0[9]),
        .O(\r_o_axis_TDATA[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[15]_i_6 
       (.I0(\r_o_axis_TDATA_reg[15]_i_11_n_0 ),
        .I1(\r_o_axis_TDATA_reg[15]_i_12_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[15]_i_13_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(\r_o_axis_TDATA_reg[15]_i_14_n_0 ),
        .O(\r_o_axis_TDATA[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \r_o_axis_TDATA[1]_i_1 
       (.I0(\r_o_axis_TDATA[1]_i_2_n_0 ),
        .I1(\r_next_output_col_reg_n_0_[2] ),
        .I2(\r_o_axis_TDATA[1]_i_3_n_0 ),
        .I3(\r_input_coeffs_reg_n_0_[0][0][1] ),
        .I4(r_core_state_reg_0),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_12 
       (.I0(\r_input_coeffs_reg[3][7] [1]),
        .I1(\r_input_coeffs_reg[2][7] [1]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][7] [1]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][7] [1]),
        .O(\r_o_axis_TDATA[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_13 
       (.I0(\r_input_coeffs_reg_n_0_[7][7][1] ),
        .I1(\r_input_coeffs_reg[6][7] [1]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][7] [1]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][7] [1]),
        .O(\r_o_axis_TDATA[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_14 
       (.I0(\r_input_coeffs_reg[3][6] [1]),
        .I1(\r_input_coeffs_reg[2][6] [1]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][6] [1]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][6] [1]),
        .O(\r_o_axis_TDATA[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_15 
       (.I0(\r_input_coeffs_reg_n_0_[7][6][1] ),
        .I1(\r_input_coeffs_reg[6][6] [1]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][6] [1]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][6] [1]),
        .O(\r_o_axis_TDATA[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_16 
       (.I0(\r_input_coeffs_reg[3][5] [1]),
        .I1(\r_input_coeffs_reg[2][5] [1]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][5] [1]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][5] [1]),
        .O(\r_o_axis_TDATA[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_17 
       (.I0(\r_input_coeffs_reg_n_0_[7][5][1] ),
        .I1(\r_input_coeffs_reg[6][5] [1]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][5] [1]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][5] [1]),
        .O(\r_o_axis_TDATA[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_18 
       (.I0(\r_input_coeffs_reg[3][4] [1]),
        .I1(\r_input_coeffs_reg[2][4] [1]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][4] [1]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][4] [1]),
        .O(\r_o_axis_TDATA[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_19 
       (.I0(\r_input_coeffs_reg_n_0_[7][4][1] ),
        .I1(\r_input_coeffs_reg[6][4] [1]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][4] [1]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][4] [1]),
        .O(\r_o_axis_TDATA[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_2 
       (.I0(\r_o_axis_TDATA_reg[1]_i_4_n_0 ),
        .I1(\r_o_axis_TDATA_reg[1]_i_5_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[1]_i_6_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(\r_o_axis_TDATA_reg[1]_i_7_n_0 ),
        .O(\r_o_axis_TDATA[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_20 
       (.I0(\r_input_coeffs_reg[3][3] [1]),
        .I1(\r_input_coeffs_reg[2][3] [1]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][3] [1]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][3] [1]),
        .O(\r_o_axis_TDATA[1]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_21 
       (.I0(\r_input_coeffs_reg_n_0_[7][3][1] ),
        .I1(\r_input_coeffs_reg[6][3] [1]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][3] [1]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][3] [1]),
        .O(\r_o_axis_TDATA[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_22 
       (.I0(\r_input_coeffs_reg[3][2] [1]),
        .I1(\r_input_coeffs_reg[2][2] [1]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][2] [1]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][2] [1]),
        .O(\r_o_axis_TDATA[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_23 
       (.I0(\r_input_coeffs_reg_n_0_[7][2][1] ),
        .I1(\r_input_coeffs_reg[6][2] [1]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][2] [1]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][2] [1]),
        .O(\r_o_axis_TDATA[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_24 
       (.I0(\r_input_coeffs_reg[3][1] [1]),
        .I1(\r_input_coeffs_reg[2][1] [1]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][1] [1]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][1] [1]),
        .O(\r_o_axis_TDATA[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_25 
       (.I0(\r_input_coeffs_reg_n_0_[7][1][1] ),
        .I1(\r_input_coeffs_reg[6][1] [1]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][1] [1]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][1] [1]),
        .O(\r_o_axis_TDATA[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_26 
       (.I0(\r_input_coeffs_reg[3][0] [1]),
        .I1(\r_input_coeffs_reg[2][0] [1]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][0] [1]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg_n_0_[0][0][1] ),
        .O(\r_o_axis_TDATA[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_27 
       (.I0(\r_input_coeffs_reg_n_0_[7][0][1] ),
        .I1(\r_input_coeffs_reg[6][0] [1]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][0] [1]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][0] [1]),
        .O(\r_o_axis_TDATA[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[1]_i_3 
       (.I0(\r_o_axis_TDATA_reg[1]_i_8_n_0 ),
        .I1(\r_o_axis_TDATA_reg[1]_i_9_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[1]_i_10_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(r_input_coeffs__0__0[1]),
        .O(\r_o_axis_TDATA[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \r_o_axis_TDATA[2]_i_1 
       (.I0(\r_o_axis_TDATA[2]_i_2_n_0 ),
        .I1(\r_next_output_col_reg_n_0_[2] ),
        .I2(\r_o_axis_TDATA[2]_i_3_n_0 ),
        .I3(\r_input_coeffs_reg_n_0_[0][0][2] ),
        .I4(r_core_state_reg_0),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_12 
       (.I0(\r_input_coeffs_reg[3][7] [2]),
        .I1(\r_input_coeffs_reg[2][7] [2]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][7] [2]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][7] [2]),
        .O(\r_o_axis_TDATA[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_13 
       (.I0(\r_input_coeffs_reg_n_0_[7][7][2] ),
        .I1(\r_input_coeffs_reg[6][7] [2]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][7] [2]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][7] [2]),
        .O(\r_o_axis_TDATA[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_14 
       (.I0(\r_input_coeffs_reg[3][6] [2]),
        .I1(\r_input_coeffs_reg[2][6] [2]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][6] [2]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][6] [2]),
        .O(\r_o_axis_TDATA[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_15 
       (.I0(\r_input_coeffs_reg_n_0_[7][6][2] ),
        .I1(\r_input_coeffs_reg[6][6] [2]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][6] [2]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][6] [2]),
        .O(\r_o_axis_TDATA[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_16 
       (.I0(\r_input_coeffs_reg[3][5] [2]),
        .I1(\r_input_coeffs_reg[2][5] [2]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][5] [2]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][5] [2]),
        .O(\r_o_axis_TDATA[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_17 
       (.I0(\r_input_coeffs_reg_n_0_[7][5][2] ),
        .I1(\r_input_coeffs_reg[6][5] [2]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][5] [2]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][5] [2]),
        .O(\r_o_axis_TDATA[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_18 
       (.I0(\r_input_coeffs_reg[3][4] [2]),
        .I1(\r_input_coeffs_reg[2][4] [2]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][4] [2]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][4] [2]),
        .O(\r_o_axis_TDATA[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_19 
       (.I0(\r_input_coeffs_reg_n_0_[7][4][2] ),
        .I1(\r_input_coeffs_reg[6][4] [2]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][4] [2]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][4] [2]),
        .O(\r_o_axis_TDATA[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_2 
       (.I0(\r_o_axis_TDATA_reg[2]_i_4_n_0 ),
        .I1(\r_o_axis_TDATA_reg[2]_i_5_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[2]_i_6_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(\r_o_axis_TDATA_reg[2]_i_7_n_0 ),
        .O(\r_o_axis_TDATA[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_20 
       (.I0(\r_input_coeffs_reg[3][3] [2]),
        .I1(\r_input_coeffs_reg[2][3] [2]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][3] [2]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][3] [2]),
        .O(\r_o_axis_TDATA[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_21 
       (.I0(\r_input_coeffs_reg_n_0_[7][3][2] ),
        .I1(\r_input_coeffs_reg[6][3] [2]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][3] [2]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][3] [2]),
        .O(\r_o_axis_TDATA[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_22 
       (.I0(\r_input_coeffs_reg[3][2] [2]),
        .I1(\r_input_coeffs_reg[2][2] [2]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][2] [2]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][2] [2]),
        .O(\r_o_axis_TDATA[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_23 
       (.I0(\r_input_coeffs_reg_n_0_[7][2][2] ),
        .I1(\r_input_coeffs_reg[6][2] [2]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][2] [2]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][2] [2]),
        .O(\r_o_axis_TDATA[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_24 
       (.I0(\r_input_coeffs_reg[3][1] [2]),
        .I1(\r_input_coeffs_reg[2][1] [2]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][1] [2]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][1] [2]),
        .O(\r_o_axis_TDATA[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_25 
       (.I0(\r_input_coeffs_reg_n_0_[7][1][2] ),
        .I1(\r_input_coeffs_reg[6][1] [2]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][1] [2]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][1] [2]),
        .O(\r_o_axis_TDATA[2]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_26 
       (.I0(\r_input_coeffs_reg[3][0] [2]),
        .I1(\r_input_coeffs_reg[2][0] [2]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][0] [2]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg_n_0_[0][0][2] ),
        .O(\r_o_axis_TDATA[2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_27 
       (.I0(\r_input_coeffs_reg_n_0_[7][0][2] ),
        .I1(\r_input_coeffs_reg[6][0] [2]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][0] [2]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][0] [2]),
        .O(\r_o_axis_TDATA[2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[2]_i_3 
       (.I0(\r_o_axis_TDATA_reg[2]_i_8_n_0 ),
        .I1(\r_o_axis_TDATA_reg[2]_i_9_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[2]_i_10_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(r_input_coeffs__0__0[2]),
        .O(\r_o_axis_TDATA[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \r_o_axis_TDATA[3]_i_1 
       (.I0(\r_o_axis_TDATA[3]_i_2_n_0 ),
        .I1(\r_next_output_col_reg_n_0_[2] ),
        .I2(\r_o_axis_TDATA[3]_i_3_n_0 ),
        .I3(\r_input_coeffs_reg_n_0_[0][0][3] ),
        .I4(r_core_state_reg_0),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_12 
       (.I0(\r_input_coeffs_reg[3][7] [3]),
        .I1(\r_input_coeffs_reg[2][7] [3]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][7] [3]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][7] [3]),
        .O(\r_o_axis_TDATA[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_13 
       (.I0(\r_input_coeffs_reg_n_0_[7][7][3] ),
        .I1(\r_input_coeffs_reg[6][7] [3]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][7] [3]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][7] [3]),
        .O(\r_o_axis_TDATA[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_14 
       (.I0(\r_input_coeffs_reg[3][6] [3]),
        .I1(\r_input_coeffs_reg[2][6] [3]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][6] [3]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][6] [3]),
        .O(\r_o_axis_TDATA[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_15 
       (.I0(\r_input_coeffs_reg_n_0_[7][6][3] ),
        .I1(\r_input_coeffs_reg[6][6] [3]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][6] [3]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][6] [3]),
        .O(\r_o_axis_TDATA[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_16 
       (.I0(\r_input_coeffs_reg[3][5] [3]),
        .I1(\r_input_coeffs_reg[2][5] [3]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][5] [3]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][5] [3]),
        .O(\r_o_axis_TDATA[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_17 
       (.I0(\r_input_coeffs_reg_n_0_[7][5][3] ),
        .I1(\r_input_coeffs_reg[6][5] [3]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][5] [3]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][5] [3]),
        .O(\r_o_axis_TDATA[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_18 
       (.I0(\r_input_coeffs_reg[3][4] [3]),
        .I1(\r_input_coeffs_reg[2][4] [3]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][4] [3]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][4] [3]),
        .O(\r_o_axis_TDATA[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_19 
       (.I0(\r_input_coeffs_reg_n_0_[7][4][3] ),
        .I1(\r_input_coeffs_reg[6][4] [3]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][4] [3]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][4] [3]),
        .O(\r_o_axis_TDATA[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_2 
       (.I0(\r_o_axis_TDATA_reg[3]_i_4_n_0 ),
        .I1(\r_o_axis_TDATA_reg[3]_i_5_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[3]_i_6_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(\r_o_axis_TDATA_reg[3]_i_7_n_0 ),
        .O(\r_o_axis_TDATA[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_20 
       (.I0(\r_input_coeffs_reg[3][3] [3]),
        .I1(\r_input_coeffs_reg[2][3] [3]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][3] [3]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][3] [3]),
        .O(\r_o_axis_TDATA[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_21 
       (.I0(\r_input_coeffs_reg_n_0_[7][3][3] ),
        .I1(\r_input_coeffs_reg[6][3] [3]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][3] [3]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][3] [3]),
        .O(\r_o_axis_TDATA[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_22 
       (.I0(\r_input_coeffs_reg[3][2] [3]),
        .I1(\r_input_coeffs_reg[2][2] [3]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][2] [3]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][2] [3]),
        .O(\r_o_axis_TDATA[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_23 
       (.I0(\r_input_coeffs_reg_n_0_[7][2][3] ),
        .I1(\r_input_coeffs_reg[6][2] [3]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][2] [3]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][2] [3]),
        .O(\r_o_axis_TDATA[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_24 
       (.I0(\r_input_coeffs_reg[3][1] [3]),
        .I1(\r_input_coeffs_reg[2][1] [3]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][1] [3]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][1] [3]),
        .O(\r_o_axis_TDATA[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_25 
       (.I0(\r_input_coeffs_reg_n_0_[7][1][3] ),
        .I1(\r_input_coeffs_reg[6][1] [3]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][1] [3]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][1] [3]),
        .O(\r_o_axis_TDATA[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_26 
       (.I0(\r_input_coeffs_reg[3][0] [3]),
        .I1(\r_input_coeffs_reg[2][0] [3]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][0] [3]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg_n_0_[0][0][3] ),
        .O(\r_o_axis_TDATA[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_27 
       (.I0(\r_input_coeffs_reg_n_0_[7][0][3] ),
        .I1(\r_input_coeffs_reg[6][0] [3]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][0] [3]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][0] [3]),
        .O(\r_o_axis_TDATA[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[3]_i_3 
       (.I0(\r_o_axis_TDATA_reg[3]_i_8_n_0 ),
        .I1(\r_o_axis_TDATA_reg[3]_i_9_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[3]_i_10_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(r_input_coeffs__0__0[3]),
        .O(\r_o_axis_TDATA[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \r_o_axis_TDATA[4]_i_1 
       (.I0(\r_o_axis_TDATA[4]_i_2_n_0 ),
        .I1(\r_next_output_col_reg_n_0_[2] ),
        .I2(\r_o_axis_TDATA[4]_i_3_n_0 ),
        .I3(\r_input_coeffs_reg_n_0_[0][0][4] ),
        .I4(r_core_state_reg_0),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_12 
       (.I0(\r_input_coeffs_reg[3][7] [4]),
        .I1(\r_input_coeffs_reg[2][7] [4]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][7] [4]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][7] [4]),
        .O(\r_o_axis_TDATA[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_13 
       (.I0(\r_input_coeffs_reg_n_0_[7][7][4] ),
        .I1(\r_input_coeffs_reg[6][7] [4]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][7] [4]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][7] [4]),
        .O(\r_o_axis_TDATA[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_14 
       (.I0(\r_input_coeffs_reg[3][6] [4]),
        .I1(\r_input_coeffs_reg[2][6] [4]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][6] [4]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][6] [4]),
        .O(\r_o_axis_TDATA[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_15 
       (.I0(\r_input_coeffs_reg_n_0_[7][6][4] ),
        .I1(\r_input_coeffs_reg[6][6] [4]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][6] [4]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][6] [4]),
        .O(\r_o_axis_TDATA[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_16 
       (.I0(\r_input_coeffs_reg[3][5] [4]),
        .I1(\r_input_coeffs_reg[2][5] [4]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][5] [4]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][5] [4]),
        .O(\r_o_axis_TDATA[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_17 
       (.I0(\r_input_coeffs_reg_n_0_[7][5][4] ),
        .I1(\r_input_coeffs_reg[6][5] [4]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][5] [4]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][5] [4]),
        .O(\r_o_axis_TDATA[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_18 
       (.I0(\r_input_coeffs_reg[3][4] [4]),
        .I1(\r_input_coeffs_reg[2][4] [4]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][4] [4]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][4] [4]),
        .O(\r_o_axis_TDATA[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_19 
       (.I0(\r_input_coeffs_reg_n_0_[7][4][4] ),
        .I1(\r_input_coeffs_reg[6][4] [4]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][4] [4]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][4] [4]),
        .O(\r_o_axis_TDATA[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_2 
       (.I0(\r_o_axis_TDATA_reg[4]_i_4_n_0 ),
        .I1(\r_o_axis_TDATA_reg[4]_i_5_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[4]_i_6_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(\r_o_axis_TDATA_reg[4]_i_7_n_0 ),
        .O(\r_o_axis_TDATA[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_20 
       (.I0(\r_input_coeffs_reg[3][3] [4]),
        .I1(\r_input_coeffs_reg[2][3] [4]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][3] [4]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][3] [4]),
        .O(\r_o_axis_TDATA[4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_21 
       (.I0(\r_input_coeffs_reg_n_0_[7][3][4] ),
        .I1(\r_input_coeffs_reg[6][3] [4]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][3] [4]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][3] [4]),
        .O(\r_o_axis_TDATA[4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_22 
       (.I0(\r_input_coeffs_reg[3][2] [4]),
        .I1(\r_input_coeffs_reg[2][2] [4]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][2] [4]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][2] [4]),
        .O(\r_o_axis_TDATA[4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_23 
       (.I0(\r_input_coeffs_reg_n_0_[7][2][4] ),
        .I1(\r_input_coeffs_reg[6][2] [4]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][2] [4]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][2] [4]),
        .O(\r_o_axis_TDATA[4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_24 
       (.I0(\r_input_coeffs_reg[3][1] [4]),
        .I1(\r_input_coeffs_reg[2][1] [4]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][1] [4]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][1] [4]),
        .O(\r_o_axis_TDATA[4]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_25 
       (.I0(\r_input_coeffs_reg_n_0_[7][1][4] ),
        .I1(\r_input_coeffs_reg[6][1] [4]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][1] [4]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][1] [4]),
        .O(\r_o_axis_TDATA[4]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_26 
       (.I0(\r_input_coeffs_reg[3][0] [4]),
        .I1(\r_input_coeffs_reg[2][0] [4]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][0] [4]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg_n_0_[0][0][4] ),
        .O(\r_o_axis_TDATA[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_27 
       (.I0(\r_input_coeffs_reg_n_0_[7][0][4] ),
        .I1(\r_input_coeffs_reg[6][0] [4]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][0] [4]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][0] [4]),
        .O(\r_o_axis_TDATA[4]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[4]_i_3 
       (.I0(\r_o_axis_TDATA_reg[4]_i_8_n_0 ),
        .I1(\r_o_axis_TDATA_reg[4]_i_9_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[4]_i_10_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(r_input_coeffs__0__0[4]),
        .O(\r_o_axis_TDATA[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \r_o_axis_TDATA[5]_i_1 
       (.I0(\r_o_axis_TDATA[5]_i_2_n_0 ),
        .I1(\r_next_output_col_reg_n_0_[2] ),
        .I2(\r_o_axis_TDATA[5]_i_3_n_0 ),
        .I3(\r_input_coeffs_reg_n_0_[0][0][5] ),
        .I4(r_core_state_reg_0),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_12 
       (.I0(\r_input_coeffs_reg[3][7] [5]),
        .I1(\r_input_coeffs_reg[2][7] [5]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][7] [5]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][7] [5]),
        .O(\r_o_axis_TDATA[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_13 
       (.I0(\r_input_coeffs_reg_n_0_[7][7][5] ),
        .I1(\r_input_coeffs_reg[6][7] [5]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][7] [5]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][7] [5]),
        .O(\r_o_axis_TDATA[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_14 
       (.I0(\r_input_coeffs_reg[3][6] [5]),
        .I1(\r_input_coeffs_reg[2][6] [5]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][6] [5]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][6] [5]),
        .O(\r_o_axis_TDATA[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_15 
       (.I0(\r_input_coeffs_reg_n_0_[7][6][5] ),
        .I1(\r_input_coeffs_reg[6][6] [5]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][6] [5]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][6] [5]),
        .O(\r_o_axis_TDATA[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_16 
       (.I0(\r_input_coeffs_reg[3][5] [5]),
        .I1(\r_input_coeffs_reg[2][5] [5]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][5] [5]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][5] [5]),
        .O(\r_o_axis_TDATA[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_17 
       (.I0(\r_input_coeffs_reg_n_0_[7][5][5] ),
        .I1(\r_input_coeffs_reg[6][5] [5]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][5] [5]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][5] [5]),
        .O(\r_o_axis_TDATA[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_18 
       (.I0(\r_input_coeffs_reg[3][4] [5]),
        .I1(\r_input_coeffs_reg[2][4] [5]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][4] [5]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][4] [5]),
        .O(\r_o_axis_TDATA[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_19 
       (.I0(\r_input_coeffs_reg_n_0_[7][4][5] ),
        .I1(\r_input_coeffs_reg[6][4] [5]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][4] [5]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][4] [5]),
        .O(\r_o_axis_TDATA[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_2 
       (.I0(\r_o_axis_TDATA_reg[5]_i_4_n_0 ),
        .I1(\r_o_axis_TDATA_reg[5]_i_5_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[5]_i_6_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(\r_o_axis_TDATA_reg[5]_i_7_n_0 ),
        .O(\r_o_axis_TDATA[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_20 
       (.I0(\r_input_coeffs_reg[3][3] [5]),
        .I1(\r_input_coeffs_reg[2][3] [5]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][3] [5]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][3] [5]),
        .O(\r_o_axis_TDATA[5]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_21 
       (.I0(\r_input_coeffs_reg_n_0_[7][3][5] ),
        .I1(\r_input_coeffs_reg[6][3] [5]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][3] [5]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][3] [5]),
        .O(\r_o_axis_TDATA[5]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_22 
       (.I0(\r_input_coeffs_reg[3][2] [5]),
        .I1(\r_input_coeffs_reg[2][2] [5]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][2] [5]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][2] [5]),
        .O(\r_o_axis_TDATA[5]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_23 
       (.I0(\r_input_coeffs_reg_n_0_[7][2][5] ),
        .I1(\r_input_coeffs_reg[6][2] [5]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][2] [5]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][2] [5]),
        .O(\r_o_axis_TDATA[5]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_24 
       (.I0(\r_input_coeffs_reg[3][1] [5]),
        .I1(\r_input_coeffs_reg[2][1] [5]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][1] [5]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][1] [5]),
        .O(\r_o_axis_TDATA[5]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_25 
       (.I0(\r_input_coeffs_reg_n_0_[7][1][5] ),
        .I1(\r_input_coeffs_reg[6][1] [5]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][1] [5]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][1] [5]),
        .O(\r_o_axis_TDATA[5]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_26 
       (.I0(\r_input_coeffs_reg[3][0] [5]),
        .I1(\r_input_coeffs_reg[2][0] [5]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][0] [5]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg_n_0_[0][0][5] ),
        .O(\r_o_axis_TDATA[5]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_27 
       (.I0(\r_input_coeffs_reg_n_0_[7][0][5] ),
        .I1(\r_input_coeffs_reg[6][0] [5]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][0] [5]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][0] [5]),
        .O(\r_o_axis_TDATA[5]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[5]_i_3 
       (.I0(\r_o_axis_TDATA_reg[5]_i_8_n_0 ),
        .I1(\r_o_axis_TDATA_reg[5]_i_9_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[5]_i_10_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(r_input_coeffs__0__0[5]),
        .O(\r_o_axis_TDATA[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \r_o_axis_TDATA[6]_i_1 
       (.I0(\r_o_axis_TDATA[6]_i_2_n_0 ),
        .I1(\r_next_output_col_reg_n_0_[2] ),
        .I2(\r_o_axis_TDATA[6]_i_3_n_0 ),
        .I3(\r_input_coeffs_reg_n_0_[0][0][6] ),
        .I4(r_core_state_reg_0),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_12 
       (.I0(\r_input_coeffs_reg[3][7] [6]),
        .I1(\r_input_coeffs_reg[2][7] [6]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][7] [6]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][7] [6]),
        .O(\r_o_axis_TDATA[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_13 
       (.I0(\r_input_coeffs_reg_n_0_[7][7][6] ),
        .I1(\r_input_coeffs_reg[6][7] [6]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][7] [6]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][7] [6]),
        .O(\r_o_axis_TDATA[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_14 
       (.I0(\r_input_coeffs_reg[3][6] [6]),
        .I1(\r_input_coeffs_reg[2][6] [6]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][6] [6]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][6] [6]),
        .O(\r_o_axis_TDATA[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_15 
       (.I0(\r_input_coeffs_reg_n_0_[7][6][6] ),
        .I1(\r_input_coeffs_reg[6][6] [6]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][6] [6]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][6] [6]),
        .O(\r_o_axis_TDATA[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_16 
       (.I0(\r_input_coeffs_reg[3][5] [6]),
        .I1(\r_input_coeffs_reg[2][5] [6]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][5] [6]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][5] [6]),
        .O(\r_o_axis_TDATA[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_17 
       (.I0(\r_input_coeffs_reg_n_0_[7][5][6] ),
        .I1(\r_input_coeffs_reg[6][5] [6]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][5] [6]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][5] [6]),
        .O(\r_o_axis_TDATA[6]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_18 
       (.I0(\r_input_coeffs_reg[3][4] [6]),
        .I1(\r_input_coeffs_reg[2][4] [6]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][4] [6]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][4] [6]),
        .O(\r_o_axis_TDATA[6]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_19 
       (.I0(\r_input_coeffs_reg_n_0_[7][4][6] ),
        .I1(\r_input_coeffs_reg[6][4] [6]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][4] [6]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][4] [6]),
        .O(\r_o_axis_TDATA[6]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_2 
       (.I0(\r_o_axis_TDATA_reg[6]_i_4_n_0 ),
        .I1(\r_o_axis_TDATA_reg[6]_i_5_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[6]_i_6_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(\r_o_axis_TDATA_reg[6]_i_7_n_0 ),
        .O(\r_o_axis_TDATA[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_20 
       (.I0(\r_input_coeffs_reg[3][3] [6]),
        .I1(\r_input_coeffs_reg[2][3] [6]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][3] [6]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][3] [6]),
        .O(\r_o_axis_TDATA[6]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_21 
       (.I0(\r_input_coeffs_reg_n_0_[7][3][6] ),
        .I1(\r_input_coeffs_reg[6][3] [6]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][3] [6]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][3] [6]),
        .O(\r_o_axis_TDATA[6]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_22 
       (.I0(\r_input_coeffs_reg[3][2] [6]),
        .I1(\r_input_coeffs_reg[2][2] [6]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][2] [6]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][2] [6]),
        .O(\r_o_axis_TDATA[6]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_23 
       (.I0(\r_input_coeffs_reg_n_0_[7][2][6] ),
        .I1(\r_input_coeffs_reg[6][2] [6]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][2] [6]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][2] [6]),
        .O(\r_o_axis_TDATA[6]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_24 
       (.I0(\r_input_coeffs_reg[3][1] [6]),
        .I1(\r_input_coeffs_reg[2][1] [6]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][1] [6]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][1] [6]),
        .O(\r_o_axis_TDATA[6]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_25 
       (.I0(\r_input_coeffs_reg_n_0_[7][1][6] ),
        .I1(\r_input_coeffs_reg[6][1] [6]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][1] [6]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][1] [6]),
        .O(\r_o_axis_TDATA[6]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_26 
       (.I0(\r_input_coeffs_reg[3][0] [6]),
        .I1(\r_input_coeffs_reg[2][0] [6]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][0] [6]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg_n_0_[0][0][6] ),
        .O(\r_o_axis_TDATA[6]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_27 
       (.I0(\r_input_coeffs_reg_n_0_[7][0][6] ),
        .I1(\r_input_coeffs_reg[6][0] [6]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][0] [6]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][0] [6]),
        .O(\r_o_axis_TDATA[6]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[6]_i_3 
       (.I0(\r_o_axis_TDATA_reg[6]_i_8_n_0 ),
        .I1(\r_o_axis_TDATA_reg[6]_i_9_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[6]_i_10_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(r_input_coeffs__0__0[6]),
        .O(\r_o_axis_TDATA[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \r_o_axis_TDATA[7]_i_1 
       (.I0(\r_o_axis_TDATA[7]_i_2_n_0 ),
        .I1(\r_next_output_col_reg_n_0_[2] ),
        .I2(\r_o_axis_TDATA[7]_i_3_n_0 ),
        .I3(\r_input_coeffs_reg_n_0_[0][0][7] ),
        .I4(r_core_state_reg_0),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_12 
       (.I0(\r_input_coeffs_reg[3][7] [7]),
        .I1(\r_input_coeffs_reg[2][7] [7]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][7] [7]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][7] [7]),
        .O(\r_o_axis_TDATA[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_13 
       (.I0(\r_input_coeffs_reg_n_0_[7][7][7] ),
        .I1(\r_input_coeffs_reg[6][7] [7]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][7] [7]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][7] [7]),
        .O(\r_o_axis_TDATA[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_14 
       (.I0(\r_input_coeffs_reg[3][6] [7]),
        .I1(\r_input_coeffs_reg[2][6] [7]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][6] [7]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][6] [7]),
        .O(\r_o_axis_TDATA[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_15 
       (.I0(\r_input_coeffs_reg_n_0_[7][6][7] ),
        .I1(\r_input_coeffs_reg[6][6] [7]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][6] [7]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][6] [7]),
        .O(\r_o_axis_TDATA[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_16 
       (.I0(\r_input_coeffs_reg[3][5] [7]),
        .I1(\r_input_coeffs_reg[2][5] [7]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][5] [7]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][5] [7]),
        .O(\r_o_axis_TDATA[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_17 
       (.I0(\r_input_coeffs_reg_n_0_[7][5][7] ),
        .I1(\r_input_coeffs_reg[6][5] [7]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][5] [7]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][5] [7]),
        .O(\r_o_axis_TDATA[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_18 
       (.I0(\r_input_coeffs_reg[3][4] [7]),
        .I1(\r_input_coeffs_reg[2][4] [7]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][4] [7]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][4] [7]),
        .O(\r_o_axis_TDATA[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_19 
       (.I0(\r_input_coeffs_reg_n_0_[7][4][7] ),
        .I1(\r_input_coeffs_reg[6][4] [7]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][4] [7]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][4] [7]),
        .O(\r_o_axis_TDATA[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_2 
       (.I0(\r_o_axis_TDATA_reg[7]_i_4_n_0 ),
        .I1(\r_o_axis_TDATA_reg[7]_i_5_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[7]_i_6_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(\r_o_axis_TDATA_reg[7]_i_7_n_0 ),
        .O(\r_o_axis_TDATA[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_20 
       (.I0(\r_input_coeffs_reg[3][3] [7]),
        .I1(\r_input_coeffs_reg[2][3] [7]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][3] [7]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][3] [7]),
        .O(\r_o_axis_TDATA[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_21 
       (.I0(\r_input_coeffs_reg_n_0_[7][3][7] ),
        .I1(\r_input_coeffs_reg[6][3] [7]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][3] [7]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][3] [7]),
        .O(\r_o_axis_TDATA[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_22 
       (.I0(\r_input_coeffs_reg[3][2] [7]),
        .I1(\r_input_coeffs_reg[2][2] [7]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][2] [7]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][2] [7]),
        .O(\r_o_axis_TDATA[7]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_23 
       (.I0(\r_input_coeffs_reg_n_0_[7][2][7] ),
        .I1(\r_input_coeffs_reg[6][2] [7]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][2] [7]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][2] [7]),
        .O(\r_o_axis_TDATA[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_24 
       (.I0(\r_input_coeffs_reg[3][1] [7]),
        .I1(\r_input_coeffs_reg[2][1] [7]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][1] [7]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][1] [7]),
        .O(\r_o_axis_TDATA[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_25 
       (.I0(\r_input_coeffs_reg_n_0_[7][1][7] ),
        .I1(\r_input_coeffs_reg[6][1] [7]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][1] [7]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][1] [7]),
        .O(\r_o_axis_TDATA[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_26 
       (.I0(\r_input_coeffs_reg[3][0] [7]),
        .I1(\r_input_coeffs_reg[2][0] [7]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][0] [7]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg_n_0_[0][0][7] ),
        .O(\r_o_axis_TDATA[7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_27 
       (.I0(\r_input_coeffs_reg_n_0_[7][0][7] ),
        .I1(\r_input_coeffs_reg[6][0] [7]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][0] [7]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][0] [7]),
        .O(\r_o_axis_TDATA[7]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[7]_i_3 
       (.I0(\r_o_axis_TDATA_reg[7]_i_8_n_0 ),
        .I1(\r_o_axis_TDATA_reg[7]_i_9_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[7]_i_10_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(r_input_coeffs__0__0[7]),
        .O(\r_o_axis_TDATA[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \r_o_axis_TDATA[8]_i_1 
       (.I0(\r_o_axis_TDATA[8]_i_2_n_0 ),
        .I1(\r_next_output_col_reg_n_0_[2] ),
        .I2(\r_o_axis_TDATA[8]_i_3_n_0 ),
        .I3(\r_input_coeffs_reg_n_0_[0][0][8] ),
        .I4(r_core_state_reg_0),
        .O(p_2_in[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_12 
       (.I0(\r_input_coeffs_reg[3][7] [8]),
        .I1(\r_input_coeffs_reg[2][7] [8]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][7] [8]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][7] [8]),
        .O(\r_o_axis_TDATA[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_13 
       (.I0(\r_input_coeffs_reg_n_0_[7][7][8] ),
        .I1(\r_input_coeffs_reg[6][7] [8]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][7] [8]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][7] [8]),
        .O(\r_o_axis_TDATA[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_14 
       (.I0(\r_input_coeffs_reg[3][6] [8]),
        .I1(\r_input_coeffs_reg[2][6] [8]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][6] [8]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][6] [8]),
        .O(\r_o_axis_TDATA[8]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_15 
       (.I0(\r_input_coeffs_reg_n_0_[7][6][8] ),
        .I1(\r_input_coeffs_reg[6][6] [8]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][6] [8]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][6] [8]),
        .O(\r_o_axis_TDATA[8]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_16 
       (.I0(\r_input_coeffs_reg[3][5] [8]),
        .I1(\r_input_coeffs_reg[2][5] [8]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][5] [8]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][5] [8]),
        .O(\r_o_axis_TDATA[8]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_17 
       (.I0(\r_input_coeffs_reg_n_0_[7][5][8] ),
        .I1(\r_input_coeffs_reg[6][5] [8]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][5] [8]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][5] [8]),
        .O(\r_o_axis_TDATA[8]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_18 
       (.I0(\r_input_coeffs_reg[3][4] [8]),
        .I1(\r_input_coeffs_reg[2][4] [8]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][4] [8]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][4] [8]),
        .O(\r_o_axis_TDATA[8]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_19 
       (.I0(\r_input_coeffs_reg_n_0_[7][4][8] ),
        .I1(\r_input_coeffs_reg[6][4] [8]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][4] [8]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][4] [8]),
        .O(\r_o_axis_TDATA[8]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_2 
       (.I0(\r_o_axis_TDATA_reg[8]_i_4_n_0 ),
        .I1(\r_o_axis_TDATA_reg[8]_i_5_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[8]_i_6_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(\r_o_axis_TDATA_reg[8]_i_7_n_0 ),
        .O(\r_o_axis_TDATA[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_20 
       (.I0(\r_input_coeffs_reg[3][3] [8]),
        .I1(\r_input_coeffs_reg[2][3] [8]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][3] [8]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][3] [8]),
        .O(\r_o_axis_TDATA[8]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_21 
       (.I0(\r_input_coeffs_reg_n_0_[7][3][8] ),
        .I1(\r_input_coeffs_reg[6][3] [8]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][3] [8]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][3] [8]),
        .O(\r_o_axis_TDATA[8]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_22 
       (.I0(\r_input_coeffs_reg[3][2] [8]),
        .I1(\r_input_coeffs_reg[2][2] [8]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][2] [8]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][2] [8]),
        .O(\r_o_axis_TDATA[8]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_23 
       (.I0(\r_input_coeffs_reg_n_0_[7][2][8] ),
        .I1(\r_input_coeffs_reg[6][2] [8]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][2] [8]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][2] [8]),
        .O(\r_o_axis_TDATA[8]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_24 
       (.I0(\r_input_coeffs_reg[3][1] [8]),
        .I1(\r_input_coeffs_reg[2][1] [8]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][1] [8]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[0][1] [8]),
        .O(\r_o_axis_TDATA[8]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_25 
       (.I0(\r_input_coeffs_reg_n_0_[7][1][8] ),
        .I1(\r_input_coeffs_reg[6][1] [8]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][1] [8]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][1] [8]),
        .O(\r_o_axis_TDATA[8]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_26 
       (.I0(\r_input_coeffs_reg[3][0] [8]),
        .I1(\r_input_coeffs_reg[2][0] [8]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[1][0] [8]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg_n_0_[0][0][8] ),
        .O(\r_o_axis_TDATA[8]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_27 
       (.I0(\r_input_coeffs_reg_n_0_[7][0][8] ),
        .I1(\r_input_coeffs_reg[6][0] [8]),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_input_coeffs_reg[5][0] [8]),
        .I4(\r_next_output_row_reg_n_0_[0] ),
        .I5(\r_input_coeffs_reg[4][0] [8]),
        .O(\r_o_axis_TDATA[8]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \r_o_axis_TDATA[8]_i_3 
       (.I0(\r_o_axis_TDATA_reg[8]_i_8_n_0 ),
        .I1(\r_o_axis_TDATA_reg[8]_i_9_n_0 ),
        .I2(\r_next_output_col_reg_n_0_[1] ),
        .I3(\r_o_axis_TDATA_reg[8]_i_10_n_0 ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(r_input_coeffs__0__0[8]),
        .O(\r_o_axis_TDATA[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8B8FF00)) 
    \r_o_axis_TDATA[9]_i_1 
       (.I0(\r_o_axis_TDATA[15]_i_6_n_0 ),
        .I1(\r_next_output_col_reg_n_0_[2] ),
        .I2(\r_o_axis_TDATA[15]_i_5_n_0 ),
        .I3(\r_input_coeffs_reg_n_0_[0][0][9] ),
        .I4(r_core_state_reg_0),
        .O(p_2_in[9]));
  FDRE \r_o_axis_TDATA_reg[0] 
       (.C(i_clk),
        .CE(\r_o_axis_TDATA[15]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(o_axis_TDATA[0]),
        .R(\r_o_axis_TDATA[15]_i_1_n_0 ));
  MUXF7 \r_o_axis_TDATA_reg[0]_i_10 
       (.I0(\r_o_axis_TDATA[0]_i_24_n_0 ),
        .I1(\r_o_axis_TDATA[0]_i_25_n_0 ),
        .O(\r_o_axis_TDATA_reg[0]_i_10_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[0]_i_11 
       (.I0(\r_o_axis_TDATA[0]_i_26_n_0 ),
        .I1(\r_o_axis_TDATA[0]_i_27_n_0 ),
        .O(r_input_coeffs__0__0[0]),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[0]_i_4 
       (.I0(\r_o_axis_TDATA[0]_i_12_n_0 ),
        .I1(\r_o_axis_TDATA[0]_i_13_n_0 ),
        .O(\r_o_axis_TDATA_reg[0]_i_4_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[0]_i_5 
       (.I0(\r_o_axis_TDATA[0]_i_14_n_0 ),
        .I1(\r_o_axis_TDATA[0]_i_15_n_0 ),
        .O(\r_o_axis_TDATA_reg[0]_i_5_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[0]_i_6 
       (.I0(\r_o_axis_TDATA[0]_i_16_n_0 ),
        .I1(\r_o_axis_TDATA[0]_i_17_n_0 ),
        .O(\r_o_axis_TDATA_reg[0]_i_6_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[0]_i_7 
       (.I0(\r_o_axis_TDATA[0]_i_18_n_0 ),
        .I1(\r_o_axis_TDATA[0]_i_19_n_0 ),
        .O(\r_o_axis_TDATA_reg[0]_i_7_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[0]_i_8 
       (.I0(\r_o_axis_TDATA[0]_i_20_n_0 ),
        .I1(\r_o_axis_TDATA[0]_i_21_n_0 ),
        .O(\r_o_axis_TDATA_reg[0]_i_8_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[0]_i_9 
       (.I0(\r_o_axis_TDATA[0]_i_22_n_0 ),
        .I1(\r_o_axis_TDATA[0]_i_23_n_0 ),
        .O(\r_o_axis_TDATA_reg[0]_i_9_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  FDRE \r_o_axis_TDATA_reg[15] 
       (.C(i_clk),
        .CE(\r_o_axis_TDATA[15]_i_2_n_0 ),
        .D(p_2_in[15]),
        .Q(o_axis_TDATA[10]),
        .R(\r_o_axis_TDATA[15]_i_1_n_0 ));
  MUXF7 \r_o_axis_TDATA_reg[15]_i_10 
       (.I0(\r_o_axis_TDATA[15]_i_21_n_0 ),
        .I1(\r_o_axis_TDATA[15]_i_22_n_0 ),
        .O(r_input_coeffs__0__0[9]),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[15]_i_11 
       (.I0(\r_o_axis_TDATA[15]_i_23_n_0 ),
        .I1(\r_o_axis_TDATA[15]_i_24_n_0 ),
        .O(\r_o_axis_TDATA_reg[15]_i_11_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[15]_i_12 
       (.I0(\r_o_axis_TDATA[15]_i_25_n_0 ),
        .I1(\r_o_axis_TDATA[15]_i_26_n_0 ),
        .O(\r_o_axis_TDATA_reg[15]_i_12_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[15]_i_13 
       (.I0(\r_o_axis_TDATA[15]_i_27_n_0 ),
        .I1(\r_o_axis_TDATA[15]_i_28_n_0 ),
        .O(\r_o_axis_TDATA_reg[15]_i_13_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[15]_i_14 
       (.I0(\r_o_axis_TDATA[15]_i_29_n_0 ),
        .I1(\r_o_axis_TDATA[15]_i_30_n_0 ),
        .O(\r_o_axis_TDATA_reg[15]_i_14_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[15]_i_7 
       (.I0(\r_o_axis_TDATA[15]_i_15_n_0 ),
        .I1(\r_o_axis_TDATA[15]_i_16_n_0 ),
        .O(\r_o_axis_TDATA_reg[15]_i_7_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[15]_i_8 
       (.I0(\r_o_axis_TDATA[15]_i_17_n_0 ),
        .I1(\r_o_axis_TDATA[15]_i_18_n_0 ),
        .O(\r_o_axis_TDATA_reg[15]_i_8_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[15]_i_9 
       (.I0(\r_o_axis_TDATA[15]_i_19_n_0 ),
        .I1(\r_o_axis_TDATA[15]_i_20_n_0 ),
        .O(\r_o_axis_TDATA_reg[15]_i_9_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  FDRE \r_o_axis_TDATA_reg[1] 
       (.C(i_clk),
        .CE(\r_o_axis_TDATA[15]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(o_axis_TDATA[1]),
        .R(\r_o_axis_TDATA[15]_i_1_n_0 ));
  MUXF7 \r_o_axis_TDATA_reg[1]_i_10 
       (.I0(\r_o_axis_TDATA[1]_i_24_n_0 ),
        .I1(\r_o_axis_TDATA[1]_i_25_n_0 ),
        .O(\r_o_axis_TDATA_reg[1]_i_10_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[1]_i_11 
       (.I0(\r_o_axis_TDATA[1]_i_26_n_0 ),
        .I1(\r_o_axis_TDATA[1]_i_27_n_0 ),
        .O(r_input_coeffs__0__0[1]),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[1]_i_4 
       (.I0(\r_o_axis_TDATA[1]_i_12_n_0 ),
        .I1(\r_o_axis_TDATA[1]_i_13_n_0 ),
        .O(\r_o_axis_TDATA_reg[1]_i_4_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[1]_i_5 
       (.I0(\r_o_axis_TDATA[1]_i_14_n_0 ),
        .I1(\r_o_axis_TDATA[1]_i_15_n_0 ),
        .O(\r_o_axis_TDATA_reg[1]_i_5_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[1]_i_6 
       (.I0(\r_o_axis_TDATA[1]_i_16_n_0 ),
        .I1(\r_o_axis_TDATA[1]_i_17_n_0 ),
        .O(\r_o_axis_TDATA_reg[1]_i_6_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[1]_i_7 
       (.I0(\r_o_axis_TDATA[1]_i_18_n_0 ),
        .I1(\r_o_axis_TDATA[1]_i_19_n_0 ),
        .O(\r_o_axis_TDATA_reg[1]_i_7_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[1]_i_8 
       (.I0(\r_o_axis_TDATA[1]_i_20_n_0 ),
        .I1(\r_o_axis_TDATA[1]_i_21_n_0 ),
        .O(\r_o_axis_TDATA_reg[1]_i_8_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[1]_i_9 
       (.I0(\r_o_axis_TDATA[1]_i_22_n_0 ),
        .I1(\r_o_axis_TDATA[1]_i_23_n_0 ),
        .O(\r_o_axis_TDATA_reg[1]_i_9_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  FDRE \r_o_axis_TDATA_reg[2] 
       (.C(i_clk),
        .CE(\r_o_axis_TDATA[15]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(o_axis_TDATA[2]),
        .R(\r_o_axis_TDATA[15]_i_1_n_0 ));
  MUXF7 \r_o_axis_TDATA_reg[2]_i_10 
       (.I0(\r_o_axis_TDATA[2]_i_24_n_0 ),
        .I1(\r_o_axis_TDATA[2]_i_25_n_0 ),
        .O(\r_o_axis_TDATA_reg[2]_i_10_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[2]_i_11 
       (.I0(\r_o_axis_TDATA[2]_i_26_n_0 ),
        .I1(\r_o_axis_TDATA[2]_i_27_n_0 ),
        .O(r_input_coeffs__0__0[2]),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[2]_i_4 
       (.I0(\r_o_axis_TDATA[2]_i_12_n_0 ),
        .I1(\r_o_axis_TDATA[2]_i_13_n_0 ),
        .O(\r_o_axis_TDATA_reg[2]_i_4_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[2]_i_5 
       (.I0(\r_o_axis_TDATA[2]_i_14_n_0 ),
        .I1(\r_o_axis_TDATA[2]_i_15_n_0 ),
        .O(\r_o_axis_TDATA_reg[2]_i_5_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[2]_i_6 
       (.I0(\r_o_axis_TDATA[2]_i_16_n_0 ),
        .I1(\r_o_axis_TDATA[2]_i_17_n_0 ),
        .O(\r_o_axis_TDATA_reg[2]_i_6_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[2]_i_7 
       (.I0(\r_o_axis_TDATA[2]_i_18_n_0 ),
        .I1(\r_o_axis_TDATA[2]_i_19_n_0 ),
        .O(\r_o_axis_TDATA_reg[2]_i_7_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[2]_i_8 
       (.I0(\r_o_axis_TDATA[2]_i_20_n_0 ),
        .I1(\r_o_axis_TDATA[2]_i_21_n_0 ),
        .O(\r_o_axis_TDATA_reg[2]_i_8_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[2]_i_9 
       (.I0(\r_o_axis_TDATA[2]_i_22_n_0 ),
        .I1(\r_o_axis_TDATA[2]_i_23_n_0 ),
        .O(\r_o_axis_TDATA_reg[2]_i_9_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  FDRE \r_o_axis_TDATA_reg[3] 
       (.C(i_clk),
        .CE(\r_o_axis_TDATA[15]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(o_axis_TDATA[3]),
        .R(\r_o_axis_TDATA[15]_i_1_n_0 ));
  MUXF7 \r_o_axis_TDATA_reg[3]_i_10 
       (.I0(\r_o_axis_TDATA[3]_i_24_n_0 ),
        .I1(\r_o_axis_TDATA[3]_i_25_n_0 ),
        .O(\r_o_axis_TDATA_reg[3]_i_10_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[3]_i_11 
       (.I0(\r_o_axis_TDATA[3]_i_26_n_0 ),
        .I1(\r_o_axis_TDATA[3]_i_27_n_0 ),
        .O(r_input_coeffs__0__0[3]),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[3]_i_4 
       (.I0(\r_o_axis_TDATA[3]_i_12_n_0 ),
        .I1(\r_o_axis_TDATA[3]_i_13_n_0 ),
        .O(\r_o_axis_TDATA_reg[3]_i_4_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[3]_i_5 
       (.I0(\r_o_axis_TDATA[3]_i_14_n_0 ),
        .I1(\r_o_axis_TDATA[3]_i_15_n_0 ),
        .O(\r_o_axis_TDATA_reg[3]_i_5_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[3]_i_6 
       (.I0(\r_o_axis_TDATA[3]_i_16_n_0 ),
        .I1(\r_o_axis_TDATA[3]_i_17_n_0 ),
        .O(\r_o_axis_TDATA_reg[3]_i_6_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[3]_i_7 
       (.I0(\r_o_axis_TDATA[3]_i_18_n_0 ),
        .I1(\r_o_axis_TDATA[3]_i_19_n_0 ),
        .O(\r_o_axis_TDATA_reg[3]_i_7_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[3]_i_8 
       (.I0(\r_o_axis_TDATA[3]_i_20_n_0 ),
        .I1(\r_o_axis_TDATA[3]_i_21_n_0 ),
        .O(\r_o_axis_TDATA_reg[3]_i_8_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[3]_i_9 
       (.I0(\r_o_axis_TDATA[3]_i_22_n_0 ),
        .I1(\r_o_axis_TDATA[3]_i_23_n_0 ),
        .O(\r_o_axis_TDATA_reg[3]_i_9_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  FDRE \r_o_axis_TDATA_reg[4] 
       (.C(i_clk),
        .CE(\r_o_axis_TDATA[15]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(o_axis_TDATA[4]),
        .R(\r_o_axis_TDATA[15]_i_1_n_0 ));
  MUXF7 \r_o_axis_TDATA_reg[4]_i_10 
       (.I0(\r_o_axis_TDATA[4]_i_24_n_0 ),
        .I1(\r_o_axis_TDATA[4]_i_25_n_0 ),
        .O(\r_o_axis_TDATA_reg[4]_i_10_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[4]_i_11 
       (.I0(\r_o_axis_TDATA[4]_i_26_n_0 ),
        .I1(\r_o_axis_TDATA[4]_i_27_n_0 ),
        .O(r_input_coeffs__0__0[4]),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[4]_i_4 
       (.I0(\r_o_axis_TDATA[4]_i_12_n_0 ),
        .I1(\r_o_axis_TDATA[4]_i_13_n_0 ),
        .O(\r_o_axis_TDATA_reg[4]_i_4_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[4]_i_5 
       (.I0(\r_o_axis_TDATA[4]_i_14_n_0 ),
        .I1(\r_o_axis_TDATA[4]_i_15_n_0 ),
        .O(\r_o_axis_TDATA_reg[4]_i_5_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[4]_i_6 
       (.I0(\r_o_axis_TDATA[4]_i_16_n_0 ),
        .I1(\r_o_axis_TDATA[4]_i_17_n_0 ),
        .O(\r_o_axis_TDATA_reg[4]_i_6_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[4]_i_7 
       (.I0(\r_o_axis_TDATA[4]_i_18_n_0 ),
        .I1(\r_o_axis_TDATA[4]_i_19_n_0 ),
        .O(\r_o_axis_TDATA_reg[4]_i_7_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[4]_i_8 
       (.I0(\r_o_axis_TDATA[4]_i_20_n_0 ),
        .I1(\r_o_axis_TDATA[4]_i_21_n_0 ),
        .O(\r_o_axis_TDATA_reg[4]_i_8_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[4]_i_9 
       (.I0(\r_o_axis_TDATA[4]_i_22_n_0 ),
        .I1(\r_o_axis_TDATA[4]_i_23_n_0 ),
        .O(\r_o_axis_TDATA_reg[4]_i_9_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  FDRE \r_o_axis_TDATA_reg[5] 
       (.C(i_clk),
        .CE(\r_o_axis_TDATA[15]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(o_axis_TDATA[5]),
        .R(\r_o_axis_TDATA[15]_i_1_n_0 ));
  MUXF7 \r_o_axis_TDATA_reg[5]_i_10 
       (.I0(\r_o_axis_TDATA[5]_i_24_n_0 ),
        .I1(\r_o_axis_TDATA[5]_i_25_n_0 ),
        .O(\r_o_axis_TDATA_reg[5]_i_10_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[5]_i_11 
       (.I0(\r_o_axis_TDATA[5]_i_26_n_0 ),
        .I1(\r_o_axis_TDATA[5]_i_27_n_0 ),
        .O(r_input_coeffs__0__0[5]),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[5]_i_4 
       (.I0(\r_o_axis_TDATA[5]_i_12_n_0 ),
        .I1(\r_o_axis_TDATA[5]_i_13_n_0 ),
        .O(\r_o_axis_TDATA_reg[5]_i_4_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[5]_i_5 
       (.I0(\r_o_axis_TDATA[5]_i_14_n_0 ),
        .I1(\r_o_axis_TDATA[5]_i_15_n_0 ),
        .O(\r_o_axis_TDATA_reg[5]_i_5_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[5]_i_6 
       (.I0(\r_o_axis_TDATA[5]_i_16_n_0 ),
        .I1(\r_o_axis_TDATA[5]_i_17_n_0 ),
        .O(\r_o_axis_TDATA_reg[5]_i_6_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[5]_i_7 
       (.I0(\r_o_axis_TDATA[5]_i_18_n_0 ),
        .I1(\r_o_axis_TDATA[5]_i_19_n_0 ),
        .O(\r_o_axis_TDATA_reg[5]_i_7_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[5]_i_8 
       (.I0(\r_o_axis_TDATA[5]_i_20_n_0 ),
        .I1(\r_o_axis_TDATA[5]_i_21_n_0 ),
        .O(\r_o_axis_TDATA_reg[5]_i_8_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[5]_i_9 
       (.I0(\r_o_axis_TDATA[5]_i_22_n_0 ),
        .I1(\r_o_axis_TDATA[5]_i_23_n_0 ),
        .O(\r_o_axis_TDATA_reg[5]_i_9_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  FDRE \r_o_axis_TDATA_reg[6] 
       (.C(i_clk),
        .CE(\r_o_axis_TDATA[15]_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(o_axis_TDATA[6]),
        .R(\r_o_axis_TDATA[15]_i_1_n_0 ));
  MUXF7 \r_o_axis_TDATA_reg[6]_i_10 
       (.I0(\r_o_axis_TDATA[6]_i_24_n_0 ),
        .I1(\r_o_axis_TDATA[6]_i_25_n_0 ),
        .O(\r_o_axis_TDATA_reg[6]_i_10_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[6]_i_11 
       (.I0(\r_o_axis_TDATA[6]_i_26_n_0 ),
        .I1(\r_o_axis_TDATA[6]_i_27_n_0 ),
        .O(r_input_coeffs__0__0[6]),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[6]_i_4 
       (.I0(\r_o_axis_TDATA[6]_i_12_n_0 ),
        .I1(\r_o_axis_TDATA[6]_i_13_n_0 ),
        .O(\r_o_axis_TDATA_reg[6]_i_4_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[6]_i_5 
       (.I0(\r_o_axis_TDATA[6]_i_14_n_0 ),
        .I1(\r_o_axis_TDATA[6]_i_15_n_0 ),
        .O(\r_o_axis_TDATA_reg[6]_i_5_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[6]_i_6 
       (.I0(\r_o_axis_TDATA[6]_i_16_n_0 ),
        .I1(\r_o_axis_TDATA[6]_i_17_n_0 ),
        .O(\r_o_axis_TDATA_reg[6]_i_6_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[6]_i_7 
       (.I0(\r_o_axis_TDATA[6]_i_18_n_0 ),
        .I1(\r_o_axis_TDATA[6]_i_19_n_0 ),
        .O(\r_o_axis_TDATA_reg[6]_i_7_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[6]_i_8 
       (.I0(\r_o_axis_TDATA[6]_i_20_n_0 ),
        .I1(\r_o_axis_TDATA[6]_i_21_n_0 ),
        .O(\r_o_axis_TDATA_reg[6]_i_8_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[6]_i_9 
       (.I0(\r_o_axis_TDATA[6]_i_22_n_0 ),
        .I1(\r_o_axis_TDATA[6]_i_23_n_0 ),
        .O(\r_o_axis_TDATA_reg[6]_i_9_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  FDRE \r_o_axis_TDATA_reg[7] 
       (.C(i_clk),
        .CE(\r_o_axis_TDATA[15]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(o_axis_TDATA[7]),
        .R(\r_o_axis_TDATA[15]_i_1_n_0 ));
  MUXF7 \r_o_axis_TDATA_reg[7]_i_10 
       (.I0(\r_o_axis_TDATA[7]_i_24_n_0 ),
        .I1(\r_o_axis_TDATA[7]_i_25_n_0 ),
        .O(\r_o_axis_TDATA_reg[7]_i_10_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[7]_i_11 
       (.I0(\r_o_axis_TDATA[7]_i_26_n_0 ),
        .I1(\r_o_axis_TDATA[7]_i_27_n_0 ),
        .O(r_input_coeffs__0__0[7]),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[7]_i_4 
       (.I0(\r_o_axis_TDATA[7]_i_12_n_0 ),
        .I1(\r_o_axis_TDATA[7]_i_13_n_0 ),
        .O(\r_o_axis_TDATA_reg[7]_i_4_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[7]_i_5 
       (.I0(\r_o_axis_TDATA[7]_i_14_n_0 ),
        .I1(\r_o_axis_TDATA[7]_i_15_n_0 ),
        .O(\r_o_axis_TDATA_reg[7]_i_5_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[7]_i_6 
       (.I0(\r_o_axis_TDATA[7]_i_16_n_0 ),
        .I1(\r_o_axis_TDATA[7]_i_17_n_0 ),
        .O(\r_o_axis_TDATA_reg[7]_i_6_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[7]_i_7 
       (.I0(\r_o_axis_TDATA[7]_i_18_n_0 ),
        .I1(\r_o_axis_TDATA[7]_i_19_n_0 ),
        .O(\r_o_axis_TDATA_reg[7]_i_7_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[7]_i_8 
       (.I0(\r_o_axis_TDATA[7]_i_20_n_0 ),
        .I1(\r_o_axis_TDATA[7]_i_21_n_0 ),
        .O(\r_o_axis_TDATA_reg[7]_i_8_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[7]_i_9 
       (.I0(\r_o_axis_TDATA[7]_i_22_n_0 ),
        .I1(\r_o_axis_TDATA[7]_i_23_n_0 ),
        .O(\r_o_axis_TDATA_reg[7]_i_9_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  FDRE \r_o_axis_TDATA_reg[8] 
       (.C(i_clk),
        .CE(\r_o_axis_TDATA[15]_i_2_n_0 ),
        .D(p_2_in[8]),
        .Q(o_axis_TDATA[8]),
        .R(\r_o_axis_TDATA[15]_i_1_n_0 ));
  MUXF7 \r_o_axis_TDATA_reg[8]_i_10 
       (.I0(\r_o_axis_TDATA[8]_i_24_n_0 ),
        .I1(\r_o_axis_TDATA[8]_i_25_n_0 ),
        .O(\r_o_axis_TDATA_reg[8]_i_10_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[8]_i_11 
       (.I0(\r_o_axis_TDATA[8]_i_26_n_0 ),
        .I1(\r_o_axis_TDATA[8]_i_27_n_0 ),
        .O(r_input_coeffs__0__0[8]),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[8]_i_4 
       (.I0(\r_o_axis_TDATA[8]_i_12_n_0 ),
        .I1(\r_o_axis_TDATA[8]_i_13_n_0 ),
        .O(\r_o_axis_TDATA_reg[8]_i_4_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[8]_i_5 
       (.I0(\r_o_axis_TDATA[8]_i_14_n_0 ),
        .I1(\r_o_axis_TDATA[8]_i_15_n_0 ),
        .O(\r_o_axis_TDATA_reg[8]_i_5_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[8]_i_6 
       (.I0(\r_o_axis_TDATA[8]_i_16_n_0 ),
        .I1(\r_o_axis_TDATA[8]_i_17_n_0 ),
        .O(\r_o_axis_TDATA_reg[8]_i_6_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[8]_i_7 
       (.I0(\r_o_axis_TDATA[8]_i_18_n_0 ),
        .I1(\r_o_axis_TDATA[8]_i_19_n_0 ),
        .O(\r_o_axis_TDATA_reg[8]_i_7_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[8]_i_8 
       (.I0(\r_o_axis_TDATA[8]_i_20_n_0 ),
        .I1(\r_o_axis_TDATA[8]_i_21_n_0 ),
        .O(\r_o_axis_TDATA_reg[8]_i_8_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  MUXF7 \r_o_axis_TDATA_reg[8]_i_9 
       (.I0(\r_o_axis_TDATA[8]_i_22_n_0 ),
        .I1(\r_o_axis_TDATA[8]_i_23_n_0 ),
        .O(\r_o_axis_TDATA_reg[8]_i_9_n_0 ),
        .S(\r_next_output_row_reg_n_0_[2] ));
  FDRE \r_o_axis_TDATA_reg[9] 
       (.C(i_clk),
        .CE(\r_o_axis_TDATA[15]_i_2_n_0 ),
        .D(p_2_in[9]),
        .Q(o_axis_TDATA[9]),
        .R(\r_o_axis_TDATA[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    r_o_axis_TLAST_i_1
       (.I0(r_zz_state1),
        .I1(r_core_state_reg_0),
        .I2(i_axis_TREADY),
        .I3(r_o_axis_TLAST_reg_0),
        .O(r_o_axis_TLAST_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    r_o_axis_TLAST_i_2
       (.I0(\r_next_output_row_reg_n_0_[2] ),
        .I1(\r_next_output_row_reg_n_0_[0] ),
        .I2(\r_next_output_row_reg_n_0_[1] ),
        .I3(\r_next_output_col_reg_n_0_[2] ),
        .I4(\r_next_output_col_reg_n_0_[0] ),
        .I5(\r_next_output_col_reg_n_0_[1] ),
        .O(r_zz_state1));
  FDRE r_o_axis_TLAST_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(r_o_axis_TLAST_i_1_n_0),
        .Q(r_o_axis_TLAST_reg_0),
        .R(\r_o_axis_TDATA[15]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
