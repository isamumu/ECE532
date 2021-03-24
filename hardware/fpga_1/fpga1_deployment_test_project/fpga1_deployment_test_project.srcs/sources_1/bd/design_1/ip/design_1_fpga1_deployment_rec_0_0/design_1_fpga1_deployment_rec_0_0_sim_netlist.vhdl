-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Mar 22 20:52:10 2021
-- Host        : jhai-Lenovo-ideapad-520 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/justin/jhai/universityoftoronto/ECE532/final_project/ECE532/hardware/fpga_1/fpga1_deployment_test_project/fpga1_deployment_test_project.srcs/sources_1/bd/design_1/ip/design_1_fpga1_deployment_rec_0_0/design_1_fpga1_deployment_rec_0_0_sim_netlist.vhdl
-- Design      : design_1_fpga1_deployment_rec_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fpga1_deployment_rec_0_0_fpga1_deployment_receiving_block is
  port (
    r_test_axis_tready_reg_0 : out STD_LOGIC;
    o_result_PASS : out STD_LOGIC_VECTOR ( 0 to 0 );
    r_result_tvalid_reg_0 : out STD_LOGIC;
    i_aresetn : in STD_LOGIC;
    i_test_axis_TVALID : in STD_LOGIC;
    i_test_axis_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_clk : in STD_LOGIC;
    i_expected_packet : in STD_LOGIC_VECTOR ( 95 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fpga1_deployment_rec_0_0_fpga1_deployment_receiving_block : entity is "fpga1_deployment_receiving_block";
end design_1_fpga1_deployment_rec_0_0_fpga1_deployment_receiving_block;

architecture STRUCTURE of design_1_fpga1_deployment_rec_0_0_fpga1_deployment_receiving_block is
  signal \^o_result_pass\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_1_in : STD_LOGIC;
  signal r_core_state_i_1_n_0 : STD_LOGIC;
  signal r_core_state_i_2_n_0 : STD_LOGIC;
  signal r_core_state_i_3_n_0 : STD_LOGIC;
  signal r_core_state_i_4_n_0 : STD_LOGIC;
  signal r_core_state_i_5_n_0 : STD_LOGIC;
  signal r_core_state_i_6_n_0 : STD_LOGIC;
  signal r_core_state_i_7_n_0 : STD_LOGIC;
  signal r_core_state_i_8_n_0 : STD_LOGIC;
  signal r_core_state_reg_n_0 : STD_LOGIC;
  signal \r_num_transfers_received[0]_i_2_n_0\ : STD_LOGIC;
  signal r_num_transfers_received_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \r_num_transfers_received_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_num_transfers_received_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal r_received_packet : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal \r_received_packet[95]_i_1_n_0\ : STD_LOGIC;
  signal r_received_packet_0 : STD_LOGIC;
  signal \r_result_pass[0]_i_10_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_11_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_12_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_14_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_15_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_16_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_17_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_19_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_20_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_21_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_22_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_24_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_25_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_26_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_27_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_29_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_30_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_31_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_32_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_34_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_35_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_36_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_37_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_38_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_39_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_40_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_41_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_4_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_5_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_6_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_7_n_0\ : STD_LOGIC;
  signal \r_result_pass[0]_i_9_n_0\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_13_n_1\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_13_n_2\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_13_n_3\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_18_n_0\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_18_n_1\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_18_n_2\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_18_n_3\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_23_n_0\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_23_n_1\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_23_n_2\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_23_n_3\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_28_n_0\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_28_n_1\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_28_n_2\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_28_n_3\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_33_n_0\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_33_n_1\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_33_n_2\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_33_n_3\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_8_n_1\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_8_n_2\ : STD_LOGIC;
  signal \r_result_pass_reg[0]_i_8_n_3\ : STD_LOGIC;
  signal r_result_tvalid_i_1_n_0 : STD_LOGIC;
  signal \^r_result_tvalid_reg_0\ : STD_LOGIC;
  signal r_test_axis_tready_i_1_n_0 : STD_LOGIC;
  signal \^r_test_axis_tready_reg_0\ : STD_LOGIC;
  signal \NLW_r_num_transfers_received_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_result_pass_reg[0]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_result_pass_reg[0]_i_18_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_result_pass_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_result_pass_reg[0]_i_23_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_result_pass_reg[0]_i_28_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_result_pass_reg[0]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_result_pass_reg[0]_i_33_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_result_pass_reg[0]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_result_pass[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of r_result_tvalid_i_1 : label is "soft_lutpair0";
begin
  o_result_PASS(0) <= \^o_result_pass\(0);
  r_result_tvalid_reg_0 <= \^r_result_tvalid_reg_0\;
  r_test_axis_tready_reg_0 <= \^r_test_axis_tready_reg_0\;
r_core_state_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F80000"
    )
        port map (
      I0 => r_core_state_i_2_n_0,
      I1 => r_core_state_i_3_n_0,
      I2 => r_core_state_reg_n_0,
      I3 => \^r_result_tvalid_reg_0\,
      I4 => i_aresetn,
      O => r_core_state_i_1_n_0
    );
r_core_state_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => i_test_axis_TVALID,
      I1 => \^r_test_axis_tready_reg_0\,
      I2 => r_core_state_i_4_n_0,
      I3 => r_core_state_i_5_n_0,
      I4 => r_core_state_i_6_n_0,
      I5 => r_core_state_i_7_n_0,
      O => r_core_state_i_2_n_0
    );
r_core_state_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => r_num_transfers_received_reg(3),
      I1 => r_core_state_reg_n_0,
      I2 => r_num_transfers_received_reg(1),
      I3 => r_num_transfers_received_reg(2),
      I4 => r_num_transfers_received_reg(0),
      I5 => r_core_state_i_8_n_0,
      O => r_core_state_i_3_n_0
    );
