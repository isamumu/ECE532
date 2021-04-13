-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
-- Date        : Tue Mar 30 21:40:32 2021
-- Host        : BA3145WS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ canteloupe_frame_generator_cust_0_0_stub.vhdl
-- Design      : canteloupe_frame_generator_cust_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    i_clk : in STD_LOGIC;
    i_aresetn : in STD_LOGIC;
    rx_mic_TVALID : in STD_LOGIC;
    rx_mic_TREADY : out STD_LOGIC;
    rx_mic_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rx_mic_TLAST : in STD_LOGIC;
    tx_fifo_TVALID : out STD_LOGIC;
    tx_fifo_TREADY : in STD_LOGIC;
    tx_fifo_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_fifo_TLAST : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_aresetn,rx_mic_TVALID,rx_mic_TREADY,rx_mic_TDATA[15:0],rx_mic_TLAST,tx_fifo_TVALID,tx_fifo_TREADY,tx_fifo_TDATA[7:0],tx_fifo_TLAST";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "frame_generator_custom,Vivado 2018.3.1";
begin
end;
