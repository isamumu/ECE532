-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Mar 22 20:51:25 2021
-- Host        : jhai-Lenovo-ideapad-520 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/justin/jhai/universityoftoronto/ECE532/final_project/ECE532/hardware/fpga_1/fpga1_deployment_test_project/fpga1_deployment_test_project.srcs/sources_1/bd/design_1/ip/design_1_fpga1_deployment_sou_0_0/design_1_fpga1_deployment_sou_0_0_stub.vhdl
-- Design      : design_1_fpga1_deployment_sou_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_fpga1_deployment_sou_0_0 is
  Port ( 
    i_clk : in STD_LOGIC;
    i_aresetn : in STD_LOGIC;
    i_packet_to_send : in STD_LOGIC_VECTOR ( 1087 downto 0 );
    i_enable : in STD_LOGIC;
    o_test_axis_TVALID : out STD_LOGIC;
    i_test_axis_TREADY : in STD_LOGIC;
    o_test_axis_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end design_1_fpga1_deployment_sou_0_0;

architecture stub of design_1_fpga1_deployment_sou_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_aresetn,i_packet_to_send[1087:0],i_enable,o_test_axis_TVALID,i_test_axis_TREADY,o_test_axis_TDATA[23:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fpga1_deployment_source_block,Vivado 2018.3";
begin
end;