r_core_state_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => r_num_transfers_received_reg(24),
      I1 => r_num_transfers_received_reg(25),
      I2 => r_num_transfers_received_reg(22),
      I3 => r_num_transfers_received_reg(23),
      I4 => r_num_transfers_received_reg(27),
      I5 => r_num_transfers_received_reg(26),
      O => r_core_state_i_4_n_0
    );
r_core_state_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => r_num_transfers_received_reg(29),
      I1 => r_num_transfers_received_reg(28),
      I2 => r_num_transfers_received_reg(31),
      I3 => r_num_transfers_received_reg(30),
      O => r_core_state_i_5_n_0
    );
r_core_state_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => r_num_transfers_received_reg(12),
      I1 => r_num_transfers_received_reg(13),
      I2 => r_num_transfers_received_reg(10),
      I3 => r_num_transfers_received_reg(11),
      I4 => r_num_transfers_received_reg(15),
      I5 => r_num_transfers_received_reg(14),
      O => r_core_state_i_6_n_0
    );
r_core_state_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => r_num_transfers_received_reg(18),
      I1 => r_num_transfers_received_reg(19),
      I2 => r_num_transfers_received_reg(16),
      I3 => r_num_transfers_received_reg(17),
      I4 => r_num_transfers_received_reg(21),
      I5 => r_num_transfers_received_reg(20),
      O => r_core_state_i_7_n_0
    );
r_core_state_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => r_num_transfers_received_reg(6),
      I1 => r_num_transfers_received_reg(7),
      I2 => r_num_transfers_received_reg(4),
      I3 => r_num_transfers_received_reg(5),
      I4 => r_num_transfers_received_reg(9),
      I5 => r_num_transfers_received_reg(8),
      O => r_core_state_i_8_n_0
    );
r_core_state_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => r_core_state_i_1_n_0,
      Q => r_core_state_reg_n_0,
      R => '0'
    );
\r_num_transfers_received[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_num_transfers_received_reg(0),
      O => \r_num_transfers_received[0]_i_2_n_0\
    );
\r_num_transfers_received_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[0]_i_1_n_7\,
      Q => r_num_transfers_received_reg(0),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_num_transfers_received_reg[0]_i_1_n_0\,
      CO(2) => \r_num_transfers_received_reg[0]_i_1_n_1\,
      CO(1) => \r_num_transfers_received_reg[0]_i_1_n_2\,
      CO(0) => \r_num_transfers_received_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_num_transfers_received_reg[0]_i_1_n_4\,
      O(2) => \r_num_transfers_received_reg[0]_i_1_n_5\,
      O(1) => \r_num_transfers_received_reg[0]_i_1_n_6\,
      O(0) => \r_num_transfers_received_reg[0]_i_1_n_7\,
      S(3 downto 1) => r_num_transfers_received_reg(3 downto 1),
      S(0) => \r_num_transfers_received[0]_i_2_n_0\
    );
\r_num_transfers_received_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[8]_i_1_n_5\,
      Q => r_num_transfers_received_reg(10),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[8]_i_1_n_4\,
      Q => r_num_transfers_received_reg(11),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[12]_i_1_n_7\,
      Q => r_num_transfers_received_reg(12),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_num_transfers_received_reg[8]_i_1_n_0\,
      CO(3) => \r_num_transfers_received_reg[12]_i_1_n_0\,
      CO(2) => \r_num_transfers_received_reg[12]_i_1_n_1\,
      CO(1) => \r_num_transfers_received_reg[12]_i_1_n_2\,
      CO(0) => \r_num_transfers_received_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_num_transfers_received_reg[12]_i_1_n_4\,
      O(2) => \r_num_transfers_received_reg[12]_i_1_n_5\,
      O(1) => \r_num_transfers_received_reg[12]_i_1_n_6\,
      O(0) => \r_num_transfers_received_reg[12]_i_1_n_7\,
      S(3 downto 0) => r_num_transfers_received_reg(15 downto 12)
    );
\r_num_transfers_received_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[12]_i_1_n_6\,
      Q => r_num_transfers_received_reg(13),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[12]_i_1_n_5\,
      Q => r_num_transfers_received_reg(14),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[12]_i_1_n_4\,
      Q => r_num_transfers_received_reg(15),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[16]_i_1_n_7\,
      Q => r_num_transfers_received_reg(16),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_num_transfers_received_reg[12]_i_1_n_0\,
      CO(3) => \r_num_transfers_received_reg[16]_i_1_n_0\,
      CO(2) => \r_num_transfers_received_reg[16]_i_1_n_1\,
      CO(1) => \r_num_transfers_received_reg[16]_i_1_n_2\,
      CO(0) => \r_num_transfers_received_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_num_transfers_received_reg[16]_i_1_n_4\,
      O(2) => \r_num_transfers_received_reg[16]_i_1_n_5\,
      O(1) => \r_num_transfers_received_reg[16]_i_1_n_6\,
      O(0) => \r_num_transfers_received_reg[16]_i_1_n_7\,
      S(3 downto 0) => r_num_transfers_received_reg(19 downto 16)
    );
