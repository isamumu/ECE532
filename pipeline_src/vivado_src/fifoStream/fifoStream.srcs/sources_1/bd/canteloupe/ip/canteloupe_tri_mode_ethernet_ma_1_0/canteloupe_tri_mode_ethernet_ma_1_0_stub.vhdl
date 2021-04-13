-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
-- Date        : Wed Mar 31 02:19:54 2021
-- Host        : BA3145WS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_tri_mode_ethernet_ma_1_0/canteloupe_tri_mode_ethernet_ma_1_0_stub.vhdl
-- Design      : canteloupe_tri_mode_ethernet_ma_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity canteloupe_tri_mode_ethernet_ma_1_0 is
  Port ( 
    mdio : inout STD_LOGIC;
    mdc : out STD_LOGIC;
    tx_axis_fifo_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_axis_fifo_tvalid : in STD_LOGIC;
    tx_axis_fifo_tlast : in STD_LOGIC;
    tx_axis_fifo_tready : out STD_LOGIC;
    rx_axis_fifo_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_axis_fifo_tvalid : out STD_LOGIC;
    rx_axis_fifo_tlast : out STD_LOGIC;
    rx_axis_fifo_tready : in STD_LOGIC;
    glbl_rstn : in STD_LOGIC;
    gtx_clk_bufg : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mii_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mii_tx_en : out STD_LOGIC;
    mii_tx_er : out STD_LOGIC;
    mii_rxd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mii_rx_dv : in STD_LOGIC;
    mii_rx_er : in STD_LOGIC;
    mii_rx_clk : in STD_LOGIC;
    mii_tx_clk : in STD_LOGIC
  );

end canteloupe_tri_mode_ethernet_ma_1_0;

architecture stub of canteloupe_tri_mode_ethernet_ma_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "mdio,mdc,tx_axis_fifo_tdata[7:0],tx_axis_fifo_tvalid,tx_axis_fifo_tlast,tx_axis_fifo_tready,rx_axis_fifo_tdata[7:0],rx_axis_fifo_tvalid,rx_axis_fifo_tlast,rx_axis_fifo_tready,glbl_rstn,gtx_clk_bufg,s_axi_aclk,dcm_locked,mii_txd[3:0],mii_tx_en,mii_tx_er,mii_rxd[3:0],mii_rx_dv,mii_rx_er,mii_rx_clk,mii_tx_clk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "tri_mode_ethernet_mac_2_example_design,Vivado 2018.3.1";
begin
end;
