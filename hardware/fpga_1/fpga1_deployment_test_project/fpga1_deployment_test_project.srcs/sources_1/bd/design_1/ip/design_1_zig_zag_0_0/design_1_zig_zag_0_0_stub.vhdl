-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Mar 22 20:52:21 2021
-- Host        : jhai-Lenovo-ideapad-520 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/justin/jhai/universityoftoronto/ECE532/final_project/ECE532/hardware/fpga_1/fpga1_deployment_test_project/fpga1_deployment_test_project.srcs/sources_1/bd/design_1/ip/design_1_zig_zag_0_0/design_1_zig_zag_0_0_stub.vhdl
-- Design      : design_1_zig_zag_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_zig_zag_0_0 is
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

end design_1_zig_zag_0_0;

architecture stub of design_1_zig_zag_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_aresetn,i_axis_TVALID,o_axis_TREADY,i_axis_TDATA[15:0],i_axis_TLAST,o_axis_TVALID,i_axis_TREADY,o_axis_TDATA[15:0],o_axis_TLAST";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "zig_zag,Vivado 2018.3";
begin
end;
