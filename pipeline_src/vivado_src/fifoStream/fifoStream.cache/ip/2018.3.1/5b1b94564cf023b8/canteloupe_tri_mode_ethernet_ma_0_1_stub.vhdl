-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
-- Date        : Tue Mar 30 22:34:00 2021
-- Host        : BA3145WS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ canteloupe_tri_mode_ethernet_ma_0_1_stub.vhdl
-- Design      : canteloupe_tri_mode_ethernet_ma_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    sys_clock : in STD_LOGIC;
    phy2rmii_crs_dv : in STD_LOGIC;
    phy2rmii_rx_er : in STD_LOGIC;
    phy2rmii_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rmii2phy_tx_en : out STD_LOGIC;
    rmii2phy_txd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    refclk : out STD_LOGIC;
    mdio : inout STD_LOGIC;
    mdc : out STD_LOGIC;
    tx_axis_fifo_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_axis_fifo_tvalid : in STD_LOGIC;
    tx_axis_fifo_tlast : in STD_LOGIC;
    tx_axis_fifo_tready : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sys_clock,phy2rmii_crs_dv,phy2rmii_rx_er,phy2rmii_rxd[1:0],rmii2phy_tx_en,rmii2phy_txd[1:0],refclk,mdio,mdc,tx_axis_fifo_tdata[7:0],tx_axis_fifo_tvalid,tx_axis_fifo_tlast,tx_axis_fifo_tready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "tri_mode_ethernet_mac_2_example_design,Vivado 2018.3.1";
begin
end;
