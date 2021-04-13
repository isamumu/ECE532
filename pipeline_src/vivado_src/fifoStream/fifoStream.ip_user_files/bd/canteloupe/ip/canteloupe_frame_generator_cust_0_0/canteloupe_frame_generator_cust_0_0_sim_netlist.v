// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Tue Mar 30 21:40:32 2021
// Host        : BA3145WS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top canteloupe_frame_generator_cust_0_0 -prefix
//               canteloupe_frame_generator_cust_0_0_ canteloupe_frame_generator_cust_0_0_sim_netlist.v
// Design      : canteloupe_frame_generator_cust_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "canteloupe_frame_generator_cust_0_0,frame_generator_custom,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "frame_generator_custom,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module canteloupe_frame_generator_cust_0_0
   (i_clk,
    i_aresetn,
    rx_mic_TVALID,
    rx_mic_TREADY,
    rx_mic_TDATA,
    rx_mic_TLAST,
    tx_fifo_TVALID,
    tx_fifo_TREADY,
    tx_fifo_TDATA,
    tx_fifo_TLAST);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_aresetn, ASSOCIATED_BUSIF rx_mic:tx_fifo, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_mic TVALID" *) input rx_mic_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_mic TREADY" *) output rx_mic_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_mic TDATA" *) input [15:0]rx_mic_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 rx_mic TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rx_mic, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input rx_mic_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_fifo TVALID" *) output tx_fifo_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_fifo TREADY" *) input tx_fifo_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_fifo TDATA" *) output [7:0]tx_fifo_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 tx_fifo TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME tx_fifo, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output tx_fifo_TLAST;

  wire i_aresetn;
  wire i_clk;
  wire [15:0]rx_mic_TDATA;
  wire rx_mic_TLAST;
  wire rx_mic_TREADY;
  wire rx_mic_TVALID;
  wire [7:0]tx_fifo_TDATA;
  wire tx_fifo_TLAST;
  wire tx_fifo_TREADY;
  wire tx_fifo_TVALID;

  canteloupe_frame_generator_cust_0_0_frame_generator_custom inst
       (.i_aresetn(i_aresetn),
        .i_clk(i_clk),
        .r_tx_fifo_tlast_reg_0(tx_fifo_TLAST),
        .rx_mic_TDATA(rx_mic_TDATA),
        .rx_mic_TLAST(rx_mic_TLAST),
        .rx_mic_TREADY(rx_mic_TREADY),
        .rx_mic_TVALID(rx_mic_TVALID),
        .tx_fifo_TDATA(tx_fifo_TDATA),
        .tx_fifo_TREADY(tx_fifo_TREADY),
        .tx_fifo_TVALID(tx_fifo_TVALID));
endmodule

module canteloupe_frame_generator_cust_0_0_fifo_mem
   (w_areset,
    D,
    \r_num_cycles_without_valid_reg[15] ,
    \r_packet_size_reg[10] ,
    i_clk,
    i_aresetn,
    Q,
    \r_tx_fifo_tdata_reg[7] ,
    r_core_state,
    \r_tx_fifo_tdata_reg[7]_0 ,
    \r_tx_fifo_tdata_reg[3] ,
    \r_num_cycles_without_valid_reg[0] ,
    \r_num_cycles_without_valid_reg[15]_0 ,
    O,
    \r_num_cycles_without_valid_reg[8] ,
    \r_num_cycles_without_valid_reg[12] ,
    \r_num_cycles_without_valid_reg[15]_1 ,
    E,
    \FSM_sequential_r_core_state_reg[2] ,
    \FSM_sequential_r_core_state_reg[2]_0 ,
    \FSM_sequential_r_core_state_reg[2]_1 ,
    \FSM_sequential_r_core_state_reg[2]_2 ,
    rx_mic_TVALID,
    \FSM_sequential_r_core_state_reg[2]_3 ,
    \FSM_sequential_r_core_state_reg[2]_4 ,
    tx_fifo_TREADY,
    \read_address_int_reg[11] ,
    mem_reg,
    \r_tx_fifo_tdata_reg[3]_0 ,
    \r_tx_fifo_tdata_reg[3]_1 ,
    \r_tx_fifo_tdata_reg[4] ,
    \r_tx_fifo_tdata_reg[4]_0 ,
    \r_tx_fifo_tdata_reg[0] ,
    \r_tx_fifo_tdata_reg[0]_0 ,
    \r_tx_fifo_tdata_reg[0]_1 ,
    \r_tx_fifo_tdata_reg[5] ,
    \r_tx_fifo_tdata_reg[2] ,
    \r_tx_fifo_tdata_reg[2]_0 ,
    \r_tx_fifo_tdata_reg[1] ,
    \r_tx_fifo_tdata_reg[1]_0 ,
    \r_tx_fifo_tdata_reg[1]_1 );
  output w_areset;
  output [7:0]D;
  output [15:0]\r_num_cycles_without_valid_reg[15] ;
  output \r_packet_size_reg[10] ;
  input i_clk;
  input i_aresetn;
  input [7:0]Q;
  input \r_tx_fifo_tdata_reg[7] ;
  input [2:0]r_core_state;
  input [3:0]\r_tx_fifo_tdata_reg[7]_0 ;
  input \r_tx_fifo_tdata_reg[3] ;
  input [0:0]\r_num_cycles_without_valid_reg[0] ;
  input \r_num_cycles_without_valid_reg[15]_0 ;
  input [3:0]O;
  input [3:0]\r_num_cycles_without_valid_reg[8] ;
  input [3:0]\r_num_cycles_without_valid_reg[12] ;
  input [2:0]\r_num_cycles_without_valid_reg[15]_1 ;
  input [0:0]E;
  input \FSM_sequential_r_core_state_reg[2] ;
  input \FSM_sequential_r_core_state_reg[2]_0 ;
  input [0:0]\FSM_sequential_r_core_state_reg[2]_1 ;
  input \FSM_sequential_r_core_state_reg[2]_2 ;
  input rx_mic_TVALID;
  input \FSM_sequential_r_core_state_reg[2]_3 ;
  input \FSM_sequential_r_core_state_reg[2]_4 ;
  input tx_fifo_TREADY;
  input \read_address_int_reg[11] ;
  input mem_reg;
  input \r_tx_fifo_tdata_reg[3]_0 ;
  input \r_tx_fifo_tdata_reg[3]_1 ;
  input \r_tx_fifo_tdata_reg[4] ;
  input \r_tx_fifo_tdata_reg[4]_0 ;
  input \r_tx_fifo_tdata_reg[0] ;
  input \r_tx_fifo_tdata_reg[0]_0 ;
  input \r_tx_fifo_tdata_reg[0]_1 ;
  input \r_tx_fifo_tdata_reg[5] ;
  input [0:0]\r_tx_fifo_tdata_reg[2] ;
  input \r_tx_fifo_tdata_reg[2]_0 ;
  input [1:0]\r_tx_fifo_tdata_reg[1] ;
  input \r_tx_fifo_tdata_reg[1]_0 ;
  input \r_tx_fifo_tdata_reg[1]_1 ;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_sequential_r_core_state_reg[2] ;
  wire \FSM_sequential_r_core_state_reg[2]_0 ;
  wire [0:0]\FSM_sequential_r_core_state_reg[2]_1 ;
  wire \FSM_sequential_r_core_state_reg[2]_2 ;
  wire \FSM_sequential_r_core_state_reg[2]_3 ;
  wire \FSM_sequential_r_core_state_reg[2]_4 ;
  wire [3:0]O;
  wire [7:0]Q;
  wire address_equal1;
  wire fifo_we;
  wire i_aresetn;
  wire i_clk;
  wire mem_reg;
  wire [2:0]r_core_state;
  wire [0:0]\r_num_cycles_without_valid_reg[0] ;
  wire [3:0]\r_num_cycles_without_valid_reg[12] ;
  wire [15:0]\r_num_cycles_without_valid_reg[15] ;
  wire \r_num_cycles_without_valid_reg[15]_0 ;
  wire [2:0]\r_num_cycles_without_valid_reg[15]_1 ;
  wire [3:0]\r_num_cycles_without_valid_reg[8] ;
  wire \r_packet_size_reg[10] ;
  wire \r_tx_fifo_tdata_reg[0] ;
  wire \r_tx_fifo_tdata_reg[0]_0 ;
  wire \r_tx_fifo_tdata_reg[0]_1 ;
  wire [1:0]\r_tx_fifo_tdata_reg[1] ;
  wire \r_tx_fifo_tdata_reg[1]_0 ;
  wire \r_tx_fifo_tdata_reg[1]_1 ;
  wire [0:0]\r_tx_fifo_tdata_reg[2] ;
  wire \r_tx_fifo_tdata_reg[2]_0 ;
  wire \r_tx_fifo_tdata_reg[3] ;
  wire \r_tx_fifo_tdata_reg[3]_0 ;
  wire \r_tx_fifo_tdata_reg[3]_1 ;
  wire \r_tx_fifo_tdata_reg[4] ;
  wire \r_tx_fifo_tdata_reg[4]_0 ;
  wire \r_tx_fifo_tdata_reg[5] ;
  wire \r_tx_fifo_tdata_reg[7] ;
  wire [3:0]\r_tx_fifo_tdata_reg[7]_0 ;
  wire [11:0]read_address;
  wire \read_address_int_reg[11] ;
  wire rx_mic_TVALID;
  wire top1_n_13;
  wire top1_n_14;
  wire top2_n_0;
  wire top2_n_31;
  wire top2_n_32;
  wire tx_fifo_TREADY;
  wire w_areset;
  wire [11:0]write_address;

  canteloupe_frame_generator_cust_0_0_write_address_pointer top1
       (.ADDRARDADDR(write_address),
        .S({top1_n_13,top1_n_14}),
        .fifo_we(fifo_we),
        .i_aresetn(i_aresetn),
        .i_aresetn_0(w_areset),
        .i_clk(i_clk),
        .out(read_address[8:3]));
  canteloupe_frame_generator_cust_0_0_read_address_pointer top2
       (.ADDRARDADDR({write_address[11:9],write_address[2:0]}),
        .CO(address_equal1),
        .E(E),
        .\FSM_sequential_r_core_state_reg[2] (\FSM_sequential_r_core_state_reg[2] ),
        .\FSM_sequential_r_core_state_reg[2]_0 (\FSM_sequential_r_core_state_reg[2]_0 ),
        .\FSM_sequential_r_core_state_reg[2]_1 (\FSM_sequential_r_core_state_reg[2]_1 ),
        .\FSM_sequential_r_core_state_reg[2]_2 (\FSM_sequential_r_core_state_reg[2]_2 ),
        .\FSM_sequential_r_core_state_reg[2]_3 (\FSM_sequential_r_core_state_reg[2]_3 ),
        .\FSM_sequential_r_core_state_reg[2]_4 (\FSM_sequential_r_core_state_reg[2]_4 ),
        .O(O),
        .S({top2_n_31,top2_n_32}),
        .fifo_we(fifo_we),
        .i_aresetn(i_aresetn),
        .i_aresetn_0(top2_n_0),
        .i_clk(i_clk),
        .mem_reg(mem_reg),
        .out(read_address),
        .r_core_state({r_core_state[2],r_core_state[0]}),
        .\r_num_cycles_without_valid_reg[0] (\r_num_cycles_without_valid_reg[0] ),
        .\r_num_cycles_without_valid_reg[12] (\r_num_cycles_without_valid_reg[12] ),
        .\r_num_cycles_without_valid_reg[15] (\r_num_cycles_without_valid_reg[15] ),
        .\r_num_cycles_without_valid_reg[15]_0 (\r_num_cycles_without_valid_reg[15]_0 ),
        .\r_num_cycles_without_valid_reg[15]_1 (\r_num_cycles_without_valid_reg[15]_1 ),
        .\r_num_cycles_without_valid_reg[8] (\r_num_cycles_without_valid_reg[8] ),
        .\r_packet_size_reg[10] (\r_packet_size_reg[10] ),
        .\read_address_int_reg[11]_0 (\read_address_int_reg[11] ),
        .\read_address_int_reg[11]_1 (w_areset),
        .rx_mic_TVALID(rx_mic_TVALID),
        .tx_fifo_TREADY(tx_fifo_TREADY));
  canteloupe_frame_generator_cust_0_0_memory top3
       (.ADDRARDADDR(write_address),
        .D(D),
        .Q(Q),
        .fifo_we(fifo_we),
        .i_aresetn(i_aresetn),
        .i_clk(i_clk),
        .mem_reg(top2_n_0),
        .out(read_address),
        .r_core_state(r_core_state),
        .\r_tx_fifo_tdata_reg[0] (\r_tx_fifo_tdata_reg[0] ),
        .\r_tx_fifo_tdata_reg[0]_0 (\r_tx_fifo_tdata_reg[0]_0 ),
        .\r_tx_fifo_tdata_reg[0]_1 (\r_tx_fifo_tdata_reg[0]_1 ),
        .\r_tx_fifo_tdata_reg[1] (\r_tx_fifo_tdata_reg[1] ),
        .\r_tx_fifo_tdata_reg[1]_0 (\r_tx_fifo_tdata_reg[1]_0 ),
        .\r_tx_fifo_tdata_reg[1]_1 (\r_tx_fifo_tdata_reg[1]_1 ),
        .\r_tx_fifo_tdata_reg[2] (\r_tx_fifo_tdata_reg[2] ),
        .\r_tx_fifo_tdata_reg[2]_0 (\r_tx_fifo_tdata_reg[2]_0 ),
        .\r_tx_fifo_tdata_reg[3] (\r_tx_fifo_tdata_reg[3] ),
        .\r_tx_fifo_tdata_reg[3]_0 (\r_tx_fifo_tdata_reg[3]_0 ),
        .\r_tx_fifo_tdata_reg[3]_1 (\r_tx_fifo_tdata_reg[3]_1 ),
        .\r_tx_fifo_tdata_reg[4] (\r_tx_fifo_tdata_reg[4] ),
        .\r_tx_fifo_tdata_reg[4]_0 (\r_tx_fifo_tdata_reg[4]_0 ),
        .\r_tx_fifo_tdata_reg[5] (\r_tx_fifo_tdata_reg[5] ),
        .\r_tx_fifo_tdata_reg[7] (\r_tx_fifo_tdata_reg[7] ),
        .\r_tx_fifo_tdata_reg[7]_0 (\r_tx_fifo_tdata_reg[7]_0 ),
        .w_areset(w_areset));
  canteloupe_frame_generator_cust_0_0_fifo_status top4
       (.CO(address_equal1),
        .S({top2_n_31,top1_n_13,top1_n_14,top2_n_32}));
endmodule