\r_num_transfers_received_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[16]_i_1_n_6\,
      Q => r_num_transfers_received_reg(17),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[16]_i_1_n_5\,
      Q => r_num_transfers_received_reg(18),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[16]_i_1_n_4\,
      Q => r_num_transfers_received_reg(19),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[0]_i_1_n_6\,
      Q => r_num_transfers_received_reg(1),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[20]_i_1_n_7\,
      Q => r_num_transfers_received_reg(20),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_num_transfers_received_reg[16]_i_1_n_0\,
      CO(3) => \r_num_transfers_received_reg[20]_i_1_n_0\,
      CO(2) => \r_num_transfers_received_reg[20]_i_1_n_1\,
      CO(1) => \r_num_transfers_received_reg[20]_i_1_n_2\,
      CO(0) => \r_num_transfers_received_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_num_transfers_received_reg[20]_i_1_n_4\,
      O(2) => \r_num_transfers_received_reg[20]_i_1_n_5\,
      O(1) => \r_num_transfers_received_reg[20]_i_1_n_6\,
      O(0) => \r_num_transfers_received_reg[20]_i_1_n_7\,
      S(3 downto 0) => r_num_transfers_received_reg(23 downto 20)
    );
\r_num_transfers_received_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[20]_i_1_n_6\,
      Q => r_num_transfers_received_reg(21),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[20]_i_1_n_5\,
      Q => r_num_transfers_received_reg(22),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[20]_i_1_n_4\,
      Q => r_num_transfers_received_reg(23),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[24]_i_1_n_7\,
      Q => r_num_transfers_received_reg(24),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_num_transfers_received_reg[20]_i_1_n_0\,
      CO(3) => \r_num_transfers_received_reg[24]_i_1_n_0\,
      CO(2) => \r_num_transfers_received_reg[24]_i_1_n_1\,
      CO(1) => \r_num_transfers_received_reg[24]_i_1_n_2\,
      CO(0) => \r_num_transfers_received_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_num_transfers_received_reg[24]_i_1_n_4\,
      O(2) => \r_num_transfers_received_reg[24]_i_1_n_5\,
      O(1) => \r_num_transfers_received_reg[24]_i_1_n_6\,
      O(0) => \r_num_transfers_received_reg[24]_i_1_n_7\,
      S(3 downto 0) => r_num_transfers_received_reg(27 downto 24)
    );
\r_num_transfers_received_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[24]_i_1_n_6\,
      Q => r_num_transfers_received_reg(25),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[24]_i_1_n_5\,
      Q => r_num_transfers_received_reg(26),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[24]_i_1_n_4\,
      Q => r_num_transfers_received_reg(27),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[28]_i_1_n_7\,
      Q => r_num_transfers_received_reg(28),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_num_transfers_received_reg[24]_i_1_n_0\,
      CO(3) => \NLW_r_num_transfers_received_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \r_num_transfers_received_reg[28]_i_1_n_1\,
      CO(1) => \r_num_transfers_received_reg[28]_i_1_n_2\,
      CO(0) => \r_num_transfers_received_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_num_transfers_received_reg[28]_i_1_n_4\,
      O(2) => \r_num_transfers_received_reg[28]_i_1_n_5\,
      O(1) => \r_num_transfers_received_reg[28]_i_1_n_6\,
      O(0) => \r_num_transfers_received_reg[28]_i_1_n_7\,
      S(3 downto 0) => r_num_transfers_received_reg(31 downto 28)
    );
\r_num_transfers_received_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[28]_i_1_n_6\,
      Q => r_num_transfers_received_reg(29),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[0]_i_1_n_5\,
      Q => r_num_transfers_received_reg(2),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[28]_i_1_n_5\,
      Q => r_num_transfers_received_reg(30),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[28]_i_1_n_4\,
      Q => r_num_transfers_received_reg(31),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[0]_i_1_n_4\,
      Q => r_num_transfers_received_reg(3),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[4]_i_1_n_7\,
      Q => r_num_transfers_received_reg(4),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_num_transfers_received_reg[0]_i_1_n_0\,
      CO(3) => \r_num_transfers_received_reg[4]_i_1_n_0\,
      CO(2) => \r_num_transfers_received_reg[4]_i_1_n_1\,
      CO(1) => \r_num_transfers_received_reg[4]_i_1_n_2\,
      CO(0) => \r_num_transfers_received_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_num_transfers_received_reg[4]_i_1_n_4\,
      O(2) => \r_num_transfers_received_reg[4]_i_1_n_5\,
      O(1) => \r_num_transfers_received_reg[4]_i_1_n_6\,
      O(0) => \r_num_transfers_received_reg[4]_i_1_n_7\,
      S(3 downto 0) => r_num_transfers_received_reg(7 downto 4)
    );
