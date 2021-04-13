-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
-- Date        : Tue Mar 30 21:39:53 2021
-- Host        : BA3145WS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top canteloupe_run_length_encoder_0_0 -prefix
--               canteloupe_run_length_encoder_0_0_ canteloupe_run_length_encoder_0_0_stub.vhdl
-- Design      : canteloupe_run_length_encoder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity canteloupe_run_length_encoder_0_0 is
  Port ( 
    i_clk : in STD_LOGIC;
    i_aresetn : in STD_LOGIC;
    i_axis_TVALID : in STD_LOGIC;
    o_axis_TREADY : out STD_LOGIC;
    i_axis_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_axis_TLAST : in STD_LOGIC;
    o_axis_TVALID : out STD_LOGIC;
    i_axis_TREADY : in STD_LOGIC;
    o_axis_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_axis_TLAST : out STD_LOGIC
  );

end canteloupe_run_length_encoder_0_0;

architecture stub of canteloupe_run_length_encoder_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_aresetn,i_axis_TVALID,o_axis_TREADY,i_axis_TDATA[15:0],i_axis_TLAST,o_axis_TVALID,i_axis_TREADY,o_axis_TDATA[15:0],o_axis_TLAST";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "run_length_encoder,Vivado 2018.3.1";
begin
end;