module canteloupe_frame_generator_cust_0_0_fifo_status
   (CO,
    S);
  output [0:0]CO;
  input [3:0]S;

  wire [0:0]CO;
  wire [3:0]S;
  wire address_equal1_carry_n_1;
  wire address_equal1_carry_n_2;
  wire address_equal1_carry_n_3;
  wire [3:0]NLW_address_equal1_carry_O_UNCONNECTED;

  CARRY4 address_equal1_carry
       (.CI(1'b0),
        .CO({CO,address_equal1_carry_n_1,address_equal1_carry_n_2,address_equal1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_address_equal1_carry_O_UNCONNECTED[3:0]),
        .S(S));
endmodule

module canteloupe_frame_generator_cust_0_0_frame_generator_custom
   (rx_mic_TREADY,
    tx_fifo_TDATA,
    r_tx_fifo_tlast_reg_0,
    tx_fifo_TVALID,
    i_aresetn,
    rx_mic_TVALID,
    tx_fifo_TREADY,
    rx_mic_TDATA,
    i_clk,
    rx_mic_TLAST);
  output rx_mic_TREADY;
  output [7:0]tx_fifo_TDATA;
  output r_tx_fifo_tlast_reg_0;
  output tx_fifo_TVALID;
  input i_aresetn;
  input rx_mic_TVALID;
  input tx_fifo_TREADY;
  input [15:0]rx_mic_TDATA;
  input i_clk;
  input rx_mic_TLAST;

  wire \FSM_sequential_r_core_state[0]_i_1_n_0 ;
  wire \FSM_sequential_r_core_state[0]_i_2_n_0 ;
  wire \FSM_sequential_r_core_state[0]_i_3_n_0 ;
  wire \FSM_sequential_r_core_state[1]_i_1_n_0 ;
  wire \FSM_sequential_r_core_state[1]_i_2_n_0 ;
  wire \FSM_sequential_r_core_state[1]_i_3_n_0 ;
  wire \FSM_sequential_r_core_state[2]_i_10_n_0 ;
  wire \FSM_sequential_r_core_state[2]_i_11_n_0 ;
  wire \FSM_sequential_r_core_state[2]_i_3_n_0 ;
  wire \FSM_sequential_r_core_state[2]_i_4_n_0 ;
  wire \FSM_sequential_r_core_state[2]_i_5_n_0 ;
  wire \FSM_sequential_r_core_state[2]_i_6_n_0 ;
  wire \FSM_sequential_r_core_state[2]_i_7_n_0 ;
  wire \FSM_sequential_r_core_state[2]_i_8_n_0 ;
  wire \FSM_sequential_r_core_state[2]_i_9_n_0 ;
  wire [15:1]data0;
  wire i_aresetn;
  wire i_clk;
  wire [15:1]in26;
  wire mem_n_1;
  wire mem_n_10;
  wire mem_n_11;
  wire mem_n_12;
  wire mem_n_13;
  wire mem_n_14;
  wire mem_n_15;
  wire mem_n_16;
  wire mem_n_17;
  wire mem_n_18;
  wire mem_n_19;
  wire mem_n_2;
  wire mem_n_20;
  wire mem_n_21;
  wire mem_n_22;
  wire mem_n_23;
  wire mem_n_24;
  wire mem_n_25;
  wire mem_n_3;
  wire mem_n_4;
  wire mem_n_5;
  wire mem_n_6;
  wire mem_n_7;
  wire mem_n_8;
  wire mem_n_9;
  wire [2:0]p_0_in;
  wire [15:0]r_byte_count;
  wire r_byte_count_0;
  wire \r_byte_count_reg_n_0_[0] ;
  wire \r_byte_count_reg_n_0_[10] ;
  wire \r_byte_count_reg_n_0_[11] ;
  wire \r_byte_count_reg_n_0_[12] ;
  wire \r_byte_count_reg_n_0_[13] ;
  wire \r_byte_count_reg_n_0_[14] ;
  wire \r_byte_count_reg_n_0_[15] ;
  wire \r_byte_count_reg_n_0_[1] ;
  wire \r_byte_count_reg_n_0_[2] ;
  wire \r_byte_count_reg_n_0_[3] ;
  wire \r_byte_count_reg_n_0_[4] ;
  wire \r_byte_count_reg_n_0_[5] ;
  wire \r_byte_count_reg_n_0_[6] ;
  wire \r_byte_count_reg_n_0_[7] ;
  wire \r_byte_count_reg_n_0_[8] ;
  wire \r_byte_count_reg_n_0_[9] ;
  wire [2:0]r_core_state;
  wire [42:2]r_dest_addr;
  wire \r_dest_addr[2]_i_2_n_0 ;
  wire r_dest_addr_3;
  wire r_fifo_data_in;
  wire [7:2]r_fifo_data_in0_in;
  wire \r_fifo_data_in[0]_i_1_n_0 ;
  wire \r_fifo_data_in[1]_i_1_n_0 ;
  wire \r_fifo_data_in_reg_n_0_[0] ;
  wire \r_fifo_data_in_reg_n_0_[1] ;
  wire \r_fifo_data_in_reg_n_0_[2] ;
  wire \r_fifo_data_in_reg_n_0_[3] ;
  wire \r_fifo_data_in_reg_n_0_[4] ;
  wire \r_fifo_data_in_reg_n_0_[5] ;
  wire \r_fifo_data_in_reg_n_0_[6] ;
  wire \r_fifo_data_in_reg_n_0_[7] ;
  wire r_fifo_write_enable_i_1_n_0;
  wire r_fifo_write_enable_reg_n_0;
  wire r_num_cycles_without_valid1_carry__0_n_0;
  wire r_num_cycles_without_valid1_carry__0_n_1;
  wire r_num_cycles_without_valid1_carry__0_n_2;
  wire r_num_cycles_without_valid1_carry__0_n_3;
  wire r_num_cycles_without_valid1_carry__0_n_4;
  wire r_num_cycles_without_valid1_carry__0_n_5;
  wire r_num_cycles_without_valid1_carry__0_n_6;
  wire r_num_cycles_without_valid1_carry__0_n_7;
  wire r_num_cycles_without_valid1_carry__1_n_0;
  wire r_num_cycles_without_valid1_carry__1_n_1;
  wire r_num_cycles_without_valid1_carry__1_n_2;
  wire r_num_cycles_without_valid1_carry__1_n_3;
  wire r_num_cycles_without_valid1_carry__1_n_4;
  wire r_num_cycles_without_valid1_carry__1_n_5;
  wire r_num_cycles_without_valid1_carry__1_n_6;
  wire r_num_cycles_without_valid1_carry__1_n_7;
  wire r_num_cycles_without_valid1_carry__2_n_2;
  wire r_num_cycles_without_valid1_carry__2_n_3;
  wire r_num_cycles_without_valid1_carry__2_n_5;
  wire r_num_cycles_without_valid1_carry__2_n_6;
  wire r_num_cycles_without_valid1_carry__2_n_7;
  wire r_num_cycles_without_valid1_carry_n_0;
  wire r_num_cycles_without_valid1_carry_n_1;
  wire r_num_cycles_without_valid1_carry_n_2;
  wire r_num_cycles_without_valid1_carry_n_3;
  wire r_num_cycles_without_valid1_carry_n_4;
  wire r_num_cycles_without_valid1_carry_n_5;
  wire r_num_cycles_without_valid1_carry_n_6;
  wire r_num_cycles_without_valid1_carry_n_7;
  wire \r_num_cycles_without_valid[15]_i_2_n_0 ;
  wire \r_num_cycles_without_valid[15]_i_3_n_0 ;
  wire \r_num_cycles_without_valid[15]_i_4_n_0 ;
  wire \r_num_cycles_without_valid[15]_i_5_n_0 ;
  wire \r_num_cycles_without_valid_reg_n_0_[0] ;
  wire \r_num_cycles_without_valid_reg_n_0_[10] ;
  wire \r_num_cycles_without_valid_reg_n_0_[11] ;
  wire \r_num_cycles_without_valid_reg_n_0_[12] ;
  wire \r_num_cycles_without_valid_reg_n_0_[13] ;
  wire \r_num_cycles_without_valid_reg_n_0_[14] ;
  wire \r_num_cycles_without_valid_reg_n_0_[15] ;
  wire \r_num_cycles_without_valid_reg_n_0_[1] ;
  wire \r_num_cycles_without_valid_reg_n_0_[2] ;
  wire \r_num_cycles_without_valid_reg_n_0_[3] ;
  wire \r_num_cycles_without_valid_reg_n_0_[4] ;
  wire \r_num_cycles_without_valid_reg_n_0_[5] ;
  wire \r_num_cycles_without_valid_reg_n_0_[6] ;
  wire \r_num_cycles_without_valid_reg_n_0_[7] ;
  wire \r_num_cycles_without_valid_reg_n_0_[8] ;
  wire \r_num_cycles_without_valid_reg_n_0_[9] ;
  wire [15:1]r_packet_size;
  wire r_packet_size0_carry__0_i_1_n_0;
  wire r_packet_size0_carry__0_i_2_n_0;
  wire r_packet_size0_carry__0_i_3_n_0;
  wire r_packet_size0_carry__0_i_4_n_0;
  wire r_packet_size0_carry__0_n_0;
  wire r_packet_size0_carry__0_n_1;
  wire r_packet_size0_carry__0_n_2;
  wire r_packet_size0_carry__0_n_3;
  wire r_packet_size0_carry__1_i_1_n_0;
  wire r_packet_size0_carry__1_i_2_n_0;
  wire r_packet_size0_carry__1_i_3_n_0;
  wire r_packet_size0_carry__1_i_4_n_0;
  wire r_packet_size0_carry__1_n_0;
  wire r_packet_size0_carry__1_n_1;
  wire r_packet_size0_carry__1_n_2;
  wire r_packet_size0_carry__1_n_3;
  wire r_packet_size0_carry__2_i_1_n_0;
  wire r_packet_size0_carry__2_i_2_n_0;
  wire r_packet_size0_carry__2_i_3_n_0;
  wire r_packet_size0_carry__2_n_2;
  wire r_packet_size0_carry__2_n_3;
  wire r_packet_size0_carry_i_1_n_0;
  wire r_packet_size0_carry_i_2_n_0;
  wire r_packet_size0_carry_i_3_n_0;
  wire r_packet_size0_carry_i_4_n_0;
  wire r_packet_size0_carry_n_0;
  wire r_packet_size0_carry_n_1;
  wire r_packet_size0_carry_n_2;
  wire r_packet_size0_carry_n_3;
  wire \r_packet_size[0]_i_1_n_0 ;
  wire \r_packet_size[15]_i_3_n_0 ;
  wire r_packet_size_1;
  wire \r_packet_size_reg[12]_i_2_n_0 ;
  wire \r_packet_size_reg[12]_i_2_n_1 ;
  wire \r_packet_size_reg[12]_i_2_n_2 ;
  wire \r_packet_size_reg[12]_i_2_n_3 ;
  wire \r_packet_size_reg[15]_i_4_n_2 ;
  wire \r_packet_size_reg[15]_i_4_n_3 ;
  wire \r_packet_size_reg[4]_i_2_n_0 ;
  wire \r_packet_size_reg[4]_i_2_n_1 ;
  wire \r_packet_size_reg[4]_i_2_n_2 ;
  wire \r_packet_size_reg[4]_i_2_n_3 ;
  wire \r_packet_size_reg[8]_i_2_n_0 ;
  wire \r_packet_size_reg[8]_i_2_n_1 ;
  wire \r_packet_size_reg[8]_i_2_n_2 ;
  wire \r_packet_size_reg[8]_i_2_n_3 ;
  wire \r_packet_size_reg_n_0_[0] ;
  wire \r_packet_size_reg_n_0_[10] ;
  wire \r_packet_size_reg_n_0_[11] ;
  wire \r_packet_size_reg_n_0_[12] ;
  wire \r_packet_size_reg_n_0_[13] ;
  wire \r_packet_size_reg_n_0_[14] ;
  wire \r_packet_size_reg_n_0_[15] ;
  wire \r_packet_size_reg_n_0_[1] ;
  wire \r_packet_size_reg_n_0_[2] ;
  wire \r_packet_size_reg_n_0_[3] ;
  wire \r_packet_size_reg_n_0_[4] ;
  wire \r_packet_size_reg_n_0_[5] ;
  wire \r_packet_size_reg_n_0_[6] ;
  wire \r_packet_size_reg_n_0_[7] ;
  wire \r_packet_size_reg_n_0_[8] ;
  wire \r_packet_size_reg_n_0_[9] ;
  wire [7:0]r_rx_mic_tdata_ls_byte;
  wire \r_rx_mic_tdata_ls_byte[7]_i_1_n_0 ;
  wire \r_rx_mic_tdata_ls_byte_reg_n_0_[0] ;
  wire \r_rx_mic_tdata_ls_byte_reg_n_0_[1] ;
  wire \r_rx_mic_tdata_ls_byte_reg_n_0_[2] ;
  wire \r_rx_mic_tdata_ls_byte_reg_n_0_[3] ;
  wire \r_rx_mic_tdata_ls_byte_reg_n_0_[4] ;
  wire \r_rx_mic_tdata_ls_byte_reg_n_0_[5] ;
  wire \r_rx_mic_tdata_ls_byte_reg_n_0_[6] ;
  wire \r_rx_mic_tdata_ls_byte_reg_n_0_[7] ;
  wire [44:9]r_src_addr;
  wire \r_src_addr[1]_i_1_n_0 ;
  wire \r_src_addr[24]_i_1_n_0 ;
  wire r_src_addr_2;
  wire \r_src_addr_reg_n_0_[25] ;
  wire \r_src_addr_reg_n_0_[40] ;
  wire \r_src_addr_reg_n_0_[41] ;
  wire \r_src_addr_reg_n_0_[44] ;
  wire r_tlast_marker_counter_i_1_n_0;
  wire r_tlast_marker_counter_reg_n_0;
  wire r_tlast_received_i_1_n_0;
  wire r_tlast_received_reg_n_0;
  wire r_tx_fifo_tdata;
  wire \r_tx_fifo_tdata[0]_i_2_n_0 ;
  wire \r_tx_fifo_tdata[1]_i_2_n_0 ;
  wire \r_tx_fifo_tdata[2]_i_2_n_0 ;
  wire \r_tx_fifo_tdata[3]_i_2_n_0 ;
  wire \r_tx_fifo_tdata[3]_i_3_n_0 ;
  wire \r_tx_fifo_tdata[4]_i_2_n_0 ;
  wire \r_tx_fifo_tdata[4]_i_3_n_0 ;
  wire \r_tx_fifo_tdata[4]_i_4_n_0 ;
  wire \r_tx_fifo_tdata[5]_i_2_n_0 ;
  wire \r_tx_fifo_tdata[5]_i_3_n_0 ;
  wire \r_tx_fifo_tdata[5]_i_4_n_0 ;
  wire \r_tx_fifo_tdata[7]_i_10_n_0 ;
  wire \r_tx_fifo_tdata[7]_i_11_n_0 ;
  wire \r_tx_fifo_tdata[7]_i_12_n_0 ;
  wire \r_tx_fifo_tdata[7]_i_4_n_0 ;
  wire \r_tx_fifo_tdata[7]_i_5_n_0 ;
  wire \r_tx_fifo_tdata[7]_i_6_n_0 ;
  wire \r_tx_fifo_tdata[7]_i_7_n_0 ;
  wire \r_tx_fifo_tdata[7]_i_8_n_0 ;
  wire \r_tx_fifo_tdata[7]_i_9_n_0 ;
  wire r_tx_fifo_tlast;
  wire r_tx_fifo_tlast_i_1_n_0;
  wire r_tx_fifo_tlast_i_2_n_0;
  wire r_tx_fifo_tlast_i_3_n_0;
  wire r_tx_fifo_tlast_i_5_n_0;
  wire r_tx_fifo_tlast_reg_0;
  wire [15:0]rx_mic_TDATA;
  wire rx_mic_TLAST;
  wire rx_mic_TREADY;
  wire rx_mic_TVALID;
  wire [7:0]tx_fifo_TDATA;
  wire tx_fifo_TREADY;
  wire tx_fifo_TVALID;
  wire w_areset;
  wire [3:2]NLW_r_num_cycles_without_valid1_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_r_num_cycles_without_valid1_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_r_packet_size0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_r_packet_size0_carry__2_O_UNCONNECTED;
  wire [3:2]\NLW_r_packet_size_reg[15]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_packet_size_reg[15]_i_4_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hAEEEAAEAAAEAAAEA)) 
    \FSM_sequential_r_core_state[0]_i_1 
       (.I0(\FSM_sequential_r_core_state[0]_i_2_n_0 ),
        .I1(r_core_state[2]),
        .I2(r_core_state[1]),
        .I3(\FSM_sequential_r_core_state[0]_i_3_n_0 ),
        .I4(r_dest_addr[2]),
        .I5(tx_fifo_TREADY),
        .O(\FSM_sequential_r_core_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0050545050505450)) 
    \FSM_sequential_r_core_state[0]_i_2 
       (.I0(r_core_state[2]),
        .I1(r_tx_fifo_tlast_reg_0),
        .I2(r_core_state[0]),
        .I3(tx_fifo_TREADY),
        .I4(r_core_state[1]),
        .I5(\r_tx_fifo_tdata[7]_i_4_n_0 ),
        .O(\FSM_sequential_r_core_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \FSM_sequential_r_core_state[0]_i_3 
       (.I0(r_tlast_marker_counter_reg_n_0),
        .I1(r_tlast_received_reg_n_0),
        .I2(r_core_state[0]),
        .O(\FSM_sequential_r_core_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCFCDDCCCCCCDDCC)) 
    \FSM_sequential_r_core_state[1]_i_1 
       (.I0(\FSM_sequential_r_core_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_r_core_state[1]_i_3_n_0 ),
        .I2(r_dest_addr[2]),
        .I3(r_core_state[1]),
        .I4(r_core_state[2]),
        .I5(tx_fifo_TREADY),
        .O(\FSM_sequential_r_core_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_r_core_state[1]_i_2 
       (.I0(tx_fifo_TREADY),
        .I1(\r_tx_fifo_tdata[4]_i_4_n_0 ),
        .I2(r_core_state[0]),
        .O(\FSM_sequential_r_core_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF03300000000AA00)) 
    \FSM_sequential_r_core_state[1]_i_3 
       (.I0(rx_mic_TVALID),
        .I1(r_tlast_marker_counter_reg_n_0),
        .I2(r_tlast_received_reg_n_0),
        .I3(r_core_state[0]),
        .I4(r_core_state[1]),
        .I5(r_core_state[2]),
        .O(\FSM_sequential_r_core_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_r_core_state[2]_i_10 
       (.I0(\r_packet_size_reg_n_0_[13] ),
        .I1(\r_packet_size_reg_n_0_[14] ),
        .I2(\r_packet_size_reg_n_0_[15] ),
        .O(\FSM_sequential_r_core_state[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_r_core_state[2]_i_11 
       (.I0(\r_num_cycles_without_valid_reg_n_0_[7] ),
        .I1(\r_num_cycles_without_valid_reg_n_0_[8] ),
        .I2(\r_num_cycles_without_valid_reg_n_0_[9] ),
        .I3(\r_num_cycles_without_valid_reg_n_0_[12] ),
        .O(\FSM_sequential_r_core_state[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h40FF)) 
    \FSM_sequential_r_core_state[2]_i_3 
       (.I0(r_core_state[1]),
        .I1(tx_fifo_TREADY),
        .I2(r_dest_addr[2]),
        .I3(r_core_state[2]),
        .O(\FSM_sequential_r_core_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001FF33FF)) 
    \FSM_sequential_r_core_state[2]_i_4 
       (.I0(\FSM_sequential_r_core_state[2]_i_8_n_0 ),
        .I1(\r_packet_size_reg_n_0_[6] ),
        .I2(\r_packet_size_reg_n_0_[4] ),
        .I3(\r_packet_size_reg_n_0_[7] ),
        .I4(\r_packet_size_reg_n_0_[5] ),
        .I5(\FSM_sequential_r_core_state[2]_i_9_n_0 ),
        .O(\FSM_sequential_r_core_state[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \FSM_sequential_r_core_state[2]_i_5 
       (.I0(\FSM_sequential_r_core_state[2]_i_10_n_0 ),
        .I1(\r_packet_size_reg_n_0_[11] ),
        .I2(\r_packet_size_reg_n_0_[12] ),
        .I3(r_core_state[1]),
        .I4(\FSM_sequential_r_core_state[0]_i_3_n_0 ),
        .O(\FSM_sequential_r_core_state[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h01FFFFFF)) 
    \FSM_sequential_r_core_state[2]_i_6 
       (.I0(\r_num_cycles_without_valid_reg_n_0_[2] ),
        .I1(\r_num_cycles_without_valid_reg_n_0_[4] ),
        .I2(\r_num_cycles_without_valid_reg_n_0_[3] ),
        .I3(\r_num_cycles_without_valid_reg_n_0_[5] ),
        .I4(\r_num_cycles_without_valid_reg_n_0_[6] ),
        .O(\FSM_sequential_r_core_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_r_core_state[2]_i_7 
       (.I0(\r_num_cycles_without_valid_reg_n_0_[10] ),
        .I1(\r_num_cycles_without_valid_reg_n_0_[11] ),
        .I2(\FSM_sequential_r_core_state[2]_i_11_n_0 ),
        .I3(\r_num_cycles_without_valid_reg_n_0_[14] ),
        .I4(\r_num_cycles_without_valid_reg_n_0_[13] ),
        .I5(\r_num_cycles_without_valid_reg_n_0_[15] ),
        .O(\FSM_sequential_r_core_state[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h88888088)) 
    \FSM_sequential_r_core_state[2]_i_8 
       (.I0(\r_packet_size_reg_n_0_[2] ),
        .I1(\r_packet_size_reg_n_0_[3] ),
        .I2(r_core_state[0]),
        .I3(r_tlast_marker_counter_reg_n_0),
        .I4(\r_packet_size_reg_n_0_[1] ),
        .O(\FSM_sequential_r_core_state[2]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_r_core_state[2]_i_9 
       (.I0(\r_packet_size_reg_n_0_[9] ),
        .I1(\r_packet_size_reg_n_0_[8] ),
        .O(\FSM_sequential_r_core_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_RECEIVE_DATA_SECOND_BYTE:111,STATE_TRANSMIT_HEADER_PREP:101,STATE_RECEIVE_TLAST:110,STATE_TRANSMIT_DEST_ADDRESS:100,STATE_TRANSMIT_SRC_ADDRESS:011,STATE_TRANSMIT_SIZE:010,STATE_TRANSMIT_DATA:000,STATE_RECEIVE_DATA_FIRST_BYTE:001" *) 
  FDSE \FSM_sequential_r_core_state_reg[0] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_r_core_state[0]_i_1_n_0 ),
        .Q(r_core_state[0]),
        .S(w_areset));
  (* FSM_ENCODED_STATES = "STATE_RECEIVE_DATA_SECOND_BYTE:111,STATE_TRANSMIT_HEADER_PREP:101,STATE_RECEIVE_TLAST:110,STATE_TRANSMIT_DEST_ADDRESS:100,STATE_TRANSMIT_SRC_ADDRESS:011,STATE_TRANSMIT_SIZE:010,STATE_TRANSMIT_DATA:000,STATE_RECEIVE_DATA_FIRST_BYTE:001" *) 
  FDRE \FSM_sequential_r_core_state_reg[1] 
       (.C(i_clk),
        .CE(1'b1),
        .D(\FSM_sequential_r_core_state[1]_i_1_n_0 ),
        .Q(r_core_state[1]),
        .R(w_areset));
  (* FSM_ENCODED_STATES = "STATE_RECEIVE_DATA_SECOND_BYTE:111,STATE_TRANSMIT_HEADER_PREP:101,STATE_RECEIVE_TLAST:110,STATE_TRANSMIT_DEST_ADDRESS:100,STATE_TRANSMIT_SRC_ADDRESS:011,STATE_TRANSMIT_SIZE:010,STATE_TRANSMIT_DATA:000,STATE_RECEIVE_DATA_FIRST_BYTE:001" *) 
  FDRE \FSM_sequential_r_core_state_reg[2] 
       (.C(i_clk),
        .CE(1'b1),
        .D(mem_n_25),
        .Q(r_core_state[2]),
        .R(w_areset));
  canteloupe_frame_generator_cust_0_0_fifo_mem mem
       (.D({mem_n_1,mem_n_2,mem_n_3,mem_n_4,mem_n_5,mem_n_6,mem_n_7,mem_n_8}),
        .E(rx_mic_TREADY),
        .\FSM_sequential_r_core_state_reg[2] (\FSM_sequential_r_core_state[2]_i_3_n_0 ),
        .\FSM_sequential_r_core_state_reg[2]_0 (\FSM_sequential_r_core_state[2]_i_4_n_0 ),
        .\FSM_sequential_r_core_state_reg[2]_1 (\r_packet_size_reg_n_0_[10] ),
        .\FSM_sequential_r_core_state_reg[2]_2 (\FSM_sequential_r_core_state[2]_i_5_n_0 ),
        .\FSM_sequential_r_core_state_reg[2]_3 (\FSM_sequential_r_core_state[2]_i_6_n_0 ),
        .\FSM_sequential_r_core_state_reg[2]_4 (\FSM_sequential_r_core_state[2]_i_7_n_0 ),
        .O({r_num_cycles_without_valid1_carry_n_4,r_num_cycles_without_valid1_carry_n_5,r_num_cycles_without_valid1_carry_n_6,r_num_cycles_without_valid1_carry_n_7}),
        .Q({\r_fifo_data_in_reg_n_0_[7] ,\r_fifo_data_in_reg_n_0_[6] ,\r_fifo_data_in_reg_n_0_[5] ,\r_fifo_data_in_reg_n_0_[4] ,\r_fifo_data_in_reg_n_0_[3] ,\r_fifo_data_in_reg_n_0_[2] ,\r_fifo_data_in_reg_n_0_[1] ,\r_fifo_data_in_reg_n_0_[0] }),
        .i_aresetn(i_aresetn),
        .i_clk(i_clk),
        .mem_reg(r_fifo_write_enable_reg_n_0),
        .r_core_state(r_core_state),
        .\r_num_cycles_without_valid_reg[0] (\r_num_cycles_without_valid_reg_n_0_[0] ),
        .\r_num_cycles_without_valid_reg[12] ({r_num_cycles_without_valid1_carry__1_n_4,r_num_cycles_without_valid1_carry__1_n_5,r_num_cycles_without_valid1_carry__1_n_6,r_num_cycles_without_valid1_carry__1_n_7}),
        .\r_num_cycles_without_valid_reg[15] ({mem_n_9,mem_n_10,mem_n_11,mem_n_12,mem_n_13,mem_n_14,mem_n_15,mem_n_16,mem_n_17,mem_n_18,mem_n_19,mem_n_20,mem_n_21,mem_n_22,mem_n_23,mem_n_24}),
        .\r_num_cycles_without_valid_reg[15]_0 (\r_num_cycles_without_valid[15]_i_2_n_0 ),
        .\r_num_cycles_without_valid_reg[15]_1 ({r_num_cycles_without_valid1_carry__2_n_5,r_num_cycles_without_valid1_carry__2_n_6,r_num_cycles_without_valid1_carry__2_n_7}),
        .\r_num_cycles_without_valid_reg[8] ({r_num_cycles_without_valid1_carry__0_n_4,r_num_cycles_without_valid1_carry__0_n_5,r_num_cycles_without_valid1_carry__0_n_6,r_num_cycles_without_valid1_carry__0_n_7}),
        .\r_packet_size_reg[10] (mem_n_25),
        .\r_tx_fifo_tdata_reg[0] (\r_tx_fifo_tdata[5]_i_2_n_0 ),
        .\r_tx_fifo_tdata_reg[0]_0 (\r_tx_fifo_tdata[5]_i_4_n_0 ),
        .\r_tx_fifo_tdata_reg[0]_1 (\r_tx_fifo_tdata[0]_i_2_n_0 ),
        .\r_tx_fifo_tdata_reg[1] ({\r_src_addr_reg_n_0_[41] ,\r_src_addr_reg_n_0_[40] }),
        .\r_tx_fifo_tdata_reg[1]_0 (\r_tx_fifo_tdata[4]_i_4_n_0 ),
        .\r_tx_fifo_tdata_reg[1]_1 (\r_tx_fifo_tdata[1]_i_2_n_0 ),
        .\r_tx_fifo_tdata_reg[2] (p_0_in[2]),
        .\r_tx_fifo_tdata_reg[2]_0 (\r_tx_fifo_tdata[2]_i_2_n_0 ),
        .\r_tx_fifo_tdata_reg[3] (\r_tx_fifo_tdata[7]_i_5_n_0 ),
        .\r_tx_fifo_tdata_reg[3]_0 (\r_tx_fifo_tdata[3]_i_2_n_0 ),
        .\r_tx_fifo_tdata_reg[3]_1 (\r_tx_fifo_tdata[3]_i_3_n_0 ),
        .\r_tx_fifo_tdata_reg[4] (\r_tx_fifo_tdata[4]_i_2_n_0 ),
        .\r_tx_fifo_tdata_reg[4]_0 (\r_tx_fifo_tdata[4]_i_3_n_0 ),
        .\r_tx_fifo_tdata_reg[5] (\r_tx_fifo_tdata[5]_i_3_n_0 ),
        .\r_tx_fifo_tdata_reg[7] (\r_tx_fifo_tdata[7]_i_4_n_0 ),
        .\r_tx_fifo_tdata_reg[7]_0 ({\r_byte_count_reg_n_0_[15] ,\r_byte_count_reg_n_0_[14] ,\r_byte_count_reg_n_0_[10] ,\r_byte_count_reg_n_0_[9] }),
        .\read_address_int_reg[11] (r_tx_fifo_tlast_reg_0),
        .rx_mic_TVALID(rx_mic_TVALID),
        .tx_fifo_TREADY(tx_fifo_TREADY),
        .w_areset(w_areset));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_byte_count[0]_i_1 
       (.I0(r_core_state[2]),
        .I1(\r_packet_size_reg_n_0_[0] ),
        .O(r_byte_count[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_byte_count[10]_i_1 
       (.I0(\r_byte_count_reg_n_0_[2] ),
        .I1(r_core_state[1]),
        .I2(\r_packet_size_reg_n_0_[10] ),
        .O(r_byte_count[10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_byte_count[11]_i_1 
       (.I0(\r_byte_count_reg_n_0_[3] ),
        .I1(r_core_state[1]),
        .I2(\r_packet_size_reg_n_0_[11] ),
        .O(r_byte_count[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_byte_count[12]_i_1 
       (.I0(\r_byte_count_reg_n_0_[4] ),
        .I1(r_core_state[1]),
        .I2(\r_packet_size_reg_n_0_[12] ),
        .O(r_byte_count[12]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_byte_count[13]_i_1 
       (.I0(\r_byte_count_reg_n_0_[5] ),
        .I1(r_core_state[1]),
        .I2(\r_packet_size_reg_n_0_[13] ),
        .O(r_byte_count[13]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_byte_count[14]_i_1 
       (.I0(\r_byte_count_reg_n_0_[6] ),
        .I1(r_core_state[1]),
        .I2(\r_packet_size_reg_n_0_[14] ),
        .O(r_byte_count[14]));
  LUT5 #(
    .INIT(32'h0CB00C00)) 
    \r_byte_count[15]_i_1 
       (.I0(\r_tx_fifo_tdata[7]_i_4_n_0 ),
        .I1(r_core_state[0]),
        .I2(r_core_state[1]),
        .I3(r_core_state[2]),
        .I4(tx_fifo_TREADY),
        .O(r_byte_count_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_byte_count[15]_i_2 
       (.I0(\r_byte_count_reg_n_0_[7] ),
        .I1(r_core_state[1]),
        .I2(\r_packet_size_reg_n_0_[15] ),
        .O(r_byte_count[15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_byte_count[1]_i_1 
       (.I0(r_core_state[2]),
        .I1(\r_packet_size_reg_n_0_[1] ),
        .O(r_byte_count[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \r_byte_count[2]_i_1 
       (.I0(r_core_state[2]),
        .I1(\r_packet_size_reg_n_0_[2] ),
        .O(r_byte_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_byte_count[3]_i_1 
       (.I0(r_core_state[2]),
        .I1(\r_packet_size_reg_n_0_[3] ),
        .O(r_byte_count[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_byte_count[4]_i_1 
       (.I0(r_core_state[2]),
        .I1(\r_packet_size_reg_n_0_[4] ),
        .O(r_byte_count[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_byte_count[5]_i_1 
       (.I0(r_core_state[2]),
        .I1(\r_packet_size_reg_n_0_[5] ),
        .O(r_byte_count[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_byte_count[6]_i_1 
       (.I0(r_core_state[2]),
        .I1(\r_packet_size_reg_n_0_[6] ),
        .O(r_byte_count[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_byte_count[7]_i_1 
       (.I0(r_core_state[2]),
        .I1(\r_packet_size_reg_n_0_[7] ),
        .O(r_byte_count[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_byte_count[8]_i_1 
       (.I0(\r_byte_count_reg_n_0_[0] ),
        .I1(r_core_state[1]),
        .I2(\r_packet_size_reg_n_0_[8] ),
        .O(r_byte_count[8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_byte_count[9]_i_1 
       (.I0(\r_byte_count_reg_n_0_[1] ),
        .I1(r_core_state[1]),
        .I2(\r_packet_size_reg_n_0_[9] ),
        .O(r_byte_count[9]));
  FDRE \r_byte_count_reg[0] 
       (.C(i_clk),
        .CE(r_byte_count_0),
        .D(r_byte_count[0]),
        .Q(\r_byte_count_reg_n_0_[0] ),
        .R(w_areset));
  FDRE \r_byte_count_reg[10] 
       (.C(i_clk),
        .CE(r_byte_count_0),
        .D(r_byte_count[10]),
        .Q(\r_byte_count_reg_n_0_[10] ),
        .R(w_areset));
  FDRE \r_byte_count_reg[11] 
       (.C(i_clk),
        .CE(r_byte_count_0),
        .D(r_byte_count[11]),
        .Q(\r_byte_count_reg_n_0_[11] ),
        .R(w_areset));
  FDRE \r_byte_count_reg[12] 
       (.C(i_clk),
        .CE(r_byte_count_0),
        .D(r_byte_count[12]),
        .Q(\r_byte_count_reg_n_0_[12] ),
        .R(w_areset));
  FDRE \r_byte_count_reg[13] 
       (.C(i_clk),
        .CE(r_byte_count_0),
        .D(r_byte_count[13]),
        .Q(\r_byte_count_reg_n_0_[13] ),
        .R(w_areset));
  FDRE \r_byte_count_reg[14] 
       (.C(i_clk),
        .CE(r_byte_count_0),
        .D(r_byte_count[14]),
        .Q(\r_byte_count_reg_n_0_[14] ),
        .R(w_areset));
  FDRE \r_byte_count_reg[15] 
       (.C(i_clk),
        .CE(r_byte_count_0),
        .D(r_byte_count[15]),
        .Q(\r_byte_count_reg_n_0_[15] ),
        .R(w_areset));
  FDRE \r_byte_count_reg[1] 
       (.C(i_clk),
        .CE(r_byte_count_0),
        .D(r_byte_count[1]),
        .Q(\r_byte_count_reg_n_0_[1] ),
        .R(w_areset));
  FDRE \r_byte_count_reg[2] 
       (.C(i_clk),
        .CE(r_byte_count_0),
        .D(r_byte_count[2]),
        .Q(\r_byte_count_reg_n_0_[2] ),
        .R(w_areset));
  FDRE \r_byte_count_reg[3] 
       (.C(i_clk),
        .CE(r_byte_count_0),
        .D(r_byte_count[3]),
        .Q(\r_byte_count_reg_n_0_[3] ),
        .R(w_areset));
  FDRE \r_byte_count_reg[4] 
       (.C(i_clk),
        .CE(r_byte_count_0),
        .D(r_byte_count[4]),
        .Q(\r_byte_count_reg_n_0_[4] ),
        .R(w_areset));
  FDRE \r_byte_count_reg[5] 
       (.C(i_clk),
        .CE(r_byte_count_0),
        .D(r_byte_count[5]),
        .Q(\r_byte_count_reg_n_0_[5] ),
        .R(w_areset));
  FDRE \r_byte_count_reg[6] 
       (.C(i_clk),
        .CE(r_byte_count_0),
        .D(r_byte_count[6]),
        .Q(\r_byte_count_reg_n_0_[6] ),
        .R(w_areset));
  FDRE \r_byte_count_reg[7] 
       (.C(i_clk),
        .CE(r_byte_count_0),
        .D(r_byte_count[7]),
        .Q(\r_byte_count_reg_n_0_[7] ),
        .R(w_areset));
  FDRE \r_byte_count_reg[8] 
       (.C(i_clk),
        .CE(r_byte_count_0),
        .D(r_byte_count[8]),
        .Q(\r_byte_count_reg_n_0_[8] ),
        .R(w_areset));
  FDRE \r_byte_count_reg[9] 
       (.C(i_clk),
        .CE(r_byte_count_0),
        .D(r_byte_count[9]),
        .Q(\r_byte_count_reg_n_0_[9] ),
        .R(w_areset));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r_dest_addr[26]_i_1 
       (.I0(p_0_in[0]),
        .I1(r_dest_addr[2]),
        .O(r_dest_addr[26]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_dest_addr[2]_i_1 
       (.I0(\r_dest_addr[2]_i_2_n_0 ),
        .I1(r_core_state[0]),
        .O(r_dest_addr[2]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_dest_addr[2]_i_2 
       (.I0(p_0_in[2]),
        .I1(r_dest_addr[42]),
        .I2(p_0_in[0]),
        .I3(r_dest_addr[10]),
        .I4(r_dest_addr[34]),
        .I5(r_dest_addr[40]),
        .O(\r_dest_addr[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3020)) 
    \r_dest_addr[42]_i_1 
       (.I0(r_core_state[0]),
        .I1(r_core_state[1]),
        .I2(r_core_state[2]),
        .I3(tx_fifo_TREADY),
        .O(r_dest_addr_3));
  FDSE \r_dest_addr_reg[26] 
       (.C(i_clk),
        .CE(r_dest_addr_3),
        .D(r_dest_addr[26]),
        .Q(r_dest_addr[34]),
        .S(w_areset));
  FDSE \r_dest_addr_reg[2] 
       (.C(i_clk),
        .CE(r_dest_addr_3),
        .D(r_dest_addr[2]),
        .Q(r_dest_addr[10]),
        .S(w_areset));
  FDRE \r_dest_addr_reg[32] 
       (.C(i_clk),
        .CE(r_dest_addr_3),
        .D(r_dest_addr[10]),
        .Q(r_dest_addr[40]),
        .R(w_areset));
  FDRE \r_dest_addr_reg[34] 
       (.C(i_clk),
        .CE(r_dest_addr_3),
        .D(r_dest_addr[34]),
        .Q(r_dest_addr[42]),
        .R(w_areset));
  FDRE \r_dest_addr_reg[40] 
       (.C(i_clk),
        .CE(r_dest_addr_3),
        .D(r_dest_addr[40]),
        .Q(p_0_in[0]),
        .R(w_areset));
  FDRE \r_dest_addr_reg[42] 
       (.C(i_clk),
        .CE(r_dest_addr_3),
        .D(r_dest_addr[42]),
        .Q(p_0_in[2]),
        .R(w_areset));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hE2FF)) 
    \r_fifo_data_in[0]_i_1 
       (.I0(rx_mic_TDATA[8]),
        .I1(r_core_state[1]),
        .I2(\r_rx_mic_tdata_ls_byte_reg_n_0_[0] ),
        .I3(r_core_state[0]),
        .O(\r_fifo_data_in[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \r_fifo_data_in[1]_i_1 
       (.I0(rx_mic_TDATA[9]),
        .I1(r_core_state[1]),
        .I2(\r_rx_mic_tdata_ls_byte_reg_n_0_[1] ),
        .I3(r_core_state[0]),
        .O(\r_fifo_data_in[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r_fifo_data_in[2]_i_1 
       (.I0(\r_rx_mic_tdata_ls_byte_reg_n_0_[2] ),
        .I1(r_core_state[0]),
        .I2(r_tlast_marker_counter_reg_n_0),
        .I3(r_core_state[1]),
        .I4(rx_mic_TDATA[10]),
        .O(r_fifo_data_in0_in[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r_fifo_data_in[3]_i_1 
       (.I0(\r_rx_mic_tdata_ls_byte_reg_n_0_[3] ),
        .I1(r_core_state[0]),
        .I2(r_tlast_marker_counter_reg_n_0),
        .I3(r_core_state[1]),
        .I4(rx_mic_TDATA[11]),
        .O(r_fifo_data_in0_in[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r_fifo_data_in[4]_i_1 
       (.I0(\r_rx_mic_tdata_ls_byte_reg_n_0_[4] ),
        .I1(r_core_state[0]),
        .I2(r_tlast_marker_counter_reg_n_0),
        .I3(r_core_state[1]),
        .I4(rx_mic_TDATA[12]),
        .O(r_fifo_data_in0_in[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r_fifo_data_in[5]_i_1 
       (.I0(\r_rx_mic_tdata_ls_byte_reg_n_0_[5] ),
        .I1(r_core_state[0]),
        .I2(r_tlast_marker_counter_reg_n_0),
        .I3(r_core_state[1]),
        .I4(rx_mic_TDATA[13]),
        .O(r_fifo_data_in0_in[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r_fifo_data_in[6]_i_1 
       (.I0(\r_rx_mic_tdata_ls_byte_reg_n_0_[6] ),
        .I1(r_core_state[0]),
        .I2(r_tlast_marker_counter_reg_n_0),
        .I3(r_core_state[1]),
        .I4(rx_mic_TDATA[14]),
        .O(r_fifo_data_in0_in[6]));
  LUT4 #(
    .INIT(16'hA4A0)) 
    \r_fifo_data_in[7]_i_1 
       (.I0(r_core_state[2]),
        .I1(r_core_state[0]),
        .I2(r_core_state[1]),
        .I3(rx_mic_TVALID),
        .O(r_fifo_data_in));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r_fifo_data_in[7]_i_2 
       (.I0(\r_rx_mic_tdata_ls_byte_reg_n_0_[7] ),
        .I1(r_core_state[0]),
        .I2(r_tlast_marker_counter_reg_n_0),
        .I3(r_core_state[1]),
        .I4(rx_mic_TDATA[15]),
        .O(r_fifo_data_in0_in[7]));
  FDRE \r_fifo_data_in_reg[0] 
       (.C(i_clk),
        .CE(r_fifo_data_in),
        .D(\r_fifo_data_in[0]_i_1_n_0 ),
        .Q(\r_fifo_data_in_reg_n_0_[0] ),
        .R(w_areset));
  FDRE \r_fifo_data_in_reg[1] 
       (.C(i_clk),
        .CE(r_fifo_data_in),
        .D(\r_fifo_data_in[1]_i_1_n_0 ),
        .Q(\r_fifo_data_in_reg_n_0_[1] ),
        .R(w_areset));
  FDRE \r_fifo_data_in_reg[2] 
       (.C(i_clk),
        .CE(r_fifo_data_in),
        .D(r_fifo_data_in0_in[2]),
        .Q(\r_fifo_data_in_reg_n_0_[2] ),
        .R(w_areset));
  FDRE \r_fifo_data_in_reg[3] 
       (.C(i_clk),
        .CE(r_fifo_data_in),
        .D(r_fifo_data_in0_in[3]),
        .Q(\r_fifo_data_in_reg_n_0_[3] ),
        .R(w_areset));
  FDRE \r_fifo_data_in_reg[4] 
       (.C(i_clk),
        .CE(r_fifo_data_in),
        .D(r_fifo_data_in0_in[4]),
        .Q(\r_fifo_data_in_reg_n_0_[4] ),
        .R(w_areset));
  FDRE \r_fifo_data_in_reg[5] 
       (.C(i_clk),
        .CE(r_fifo_data_in),
        .D(r_fifo_data_in0_in[5]),
        .Q(\r_fifo_data_in_reg_n_0_[5] ),
        .R(w_areset));
  FDRE \r_fifo_data_in_reg[6] 
       (.C(i_clk),
        .CE(r_fifo_data_in),
        .D(r_fifo_data_in0_in[6]),
        .Q(\r_fifo_data_in_reg_n_0_[6] ),
        .R(w_areset));
  FDRE \r_fifo_data_in_reg[7] 
       (.C(i_clk),
        .CE(r_fifo_data_in),
        .D(r_fifo_data_in0_in[7]),
        .Q(\r_fifo_data_in_reg_n_0_[7] ),
        .R(w_areset));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFA2EFA22)) 
    r_fifo_write_enable_i_1
       (.I0(r_fifo_write_enable_reg_n_0),
        .I1(r_core_state[0]),
        .I2(r_core_state[2]),
        .I3(r_core_state[1]),
        .I4(rx_mic_TVALID),
        .O(r_fifo_write_enable_i_1_n_0));
  FDRE r_fifo_write_enable_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(r_fifo_write_enable_i_1_n_0),
        .Q(r_fifo_write_enable_reg_n_0),
        .R(w_areset));
  CARRY4 r_num_cycles_without_valid1_carry
       (.CI(1'b0),
        .CO({r_num_cycles_without_valid1_carry_n_0,r_num_cycles_without_valid1_carry_n_1,r_num_cycles_without_valid1_carry_n_2,r_num_cycles_without_valid1_carry_n_3}),
        .CYINIT(\r_num_cycles_without_valid_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_num_cycles_without_valid1_carry_n_4,r_num_cycles_without_valid1_carry_n_5,r_num_cycles_without_valid1_carry_n_6,r_num_cycles_without_valid1_carry_n_7}),
        .S({\r_num_cycles_without_valid_reg_n_0_[4] ,\r_num_cycles_without_valid_reg_n_0_[3] ,\r_num_cycles_without_valid_reg_n_0_[2] ,\r_num_cycles_without_valid_reg_n_0_[1] }));
  CARRY4 r_num_cycles_without_valid1_carry__0
       (.CI(r_num_cycles_without_valid1_carry_n_0),
        .CO({r_num_cycles_without_valid1_carry__0_n_0,r_num_cycles_without_valid1_carry__0_n_1,r_num_cycles_without_valid1_carry__0_n_2,r_num_cycles_without_valid1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_num_cycles_without_valid1_carry__0_n_4,r_num_cycles_without_valid1_carry__0_n_5,r_num_cycles_without_valid1_carry__0_n_6,r_num_cycles_without_valid1_carry__0_n_7}),
        .S({\r_num_cycles_without_valid_reg_n_0_[8] ,\r_num_cycles_without_valid_reg_n_0_[7] ,\r_num_cycles_without_valid_reg_n_0_[6] ,\r_num_cycles_without_valid_reg_n_0_[5] }));
  CARRY4 r_num_cycles_without_valid1_carry__1
       (.CI(r_num_cycles_without_valid1_carry__0_n_0),
        .CO({r_num_cycles_without_valid1_carry__1_n_0,r_num_cycles_without_valid1_carry__1_n_1,r_num_cycles_without_valid1_carry__1_n_2,r_num_cycles_without_valid1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({r_num_cycles_without_valid1_carry__1_n_4,r_num_cycles_without_valid1_carry__1_n_5,r_num_cycles_without_valid1_carry__1_n_6,r_num_cycles_without_valid1_carry__1_n_7}),
        .S({\r_num_cycles_without_valid_reg_n_0_[12] ,\r_num_cycles_without_valid_reg_n_0_[11] ,\r_num_cycles_without_valid_reg_n_0_[10] ,\r_num_cycles_without_valid_reg_n_0_[9] }));
  CARRY4 r_num_cycles_without_valid1_carry__2
       (.CI(r_num_cycles_without_valid1_carry__1_n_0),
        .CO({NLW_r_num_cycles_without_valid1_carry__2_CO_UNCONNECTED[3:2],r_num_cycles_without_valid1_carry__2_n_2,r_num_cycles_without_valid1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_num_cycles_without_valid1_carry__2_O_UNCONNECTED[3],r_num_cycles_without_valid1_carry__2_n_5,r_num_cycles_without_valid1_carry__2_n_6,r_num_cycles_without_valid1_carry__2_n_7}),
        .S({1'b0,\r_num_cycles_without_valid_reg_n_0_[15] ,\r_num_cycles_without_valid_reg_n_0_[14] ,\r_num_cycles_without_valid_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \r_num_cycles_without_valid[15]_i_2 
       (.I0(\r_num_cycles_without_valid[15]_i_3_n_0 ),
        .I1(\r_num_cycles_without_valid_reg_n_0_[2] ),
        .I2(\r_num_cycles_without_valid_reg_n_0_[0] ),
        .I3(\r_num_cycles_without_valid_reg_n_0_[7] ),
        .I4(\r_num_cycles_without_valid_reg_n_0_[4] ),
        .I5(\r_num_cycles_without_valid[15]_i_4_n_0 ),
        .O(\r_num_cycles_without_valid[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_num_cycles_without_valid[15]_i_3 
       (.I0(\r_num_cycles_without_valid_reg_n_0_[5] ),
        .I1(\r_num_cycles_without_valid_reg_n_0_[6] ),
        .I2(\r_num_cycles_without_valid_reg_n_0_[1] ),
        .I3(\r_num_cycles_without_valid_reg_n_0_[3] ),
        .O(\r_num_cycles_without_valid[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \r_num_cycles_without_valid[15]_i_4 
       (.I0(\r_num_cycles_without_valid_reg_n_0_[10] ),
        .I1(\r_num_cycles_without_valid_reg_n_0_[9] ),
        .I2(\r_num_cycles_without_valid_reg_n_0_[11] ),
        .I3(\r_num_cycles_without_valid_reg_n_0_[8] ),
        .I4(\r_num_cycles_without_valid[15]_i_5_n_0 ),
        .O(\r_num_cycles_without_valid[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_num_cycles_without_valid[15]_i_5 
       (.I0(\r_num_cycles_without_valid_reg_n_0_[13] ),
        .I1(\r_num_cycles_without_valid_reg_n_0_[14] ),
        .I2(\r_num_cycles_without_valid_reg_n_0_[12] ),
        .I3(\r_num_cycles_without_valid_reg_n_0_[15] ),
        .O(\r_num_cycles_without_valid[15]_i_5_n_0 ));
  FDRE \r_num_cycles_without_valid_reg[0] 
       (.C(i_clk),
        .CE(rx_mic_TREADY),
        .D(mem_n_24),
        .Q(\r_num_cycles_without_valid_reg_n_0_[0] ),
        .R(w_areset));
  FDRE \r_num_cycles_without_valid_reg[10] 
       (.C(i_clk),
        .CE(rx_mic_TREADY),
        .D(mem_n_14),
        .Q(\r_num_cycles_without_valid_reg_n_0_[10] ),
        .R(w_areset));
  FDRE \r_num_cycles_without_valid_reg[11] 
       (.C(i_clk),
        .CE(rx_mic_TREADY),
        .D(mem_n_13),
        .Q(\r_num_cycles_without_valid_reg_n_0_[11] ),
        .R(w_areset));
  FDRE \r_num_cycles_without_valid_reg[12] 
       (.C(i_clk),
        .CE(rx_mic_TREADY),
        .D(mem_n_12),
        .Q(\r_num_cycles_without_valid_reg_n_0_[12] ),
        .R(w_areset));
  FDRE \r_num_cycles_without_valid_reg[13] 
       (.C(i_clk),
        .CE(rx_mic_TREADY),
        .D(mem_n_11),
        .Q(\r_num_cycles_without_valid_reg_n_0_[13] ),
        .R(w_areset));
  FDRE \r_num_cycles_without_valid_reg[14] 
       (.C(i_clk),
        .CE(rx_mic_TREADY),
        .D(mem_n_10),
        .Q(\r_num_cycles_without_valid_reg_n_0_[14] ),
        .R(w_areset));
  FDRE \r_num_cycles_without_valid_reg[15] 
       (.C(i_clk),
        .CE(rx_mic_TREADY),
        .D(mem_n_9),
        .Q(\r_num_cycles_without_valid_reg_n_0_[15] ),
        .R(w_areset));
  FDRE \r_num_cycles_without_valid_reg[1] 
       (.C(i_clk),
        .CE(rx_mic_TREADY),
        .D(mem_n_23),
        .Q(\r_num_cycles_without_valid_reg_n_0_[1] ),
        .R(w_areset));
  FDRE \r_num_cycles_without_valid_reg[2] 
       (.C(i_clk),
        .CE(rx_mic_TREADY),
        .D(mem_n_22),
        .Q(\r_num_cycles_without_valid_reg_n_0_[2] ),
        .R(w_areset));
  FDRE \r_num_cycles_without_valid_reg[3] 
       (.C(i_clk),
        .CE(rx_mic_TREADY),
        .D(mem_n_21),
        .Q(\r_num_cycles_without_valid_reg_n_0_[3] ),
        .R(w_areset));
  FDRE \r_num_cycles_without_valid_reg[4] 
       (.C(i_clk),
        .CE(rx_mic_TREADY),
        .D(mem_n_20),
        .Q(\r_num_cycles_without_valid_reg_n_0_[4] ),
        .R(w_areset));
  FDRE \r_num_cycles_without_valid_reg[5] 
       (.C(i_clk),
        .CE(rx_mic_TREADY),
        .D(mem_n_19),
        .Q(\r_num_cycles_without_valid_reg_n_0_[5] ),
        .R(w_areset));
  FDRE \r_num_cycles_without_valid_reg[6] 
       (.C(i_clk),
        .CE(rx_mic_TREADY),
        .D(mem_n_18),
        .Q(\r_num_cycles_without_valid_reg_n_0_[6] ),
        .R(w_areset));
  FDRE \r_num_cycles_without_valid_reg[7] 
       (.C(i_clk),
        .CE(rx_mic_TREADY),
        .D(mem_n_17),
        .Q(\r_num_cycles_without_valid_reg_n_0_[7] ),
        .R(w_areset));
  FDRE \r_num_cycles_without_valid_reg[8] 
       (.C(i_clk),
        .CE(rx_mic_TREADY),
        .D(mem_n_16),
        .Q(\r_num_cycles_without_valid_reg_n_0_[8] ),
        .R(w_areset));
  FDRE \r_num_cycles_without_valid_reg[9] 
       (.C(i_clk),
        .CE(rx_mic_TREADY),
        .D(mem_n_15),
        .Q(\r_num_cycles_without_valid_reg_n_0_[9] ),
        .R(w_areset));
  CARRY4 r_packet_size0_carry
       (.CI(1'b0),
        .CO({r_packet_size0_carry_n_0,r_packet_size0_carry_n_1,r_packet_size0_carry_n_2,r_packet_size0_carry_n_3}),
        .CYINIT(\r_packet_size_reg_n_0_[0] ),
        .DI({\r_packet_size_reg_n_0_[4] ,\r_packet_size_reg_n_0_[3] ,\r_packet_size_reg_n_0_[2] ,\r_packet_size_reg_n_0_[1] }),
        .O(data0[4:1]),
        .S({r_packet_size0_carry_i_1_n_0,r_packet_size0_carry_i_2_n_0,r_packet_size0_carry_i_3_n_0,r_packet_size0_carry_i_4_n_0}));
  CARRY4 r_packet_size0_carry__0
       (.CI(r_packet_size0_carry_n_0),
        .CO({r_packet_size0_carry__0_n_0,r_packet_size0_carry__0_n_1,r_packet_size0_carry__0_n_2,r_packet_size0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\r_packet_size_reg_n_0_[8] ,\r_packet_size_reg_n_0_[7] ,\r_packet_size_reg_n_0_[6] ,\r_packet_size_reg_n_0_[5] }),
        .O(data0[8:5]),
        .S({r_packet_size0_carry__0_i_1_n_0,r_packet_size0_carry__0_i_2_n_0,r_packet_size0_carry__0_i_3_n_0,r_packet_size0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_packet_size0_carry__0_i_1
       (.I0(\r_packet_size_reg_n_0_[8] ),
        .O(r_packet_size0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_packet_size0_carry__0_i_2
       (.I0(\r_packet_size_reg_n_0_[7] ),
        .O(r_packet_size0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_packet_size0_carry__0_i_3
       (.I0(\r_packet_size_reg_n_0_[6] ),
        .O(r_packet_size0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_packet_size0_carry__0_i_4
       (.I0(\r_packet_size_reg_n_0_[5] ),
        .O(r_packet_size0_carry__0_i_4_n_0));
  CARRY4 r_packet_size0_carry__1
       (.CI(r_packet_size0_carry__0_n_0),
        .CO({r_packet_size0_carry__1_n_0,r_packet_size0_carry__1_n_1,r_packet_size0_carry__1_n_2,r_packet_size0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\r_packet_size_reg_n_0_[12] ,\r_packet_size_reg_n_0_[11] ,\r_packet_size_reg_n_0_[10] ,\r_packet_size_reg_n_0_[9] }),
        .O(data0[12:9]),
        .S({r_packet_size0_carry__1_i_1_n_0,r_packet_size0_carry__1_i_2_n_0,r_packet_size0_carry__1_i_3_n_0,r_packet_size0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_packet_size0_carry__1_i_1
       (.I0(\r_packet_size_reg_n_0_[12] ),
        .O(r_packet_size0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_packet_size0_carry__1_i_2
       (.I0(\r_packet_size_reg_n_0_[11] ),
        .O(r_packet_size0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_packet_size0_carry__1_i_3
       (.I0(\r_packet_size_reg_n_0_[10] ),
        .O(r_packet_size0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_packet_size0_carry__1_i_4
       (.I0(\r_packet_size_reg_n_0_[9] ),
        .O(r_packet_size0_carry__1_i_4_n_0));
  CARRY4 r_packet_size0_carry__2
       (.CI(r_packet_size0_carry__1_n_0),
        .CO({NLW_r_packet_size0_carry__2_CO_UNCONNECTED[3:2],r_packet_size0_carry__2_n_2,r_packet_size0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\r_packet_size_reg_n_0_[14] ,\r_packet_size_reg_n_0_[13] }),
        .O({NLW_r_packet_size0_carry__2_O_UNCONNECTED[3],data0[15:13]}),
        .S({1'b0,r_packet_size0_carry__2_i_1_n_0,r_packet_size0_carry__2_i_2_n_0,r_packet_size0_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    r_packet_size0_carry__2_i_1
       (.I0(\r_packet_size_reg_n_0_[15] ),
        .O(r_packet_size0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_packet_size0_carry__2_i_2
       (.I0(\r_packet_size_reg_n_0_[14] ),
        .O(r_packet_size0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_packet_size0_carry__2_i_3
       (.I0(\r_packet_size_reg_n_0_[13] ),
        .O(r_packet_size0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_packet_size0_carry_i_1
       (.I0(\r_packet_size_reg_n_0_[4] ),
        .O(r_packet_size0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_packet_size0_carry_i_2
       (.I0(\r_packet_size_reg_n_0_[3] ),
        .O(r_packet_size0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_packet_size0_carry_i_3
       (.I0(\r_packet_size_reg_n_0_[2] ),
        .O(r_packet_size0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    r_packet_size0_carry_i_4
       (.I0(\r_packet_size_reg_n_0_[1] ),
        .O(r_packet_size0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h5554)) 
    \r_packet_size[0]_i_1 
       (.I0(\r_packet_size_reg_n_0_[0] ),
        .I1(\r_packet_size[15]_i_3_n_0 ),
        .I2(r_core_state[0]),
        .I3(r_core_state[2]),
        .O(\r_packet_size[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    \r_packet_size[10]_i_1 
       (.I0(data0[10]),
        .I1(\r_packet_size[15]_i_3_n_0 ),
        .I2(r_core_state[0]),
        .I3(r_core_state[2]),
        .I4(in26[10]),
        .O(r_packet_size[10]));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    \r_packet_size[11]_i_1 
       (.I0(data0[11]),
        .I1(\r_packet_size[15]_i_3_n_0 ),
        .I2(r_core_state[0]),
        .I3(r_core_state[2]),
        .I4(in26[11]),
        .O(r_packet_size[11]));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    \r_packet_size[12]_i_1 
       (.I0(data0[12]),
        .I1(\r_packet_size[15]_i_3_n_0 ),
        .I2(r_core_state[0]),
        .I3(r_core_state[2]),
        .I4(in26[12]),
        .O(r_packet_size[12]));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    \r_packet_size[13]_i_1 
       (.I0(data0[13]),
        .I1(\r_packet_size[15]_i_3_n_0 ),
        .I2(r_core_state[0]),
        .I3(r_core_state[2]),
        .I4(in26[13]),
        .O(r_packet_size[13]));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    \r_packet_size[14]_i_1 
       (.I0(data0[14]),
        .I1(\r_packet_size[15]_i_3_n_0 ),
        .I2(r_core_state[0]),
        .I3(r_core_state[2]),
        .I4(in26[14]),
        .O(r_packet_size[14]));
  LUT6 #(
    .INIT(64'hEE33EE03EE30EE00)) 
    \r_packet_size[15]_i_1 
       (.I0(\FSM_sequential_r_core_state[1]_i_2_n_0 ),
        .I1(r_core_state[2]),
        .I2(r_core_state[0]),
        .I3(r_core_state[1]),
        .I4(rx_mic_TVALID),
        .I5(tx_fifo_TREADY),
        .O(r_packet_size_1));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    \r_packet_size[15]_i_2 
       (.I0(data0[15]),
        .I1(\r_packet_size[15]_i_3_n_0 ),
        .I2(r_core_state[0]),
        .I3(r_core_state[2]),
        .I4(in26[15]),
        .O(r_packet_size[15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \r_packet_size[15]_i_3 
       (.I0(r_tx_fifo_tlast_i_2_n_0),
        .I1(r_tx_fifo_tlast_i_3_n_0),
        .I2(r_core_state[1]),
        .I3(\r_packet_size_reg_n_0_[0] ),
        .O(\r_packet_size[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    \r_packet_size[1]_i_1 
       (.I0(data0[1]),
        .I1(\r_packet_size[15]_i_3_n_0 ),
        .I2(r_core_state[0]),
        .I3(r_core_state[2]),
        .I4(in26[1]),
        .O(r_packet_size[1]));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    \r_packet_size[2]_i_1 
       (.I0(data0[2]),
        .I1(\r_packet_size[15]_i_3_n_0 ),
        .I2(r_core_state[0]),
        .I3(r_core_state[2]),
        .I4(in26[2]),
        .O(r_packet_size[2]));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    \r_packet_size[3]_i_1 
       (.I0(data0[3]),
        .I1(\r_packet_size[15]_i_3_n_0 ),
        .I2(r_core_state[0]),
        .I3(r_core_state[2]),
        .I4(in26[3]),
        .O(r_packet_size[3]));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    \r_packet_size[4]_i_1 
       (.I0(data0[4]),
        .I1(\r_packet_size[15]_i_3_n_0 ),
        .I2(r_core_state[0]),
        .I3(r_core_state[2]),
        .I4(in26[4]),
        .O(r_packet_size[4]));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    \r_packet_size[5]_i_1 
       (.I0(data0[5]),
        .I1(\r_packet_size[15]_i_3_n_0 ),
        .I2(r_core_state[0]),
        .I3(r_core_state[2]),
        .I4(in26[5]),
        .O(r_packet_size[5]));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    \r_packet_size[6]_i_1 
       (.I0(data0[6]),
        .I1(\r_packet_size[15]_i_3_n_0 ),
        .I2(r_core_state[0]),
        .I3(r_core_state[2]),
        .I4(in26[6]),
        .O(r_packet_size[6]));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    \r_packet_size[7]_i_1 
       (.I0(data0[7]),
        .I1(\r_packet_size[15]_i_3_n_0 ),
        .I2(r_core_state[0]),
        .I3(r_core_state[2]),
        .I4(in26[7]),
        .O(r_packet_size[7]));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    \r_packet_size[8]_i_1 
       (.I0(data0[8]),
        .I1(\r_packet_size[15]_i_3_n_0 ),
        .I2(r_core_state[0]),
        .I3(r_core_state[2]),
        .I4(in26[8]),
        .O(r_packet_size[8]));
  LUT5 #(
    .INIT(32'hFFF80008)) 
    \r_packet_size[9]_i_1 
       (.I0(data0[9]),
        .I1(\r_packet_size[15]_i_3_n_0 ),
        .I2(r_core_state[0]),
        .I3(r_core_state[2]),
        .I4(in26[9]),
        .O(r_packet_size[9]));
  FDRE \r_packet_size_reg[0] 
       (.C(i_clk),
        .CE(r_packet_size_1),
        .D(\r_packet_size[0]_i_1_n_0 ),
        .Q(\r_packet_size_reg_n_0_[0] ),
        .R(w_areset));
  FDRE \r_packet_size_reg[10] 
       (.C(i_clk),
        .CE(r_packet_size_1),
        .D(r_packet_size[10]),
        .Q(\r_packet_size_reg_n_0_[10] ),
        .R(w_areset));
  FDRE \r_packet_size_reg[11] 
       (.C(i_clk),
        .CE(r_packet_size_1),
        .D(r_packet_size[11]),
        .Q(\r_packet_size_reg_n_0_[11] ),
        .R(w_areset));
  FDRE \r_packet_size_reg[12] 
       (.C(i_clk),
        .CE(r_packet_size_1),
        .D(r_packet_size[12]),
        .Q(\r_packet_size_reg_n_0_[12] ),
        .R(w_areset));
  CARRY4 \r_packet_size_reg[12]_i_2 
       (.CI(\r_packet_size_reg[8]_i_2_n_0 ),
        .CO({\r_packet_size_reg[12]_i_2_n_0 ,\r_packet_size_reg[12]_i_2_n_1 ,\r_packet_size_reg[12]_i_2_n_2 ,\r_packet_size_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in26[12:9]),
        .S({\r_packet_size_reg_n_0_[12] ,\r_packet_size_reg_n_0_[11] ,\r_packet_size_reg_n_0_[10] ,\r_packet_size_reg_n_0_[9] }));
  FDRE \r_packet_size_reg[13] 
       (.C(i_clk),
        .CE(r_packet_size_1),
        .D(r_packet_size[13]),
        .Q(\r_packet_size_reg_n_0_[13] ),
        .R(w_areset));
  FDRE \r_packet_size_reg[14] 
       (.C(i_clk),
        .CE(r_packet_size_1),
        .D(r_packet_size[14]),
        .Q(\r_packet_size_reg_n_0_[14] ),
        .R(w_areset));
  FDRE \r_packet_size_reg[15] 
       (.C(i_clk),
        .CE(r_packet_size_1),
        .D(r_packet_size[15]),
        .Q(\r_packet_size_reg_n_0_[15] ),
        .R(w_areset));
  CARRY4 \r_packet_size_reg[15]_i_4 
       (.CI(\r_packet_size_reg[12]_i_2_n_0 ),
        .CO({\NLW_r_packet_size_reg[15]_i_4_CO_UNCONNECTED [3:2],\r_packet_size_reg[15]_i_4_n_2 ,\r_packet_size_reg[15]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_packet_size_reg[15]_i_4_O_UNCONNECTED [3],in26[15:13]}),
        .S({1'b0,\r_packet_size_reg_n_0_[15] ,\r_packet_size_reg_n_0_[14] ,\r_packet_size_reg_n_0_[13] }));
  FDRE \r_packet_size_reg[1] 
       (.C(i_clk),
        .CE(r_packet_size_1),
        .D(r_packet_size[1]),
        .Q(\r_packet_size_reg_n_0_[1] ),
        .R(w_areset));
  FDRE \r_packet_size_reg[2] 
       (.C(i_clk),
        .CE(r_packet_size_1),
        .D(r_packet_size[2]),
        .Q(\r_packet_size_reg_n_0_[2] ),
        .R(w_areset));
  FDRE \r_packet_size_reg[3] 
       (.C(i_clk),
        .CE(r_packet_size_1),
        .D(r_packet_size[3]),
        .Q(\r_packet_size_reg_n_0_[3] ),
        .R(w_areset));
  FDRE \r_packet_size_reg[4] 
       (.C(i_clk),
        .CE(r_packet_size_1),
        .D(r_packet_size[4]),
        .Q(\r_packet_size_reg_n_0_[4] ),
        .R(w_areset));
  CARRY4 \r_packet_size_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\r_packet_size_reg[4]_i_2_n_0 ,\r_packet_size_reg[4]_i_2_n_1 ,\r_packet_size_reg[4]_i_2_n_2 ,\r_packet_size_reg[4]_i_2_n_3 }),
        .CYINIT(\r_packet_size_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in26[4:1]),
        .S({\r_packet_size_reg_n_0_[4] ,\r_packet_size_reg_n_0_[3] ,\r_packet_size_reg_n_0_[2] ,\r_packet_size_reg_n_0_[1] }));
  FDRE \r_packet_size_reg[5] 
       (.C(i_clk),
        .CE(r_packet_size_1),
        .D(r_packet_size[5]),
        .Q(\r_packet_size_reg_n_0_[5] ),
        .R(w_areset));
  FDRE \r_packet_size_reg[6] 
       (.C(i_clk),
        .CE(r_packet_size_1),
        .D(r_packet_size[6]),
        .Q(\r_packet_size_reg_n_0_[6] ),
        .R(w_areset));
  FDRE \r_packet_size_reg[7] 
       (.C(i_clk),
        .CE(r_packet_size_1),
        .D(r_packet_size[7]),
        .Q(\r_packet_size_reg_n_0_[7] ),
        .R(w_areset));
  FDRE \r_packet_size_reg[8] 
       (.C(i_clk),
        .CE(r_packet_size_1),
        .D(r_packet_size[8]),
        .Q(\r_packet_size_reg_n_0_[8] ),
        .R(w_areset));
  CARRY4 \r_packet_size_reg[8]_i_2 
       (.CI(\r_packet_size_reg[4]_i_2_n_0 ),
        .CO({\r_packet_size_reg[8]_i_2_n_0 ,\r_packet_size_reg[8]_i_2_n_1 ,\r_packet_size_reg[8]_i_2_n_2 ,\r_packet_size_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in26[8:5]),
        .S({\r_packet_size_reg_n_0_[8] ,\r_packet_size_reg_n_0_[7] ,\r_packet_size_reg_n_0_[6] ,\r_packet_size_reg_n_0_[5] }));
  FDRE \r_packet_size_reg[9] 
       (.C(i_clk),
        .CE(r_packet_size_1),
        .D(r_packet_size[9]),
        .Q(\r_packet_size_reg_n_0_[9] ),
        .R(w_areset));
  LUT2 #(
    .INIT(4'h2)) 
    \r_rx_mic_tdata_ls_byte[0]_i_1 
       (.I0(rx_mic_TDATA[0]),
        .I1(r_core_state[2]),
        .O(r_rx_mic_tdata_ls_byte[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_rx_mic_tdata_ls_byte[1]_i_1 
       (.I0(rx_mic_TDATA[1]),
        .I1(r_core_state[2]),
        .O(r_rx_mic_tdata_ls_byte[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_rx_mic_tdata_ls_byte[2]_i_1 
       (.I0(rx_mic_TDATA[2]),
        .I1(r_core_state[2]),
        .O(r_rx_mic_tdata_ls_byte[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_rx_mic_tdata_ls_byte[3]_i_1 
       (.I0(rx_mic_TDATA[3]),
        .I1(r_core_state[2]),
        .O(r_rx_mic_tdata_ls_byte[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_rx_mic_tdata_ls_byte[4]_i_1 
       (.I0(rx_mic_TDATA[4]),
        .I1(r_core_state[2]),
        .O(r_rx_mic_tdata_ls_byte[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_rx_mic_tdata_ls_byte[5]_i_1 
       (.I0(rx_mic_TDATA[5]),
        .I1(r_core_state[2]),
        .O(r_rx_mic_tdata_ls_byte[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_rx_mic_tdata_ls_byte[6]_i_1 
       (.I0(rx_mic_TDATA[6]),
        .I1(r_core_state[2]),
        .O(r_rx_mic_tdata_ls_byte[6]));
  LUT4 #(
    .INIT(16'hA400)) 
    \r_rx_mic_tdata_ls_byte[7]_i_1 
       (.I0(r_core_state[2]),
        .I1(rx_mic_TVALID),
        .I2(r_core_state[1]),
        .I3(r_core_state[0]),
        .O(\r_rx_mic_tdata_ls_byte[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r_rx_mic_tdata_ls_byte[7]_i_2 
       (.I0(rx_mic_TDATA[7]),
        .I1(r_core_state[2]),
        .O(r_rx_mic_tdata_ls_byte[7]));
  FDRE \r_rx_mic_tdata_ls_byte_reg[0] 
       (.C(i_clk),
        .CE(\r_rx_mic_tdata_ls_byte[7]_i_1_n_0 ),
        .D(r_rx_mic_tdata_ls_byte[0]),
        .Q(\r_rx_mic_tdata_ls_byte_reg_n_0_[0] ),
        .R(w_areset));
  FDRE \r_rx_mic_tdata_ls_byte_reg[1] 
       (.C(i_clk),
        .CE(\r_rx_mic_tdata_ls_byte[7]_i_1_n_0 ),
        .D(r_rx_mic_tdata_ls_byte[1]),
        .Q(\r_rx_mic_tdata_ls_byte_reg_n_0_[1] ),
        .R(w_areset));
  FDRE \r_rx_mic_tdata_ls_byte_reg[2] 
       (.C(i_clk),
        .CE(\r_rx_mic_tdata_ls_byte[7]_i_1_n_0 ),
        .D(r_rx_mic_tdata_ls_byte[2]),
        .Q(\r_rx_mic_tdata_ls_byte_reg_n_0_[2] ),
        .R(w_areset));
  FDRE \r_rx_mic_tdata_ls_byte_reg[3] 
       (.C(i_clk),
        .CE(\r_rx_mic_tdata_ls_byte[7]_i_1_n_0 ),
        .D(r_rx_mic_tdata_ls_byte[3]),
        .Q(\r_rx_mic_tdata_ls_byte_reg_n_0_[3] ),
        .R(w_areset));
  FDRE \r_rx_mic_tdata_ls_byte_reg[4] 
       (.C(i_clk),
        .CE(\r_rx_mic_tdata_ls_byte[7]_i_1_n_0 ),
        .D(r_rx_mic_tdata_ls_byte[4]),
        .Q(\r_rx_mic_tdata_ls_byte_reg_n_0_[4] ),
        .R(w_areset));
  FDRE \r_rx_mic_tdata_ls_byte_reg[5] 
       (.C(i_clk),
        .CE(\r_rx_mic_tdata_ls_byte[7]_i_1_n_0 ),
        .D(r_rx_mic_tdata_ls_byte[5]),
        .Q(\r_rx_mic_tdata_ls_byte_reg_n_0_[5] ),
        .R(w_areset));
  FDRE \r_rx_mic_tdata_ls_byte_reg[6] 
       (.C(i_clk),
        .CE(\r_rx_mic_tdata_ls_byte[7]_i_1_n_0 ),
        .D(r_rx_mic_tdata_ls_byte[6]),
        .Q(\r_rx_mic_tdata_ls_byte_reg_n_0_[6] ),
        .R(w_areset));
  FDRE \r_rx_mic_tdata_ls_byte_reg[7] 
       (.C(i_clk),
        .CE(\r_rx_mic_tdata_ls_byte[7]_i_1_n_0 ),
        .D(r_rx_mic_tdata_ls_byte[7]),
        .Q(\r_rx_mic_tdata_ls_byte_reg_n_0_[7] ),
        .R(w_areset));
  LUT2 #(
    .INIT(4'h2)) 
    \r_src_addr[1]_i_1 
       (.I0(\r_tx_fifo_tdata[7]_i_4_n_0 ),
        .I1(r_core_state[2]),
        .O(\r_src_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r_src_addr[24]_i_1 
       (.I0(r_core_state[0]),
        .I1(\r_tx_fifo_tdata[7]_i_4_n_0 ),
        .O(\r_src_addr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \r_src_addr[28]_i_1 
       (.I0(r_src_addr[25]),
        .I1(\r_tx_fifo_tdata[7]_i_4_n_0 ),
        .I2(r_core_state[0]),
        .O(r_src_addr[28]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \r_src_addr[33]_i_1 
       (.I0(\r_src_addr_reg_n_0_[25] ),
        .I1(\r_tx_fifo_tdata[7]_i_4_n_0 ),
        .I2(r_core_state[0]),
        .O(r_src_addr[33]));
  LUT6 #(
    .INIT(64'h20002C0020002000)) 
    \r_src_addr[44]_i_1 
       (.I0(r_core_state[0]),
        .I1(r_core_state[2]),
        .I2(r_core_state[1]),
        .I3(tx_fifo_TREADY),
        .I4(p_0_in[0]),
        .I5(r_dest_addr[2]),
        .O(r_src_addr_2));
  FDRE \r_src_addr_reg[17] 
       (.C(i_clk),
        .CE(r_src_addr_2),
        .D(r_src_addr[17]),
        .Q(r_src_addr[25]),
        .R(w_areset));
  FDSE \r_src_addr_reg[1] 
       (.C(i_clk),
        .CE(r_src_addr_2),
        .D(\r_src_addr[1]_i_1_n_0 ),
        .Q(r_src_addr[9]),
        .S(w_areset));
  FDSE \r_src_addr_reg[24] 
       (.C(i_clk),
        .CE(r_src_addr_2),
        .D(\r_src_addr[24]_i_1_n_0 ),
        .Q(r_src_addr[32]),
        .S(w_areset));
  FDRE \r_src_addr_reg[25] 
       (.C(i_clk),
        .CE(r_src_addr_2),
        .D(r_src_addr[25]),
        .Q(\r_src_addr_reg_n_0_[25] ),
        .R(w_areset));
  FDSE \r_src_addr_reg[28] 
       (.C(i_clk),
        .CE(r_src_addr_2),
        .D(r_src_addr[28]),
        .Q(r_src_addr[36]),
        .S(w_areset));
  FDRE \r_src_addr_reg[32] 
       (.C(i_clk),
        .CE(r_src_addr_2),
        .D(r_src_addr[32]),
        .Q(r_src_addr[40]),
        .R(w_areset));
  FDSE \r_src_addr_reg[33] 
       (.C(i_clk),
        .CE(r_src_addr_2),
        .D(r_src_addr[33]),
        .Q(r_src_addr[41]),
        .S(w_areset));
  FDRE \r_src_addr_reg[36] 
       (.C(i_clk),
        .CE(r_src_addr_2),
        .D(r_src_addr[36]),
        .Q(r_src_addr[44]),
        .R(w_areset));
  FDRE \r_src_addr_reg[40] 
       (.C(i_clk),
        .CE(r_src_addr_2),
        .D(r_src_addr[40]),
        .Q(\r_src_addr_reg_n_0_[40] ),
        .R(w_areset));
  FDRE \r_src_addr_reg[41] 
       (.C(i_clk),
        .CE(r_src_addr_2),
        .D(r_src_addr[41]),
        .Q(\r_src_addr_reg_n_0_[41] ),
        .R(w_areset));
  FDRE \r_src_addr_reg[44] 
       (.C(i_clk),
        .CE(r_src_addr_2),
        .D(r_src_addr[44]),
        .Q(\r_src_addr_reg_n_0_[44] ),
        .R(w_areset));
  FDRE \r_src_addr_reg[9] 
       (.C(i_clk),
        .CE(r_src_addr_2),
        .D(r_src_addr[9]),
        .Q(r_src_addr[17]),
        .R(w_areset));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    r_tlast_marker_counter_i_1
       (.I0(r_core_state[0]),
        .I1(r_core_state[1]),
        .I2(r_core_state[2]),
        .I3(r_tlast_marker_counter_reg_n_0),
        .O(r_tlast_marker_counter_i_1_n_0));
  FDRE r_tlast_marker_counter_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(r_tlast_marker_counter_i_1_n_0),
        .Q(r_tlast_marker_counter_reg_n_0),
        .R(w_areset));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    r_tlast_received_i_1
       (.I0(rx_mic_TLAST),
        .I1(r_core_state[2]),
        .O(r_tlast_received_i_1_n_0));
  FDRE r_tlast_received_reg
       (.C(i_clk),
        .CE(\r_rx_mic_tdata_ls_byte[7]_i_1_n_0 ),
        .D(r_tlast_received_i_1_n_0),
        .Q(r_tlast_received_reg_n_0),
        .R(w_areset));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \r_tx_fifo_tdata[0]_i_2 
       (.I0(\r_byte_count_reg_n_0_[8] ),
        .I1(\r_src_addr_reg_n_0_[40] ),
        .I2(r_core_state[0]),
        .I3(\r_tx_fifo_tdata[7]_i_4_n_0 ),
        .O(\r_tx_fifo_tdata[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \r_tx_fifo_tdata[1]_i_2 
       (.I0(r_dest_addr[40]),
        .I1(\r_tx_fifo_tdata[2]_i_2_n_0 ),
        .I2(\r_src_addr_reg_n_0_[41] ),
        .O(\r_tx_fifo_tdata[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hDFD5)) 
    \r_tx_fifo_tdata[2]_i_2 
       (.I0(\r_dest_addr[2]_i_2_n_0 ),
        .I1(r_core_state[0]),
        .I2(r_core_state[2]),
        .I3(r_core_state[1]),
        .O(\r_tx_fifo_tdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFEEEFEAAFE)) 
    \r_tx_fifo_tdata[3]_i_2 
       (.I0(\r_tx_fifo_tdata[7]_i_8_n_0 ),
        .I1(\r_byte_count_reg_n_0_[11] ),
        .I2(\r_tx_fifo_tdata[4]_i_4_n_0 ),
        .I3(r_core_state[0]),
        .I4(\r_tx_fifo_tdata[7]_i_4_n_0 ),
        .I5(r_src_addr[40]),
        .O(\r_tx_fifo_tdata[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8A88)) 
    \r_tx_fifo_tdata[3]_i_3 
       (.I0(r_core_state[2]),
        .I1(r_dest_addr[40]),
        .I2(\r_tx_fifo_tdata[2]_i_2_n_0 ),
        .I3(r_src_addr[40]),
        .O(\r_tx_fifo_tdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFFFEEEFEAAFE)) 
    \r_tx_fifo_tdata[4]_i_2 
       (.I0(\r_tx_fifo_tdata[7]_i_8_n_0 ),
        .I1(\r_byte_count_reg_n_0_[12] ),
        .I2(\r_tx_fifo_tdata[4]_i_4_n_0 ),
        .I3(r_core_state[0]),
        .I4(\r_tx_fifo_tdata[7]_i_4_n_0 ),
        .I5(\r_src_addr_reg_n_0_[44] ),
        .O(\r_tx_fifo_tdata[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \r_tx_fifo_tdata[4]_i_3 
       (.I0(r_core_state[2]),
        .I1(\r_src_addr_reg_n_0_[44] ),
        .I2(\r_tx_fifo_tdata[2]_i_2_n_0 ),
        .I3(p_0_in[0]),
        .O(\r_tx_fifo_tdata[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \r_tx_fifo_tdata[4]_i_4 
       (.I0(\r_tx_fifo_tdata[7]_i_9_n_0 ),
        .I1(\r_tx_fifo_tdata[7]_i_10_n_0 ),
        .I2(\r_tx_fifo_tdata[7]_i_11_n_0 ),
        .I3(\r_tx_fifo_tdata[7]_i_12_n_0 ),
        .O(\r_tx_fifo_tdata[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \r_tx_fifo_tdata[5]_i_2 
       (.I0(r_core_state[2]),
        .I1(\r_src_addr_reg_n_0_[40] ),
        .I2(\r_tx_fifo_tdata[2]_i_2_n_0 ),
        .I3(p_0_in[0]),
        .O(\r_tx_fifo_tdata[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \r_tx_fifo_tdata[5]_i_3 
       (.I0(\r_byte_count_reg_n_0_[13] ),
        .I1(\r_src_addr_reg_n_0_[40] ),
        .I2(r_core_state[0]),
        .I3(\r_tx_fifo_tdata[7]_i_4_n_0 ),
        .O(\r_tx_fifo_tdata[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \r_tx_fifo_tdata[5]_i_4 
       (.I0(\r_tx_fifo_tdata[7]_i_5_n_0 ),
        .I1(\r_src_addr_reg_n_0_[40] ),
        .I2(r_core_state[0]),
        .O(\r_tx_fifo_tdata[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \r_tx_fifo_tdata[7]_i_10 
       (.I0(\r_byte_count_reg_n_0_[2] ),
        .I1(\r_byte_count_reg_n_0_[1] ),
        .I2(\r_byte_count_reg_n_0_[14] ),
        .I3(\r_byte_count_reg_n_0_[15] ),
        .O(\r_tx_fifo_tdata[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_tx_fifo_tdata[7]_i_11 
       (.I0(\r_byte_count_reg_n_0_[7] ),
        .I1(\r_byte_count_reg_n_0_[4] ),
        .I2(\r_byte_count_reg_n_0_[3] ),
        .I3(\r_byte_count_reg_n_0_[0] ),
        .O(\r_tx_fifo_tdata[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_tx_fifo_tdata[7]_i_12 
       (.I0(\r_byte_count_reg_n_0_[11] ),
        .I1(\r_byte_count_reg_n_0_[8] ),
        .I2(\r_byte_count_reg_n_0_[13] ),
        .I3(\r_byte_count_reg_n_0_[12] ),
        .O(\r_tx_fifo_tdata[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0AE2)) 
    \r_tx_fifo_tdata[7]_i_2 
       (.I0(tx_fifo_TREADY),
        .I1(r_core_state[0]),
        .I2(r_core_state[2]),
        .I3(r_core_state[1]),
        .O(r_tx_fifo_tdata));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_tx_fifo_tdata[7]_i_4 
       (.I0(r_src_addr[17]),
        .I1(\r_src_addr_reg_n_0_[40] ),
        .I2(r_src_addr[32]),
        .I3(\r_src_addr_reg_n_0_[41] ),
        .I4(\r_tx_fifo_tdata[7]_i_6_n_0 ),
        .I5(\r_tx_fifo_tdata[7]_i_7_n_0 ),
        .O(\r_tx_fifo_tdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \r_tx_fifo_tdata[7]_i_5 
       (.I0(\r_tx_fifo_tdata[7]_i_8_n_0 ),
        .I1(\r_tx_fifo_tdata[7]_i_9_n_0 ),
        .I2(\r_tx_fifo_tdata[7]_i_10_n_0 ),
        .I3(\r_tx_fifo_tdata[7]_i_11_n_0 ),
        .I4(\r_tx_fifo_tdata[7]_i_12_n_0 ),
        .I5(r_core_state[0]),
        .O(\r_tx_fifo_tdata[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_tx_fifo_tdata[7]_i_6 
       (.I0(r_src_addr[25]),
        .I1(r_src_addr[36]),
        .I2(r_src_addr[41]),
        .I3(\r_src_addr_reg_n_0_[25] ),
        .O(\r_tx_fifo_tdata[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_tx_fifo_tdata[7]_i_7 
       (.I0(\r_src_addr_reg_n_0_[44] ),
        .I1(r_src_addr[40]),
        .I2(r_src_addr[44]),
        .I3(r_src_addr[9]),
        .O(\r_tx_fifo_tdata[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \r_tx_fifo_tdata[7]_i_8 
       (.I0(r_core_state[1]),
        .I1(r_core_state[2]),
        .I2(r_core_state[0]),
        .O(\r_tx_fifo_tdata[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_tx_fifo_tdata[7]_i_9 
       (.I0(\r_byte_count_reg_n_0_[6] ),
        .I1(\r_byte_count_reg_n_0_[5] ),
        .I2(\r_byte_count_reg_n_0_[10] ),
        .I3(\r_byte_count_reg_n_0_[9] ),
        .O(\r_tx_fifo_tdata[7]_i_9_n_0 ));
  FDRE \r_tx_fifo_tdata_reg[0] 
       (.C(i_clk),
        .CE(r_tx_fifo_tdata),
        .D(mem_n_8),
        .Q(tx_fifo_TDATA[0]),
        .R(w_areset));
  FDRE \r_tx_fifo_tdata_reg[1] 
       (.C(i_clk),
        .CE(r_tx_fifo_tdata),
        .D(mem_n_7),
        .Q(tx_fifo_TDATA[1]),
        .R(w_areset));
  FDRE \r_tx_fifo_tdata_reg[2] 
       (.C(i_clk),
        .CE(r_tx_fifo_tdata),
        .D(mem_n_6),
        .Q(tx_fifo_TDATA[2]),
        .R(w_areset));
  FDRE \r_tx_fifo_tdata_reg[3] 
       (.C(i_clk),
        .CE(r_tx_fifo_tdata),
        .D(mem_n_5),
        .Q(tx_fifo_TDATA[3]),
        .R(w_areset));
  FDRE \r_tx_fifo_tdata_reg[4] 
       (.C(i_clk),
        .CE(r_tx_fifo_tdata),
        .D(mem_n_4),
        .Q(tx_fifo_TDATA[4]),
        .R(w_areset));
  FDRE \r_tx_fifo_tdata_reg[5] 
       (.C(i_clk),
        .CE(r_tx_fifo_tdata),
        .D(mem_n_3),
        .Q(tx_fifo_TDATA[5]),
        .R(w_areset));
  FDRE \r_tx_fifo_tdata_reg[6] 
       (.C(i_clk),
        .CE(r_tx_fifo_tdata),
        .D(mem_n_2),
        .Q(tx_fifo_TDATA[6]),
        .R(w_areset));
  FDRE \r_tx_fifo_tdata_reg[7] 
       (.C(i_clk),
        .CE(r_tx_fifo_tdata),
        .D(mem_n_1),
        .Q(tx_fifo_TDATA[7]),
        .R(w_areset));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    r_tx_fifo_tlast_i_1
       (.I0(r_tx_fifo_tlast_i_2_n_0),
        .I1(\r_packet_size_reg_n_0_[0] ),
        .I2(r_tx_fifo_tlast_i_3_n_0),
        .I3(r_tx_fifo_tlast),
        .I4(r_tx_fifo_tlast_reg_0),
        .O(r_tx_fifo_tlast_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    r_tx_fifo_tlast_i_2
       (.I0(r_tx_fifo_tlast_i_5_n_0),
        .I1(\r_packet_size_reg_n_0_[15] ),
        .I2(\r_packet_size_reg_n_0_[14] ),
        .I3(\r_packet_size_reg_n_0_[13] ),
        .O(r_tx_fifo_tlast_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    r_tx_fifo_tlast_i_3
       (.I0(\r_packet_size_reg_n_0_[4] ),
        .I1(\r_packet_size_reg_n_0_[7] ),
        .I2(\r_packet_size_reg_n_0_[5] ),
        .I3(\r_packet_size_reg_n_0_[6] ),
        .I4(\r_packet_size_reg_n_0_[2] ),
        .I5(\r_packet_size_reg_n_0_[3] ),
        .O(r_tx_fifo_tlast_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    r_tx_fifo_tlast_i_4
       (.I0(r_core_state[2]),
        .I1(r_core_state[1]),
        .I2(r_core_state[0]),
        .I3(tx_fifo_TREADY),
        .O(r_tx_fifo_tlast));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    r_tx_fifo_tlast_i_5
       (.I0(\r_packet_size_reg_n_0_[12] ),
        .I1(\r_packet_size_reg_n_0_[11] ),
        .I2(\r_packet_size_reg_n_0_[1] ),
        .I3(\r_packet_size_reg_n_0_[10] ),
        .I4(\r_packet_size_reg_n_0_[8] ),
        .I5(\r_packet_size_reg_n_0_[9] ),
        .O(r_tx_fifo_tlast_i_5_n_0));
  FDRE r_tx_fifo_tlast_reg
       (.C(i_clk),
        .CE(1'b1),
        .D(r_tx_fifo_tlast_i_1_n_0),
        .Q(r_tx_fifo_tlast_reg_0),
        .R(w_areset));
  LUT3 #(
    .INIT(8'h04)) 
    rx_mic_TREADY_INST_0
       (.I0(r_core_state[2]),
        .I1(r_core_state[0]),
        .I2(r_core_state[1]),
        .O(rx_mic_TREADY));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h35)) 
    tx_fifo_TVALID_INST_0
       (.I0(r_core_state[0]),
        .I1(r_core_state[2]),
        .I2(r_core_state[1]),
        .O(tx_fifo_TVALID));
endmodule

module canteloupe_frame_generator_cust_0_0_memory
   (D,
    i_clk,
    i_aresetn,
    mem_reg,
    w_areset,
    ADDRARDADDR,
    out,
    Q,
    fifo_we,
    \r_tx_fifo_tdata_reg[7] ,
    r_core_state,
    \r_tx_fifo_tdata_reg[7]_0 ,
    \r_tx_fifo_tdata_reg[3] ,
    \r_tx_fifo_tdata_reg[3]_0 ,
    \r_tx_fifo_tdata_reg[3]_1 ,
    \r_tx_fifo_tdata_reg[4] ,
    \r_tx_fifo_tdata_reg[4]_0 ,
    \r_tx_fifo_tdata_reg[0] ,
    \r_tx_fifo_tdata_reg[0]_0 ,
    \r_tx_fifo_tdata_reg[0]_1 ,
    \r_tx_fifo_tdata_reg[5] ,
    \r_tx_fifo_tdata_reg[2] ,
    \r_tx_fifo_tdata_reg[2]_0 ,
    \r_tx_fifo_tdata_reg[1] ,
    \r_tx_fifo_tdata_reg[1]_0 ,
    \r_tx_fifo_tdata_reg[1]_1 );
  output [7:0]D;
  input i_clk;
  input i_aresetn;
  input mem_reg;
  input w_areset;
  input [11:0]ADDRARDADDR;
  input [11:0]out;
  input [7:0]Q;
  input fifo_we;
  input \r_tx_fifo_tdata_reg[7] ;
  input [2:0]r_core_state;
  input [3:0]\r_tx_fifo_tdata_reg[7]_0 ;
  input \r_tx_fifo_tdata_reg[3] ;
  input \r_tx_fifo_tdata_reg[3]_0 ;
  input \r_tx_fifo_tdata_reg[3]_1 ;
  input \r_tx_fifo_tdata_reg[4] ;
  input \r_tx_fifo_tdata_reg[4]_0 ;
  input \r_tx_fifo_tdata_reg[0] ;
  input \r_tx_fifo_tdata_reg[0]_0 ;
  input \r_tx_fifo_tdata_reg[0]_1 ;
  input \r_tx_fifo_tdata_reg[5] ;
  input [0:0]\r_tx_fifo_tdata_reg[2] ;
  input \r_tx_fifo_tdata_reg[2]_0 ;
  input [1:0]\r_tx_fifo_tdata_reg[1] ;
  input \r_tx_fifo_tdata_reg[1]_0 ;
  input \r_tx_fifo_tdata_reg[1]_1 ;

  wire [11:0]ADDRARDADDR;
  wire [7:0]D;
  wire [7:0]Q;
  wire fifo_we;
  wire i_aresetn;
  wire i_clk;
  wire mem_reg;
  wire [11:0]out;
  wire [2:0]r_core_state;
  wire \r_tx_fifo_tdata_reg[0] ;
  wire \r_tx_fifo_tdata_reg[0]_0 ;
  wire \r_tx_fifo_tdata_reg[0]_1 ;
  wire [1:0]\r_tx_fifo_tdata_reg[1] ;
  wire \r_tx_fifo_tdata_reg[1]_0 ;
  wire \r_tx_fifo_tdata_reg[1]_1 ;
  wire [0:0]\r_tx_fifo_tdata_reg[2] ;
  wire \r_tx_fifo_tdata_reg[2]_0 ;
  wire \r_tx_fifo_tdata_reg[3] ;
  wire \r_tx_fifo_tdata_reg[3]_0 ;
  wire \r_tx_fifo_tdata_reg[3]_1 ;
  wire \r_tx_fifo_tdata_reg[4] ;
  wire \r_tx_fifo_tdata_reg[4]_0 ;
  wire \r_tx_fifo_tdata_reg[5] ;
  wire \r_tx_fifo_tdata_reg[7] ;
  wire [3:0]\r_tx_fifo_tdata_reg[7]_0 ;
  wire w_areset;

  canteloupe_frame_generator_cust_0_0_tri_mode_ethernet_mac_2_bram_tdp tx_ramgen_i
       (.ADDRARDADDR(ADDRARDADDR),
        .D(D),
        .Q(Q),
        .fifo_we(fifo_we),
        .i_aresetn(i_aresetn),
        .i_clk(i_clk),
        .mem_reg_0(mem_reg),
        .out(out),
        .r_core_state(r_core_state),
        .\r_tx_fifo_tdata_reg[0] (\r_tx_fifo_tdata_reg[0] ),
        .\r_tx_fifo_tdata_reg[0]_0 (\r_tx_fifo_tdata_reg[0]_0 ),
        .\r_tx_fifo_tdata_reg[0]_1 (\r_tx_fifo_tdata_reg[0]_1 ),
        .\r_tx_fifo_tdata_reg[1] (\r_tx_fifo_tdata_reg[1] ),
        .\r_tx_fifo_tdata_reg[1]_0 (\r_tx_fifo_tdata_reg[1]_0 ),
        .\r_tx_fifo_tdata_reg[1]_1 (\r_tx_fifo_tdata_reg[1]_1 ),
        .\r_tx_fifo_tdata_reg[2] (\r_tx_fifo_tdata_reg[2] ),
        .\r_tx_fifo_tdata_reg[2]_0 (\r_tx_fifo_tdata_reg[2]_0 ),
        .\r_tx_fifo_tdata_reg[3] (\r_tx_fifo_tdata_reg[3] ),
        .\r_tx_fifo_tdata_reg[3]_0 (\r_tx_fifo_tdata_reg[3]_0 ),
        .\r_tx_fifo_tdata_reg[3]_1 (\r_tx_fifo_tdata_reg[3]_1 ),
        .\r_tx_fifo_tdata_reg[4] (\r_tx_fifo_tdata_reg[4] ),
        .\r_tx_fifo_tdata_reg[4]_0 (\r_tx_fifo_tdata_reg[4]_0 ),
        .\r_tx_fifo_tdata_reg[5] (\r_tx_fifo_tdata_reg[5] ),
        .\r_tx_fifo_tdata_reg[7] (\r_tx_fifo_tdata_reg[7] ),
        .\r_tx_fifo_tdata_reg[7]_0 (\r_tx_fifo_tdata_reg[7]_0 ),
        .w_areset(w_areset));
endmodule

module canteloupe_frame_generator_cust_0_0_read_address_pointer
   (i_aresetn_0,
    \r_num_cycles_without_valid_reg[15] ,
    \r_packet_size_reg[10] ,
    out,
    fifo_we,
    S,
    i_aresetn,
    \r_num_cycles_without_valid_reg[0] ,
    \r_num_cycles_without_valid_reg[15]_0 ,
    O,
    \r_num_cycles_without_valid_reg[8] ,
    \r_num_cycles_without_valid_reg[12] ,
    \r_num_cycles_without_valid_reg[15]_1 ,
    E,
    \FSM_sequential_r_core_state_reg[2] ,
    \FSM_sequential_r_core_state_reg[2]_0 ,
    \FSM_sequential_r_core_state_reg[2]_1 ,
    \FSM_sequential_r_core_state_reg[2]_2 ,
    rx_mic_TVALID,
    \FSM_sequential_r_core_state_reg[2]_3 ,
    \FSM_sequential_r_core_state_reg[2]_4 ,
    CO,
    ADDRARDADDR,
    tx_fifo_TREADY,
    \read_address_int_reg[11]_0 ,
    mem_reg,
    r_core_state,
    i_clk,
    \read_address_int_reg[11]_1 );
  output i_aresetn_0;
  output [15:0]\r_num_cycles_without_valid_reg[15] ;
  output \r_packet_size_reg[10] ;
  output [11:0]out;
  output fifo_we;
  output [1:0]S;
  input i_aresetn;
  input [0:0]\r_num_cycles_without_valid_reg[0] ;
  input \r_num_cycles_without_valid_reg[15]_0 ;
  input [3:0]O;
  input [3:0]\r_num_cycles_without_valid_reg[8] ;
  input [3:0]\r_num_cycles_without_valid_reg[12] ;
  input [2:0]\r_num_cycles_without_valid_reg[15]_1 ;
  input [0:0]E;
  input \FSM_sequential_r_core_state_reg[2] ;
  input \FSM_sequential_r_core_state_reg[2]_0 ;
  input [0:0]\FSM_sequential_r_core_state_reg[2]_1 ;
  input \FSM_sequential_r_core_state_reg[2]_2 ;
  input rx_mic_TVALID;
  input \FSM_sequential_r_core_state_reg[2]_3 ;
  input \FSM_sequential_r_core_state_reg[2]_4 ;
  input [0:0]CO;
  input [5:0]ADDRARDADDR;
  input tx_fifo_TREADY;
  input \read_address_int_reg[11]_0 ;
  input mem_reg;
  input [1:0]r_core_state;
  input i_clk;
  input \read_address_int_reg[11]_1 ;

  wire [5:0]ADDRARDADDR;
  wire [0:0]CO;
  wire [0:0]E;
  wire \FSM_sequential_r_core_state[2]_i_2_n_0 ;
  wire \FSM_sequential_r_core_state_reg[2] ;
  wire \FSM_sequential_r_core_state_reg[2]_0 ;
  wire [0:0]\FSM_sequential_r_core_state_reg[2]_1 ;
  wire \FSM_sequential_r_core_state_reg[2]_2 ;
  wire \FSM_sequential_r_core_state_reg[2]_3 ;
  wire \FSM_sequential_r_core_state_reg[2]_4 ;
  wire [3:0]O;
  wire [1:0]S;
  wire fifo_rd;
  wire fifo_we;
  wire i_aresetn;
  wire i_aresetn_0;
  wire i_clk;
  wire mem_reg;
  wire [11:0]out;
  wire [1:0]r_core_state;
  wire [0:0]\r_num_cycles_without_valid_reg[0] ;
  wire [3:0]\r_num_cycles_without_valid_reg[12] ;
  wire [15:0]\r_num_cycles_without_valid_reg[15] ;
  wire \r_num_cycles_without_valid_reg[15]_0 ;
  wire [2:0]\r_num_cycles_without_valid_reg[15]_1 ;
  wire [3:0]\r_num_cycles_without_valid_reg[8] ;
  wire \r_packet_size_reg[10] ;
  wire \read_address_int[0]_i_3_n_0 ;
  wire \read_address_int[0]_i_4_n_0 ;
  wire \read_address_int_reg[0]_i_2_n_0 ;
  wire \read_address_int_reg[0]_i_2_n_1 ;
  wire \read_address_int_reg[0]_i_2_n_2 ;
  wire \read_address_int_reg[0]_i_2_n_3 ;
  wire \read_address_int_reg[0]_i_2_n_4 ;
  wire \read_address_int_reg[0]_i_2_n_5 ;
  wire \read_address_int_reg[0]_i_2_n_6 ;
  wire \read_address_int_reg[0]_i_2_n_7 ;
  wire \read_address_int_reg[11]_0 ;
  wire \read_address_int_reg[11]_1 ;
  wire \read_address_int_reg[4]_i_1_n_0 ;
  wire \read_address_int_reg[4]_i_1_n_1 ;
  wire \read_address_int_reg[4]_i_1_n_2 ;
  wire \read_address_int_reg[4]_i_1_n_3 ;
  wire \read_address_int_reg[4]_i_1_n_4 ;
  wire \read_address_int_reg[4]_i_1_n_5 ;
  wire \read_address_int_reg[4]_i_1_n_6 ;
  wire \read_address_int_reg[4]_i_1_n_7 ;
  wire \read_address_int_reg[8]_i_1_n_1 ;
  wire \read_address_int_reg[8]_i_1_n_2 ;
  wire \read_address_int_reg[8]_i_1_n_3 ;
  wire \read_address_int_reg[8]_i_1_n_4 ;
  wire \read_address_int_reg[8]_i_1_n_5 ;
  wire \read_address_int_reg[8]_i_1_n_6 ;
  wire \read_address_int_reg[8]_i_1_n_7 ;
  wire rx_mic_TVALID;
  wire tx_fifo_TREADY;
  wire [3:3]\NLW_read_address_int_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8F8F8F8F888F8888)) 
    \FSM_sequential_r_core_state[2]_i_1 
       (.I0(\FSM_sequential_r_core_state[2]_i_2_n_0 ),
        .I1(E),
        .I2(\FSM_sequential_r_core_state_reg[2] ),
        .I3(\FSM_sequential_r_core_state_reg[2]_0 ),
        .I4(\FSM_sequential_r_core_state_reg[2]_1 ),
        .I5(\FSM_sequential_r_core_state_reg[2]_2 ),
        .O(\r_packet_size_reg[10] ));
  LUT6 #(
    .INIT(64'hFBAAFBFBFBFBFBAA)) 
    \FSM_sequential_r_core_state[2]_i_2 
       (.I0(rx_mic_TVALID),
        .I1(\FSM_sequential_r_core_state_reg[2]_3 ),
        .I2(\FSM_sequential_r_core_state_reg[2]_4 ),
        .I3(CO),
        .I4(out[11]),
        .I5(ADDRARDADDR[5]),
        .O(\FSM_sequential_r_core_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    address_equal1_carry_i_1
       (.I0(out[10]),
        .I1(ADDRARDADDR[4]),
        .I2(out[9]),
        .I3(ADDRARDADDR[3]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    address_equal1_carry_i_4
       (.I0(out[0]),
        .I1(ADDRARDADDR[0]),
        .I2(ADDRARDADDR[2]),
        .I3(out[2]),
        .I4(ADDRARDADDR[1]),
        .I5(out[1]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'hB)) 
    mem_reg_i_1
       (.I0(fifo_rd),
        .I1(i_aresetn),
        .O(i_aresetn_0));
  LUT4 #(
    .INIT(16'hA88A)) 
    mem_reg_i_2
       (.I0(mem_reg),
        .I1(CO),
        .I2(ADDRARDADDR[5]),
        .I3(out[11]),
        .O(fifo_we));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \r_num_cycles_without_valid[0]_i_1 
       (.I0(\r_num_cycles_without_valid_reg[0] ),
        .I1(\r_num_cycles_without_valid_reg[15]_0 ),
        .I2(\FSM_sequential_r_core_state[2]_i_2_n_0 ),
        .O(\r_num_cycles_without_valid_reg[15] [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r_num_cycles_without_valid[10]_i_1 
       (.I0(\r_num_cycles_without_valid_reg[12] [1]),
        .I1(\r_num_cycles_without_valid_reg[15]_0 ),
        .I2(\FSM_sequential_r_core_state[2]_i_2_n_0 ),
        .O(\r_num_cycles_without_valid_reg[15] [10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r_num_cycles_without_valid[11]_i_1 
       (.I0(\r_num_cycles_without_valid_reg[12] [2]),
        .I1(\r_num_cycles_without_valid_reg[15]_0 ),
        .I2(\FSM_sequential_r_core_state[2]_i_2_n_0 ),
        .O(\r_num_cycles_without_valid_reg[15] [11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r_num_cycles_without_valid[12]_i_1 
       (.I0(\r_num_cycles_without_valid_reg[12] [3]),
        .I1(\r_num_cycles_without_valid_reg[15]_0 ),
        .I2(\FSM_sequential_r_core_state[2]_i_2_n_0 ),
        .O(\r_num_cycles_without_valid_reg[15] [12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r_num_cycles_without_valid[13]_i_1 
       (.I0(\r_num_cycles_without_valid_reg[15]_1 [0]),
        .I1(\r_num_cycles_without_valid_reg[15]_0 ),
        .I2(\FSM_sequential_r_core_state[2]_i_2_n_0 ),
        .O(\r_num_cycles_without_valid_reg[15] [13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r_num_cycles_without_valid[14]_i_1 
       (.I0(\r_num_cycles_without_valid_reg[15]_1 [1]),
        .I1(\r_num_cycles_without_valid_reg[15]_0 ),
        .I2(\FSM_sequential_r_core_state[2]_i_2_n_0 ),
        .O(\r_num_cycles_without_valid_reg[15] [14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r_num_cycles_without_valid[15]_i_1 
       (.I0(\r_num_cycles_without_valid_reg[15]_1 [2]),
        .I1(\r_num_cycles_without_valid_reg[15]_0 ),
        .I2(\FSM_sequential_r_core_state[2]_i_2_n_0 ),
        .O(\r_num_cycles_without_valid_reg[15] [15]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r_num_cycles_without_valid[1]_i_1 
       (.I0(O[0]),
        .I1(\r_num_cycles_without_valid_reg[15]_0 ),
        .I2(\FSM_sequential_r_core_state[2]_i_2_n_0 ),
        .O(\r_num_cycles_without_valid_reg[15] [1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r_num_cycles_without_valid[2]_i_1 
       (.I0(O[1]),
        .I1(\r_num_cycles_without_valid_reg[15]_0 ),
        .I2(\FSM_sequential_r_core_state[2]_i_2_n_0 ),
        .O(\r_num_cycles_without_valid_reg[15] [2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r_num_cycles_without_valid[3]_i_1 
       (.I0(O[2]),
        .I1(\r_num_cycles_without_valid_reg[15]_0 ),
        .I2(\FSM_sequential_r_core_state[2]_i_2_n_0 ),
        .O(\r_num_cycles_without_valid_reg[15] [3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r_num_cycles_without_valid[4]_i_1 
       (.I0(O[3]),
        .I1(\r_num_cycles_without_valid_reg[15]_0 ),
        .I2(\FSM_sequential_r_core_state[2]_i_2_n_0 ),
        .O(\r_num_cycles_without_valid_reg[15] [4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r_num_cycles_without_valid[5]_i_1 
       (.I0(\r_num_cycles_without_valid_reg[8] [0]),
        .I1(\r_num_cycles_without_valid_reg[15]_0 ),
        .I2(\FSM_sequential_r_core_state[2]_i_2_n_0 ),
        .O(\r_num_cycles_without_valid_reg[15] [5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r_num_cycles_without_valid[6]_i_1 
       (.I0(\r_num_cycles_without_valid_reg[8] [1]),
        .I1(\r_num_cycles_without_valid_reg[15]_0 ),
        .I2(\FSM_sequential_r_core_state[2]_i_2_n_0 ),
        .O(\r_num_cycles_without_valid_reg[15] [6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r_num_cycles_without_valid[7]_i_1 
       (.I0(\r_num_cycles_without_valid_reg[8] [2]),
        .I1(\r_num_cycles_without_valid_reg[15]_0 ),
        .I2(\FSM_sequential_r_core_state[2]_i_2_n_0 ),
        .O(\r_num_cycles_without_valid_reg[15] [7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r_num_cycles_without_valid[8]_i_1 
       (.I0(\r_num_cycles_without_valid_reg[8] [3]),
        .I1(\r_num_cycles_without_valid_reg[15]_0 ),
        .I2(\FSM_sequential_r_core_state[2]_i_2_n_0 ),
        .O(\r_num_cycles_without_valid_reg[15] [8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r_num_cycles_without_valid[9]_i_1 
       (.I0(\r_num_cycles_without_valid_reg[12] [0]),
        .I1(\r_num_cycles_without_valid_reg[15]_0 ),
        .I2(\FSM_sequential_r_core_state[2]_i_2_n_0 ),
        .O(\r_num_cycles_without_valid_reg[15] [9]));
  LUT6 #(
    .INIT(64'h0000F60000000000)) 
    \read_address_int[0]_i_1 
       (.I0(ADDRARDADDR[5]),
        .I1(out[11]),
        .I2(CO),
        .I3(tx_fifo_TREADY),
        .I4(\read_address_int_reg[11]_0 ),
        .I5(\read_address_int[0]_i_3_n_0 ),
        .O(fifo_rd));
  LUT2 #(
    .INIT(4'h1)) 
    \read_address_int[0]_i_3 
       (.I0(r_core_state[0]),
        .I1(r_core_state[1]),
        .O(\read_address_int[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_address_int[0]_i_4 
       (.I0(out[0]),
        .O(\read_address_int[0]_i_4_n_0 ));
  FDCE \read_address_int_reg[0] 
       (.C(i_clk),
        .CE(fifo_rd),
        .CLR(\read_address_int_reg[11]_1 ),
        .D(\read_address_int_reg[0]_i_2_n_7 ),
        .Q(out[0]));
  CARRY4 \read_address_int_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\read_address_int_reg[0]_i_2_n_0 ,\read_address_int_reg[0]_i_2_n_1 ,\read_address_int_reg[0]_i_2_n_2 ,\read_address_int_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\read_address_int_reg[0]_i_2_n_4 ,\read_address_int_reg[0]_i_2_n_5 ,\read_address_int_reg[0]_i_2_n_6 ,\read_address_int_reg[0]_i_2_n_7 }),
        .S({out[3:1],\read_address_int[0]_i_4_n_0 }));
  FDCE \read_address_int_reg[10] 
       (.C(i_clk),
        .CE(fifo_rd),
        .CLR(\read_address_int_reg[11]_1 ),
        .D(\read_address_int_reg[8]_i_1_n_5 ),
        .Q(out[10]));
  FDCE \read_address_int_reg[11] 
       (.C(i_clk),
        .CE(fifo_rd),
        .CLR(\read_address_int_reg[11]_1 ),
        .D(\read_address_int_reg[8]_i_1_n_4 ),
        .Q(out[11]));
  FDCE \read_address_int_reg[1] 
       (.C(i_clk),
        .CE(fifo_rd),
        .CLR(\read_address_int_reg[11]_1 ),
        .D(\read_address_int_reg[0]_i_2_n_6 ),
        .Q(out[1]));
  FDCE \read_address_int_reg[2] 
       (.C(i_clk),
        .CE(fifo_rd),
        .CLR(\read_address_int_reg[11]_1 ),
        .D(\read_address_int_reg[0]_i_2_n_5 ),
        .Q(out[2]));
  FDCE \read_address_int_reg[3] 
       (.C(i_clk),
        .CE(fifo_rd),
        .CLR(\read_address_int_reg[11]_1 ),
        .D(\read_address_int_reg[0]_i_2_n_4 ),
        .Q(out[3]));
  FDCE \read_address_int_reg[4] 
       (.C(i_clk),
        .CE(fifo_rd),
        .CLR(\read_address_int_reg[11]_1 ),
        .D(\read_address_int_reg[4]_i_1_n_7 ),
        .Q(out[4]));
  CARRY4 \read_address_int_reg[4]_i_1 
       (.CI(\read_address_int_reg[0]_i_2_n_0 ),
        .CO({\read_address_int_reg[4]_i_1_n_0 ,\read_address_int_reg[4]_i_1_n_1 ,\read_address_int_reg[4]_i_1_n_2 ,\read_address_int_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_address_int_reg[4]_i_1_n_4 ,\read_address_int_reg[4]_i_1_n_5 ,\read_address_int_reg[4]_i_1_n_6 ,\read_address_int_reg[4]_i_1_n_7 }),
        .S(out[7:4]));
  FDCE \read_address_int_reg[5] 
       (.C(i_clk),
        .CE(fifo_rd),
        .CLR(\read_address_int_reg[11]_1 ),
        .D(\read_address_int_reg[4]_i_1_n_6 ),
        .Q(out[5]));
  FDCE \read_address_int_reg[6] 
       (.C(i_clk),
        .CE(fifo_rd),
        .CLR(\read_address_int_reg[11]_1 ),
        .D(\read_address_int_reg[4]_i_1_n_5 ),
        .Q(out[6]));
  FDCE \read_address_int_reg[7] 
       (.C(i_clk),
        .CE(fifo_rd),
        .CLR(\read_address_int_reg[11]_1 ),
        .D(\read_address_int_reg[4]_i_1_n_4 ),
        .Q(out[7]));
  FDCE \read_address_int_reg[8] 
       (.C(i_clk),
        .CE(fifo_rd),
        .CLR(\read_address_int_reg[11]_1 ),
        .D(\read_address_int_reg[8]_i_1_n_7 ),
        .Q(out[8]));
  CARRY4 \read_address_int_reg[8]_i_1 
       (.CI(\read_address_int_reg[4]_i_1_n_0 ),
        .CO({\NLW_read_address_int_reg[8]_i_1_CO_UNCONNECTED [3],\read_address_int_reg[8]_i_1_n_1 ,\read_address_int_reg[8]_i_1_n_2 ,\read_address_int_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_address_int_reg[8]_i_1_n_4 ,\read_address_int_reg[8]_i_1_n_5 ,\read_address_int_reg[8]_i_1_n_6 ,\read_address_int_reg[8]_i_1_n_7 }),
        .S(out[11:8]));
  FDCE \read_address_int_reg[9] 
       (.C(i_clk),
        .CE(fifo_rd),
        .CLR(\read_address_int_reg[11]_1 ),
        .D(\read_address_int_reg[8]_i_1_n_6 ),
        .Q(out[9]));
endmodule

module canteloupe_frame_generator_cust_0_0_tri_mode_ethernet_mac_2_bram_tdp
   (D,
    i_clk,
    i_aresetn,
    mem_reg_0,
    w_areset,
    ADDRARDADDR,
    out,
    Q,
    fifo_we,
    \r_tx_fifo_tdata_reg[7] ,
    r_core_state,
    \r_tx_fifo_tdata_reg[7]_0 ,
    \r_tx_fifo_tdata_reg[3] ,
    \r_tx_fifo_tdata_reg[3]_0 ,
    \r_tx_fifo_tdata_reg[3]_1 ,
    \r_tx_fifo_tdata_reg[4] ,
    \r_tx_fifo_tdata_reg[4]_0 ,
    \r_tx_fifo_tdata_reg[0] ,
    \r_tx_fifo_tdata_reg[0]_0 ,
    \r_tx_fifo_tdata_reg[0]_1 ,
    \r_tx_fifo_tdata_reg[5] ,
    \r_tx_fifo_tdata_reg[2] ,
    \r_tx_fifo_tdata_reg[2]_0 ,
    \r_tx_fifo_tdata_reg[1] ,
    \r_tx_fifo_tdata_reg[1]_0 ,
    \r_tx_fifo_tdata_reg[1]_1 );
  output [7:0]D;
  input i_clk;
  input i_aresetn;
  input mem_reg_0;
  input w_areset;
  input [11:0]ADDRARDADDR;
  input [11:0]out;
  input [7:0]Q;
  input fifo_we;
  input \r_tx_fifo_tdata_reg[7] ;
  input [2:0]r_core_state;
  input [3:0]\r_tx_fifo_tdata_reg[7]_0 ;
  input \r_tx_fifo_tdata_reg[3] ;
  input \r_tx_fifo_tdata_reg[3]_0 ;
  input \r_tx_fifo_tdata_reg[3]_1 ;
  input \r_tx_fifo_tdata_reg[4] ;
  input \r_tx_fifo_tdata_reg[4]_0 ;
  input \r_tx_fifo_tdata_reg[0] ;
  input \r_tx_fifo_tdata_reg[0]_0 ;
  input \r_tx_fifo_tdata_reg[0]_1 ;
  input \r_tx_fifo_tdata_reg[5] ;
  input [0:0]\r_tx_fifo_tdata_reg[2] ;
  input \r_tx_fifo_tdata_reg[2]_0 ;
  input [1:0]\r_tx_fifo_tdata_reg[1] ;
  input \r_tx_fifo_tdata_reg[1]_0 ;
  input \r_tx_fifo_tdata_reg[1]_1 ;

  wire [11:0]ADDRARDADDR;
  wire [7:0]D;
  wire [7:0]Q;
  wire fifo_we;
  wire i_aresetn;
  wire i_clk;
  wire mem_reg_0;
  wire [11:0]out;
  wire [2:0]r_core_state;
  wire \r_tx_fifo_tdata[1]_i_3_n_0 ;
  wire \r_tx_fifo_tdata[2]_i_3_n_0 ;
  wire \r_tx_fifo_tdata_reg[0] ;
  wire \r_tx_fifo_tdata_reg[0]_0 ;
  wire \r_tx_fifo_tdata_reg[0]_1 ;
  wire [1:0]\r_tx_fifo_tdata_reg[1] ;
  wire \r_tx_fifo_tdata_reg[1]_0 ;
  wire \r_tx_fifo_tdata_reg[1]_1 ;
  wire [0:0]\r_tx_fifo_tdata_reg[2] ;
  wire \r_tx_fifo_tdata_reg[2]_0 ;
  wire \r_tx_fifo_tdata_reg[3] ;
  wire \r_tx_fifo_tdata_reg[3]_0 ;
  wire \r_tx_fifo_tdata_reg[3]_1 ;
  wire \r_tx_fifo_tdata_reg[4] ;
  wire \r_tx_fifo_tdata_reg[4]_0 ;
  wire \r_tx_fifo_tdata_reg[5] ;
  wire \r_tx_fifo_tdata_reg[7] ;
  wire [3:0]\r_tx_fifo_tdata_reg[7]_0 ;
  wire w_areset;
  wire [7:0]w_fifo_data_out;
  wire NLW_mem_reg_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_RDADDRECC_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "4095" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,out,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(i_clk),
        .CLKBWRCLK(i_clk),
        .DBITERR(NLW_mem_reg_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(NLW_mem_reg_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_DOBDO_UNCONNECTED[31:8],w_fifo_data_out}),
        .DOPADOP(NLW_mem_reg_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(i_aresetn),
        .ENBWREN(mem_reg_0),
        .INJECTDBITERR(NLW_mem_reg_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(w_areset),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_SBITERR_UNCONNECTED),
        .WEA({fifo_we,fifo_we,fifo_we,fifo_we}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT6 #(
    .INIT(64'hBABBBABBBABBAAAA)) 
    \r_tx_fifo_tdata[0]_i_1 
       (.I0(\r_tx_fifo_tdata_reg[0] ),
        .I1(r_core_state[2]),
        .I2(w_fifo_data_out[0]),
        .I3(\r_tx_fifo_tdata_reg[3] ),
        .I4(\r_tx_fifo_tdata_reg[0]_0 ),
        .I5(\r_tx_fifo_tdata_reg[0]_1 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hBBB888B8)) 
    \r_tx_fifo_tdata[1]_i_1 
       (.I0(\r_tx_fifo_tdata_reg[1]_1 ),
        .I1(r_core_state[2]),
        .I2(w_fifo_data_out[1]),
        .I3(r_core_state[1]),
        .I4(\r_tx_fifo_tdata[1]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hEFAFEFA0EFA0EFA0)) 
    \r_tx_fifo_tdata[1]_i_3 
       (.I0(\r_tx_fifo_tdata_reg[1] [1]),
        .I1(\r_tx_fifo_tdata_reg[7] ),
        .I2(r_core_state[0]),
        .I3(\r_tx_fifo_tdata_reg[7]_0 [0]),
        .I4(\r_tx_fifo_tdata_reg[1]_0 ),
        .I5(w_fifo_data_out[1]),
        .O(\r_tx_fifo_tdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \r_tx_fifo_tdata[2]_i_1 
       (.I0(\r_tx_fifo_tdata_reg[2] ),
        .I1(\r_tx_fifo_tdata_reg[2]_0 ),
        .I2(\r_tx_fifo_tdata_reg[1] [0]),
        .I3(r_core_state[2]),
        .I4(\r_tx_fifo_tdata[2]_i_3_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFF0000EACAEACA)) 
    \r_tx_fifo_tdata[2]_i_3 
       (.I0(\r_tx_fifo_tdata_reg[7]_0 [1]),
        .I1(\r_tx_fifo_tdata_reg[1] [0]),
        .I2(r_core_state[0]),
        .I3(\r_tx_fifo_tdata_reg[7] ),
        .I4(w_fifo_data_out[2]),
        .I5(\r_tx_fifo_tdata_reg[3] ),
        .O(\r_tx_fifo_tdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4500)) 
    \r_tx_fifo_tdata[3]_i_1 
       (.I0(r_core_state[2]),
        .I1(w_fifo_data_out[3]),
        .I2(\r_tx_fifo_tdata_reg[3] ),
        .I3(\r_tx_fifo_tdata_reg[3]_0 ),
        .I4(\r_tx_fifo_tdata_reg[3]_1 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFFF4500)) 
    \r_tx_fifo_tdata[4]_i_1 
       (.I0(r_core_state[2]),
        .I1(w_fifo_data_out[4]),
        .I2(\r_tx_fifo_tdata_reg[3] ),
        .I3(\r_tx_fifo_tdata_reg[4] ),
        .I4(\r_tx_fifo_tdata_reg[4]_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hBABBBABBBABBAAAA)) 
    \r_tx_fifo_tdata[5]_i_1 
       (.I0(\r_tx_fifo_tdata_reg[0] ),
        .I1(r_core_state[2]),
        .I2(w_fifo_data_out[5]),
        .I3(\r_tx_fifo_tdata_reg[3] ),
        .I4(\r_tx_fifo_tdata_reg[5] ),
        .I5(\r_tx_fifo_tdata_reg[0]_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h00000000FFB000B0)) 
    \r_tx_fifo_tdata[6]_i_1 
       (.I0(\r_tx_fifo_tdata_reg[7] ),
        .I1(r_core_state[0]),
        .I2(\r_tx_fifo_tdata_reg[7]_0 [2]),
        .I3(\r_tx_fifo_tdata_reg[3] ),
        .I4(w_fifo_data_out[6]),
        .I5(r_core_state[2]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h00000000FFB000B0)) 
    \r_tx_fifo_tdata[7]_i_3 
       (.I0(\r_tx_fifo_tdata_reg[7] ),
        .I1(r_core_state[0]),
        .I2(\r_tx_fifo_tdata_reg[7]_0 [3]),
        .I3(\r_tx_fifo_tdata_reg[3] ),
        .I4(w_fifo_data_out[7]),
        .I5(r_core_state[2]),
        .O(D[7]));
endmodule

module canteloupe_frame_generator_cust_0_0_write_address_pointer
   (ADDRARDADDR,
    i_aresetn_0,
    S,
    fifo_we,
    i_clk,
    i_aresetn,
    out);
  output [11:0]ADDRARDADDR;
  output i_aresetn_0;
  output [1:0]S;
  input fifo_we;
  input i_clk;
  input i_aresetn;
  input [5:0]out;

  wire [11:0]ADDRARDADDR;
  wire [1:0]S;
  wire fifo_we;
  wire i_aresetn;
  wire i_aresetn_0;
  wire i_clk;
  wire [5:0]out;
  wire \write_address_int[0]_i_2_n_0 ;
  wire \write_address_int_reg[0]_i_1_n_0 ;
  wire \write_address_int_reg[0]_i_1_n_1 ;
  wire \write_address_int_reg[0]_i_1_n_2 ;
  wire \write_address_int_reg[0]_i_1_n_3 ;
  wire \write_address_int_reg[0]_i_1_n_4 ;
  wire \write_address_int_reg[0]_i_1_n_5 ;
  wire \write_address_int_reg[0]_i_1_n_6 ;
  wire \write_address_int_reg[0]_i_1_n_7 ;
  wire \write_address_int_reg[4]_i_1_n_0 ;
  wire \write_address_int_reg[4]_i_1_n_1 ;
  wire \write_address_int_reg[4]_i_1_n_2 ;
  wire \write_address_int_reg[4]_i_1_n_3 ;
  wire \write_address_int_reg[4]_i_1_n_4 ;
  wire \write_address_int_reg[4]_i_1_n_5 ;
  wire \write_address_int_reg[4]_i_1_n_6 ;
  wire \write_address_int_reg[4]_i_1_n_7 ;
  wire \write_address_int_reg[8]_i_1_n_1 ;
  wire \write_address_int_reg[8]_i_1_n_2 ;
  wire \write_address_int_reg[8]_i_1_n_3 ;
  wire \write_address_int_reg[8]_i_1_n_4 ;
  wire \write_address_int_reg[8]_i_1_n_5 ;
  wire \write_address_int_reg[8]_i_1_n_6 ;
  wire \write_address_int_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_write_address_int_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h9009000000009009)) 
    address_equal1_carry_i_2
       (.I0(ADDRARDADDR[6]),
        .I1(out[3]),
        .I2(ADDRARDADDR[7]),
        .I3(out[4]),
        .I4(out[5]),
        .I5(ADDRARDADDR[8]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    address_equal1_carry_i_3
       (.I0(ADDRARDADDR[3]),
        .I1(out[0]),
        .I2(ADDRARDADDR[4]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(ADDRARDADDR[5]),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \r_tx_fifo_tdata[7]_i_1 
       (.I0(i_aresetn),
        .O(i_aresetn_0));
  LUT1 #(
    .INIT(2'h1)) 
    \write_address_int[0]_i_2 
       (.I0(ADDRARDADDR[0]),
        .O(\write_address_int[0]_i_2_n_0 ));
  FDCE \write_address_int_reg[0] 
       (.C(i_clk),
        .CE(fifo_we),
        .CLR(i_aresetn_0),
        .D(\write_address_int_reg[0]_i_1_n_7 ),
        .Q(ADDRARDADDR[0]));
  CARRY4 \write_address_int_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\write_address_int_reg[0]_i_1_n_0 ,\write_address_int_reg[0]_i_1_n_1 ,\write_address_int_reg[0]_i_1_n_2 ,\write_address_int_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\write_address_int_reg[0]_i_1_n_4 ,\write_address_int_reg[0]_i_1_n_5 ,\write_address_int_reg[0]_i_1_n_6 ,\write_address_int_reg[0]_i_1_n_7 }),
        .S({ADDRARDADDR[3:1],\write_address_int[0]_i_2_n_0 }));
  FDCE \write_address_int_reg[10] 
       (.C(i_clk),
        .CE(fifo_we),
        .CLR(i_aresetn_0),
        .D(\write_address_int_reg[8]_i_1_n_5 ),
        .Q(ADDRARDADDR[10]));
  FDCE \write_address_int_reg[11] 
       (.C(i_clk),
        .CE(fifo_we),
        .CLR(i_aresetn_0),
        .D(\write_address_int_reg[8]_i_1_n_4 ),
        .Q(ADDRARDADDR[11]));
  FDCE \write_address_int_reg[1] 
       (.C(i_clk),
        .CE(fifo_we),
        .CLR(i_aresetn_0),
        .D(\write_address_int_reg[0]_i_1_n_6 ),
        .Q(ADDRARDADDR[1]));
  FDCE \write_address_int_reg[2] 
       (.C(i_clk),
        .CE(fifo_we),
        .CLR(i_aresetn_0),
        .D(\write_address_int_reg[0]_i_1_n_5 ),
        .Q(ADDRARDADDR[2]));
  FDCE \write_address_int_reg[3] 
       (.C(i_clk),
        .CE(fifo_we),
        .CLR(i_aresetn_0),
        .D(\write_address_int_reg[0]_i_1_n_4 ),
        .Q(ADDRARDADDR[3]));
  FDCE \write_address_int_reg[4] 
       (.C(i_clk),
        .CE(fifo_we),
        .CLR(i_aresetn_0),
        .D(\write_address_int_reg[4]_i_1_n_7 ),
        .Q(ADDRARDADDR[4]));
  CARRY4 \write_address_int_reg[4]_i_1 
       (.CI(\write_address_int_reg[0]_i_1_n_0 ),
        .CO({\write_address_int_reg[4]_i_1_n_0 ,\write_address_int_reg[4]_i_1_n_1 ,\write_address_int_reg[4]_i_1_n_2 ,\write_address_int_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_address_int_reg[4]_i_1_n_4 ,\write_address_int_reg[4]_i_1_n_5 ,\write_address_int_reg[4]_i_1_n_6 ,\write_address_int_reg[4]_i_1_n_7 }),
        .S(ADDRARDADDR[7:4]));
  FDCE \write_address_int_reg[5] 
       (.C(i_clk),
        .CE(fifo_we),
        .CLR(i_aresetn_0),
        .D(\write_address_int_reg[4]_i_1_n_6 ),
        .Q(ADDRARDADDR[5]));
  FDCE \write_address_int_reg[6] 
       (.C(i_clk),
        .CE(fifo_we),
        .CLR(i_aresetn_0),
        .D(\write_address_int_reg[4]_i_1_n_5 ),
        .Q(ADDRARDADDR[6]));
  FDCE \write_address_int_reg[7] 
       (.C(i_clk),
        .CE(fifo_we),
        .CLR(i_aresetn_0),
        .D(\write_address_int_reg[4]_i_1_n_4 ),
        .Q(ADDRARDADDR[7]));
  FDCE \write_address_int_reg[8] 
       (.C(i_clk),
        .CE(fifo_we),
        .CLR(i_aresetn_0),
        .D(\write_address_int_reg[8]_i_1_n_7 ),
        .Q(ADDRARDADDR[8]));
  CARRY4 \write_address_int_reg[8]_i_1 
       (.CI(\write_address_int_reg[4]_i_1_n_0 ),
        .CO({\NLW_write_address_int_reg[8]_i_1_CO_UNCONNECTED [3],\write_address_int_reg[8]_i_1_n_1 ,\write_address_int_reg[8]_i_1_n_2 ,\write_address_int_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_address_int_reg[8]_i_1_n_4 ,\write_address_int_reg[8]_i_1_n_5 ,\write_address_int_reg[8]_i_1_n_6 ,\write_address_int_reg[8]_i_1_n_7 }),
        .S(ADDRARDADDR[11:8]));
  FDCE \write_address_int_reg[9] 
       (.C(i_clk),
        .CE(fifo_we),
        .CLR(i_aresetn_0),
        .D(\write_address_int_reg[8]_i_1_n_6 ),
        .Q(ADDRARDADDR[9]));
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