\r_num_transfers_received_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[4]_i_1_n_6\,
      Q => r_num_transfers_received_reg(5),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[4]_i_1_n_5\,
      Q => r_num_transfers_received_reg(6),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[4]_i_1_n_4\,
      Q => r_num_transfers_received_reg(7),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[8]_i_1_n_7\,
      Q => r_num_transfers_received_reg(8),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_num_transfers_received_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_num_transfers_received_reg[4]_i_1_n_0\,
      CO(3) => \r_num_transfers_received_reg[8]_i_1_n_0\,
      CO(2) => \r_num_transfers_received_reg[8]_i_1_n_1\,
      CO(1) => \r_num_transfers_received_reg[8]_i_1_n_2\,
      CO(0) => \r_num_transfers_received_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_num_transfers_received_reg[8]_i_1_n_4\,
      O(2) => \r_num_transfers_received_reg[8]_i_1_n_5\,
      O(1) => \r_num_transfers_received_reg[8]_i_1_n_6\,
      O(0) => \r_num_transfers_received_reg[8]_i_1_n_7\,
      S(3 downto 0) => r_num_transfers_received_reg(11 downto 8)
    );
\r_num_transfers_received_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => \r_num_transfers_received_reg[8]_i_1_n_6\,
      Q => r_num_transfers_received_reg(9),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet[95]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => r_core_state_reg_n_0,
      I1 => i_aresetn,
      O => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet[95]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_test_axis_TVALID,
      I1 => \^r_test_axis_tready_reg_0\,
      O => r_received_packet_0
    );
\r_received_packet_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(16),
      Q => r_received_packet(0),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(26),
      Q => r_received_packet(10),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(27),
      Q => r_received_packet(11),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(28),
      Q => r_received_packet(12),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(29),
      Q => r_received_packet(13),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(30),
      Q => r_received_packet(14),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(31),
      Q => r_received_packet(15),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(32),
      Q => r_received_packet(16),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(33),
      Q => r_received_packet(17),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(34),
      Q => r_received_packet(18),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(35),
      Q => r_received_packet(19),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(17),
      Q => r_received_packet(1),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(36),
      Q => r_received_packet(20),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(37),
      Q => r_received_packet(21),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(38),
      Q => r_received_packet(22),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(39),
      Q => r_received_packet(23),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(40),
      Q => r_received_packet(24),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(41),
      Q => r_received_packet(25),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(42),
      Q => r_received_packet(26),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(43),
      Q => r_received_packet(27),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(44),
      Q => r_received_packet(28),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(45),
      Q => r_received_packet(29),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(18),
      Q => r_received_packet(2),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(46),
      Q => r_received_packet(30),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(47),
      Q => r_received_packet(31),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(48),
      Q => r_received_packet(32),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(49),
      Q => r_received_packet(33),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(50),
      Q => r_received_packet(34),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(51),
      Q => r_received_packet(35),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(52),
      Q => r_received_packet(36),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(53),
      Q => r_received_packet(37),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(54),
      Q => r_received_packet(38),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(55),
      Q => r_received_packet(39),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(19),
      Q => r_received_packet(3),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(56),
      Q => r_received_packet(40),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(57),
      Q => r_received_packet(41),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(58),
      Q => r_received_packet(42),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(59),
      Q => r_received_packet(43),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(60),
      Q => r_received_packet(44),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(61),
      Q => r_received_packet(45),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(62),
      Q => r_received_packet(46),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(63),
      Q => r_received_packet(47),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(64),
      Q => r_received_packet(48),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(65),
      Q => r_received_packet(49),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(20),
      Q => r_received_packet(4),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(66),
      Q => r_received_packet(50),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(67),
      Q => r_received_packet(51),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(68),
      Q => r_received_packet(52),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(69),
      Q => r_received_packet(53),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(70),
      Q => r_received_packet(54),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(71),
      Q => r_received_packet(55),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(72),
      Q => r_received_packet(56),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(73),
      Q => r_received_packet(57),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(74),
      Q => r_received_packet(58),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(75),
      Q => r_received_packet(59),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(21),
      Q => r_received_packet(5),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(76),
      Q => r_received_packet(60),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(77),
      Q => r_received_packet(61),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(78),
      Q => r_received_packet(62),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(79),
      Q => r_received_packet(63),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(80),
      Q => r_received_packet(64),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(81),
      Q => r_received_packet(65),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(82),
      Q => r_received_packet(66),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(83),
      Q => r_received_packet(67),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(84),
      Q => r_received_packet(68),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(85),
      Q => r_received_packet(69),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(22),
      Q => r_received_packet(6),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(86),
      Q => r_received_packet(70),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(87),
      Q => r_received_packet(71),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(88),
      Q => r_received_packet(72),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(89),
      Q => r_received_packet(73),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(90),
      Q => r_received_packet(74),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(91),
      Q => r_received_packet(75),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(92),
      Q => r_received_packet(76),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(93),
      Q => r_received_packet(77),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(94),
      Q => r_received_packet(78),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(95),
      Q => r_received_packet(79),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(23),
      Q => r_received_packet(7),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => i_test_axis_TDATA(0),
      Q => r_received_packet(80),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => i_test_axis_TDATA(1),
      Q => r_received_packet(81),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => i_test_axis_TDATA(2),
      Q => r_received_packet(82),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => i_test_axis_TDATA(3),
      Q => r_received_packet(83),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => i_test_axis_TDATA(4),
      Q => r_received_packet(84),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => i_test_axis_TDATA(5),
      Q => r_received_packet(85),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => i_test_axis_TDATA(6),
      Q => r_received_packet(86),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => i_test_axis_TDATA(7),
      Q => r_received_packet(87),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => i_test_axis_TDATA(8),
      Q => r_received_packet(88),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => i_test_axis_TDATA(9),
      Q => r_received_packet(89),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(24),
      Q => r_received_packet(8),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => i_test_axis_TDATA(10),
      Q => r_received_packet(90),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => i_test_axis_TDATA(11),
      Q => r_received_packet(91),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => i_test_axis_TDATA(12),
      Q => r_received_packet(92),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => i_test_axis_TDATA(13),
      Q => r_received_packet(93),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => i_test_axis_TDATA(14),
      Q => r_received_packet(94),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => i_test_axis_TDATA(15),
      Q => r_received_packet(95),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_received_packet_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_received_packet_0,
      D => r_received_packet(25),
      Q => r_received_packet(9),
      R => \r_received_packet[95]_i_1_n_0\
    );
\r_result_pass[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A088A0"
    )
        port map (
      I0 => i_aresetn,
      I1 => p_1_in,
      I2 => \^o_result_pass\(0),
      I3 => r_core_state_reg_n_0,
      I4 => \^r_result_tvalid_reg_0\,
      O => \r_result_pass[0]_i_1_n_0\
    );
\r_result_pass[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(78),
      I1 => i_expected_packet(78),
      I2 => i_expected_packet(80),
      I3 => r_received_packet(80),
      I4 => i_expected_packet(79),
      I5 => r_received_packet(79),
      O => \r_result_pass[0]_i_10_n_0\
    );
\r_result_pass[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(75),
      I1 => i_expected_packet(75),
      I2 => i_expected_packet(77),
      I3 => r_received_packet(77),
      I4 => i_expected_packet(76),
      I5 => r_received_packet(76),
      O => \r_result_pass[0]_i_11_n_0\
    );
\r_result_pass[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(72),
      I1 => i_expected_packet(72),
      I2 => i_expected_packet(74),
      I3 => r_received_packet(74),
      I4 => i_expected_packet(73),
      I5 => r_received_packet(73),
      O => \r_result_pass[0]_i_12_n_0\
    );
\r_result_pass[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(69),
      I1 => i_expected_packet(69),
      I2 => i_expected_packet(71),
      I3 => r_received_packet(71),
      I4 => i_expected_packet(70),
      I5 => r_received_packet(70),
      O => \r_result_pass[0]_i_14_n_0\
    );
\r_result_pass[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(66),
      I1 => i_expected_packet(66),
      I2 => i_expected_packet(68),
      I3 => r_received_packet(68),
      I4 => i_expected_packet(67),
      I5 => r_received_packet(67),
      O => \r_result_pass[0]_i_15_n_0\
    );
\r_result_pass[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(63),
      I1 => i_expected_packet(63),
      I2 => i_expected_packet(65),
      I3 => r_received_packet(65),
      I4 => i_expected_packet(64),
      I5 => r_received_packet(64),
      O => \r_result_pass[0]_i_16_n_0\
    );
\r_result_pass[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(60),
      I1 => i_expected_packet(60),
      I2 => i_expected_packet(62),
      I3 => r_received_packet(62),
      I4 => i_expected_packet(61),
      I5 => r_received_packet(61),
      O => \r_result_pass[0]_i_17_n_0\
    );
\r_result_pass[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(57),
      I1 => i_expected_packet(57),
      I2 => i_expected_packet(59),
      I3 => r_received_packet(59),
      I4 => i_expected_packet(58),
      I5 => r_received_packet(58),
      O => \r_result_pass[0]_i_19_n_0\
    );
\r_result_pass[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(54),
      I1 => i_expected_packet(54),
      I2 => i_expected_packet(56),
      I3 => r_received_packet(56),
      I4 => i_expected_packet(55),
      I5 => r_received_packet(55),
      O => \r_result_pass[0]_i_20_n_0\
    );
\r_result_pass[0]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(51),
      I1 => i_expected_packet(51),
      I2 => i_expected_packet(53),
      I3 => r_received_packet(53),
      I4 => i_expected_packet(52),
      I5 => r_received_packet(52),
      O => \r_result_pass[0]_i_21_n_0\
    );
\r_result_pass[0]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(48),
      I1 => i_expected_packet(48),
      I2 => i_expected_packet(50),
      I3 => r_received_packet(50),
      I4 => i_expected_packet(49),
      I5 => r_received_packet(49),
      O => \r_result_pass[0]_i_22_n_0\
    );
\r_result_pass[0]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(45),
      I1 => i_expected_packet(45),
      I2 => i_expected_packet(47),
      I3 => r_received_packet(47),
      I4 => i_expected_packet(46),
      I5 => r_received_packet(46),
      O => \r_result_pass[0]_i_24_n_0\
    );
\r_result_pass[0]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(42),
      I1 => i_expected_packet(42),
      I2 => i_expected_packet(44),
      I3 => r_received_packet(44),
      I4 => i_expected_packet(43),
      I5 => r_received_packet(43),
      O => \r_result_pass[0]_i_25_n_0\
    );
\r_result_pass[0]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(39),
      I1 => i_expected_packet(39),
      I2 => i_expected_packet(41),
      I3 => r_received_packet(41),
      I4 => i_expected_packet(40),
      I5 => r_received_packet(40),
      O => \r_result_pass[0]_i_26_n_0\
    );
\r_result_pass[0]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(36),
      I1 => i_expected_packet(36),
      I2 => i_expected_packet(38),
      I3 => r_received_packet(38),
      I4 => i_expected_packet(37),
      I5 => r_received_packet(37),
      O => \r_result_pass[0]_i_27_n_0\
    );
\r_result_pass[0]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(33),
      I1 => i_expected_packet(33),
      I2 => i_expected_packet(35),
      I3 => r_received_packet(35),
      I4 => i_expected_packet(34),
      I5 => r_received_packet(34),
      O => \r_result_pass[0]_i_29_n_0\
    );
\r_result_pass[0]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(30),
      I1 => i_expected_packet(30),
      I2 => i_expected_packet(32),
      I3 => r_received_packet(32),
      I4 => i_expected_packet(31),
      I5 => r_received_packet(31),
      O => \r_result_pass[0]_i_30_n_0\
    );
\r_result_pass[0]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(27),
      I1 => i_expected_packet(27),
      I2 => i_expected_packet(29),
      I3 => r_received_packet(29),
      I4 => i_expected_packet(28),
      I5 => r_received_packet(28),
      O => \r_result_pass[0]_i_31_n_0\
    );
\r_result_pass[0]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(24),
      I1 => i_expected_packet(24),
      I2 => i_expected_packet(26),
      I3 => r_received_packet(26),
      I4 => i_expected_packet(25),
      I5 => r_received_packet(25),
      O => \r_result_pass[0]_i_32_n_0\
    );
\r_result_pass[0]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(21),
      I1 => i_expected_packet(21),
      I2 => i_expected_packet(23),
      I3 => r_received_packet(23),
      I4 => i_expected_packet(22),
      I5 => r_received_packet(22),
      O => \r_result_pass[0]_i_34_n_0\
    );
\r_result_pass[0]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(18),
      I1 => i_expected_packet(18),
      I2 => i_expected_packet(20),
      I3 => r_received_packet(20),
      I4 => i_expected_packet(19),
      I5 => r_received_packet(19),
      O => \r_result_pass[0]_i_35_n_0\
    );
\r_result_pass[0]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(15),
      I1 => i_expected_packet(15),
      I2 => i_expected_packet(17),
      I3 => r_received_packet(17),
      I4 => i_expected_packet(16),
      I5 => r_received_packet(16),
      O => \r_result_pass[0]_i_36_n_0\
    );
\r_result_pass[0]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(12),
      I1 => i_expected_packet(12),
      I2 => i_expected_packet(14),
      I3 => r_received_packet(14),
      I4 => i_expected_packet(13),
      I5 => r_received_packet(13),
      O => \r_result_pass[0]_i_37_n_0\
    );
\r_result_pass[0]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(9),
      I1 => i_expected_packet(9),
      I2 => i_expected_packet(11),
      I3 => r_received_packet(11),
      I4 => i_expected_packet(10),
      I5 => r_received_packet(10),
      O => \r_result_pass[0]_i_38_n_0\
    );
\r_result_pass[0]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(6),
      I1 => i_expected_packet(6),
      I2 => i_expected_packet(8),
      I3 => r_received_packet(8),
      I4 => i_expected_packet(7),
      I5 => r_received_packet(7),
      O => \r_result_pass[0]_i_39_n_0\
    );
\r_result_pass[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(93),
      I1 => i_expected_packet(93),
      I2 => i_expected_packet(95),
      I3 => r_received_packet(95),
      I4 => i_expected_packet(94),
      I5 => r_received_packet(94),
      O => \r_result_pass[0]_i_4_n_0\
    );
\r_result_pass[0]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(3),
      I1 => i_expected_packet(3),
      I2 => i_expected_packet(5),
      I3 => r_received_packet(5),
      I4 => i_expected_packet(4),
      I5 => r_received_packet(4),
      O => \r_result_pass[0]_i_40_n_0\
    );
\r_result_pass[0]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(0),
      I1 => i_expected_packet(0),
      I2 => i_expected_packet(2),
      I3 => r_received_packet(2),
      I4 => i_expected_packet(1),
      I5 => r_received_packet(1),
      O => \r_result_pass[0]_i_41_n_0\
    );
\r_result_pass[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(90),
      I1 => i_expected_packet(90),
      I2 => i_expected_packet(92),
      I3 => r_received_packet(92),
      I4 => i_expected_packet(91),
      I5 => r_received_packet(91),
      O => \r_result_pass[0]_i_5_n_0\
    );
\r_result_pass[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(87),
      I1 => i_expected_packet(87),
      I2 => i_expected_packet(89),
      I3 => r_received_packet(89),
      I4 => i_expected_packet(88),
      I5 => r_received_packet(88),
      O => \r_result_pass[0]_i_6_n_0\
    );
\r_result_pass[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(84),
      I1 => i_expected_packet(84),
      I2 => i_expected_packet(86),
      I3 => r_received_packet(86),
      I4 => i_expected_packet(85),
      I5 => r_received_packet(85),
      O => \r_result_pass[0]_i_7_n_0\
    );
\r_result_pass[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => r_received_packet(81),
      I1 => i_expected_packet(81),
      I2 => i_expected_packet(83),
      I3 => r_received_packet(83),
      I4 => i_expected_packet(82),
      I5 => r_received_packet(82),
      O => \r_result_pass[0]_i_9_n_0\
    );
\r_result_pass_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \r_result_pass[0]_i_1_n_0\,
      Q => \^o_result_pass\(0),
      R => '0'
    );
\r_result_pass_reg[0]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_result_pass_reg[0]_i_18_n_0\,
      CO(3) => \r_result_pass_reg[0]_i_13_n_0\,
      CO(2) => \r_result_pass_reg[0]_i_13_n_1\,
      CO(1) => \r_result_pass_reg[0]_i_13_n_2\,
      CO(0) => \r_result_pass_reg[0]_i_13_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_result_pass_reg[0]_i_13_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_result_pass[0]_i_19_n_0\,
      S(2) => \r_result_pass[0]_i_20_n_0\,
      S(1) => \r_result_pass[0]_i_21_n_0\,
      S(0) => \r_result_pass[0]_i_22_n_0\
    );
\r_result_pass_reg[0]_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_result_pass_reg[0]_i_23_n_0\,
      CO(3) => \r_result_pass_reg[0]_i_18_n_0\,
      CO(2) => \r_result_pass_reg[0]_i_18_n_1\,
      CO(1) => \r_result_pass_reg[0]_i_18_n_2\,
      CO(0) => \r_result_pass_reg[0]_i_18_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_result_pass_reg[0]_i_18_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_result_pass[0]_i_24_n_0\,
      S(2) => \r_result_pass[0]_i_25_n_0\,
      S(1) => \r_result_pass[0]_i_26_n_0\,
      S(0) => \r_result_pass[0]_i_27_n_0\
    );
\r_result_pass_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_result_pass_reg[0]_i_3_n_0\,
      CO(3) => p_1_in,
      CO(2) => \r_result_pass_reg[0]_i_2_n_1\,
      CO(1) => \r_result_pass_reg[0]_i_2_n_2\,
      CO(0) => \r_result_pass_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_result_pass_reg[0]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_result_pass[0]_i_4_n_0\,
      S(2) => \r_result_pass[0]_i_5_n_0\,
      S(1) => \r_result_pass[0]_i_6_n_0\,
      S(0) => \r_result_pass[0]_i_7_n_0\
    );
\r_result_pass_reg[0]_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_result_pass_reg[0]_i_28_n_0\,
      CO(3) => \r_result_pass_reg[0]_i_23_n_0\,
      CO(2) => \r_result_pass_reg[0]_i_23_n_1\,
      CO(1) => \r_result_pass_reg[0]_i_23_n_2\,
      CO(0) => \r_result_pass_reg[0]_i_23_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_result_pass_reg[0]_i_23_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_result_pass[0]_i_29_n_0\,
      S(2) => \r_result_pass[0]_i_30_n_0\,
      S(1) => \r_result_pass[0]_i_31_n_0\,
      S(0) => \r_result_pass[0]_i_32_n_0\
    );
\r_result_pass_reg[0]_i_28\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_result_pass_reg[0]_i_33_n_0\,
      CO(3) => \r_result_pass_reg[0]_i_28_n_0\,
      CO(2) => \r_result_pass_reg[0]_i_28_n_1\,
      CO(1) => \r_result_pass_reg[0]_i_28_n_2\,
      CO(0) => \r_result_pass_reg[0]_i_28_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_result_pass_reg[0]_i_28_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_result_pass[0]_i_34_n_0\,
      S(2) => \r_result_pass[0]_i_35_n_0\,
      S(1) => \r_result_pass[0]_i_36_n_0\,
      S(0) => \r_result_pass[0]_i_37_n_0\
    );
\r_result_pass_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_result_pass_reg[0]_i_8_n_0\,
      CO(3) => \r_result_pass_reg[0]_i_3_n_0\,
      CO(2) => \r_result_pass_reg[0]_i_3_n_1\,
      CO(1) => \r_result_pass_reg[0]_i_3_n_2\,
      CO(0) => \r_result_pass_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_result_pass_reg[0]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_result_pass[0]_i_9_n_0\,
      S(2) => \r_result_pass[0]_i_10_n_0\,
      S(1) => \r_result_pass[0]_i_11_n_0\,
      S(0) => \r_result_pass[0]_i_12_n_0\
    );
\r_result_pass_reg[0]_i_33\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_result_pass_reg[0]_i_33_n_0\,
      CO(2) => \r_result_pass_reg[0]_i_33_n_1\,
      CO(1) => \r_result_pass_reg[0]_i_33_n_2\,
      CO(0) => \r_result_pass_reg[0]_i_33_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_result_pass_reg[0]_i_33_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_result_pass[0]_i_38_n_0\,
      S(2) => \r_result_pass[0]_i_39_n_0\,
      S(1) => \r_result_pass[0]_i_40_n_0\,
      S(0) => \r_result_pass[0]_i_41_n_0\
    );
\r_result_pass_reg[0]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_result_pass_reg[0]_i_13_n_0\,
      CO(3) => \r_result_pass_reg[0]_i_8_n_0\,
      CO(2) => \r_result_pass_reg[0]_i_8_n_1\,
      CO(1) => \r_result_pass_reg[0]_i_8_n_2\,
      CO(0) => \r_result_pass_reg[0]_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_r_result_pass_reg[0]_i_8_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_result_pass[0]_i_14_n_0\,
      S(2) => \r_result_pass[0]_i_15_n_0\,
      S(1) => \r_result_pass[0]_i_16_n_0\,
      S(0) => \r_result_pass[0]_i_17_n_0\
    );
r_result_tvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \^r_result_tvalid_reg_0\,
      I1 => r_core_state_reg_n_0,
      I2 => i_aresetn,
      O => r_result_tvalid_i_1_n_0
    );
r_result_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => r_result_tvalid_i_1_n_0,
      Q => \^r_result_tvalid_reg_0\,
      R => '0'
    );
r_test_axis_tready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8820"
    )
        port map (
      I0 => i_aresetn,
      I1 => \^r_test_axis_tready_reg_0\,
      I2 => i_test_axis_TVALID,
      I3 => r_core_state_reg_n_0,
      O => r_test_axis_tready_i_1_n_0
    );
r_test_axis_tready_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => r_test_axis_tready_i_1_n_0,
      Q => \^r_test_axis_tready_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fpga1_deployment_rec_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_aresetn : in STD_LOGIC;
    i_expected_packet : in STD_LOGIC_VECTOR ( 95 downto 0 );
    i_test_axis_TVALID : in STD_LOGIC;
    o_test_axis_TREADY : out STD_LOGIC;
    i_test_axis_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    o_result_TVALID : out STD_LOGIC;
    o_result_PASS : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_fpga1_deployment_rec_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_fpga1_deployment_rec_0_0 : entity is "design_1_fpga1_deployment_rec_0_0,fpga1_deployment_receiving_block,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_fpga1_deployment_rec_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_fpga1_deployment_rec_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_fpga1_deployment_rec_0_0 : entity is "fpga1_deployment_receiving_block,Vivado 2018.3";
end design_1_fpga1_deployment_rec_0_0;

architecture STRUCTURE of design_1_fpga1_deployment_rec_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^o_result_pass\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_aresetn : signal is "xilinx.com:signal:reset:1.0 i_aresetn RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_aresetn : signal is "XIL_INTERFACENAME i_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_aresetn, ASSOCIATED_BUSIF i_test_axis:o_result_axis, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_test_axis_TVALID : signal is "xilinx.com:interface:axis:1.0 i_test_axis TVALID";
  attribute X_INTERFACE_INFO of o_result_TVALID : signal is "xilinx.com:interface:axis:1.0 o_result_axis TVALID";
  attribute X_INTERFACE_INFO of o_test_axis_TREADY : signal is "xilinx.com:interface:axis:1.0 i_test_axis TREADY";
  attribute X_INTERFACE_INFO of i_test_axis_TDATA : signal is "xilinx.com:interface:axis:1.0 i_test_axis TDATA";
  attribute X_INTERFACE_PARAMETER of i_test_axis_TDATA : signal is "XIL_INTERFACENAME i_test_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_result_PASS : signal is "xilinx.com:interface:axis:1.0 o_result_axis TDATA";
  attribute X_INTERFACE_PARAMETER of o_result_PASS : signal is "XIL_INTERFACENAME o_result_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  o_result_PASS(7) <= \<const0>\;
  o_result_PASS(6) <= \<const0>\;
  o_result_PASS(5) <= \<const0>\;
  o_result_PASS(4) <= \<const0>\;
  o_result_PASS(3) <= \<const0>\;
  o_result_PASS(2) <= \<const0>\;
  o_result_PASS(1) <= \<const0>\;
  o_result_PASS(0) <= \^o_result_pass\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_fpga1_deployment_rec_0_0_fpga1_deployment_receiving_block
     port map (
      i_aresetn => i_aresetn,
      i_clk => i_clk,
      i_expected_packet(95 downto 0) => i_expected_packet(95 downto 0),
      i_test_axis_TDATA(15 downto 0) => i_test_axis_TDATA(15 downto 0),
      i_test_axis_TVALID => i_test_axis_TVALID,
      o_result_PASS(0) => \^o_result_pass\(0),
      r_result_tvalid_reg_0 => o_result_TVALID,
      r_test_axis_tready_reg_0 => o_test_axis_TREADY
    );
end STRUCTURE;
