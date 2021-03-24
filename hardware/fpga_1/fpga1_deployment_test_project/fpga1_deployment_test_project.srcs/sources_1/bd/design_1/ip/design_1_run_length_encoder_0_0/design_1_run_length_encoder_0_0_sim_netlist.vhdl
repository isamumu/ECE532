-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Mar 22 20:55:47 2021
-- Host        : jhai-Lenovo-ideapad-520 running 64-bit Ubuntu 20.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/justin/jhai/universityoftoronto/ECE532/final_project/ECE532/hardware/fpga_1/fpga1_deployment_test_project/fpga1_deployment_test_project.srcs/sources_1/bd/design_1/ip/design_1_run_length_encoder_0_0/design_1_run_length_encoder_0_0_sim_netlist.vhdl
-- Design      : design_1_run_length_encoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_run_length_encoder_0_0_run_length_encoder is
  port (
    r_o_axis_TVALID_reg_0 : out STD_LOGIC;
    r_o_axis_TLAST_reg_0 : out STD_LOGIC;
    o_axis_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_axis_TREADY : out STD_LOGIC;
    i_axis_TVALID : in STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_aresetn : in STD_LOGIC;
    i_axis_TREADY : in STD_LOGIC;
    i_axis_TDATA : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_run_length_encoder_0_0_run_length_encoder : entity is "run_length_encoder";
end design_1_run_length_encoder_0_0_run_length_encoder;

architecture STRUCTURE of design_1_run_length_encoder_0_0_run_length_encoder is
  signal r_core_state : STD_LOGIC;
  signal \r_core_state0__0\ : STD_LOGIC;
  signal r_core_state1 : STD_LOGIC;
  signal r_core_state_i_1_n_0 : STD_LOGIC;
  signal \r_counter0__9\ : STD_LOGIC;
  signal r_counter1_carry_i_1_n_0 : STD_LOGIC;
  signal r_counter1_carry_i_2_n_0 : STD_LOGIC;
  signal r_counter1_carry_i_3_n_0 : STD_LOGIC;
  signal r_counter1_carry_i_4_n_0 : STD_LOGIC;
  signal r_counter1_carry_n_0 : STD_LOGIC;
  signal r_counter1_carry_n_1 : STD_LOGIC;
  signal r_counter1_carry_n_2 : STD_LOGIC;
  signal r_counter1_carry_n_3 : STD_LOGIC;
  signal \r_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_counter[5]_i_3_n_0\ : STD_LOGIC;
  signal \r_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal r_curr_input_col : STD_LOGIC;
  signal \r_curr_input_col[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_input_col[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_input_col[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_curr_input_col[2]_i_3_n_0\ : STD_LOGIC;
  signal \r_curr_input_col_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_curr_input_col_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_curr_input_col_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_curr_input_row[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_input_row[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_input_row[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_input_row_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_curr_input_row_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_curr_input_row_reg_n_0_[2]\ : STD_LOGIC;
  signal r_curr_rle_col : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \r_curr_rle_col[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_rle_col[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_curr_rle_col[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_curr_rle_col[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_rle_col[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_rle_col[2]_i_3_n_0\ : STD_LOGIC;
  signal \r_curr_rle_col[2]_i_4_n_0\ : STD_LOGIC;
  signal \r_curr_rle_col_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_curr_rle_col_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_curr_rle_col_reg_n_0_[2]\ : STD_LOGIC;
  signal r_curr_rle_row : STD_LOGIC;
  signal \r_curr_rle_row[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_rle_row[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_rle_row[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_rle_row[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_curr_rle_row_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_curr_rle_row_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_curr_rle_row_reg_n_0_[2]\ : STD_LOGIC;
  signal r_curr_value : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_curr_value[0]_i_15_n_0\ : STD_LOGIC;
  signal \r_curr_value[0]_i_16_n_0\ : STD_LOGIC;
  signal \r_curr_value[0]_i_17_n_0\ : STD_LOGIC;
  signal \r_curr_value[0]_i_18_n_0\ : STD_LOGIC;
  signal \r_curr_value[0]_i_19_n_0\ : STD_LOGIC;
  signal \r_curr_value[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_value[0]_i_20_n_0\ : STD_LOGIC;
  signal \r_curr_value[0]_i_21_n_0\ : STD_LOGIC;
  signal \r_curr_value[0]_i_22_n_0\ : STD_LOGIC;
  signal \r_curr_value[0]_i_23_n_0\ : STD_LOGIC;
  signal \r_curr_value[0]_i_24_n_0\ : STD_LOGIC;
  signal \r_curr_value[0]_i_25_n_0\ : STD_LOGIC;
  signal \r_curr_value[0]_i_26_n_0\ : STD_LOGIC;
  signal \r_curr_value[0]_i_27_n_0\ : STD_LOGIC;
  signal \r_curr_value[0]_i_28_n_0\ : STD_LOGIC;
  signal \r_curr_value[0]_i_29_n_0\ : STD_LOGIC;
  signal \r_curr_value[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_curr_value[0]_i_30_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_15_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_16_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_17_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_18_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_19_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_20_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_21_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_22_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_23_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_24_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_25_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_26_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_27_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_28_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_29_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_curr_value[1]_i_30_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_15_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_16_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_17_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_18_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_19_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_20_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_21_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_22_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_23_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_24_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_25_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_26_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_27_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_28_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_29_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_curr_value[2]_i_30_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_15_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_16_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_17_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_18_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_19_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_20_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_21_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_22_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_23_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_24_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_25_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_26_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_27_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_28_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_29_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_curr_value[3]_i_30_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_15_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_16_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_17_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_18_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_19_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_20_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_21_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_22_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_23_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_24_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_25_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_26_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_27_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_28_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_29_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_curr_value[4]_i_30_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_15_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_16_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_17_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_18_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_19_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_20_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_21_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_22_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_23_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_24_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_25_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_26_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_27_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_28_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_29_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_curr_value[5]_i_30_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_15_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_16_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_17_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_18_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_19_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_20_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_21_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_22_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_23_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_24_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_25_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_26_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_27_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_28_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_29_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_2_n_0\ : STD_LOGIC;
  signal \r_curr_value[6]_i_30_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_15_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_16_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_17_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_18_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_19_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_20_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_21_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_22_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_23_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_24_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_25_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_26_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_27_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_28_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_29_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_curr_value[7]_i_30_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_15_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_16_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_17_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_18_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_19_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_20_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_21_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_22_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_23_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_24_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_25_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_26_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_27_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_28_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_29_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_curr_value[8]_i_30_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_16_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_17_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_18_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_19_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_1_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_20_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_21_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_22_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_23_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_24_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_25_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_26_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_27_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_28_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_29_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_2_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_30_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_31_n_0\ : STD_LOGIC;
  signal \r_curr_value[9]_i_3_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[0]_i_14_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[1]_i_11_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[1]_i_12_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[1]_i_14_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[2]_i_10_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[2]_i_11_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[2]_i_12_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[2]_i_14_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[2]_i_9_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[3]_i_14_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[4]_i_10_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[4]_i_11_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[4]_i_12_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[4]_i_14_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[4]_i_8_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[4]_i_9_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[5]_i_10_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[5]_i_11_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[5]_i_12_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[5]_i_14_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[5]_i_8_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[5]_i_9_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[6]_i_10_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[6]_i_11_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[6]_i_12_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[6]_i_14_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[6]_i_7_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[6]_i_8_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[6]_i_9_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[7]_i_11_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[7]_i_12_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[7]_i_14_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[8]_i_10_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[8]_i_11_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[8]_i_12_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[8]_i_14_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[8]_i_7_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[8]_i_8_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[8]_i_9_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[9]_i_10_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[9]_i_11_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[9]_i_12_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[9]_i_13_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[9]_i_15_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[9]_i_5_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[9]_i_6_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[9]_i_7_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[9]_i_8_n_0\ : STD_LOGIC;
  signal \r_curr_value_reg[9]_i_9_n_0\ : STD_LOGIC;
  signal r_input_coeffs : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs[0][0][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[0][0][9]_i_5_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[0][1][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[0][2][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[0][3][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[0][3][9]_i_2_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[0][4][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[0][5][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[0][5][9]_i_2_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[0][6][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[0][7][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[1][0][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[1][1][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[1][2][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[1][3][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[1][4][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[1][5][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[1][6][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[1][7][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[2][0][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[2][0][9]_i_2_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[2][1][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[2][2][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[2][3][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[2][4][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[2][5][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[2][6][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[2][7][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[3][0][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[3][0][9]_i_2_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[3][1][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[3][2][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[3][3][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[3][4][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[3][5][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[3][6][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[3][7][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[4][0][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[4][0][9]_i_2_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[4][1][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[4][2][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[4][3][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[4][4][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[4][5][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[4][6][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[4][7][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[5][0][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[5][0][9]_i_2_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[5][1][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[5][2][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[5][3][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[5][4][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[5][5][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[5][6][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[5][7][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[6][0][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[6][0][9]_i_2_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[6][1][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[6][2][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[6][3][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[6][4][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[6][5][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[6][6][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[6][7][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[7][0][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[7][1][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[7][2][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[7][3][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[7][4][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[7][5][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[7][6][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs[7][7][9]_i_1_n_0\ : STD_LOGIC;
  signal \r_input_coeffs__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[0][0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[0][1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[0][2]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[0][3]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[0][4]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[0][5]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[0][6]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[0][7]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[1][0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[1][1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[1][2]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[1][3]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[1][4]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[1][5]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[1][6]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[1][7]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[2][0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[2][1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[2][2]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[2][3]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[2][4]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[2][5]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[2][6]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[2][7]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[3][0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[3][1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[3][2]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[3][3]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[3][4]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[3][5]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[3][6]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[3][7]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[4][0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[4][1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[4][2]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[4][3]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[4][4]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[4][5]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[4][6]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[4][7]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[5][0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[5][1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[5][2]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[5][3]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[5][4]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[5][5]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[5][6]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[5][7]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[6][0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[6][1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[6][2]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[6][3]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[6][4]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[6][5]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[6][6]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[6][7]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \r_input_coeffs_reg[7][0]\ : STD_LOGIC;
  signal \r_input_coeffs_reg[7][1]\ : STD_LOGIC;
  signal \r_input_coeffs_reg[7][2]\ : STD_LOGIC;
  signal \r_input_coeffs_reg[7][4]\ : STD_LOGIC;
  signal \r_input_coeffs_reg[7][6]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][0][0]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][0][1]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][0][2]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][0][3]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][0][4]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][0][5]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][0][6]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][0][7]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][0][8]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][0][9]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][1][0]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][1][1]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][1][2]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][1][3]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][1][4]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][1][5]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][1][6]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][1][7]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][1][8]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][1][9]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][2][0]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][2][1]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][2][2]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][2][3]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][2][4]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][2][5]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][2][6]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][2][7]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][2][8]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][2][9]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][3][0]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][3][1]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][3][2]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][3][3]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][3][4]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][3][5]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][3][6]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][3][7]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][3][8]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][3][9]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][4][0]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][4][1]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][4][2]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][4][3]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][4][4]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][4][5]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][4][6]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][4][7]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][4][8]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][4][9]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][5][0]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][5][1]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][5][2]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][5][3]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][5][4]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][5][5]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][5][6]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][5][7]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][5][8]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][5][9]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][6][0]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][6][1]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][6][2]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][6][3]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][6][4]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][6][5]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][6][6]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][6][7]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][6][8]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][6][9]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][7][0]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][7][1]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][7][2]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][7][3]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][7][4]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][7][5]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][7][6]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][7][7]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][7][8]\ : STD_LOGIC;
  signal \r_input_coeffs_reg_n_0_[7][7][9]\ : STD_LOGIC;
  signal r_o_axis_TDATA : STD_LOGIC;
  signal \r_o_axis_TDATA[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_o_axis_TDATA[11]_i_1_n_0\ : STD_LOGIC;
  signal \r_o_axis_TDATA[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_o_axis_TDATA[13]_i_1_n_0\ : STD_LOGIC;
  signal \r_o_axis_TDATA[14]_i_1_n_0\ : STD_LOGIC;
  signal \r_o_axis_TDATA[15]_i_2_n_0\ : STD_LOGIC;
  signal \r_o_axis_TDATA[15]_i_3_n_0\ : STD_LOGIC;
  signal \r_o_axis_TDATA[15]_i_4_n_0\ : STD_LOGIC;
  signal r_o_axis_TLAST_i_1_n_0 : STD_LOGIC;
  signal r_o_axis_TLAST_i_2_n_0 : STD_LOGIC;
  signal \^r_o_axis_tlast_reg_0\ : STD_LOGIC;
  signal r_o_axis_TVALID_i_1_n_0 : STD_LOGIC;
  signal r_o_axis_TVALID_i_2_n_0 : STD_LOGIC;
  signal \^r_o_axis_tvalid_reg_0\ : STD_LOGIC;
  signal \w_counter_shifted1__0\ : STD_LOGIC;
  signal w_last_entry0 : STD_LOGIC;
  signal \w_last_entry__3\ : STD_LOGIC;
  signal NLW_r_counter1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of o_axis_TREADY_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_counter[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_counter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_counter[5]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_curr_input_col[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_curr_input_col[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_curr_input_col[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_curr_input_row[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_curr_input_row[2]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_curr_rle_col[0]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_curr_rle_col[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_curr_rle_col[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_curr_rle_col[2]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_curr_rle_row[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_curr_value[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_curr_value[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_curr_value[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_curr_value[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_curr_value[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_curr_value[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_curr_value[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_curr_value[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_curr_value[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_curr_value[9]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_input_coeffs[0][0][9]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_input_coeffs[0][0][9]_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_input_coeffs[0][1][9]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \r_input_coeffs[0][2][9]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_input_coeffs[0][3][9]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_input_coeffs[0][5][9]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_input_coeffs[0][6][9]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_input_coeffs[2][0][9]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_input_coeffs[4][0][9]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_input_coeffs[5][0][9]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_input_coeffs[6][0][9]_i_2\ : label is "soft_lutpair18";
  attribute RAM_STYLE : string;
  attribute RAM_STYLE of \r_input_coeffs_reg[0][0][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][0][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][0][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][0][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][0][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][0][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][0][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][0][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][0][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][0][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][1][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][1][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][1][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][1][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][1][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][1][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][1][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][1][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][1][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][1][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][2][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][2][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][2][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][2][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][2][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][2][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][2][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][2][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][2][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][2][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][3][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][3][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][3][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][3][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][3][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][3][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][3][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][3][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][3][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][3][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][4][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][4][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][4][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][4][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][4][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][4][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][4][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][4][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][4][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][4][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][5][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][5][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][5][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][5][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][5][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][5][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][5][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][5][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][5][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][5][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][6][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][6][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][6][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][6][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][6][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][6][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][6][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][6][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][6][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][6][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][7][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][7][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][7][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][7][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][7][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][7][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][7][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][7][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][7][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[0][7][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][0][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][0][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][0][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][0][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][0][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][0][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][0][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][0][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][0][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][0][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][1][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][1][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][1][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][1][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][1][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][1][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][1][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][1][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][1][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][1][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][2][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][2][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][2][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][2][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][2][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][2][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][2][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][2][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][2][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][2][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][3][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][3][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][3][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][3][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][3][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][3][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][3][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][3][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][3][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][3][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][4][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][4][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][4][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][4][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][4][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][4][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][4][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][4][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][4][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][4][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][5][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][5][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][5][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][5][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][5][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][5][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][5][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][5][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][5][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][5][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][6][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][6][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][6][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][6][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][6][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][6][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][6][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][6][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][6][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][6][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][7][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][7][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][7][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][7][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][7][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][7][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][7][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][7][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][7][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[1][7][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][0][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][0][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][0][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][0][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][0][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][0][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][0][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][0][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][0][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][0][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][1][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][1][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][1][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][1][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][1][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][1][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][1][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][1][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][1][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][1][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][2][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][2][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][2][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][2][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][2][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][2][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][2][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][2][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][2][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][2][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][3][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][3][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][3][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][3][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][3][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][3][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][3][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][3][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][3][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][3][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][4][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][4][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][4][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][4][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][4][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][4][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][4][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][4][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][4][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][4][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][5][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][5][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][5][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][5][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][5][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][5][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][5][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][5][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][5][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][5][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][6][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][6][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][6][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][6][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][6][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][6][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][6][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][6][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][6][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][6][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][7][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][7][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][7][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][7][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][7][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][7][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][7][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][7][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][7][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[2][7][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][0][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][0][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][0][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][0][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][0][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][0][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][0][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][0][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][0][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][0][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][1][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][1][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][1][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][1][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][1][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][1][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][1][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][1][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][1][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][1][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][2][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][2][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][2][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][2][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][2][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][2][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][2][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][2][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][2][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][2][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][3][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][3][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][3][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][3][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][3][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][3][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][3][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][3][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][3][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][3][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][4][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][4][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][4][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][4][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][4][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][4][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][4][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][4][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][4][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][4][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][5][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][5][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][5][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][5][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][5][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][5][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][5][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][5][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][5][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][5][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][6][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][6][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][6][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][6][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][6][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][6][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][6][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][6][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][6][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][6][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][7][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][7][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][7][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][7][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][7][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][7][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][7][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][7][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][7][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[3][7][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][0][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][0][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][0][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][0][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][0][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][0][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][0][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][0][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][0][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][0][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][1][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][1][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][1][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][1][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][1][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][1][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][1][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][1][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][1][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][1][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][2][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][2][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][2][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][2][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][2][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][2][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][2][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][2][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][2][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][2][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][3][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][3][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][3][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][3][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][3][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][3][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][3][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][3][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][3][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][3][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][4][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][4][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][4][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][4][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][4][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][4][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][4][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][4][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][4][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][4][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][5][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][5][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][5][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][5][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][5][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][5][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][5][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][5][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][5][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][5][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][6][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][6][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][6][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][6][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][6][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][6][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][6][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][6][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][6][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][6][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][7][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][7][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][7][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][7][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][7][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][7][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][7][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][7][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][7][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[4][7][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][0][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][0][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][0][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][0][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][0][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][0][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][0][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][0][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][0][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][0][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][1][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][1][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][1][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][1][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][1][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][1][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][1][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][1][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][1][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][1][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][2][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][2][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][2][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][2][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][2][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][2][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][2][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][2][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][2][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][2][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][3][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][3][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][3][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][3][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][3][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][3][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][3][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][3][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][3][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][3][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][4][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][4][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][4][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][4][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][4][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][4][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][4][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][4][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][4][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][4][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][5][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][5][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][5][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][5][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][5][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][5][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][5][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][5][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][5][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][5][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][6][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][6][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][6][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][6][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][6][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][6][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][6][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][6][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][6][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][6][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][7][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][7][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][7][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][7][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][7][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][7][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][7][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][7][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][7][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[5][7][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][0][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][0][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][0][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][0][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][0][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][0][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][0][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][0][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][0][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][0][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][1][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][1][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][1][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][1][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][1][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][1][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][1][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][1][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][1][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][1][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][2][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][2][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][2][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][2][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][2][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][2][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][2][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][2][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][2][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][2][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][3][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][3][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][3][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][3][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][3][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][3][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][3][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][3][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][3][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][3][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][4][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][4][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][4][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][4][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][4][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][4][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][4][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][4][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][4][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][4][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][5][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][5][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][5][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][5][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][5][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][5][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][5][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][5][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][5][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][5][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][6][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][6][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][6][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][6][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][6][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][6][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][6][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][6][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][6][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][6][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][7][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][7][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][7][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][7][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][7][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][7][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][7][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][7][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][7][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[6][7][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][0][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][0][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][0][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][0][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][0][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][0][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][0][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][0][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][0][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][0][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][1][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][1][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][1][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][1][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][1][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][1][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][1][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][1][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][1][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][1][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][2][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][2][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][2][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][2][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][2][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][2][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][2][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][2][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][2][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][2][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][3][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][3][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][3][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][3][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][3][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][3][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][3][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][3][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][3][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][3][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][4][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][4][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][4][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][4][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][4][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][4][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][4][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][4][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][4][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][4][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][5][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][5][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][5][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][5][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][5][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][5][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][5][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][5][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][5][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][5][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][6][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][6][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][6][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][6][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][6][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][6][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][6][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][6][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][6][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][6][9]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][7][0]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][7][1]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][7][2]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][7][3]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][7][4]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][7][5]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][7][6]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][7][7]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][7][8]\ : label is "registers";
  attribute RAM_STYLE of \r_input_coeffs_reg[7][7][9]\ : label is "registers";
  attribute SOFT_HLUTNM of \r_o_axis_TDATA[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_o_axis_TDATA[12]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_o_axis_TDATA[13]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_o_axis_TDATA[15]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of r_o_axis_TVALID_i_2 : label is "soft_lutpair6";
begin
  r_o_axis_TLAST_reg_0 <= \^r_o_axis_tlast_reg_0\;
  r_o_axis_TVALID_reg_0 <= \^r_o_axis_tvalid_reg_0\;
o_axis_TREADY_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_core_state,
      O => o_axis_TREADY
    );
r_core_state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFF0F077FF0000"
    )
        port map (
      I0 => i_axis_TREADY,
      I1 => \^r_o_axis_tlast_reg_0\,
      I2 => \r_core_state0__0\,
      I3 => \^r_o_axis_tvalid_reg_0\,
      I4 => r_core_state,
      I5 => i_axis_TVALID,
      O => r_core_state_i_1_n_0
    );
r_core_state_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => r_core_state_i_1_n_0,
      Q => r_core_state,
      R => r_o_axis_TVALID_i_1_n_0
    );
r_counter1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_counter1_carry_n_0,
      CO(2) => r_counter1_carry_n_1,
      CO(1) => r_counter1_carry_n_2,
      CO(0) => r_counter1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_r_counter1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => r_counter1_carry_i_1_n_0,
      S(2) => r_counter1_carry_i_2_n_0,
      S(1) => r_counter1_carry_i_3_n_0,
      S(0) => r_counter1_carry_i_4_n_0
    );
r_counter1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r_curr_value(9),
      I1 => \r_curr_value[9]_i_3_n_0\,
      O => r_counter1_carry_i_1_n_0
    );
r_counter1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \r_curr_value[6]_i_2_n_0\,
      I1 => r_curr_value(6),
      I2 => r_curr_value(8),
      I3 => \r_curr_value[8]_i_2_n_0\,
      I4 => r_curr_value(7),
      I5 => \r_curr_value[7]_i_2_n_0\,
      O => r_counter1_carry_i_2_n_0
    );
r_counter1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \r_curr_value[3]_i_2_n_0\,
      I1 => r_curr_value(3),
      I2 => r_curr_value(5),
      I3 => \r_curr_value[5]_i_2_n_0\,
      I4 => r_curr_value(4),
      I5 => \r_curr_value[4]_i_2_n_0\,
      O => r_counter1_carry_i_3_n_0
    );
r_counter1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \r_curr_value[0]_i_2_n_0\,
      I1 => r_curr_value(0),
      I2 => r_curr_value(2),
      I3 => \r_curr_value[2]_i_2_n_0\,
      I4 => r_curr_value(1),
      I5 => \r_curr_value[1]_i_2_n_0\,
      O => r_counter1_carry_i_4_n_0
    );
\r_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2FFF70"
    )
        port map (
      I0 => \^r_o_axis_tvalid_reg_0\,
      I1 => \^r_o_axis_tlast_reg_0\,
      I2 => \r_counter[5]_i_2_n_0\,
      I3 => \r_curr_input_col[2]_i_3_n_0\,
      I4 => \r_counter_reg_n_0_[0]\,
      O => \r_counter[0]_i_1_n_0\
    );
\r_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \r_counter_reg_n_0_[1]\,
      I1 => \r_counter_reg_n_0_[0]\,
      I2 => \^r_o_axis_tvalid_reg_0\,
      O => \r_counter[1]_i_1_n_0\
    );
\r_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \r_counter_reg_n_0_[2]\,
      I1 => \r_counter_reg_n_0_[1]\,
      I2 => \r_counter_reg_n_0_[0]\,
      I3 => \^r_o_axis_tvalid_reg_0\,
      O => \r_counter[2]_i_1_n_0\
    );
\r_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \r_counter_reg_n_0_[3]\,
      I1 => \r_counter_reg_n_0_[2]\,
      I2 => \r_counter_reg_n_0_[0]\,
      I3 => \r_counter_reg_n_0_[1]\,
      I4 => \^r_o_axis_tvalid_reg_0\,
      O => \r_counter[3]_i_1_n_0\
    );
\r_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => \r_counter_reg_n_0_[4]\,
      I1 => \r_counter_reg_n_0_[3]\,
      I2 => \r_counter_reg_n_0_[1]\,
      I3 => \r_counter_reg_n_0_[0]\,
      I4 => \r_counter_reg_n_0_[2]\,
      I5 => \^r_o_axis_tvalid_reg_0\,
      O => \r_counter[4]_i_1_n_0\
    );
\r_counter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => i_aresetn,
      I1 => \r_curr_input_col[2]_i_3_n_0\,
      O => \r_counter[5]_i_1_n_0\
    );
\r_counter[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA202200002022"
    )
        port map (
      I0 => r_core_state,
      I1 => r_counter1_carry_n_0,
      I2 => \r_counter0__9\,
      I3 => \w_last_entry__3\,
      I4 => \^r_o_axis_tvalid_reg_0\,
      I5 => i_axis_TREADY,
      O => \r_counter[5]_i_2_n_0\
    );
\r_counter[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_o_axis_TDATA[15]_i_4_n_0\,
      I1 => \^r_o_axis_tvalid_reg_0\,
      O => \r_counter[5]_i_3_n_0\
    );
\r_counter[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \r_counter_reg_n_0_[2]\,
      I1 => \r_counter_reg_n_0_[0]\,
      I2 => \r_counter_reg_n_0_[1]\,
      I3 => \r_counter_reg_n_0_[4]\,
      I4 => \r_counter_reg_n_0_[3]\,
      I5 => \r_counter_reg_n_0_[5]\,
      O => \r_counter0__9\
    );
\r_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \r_counter[0]_i_1_n_0\,
      Q => \r_counter_reg_n_0_[0]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_counter[5]_i_2_n_0\,
      D => \r_counter[1]_i_1_n_0\,
      Q => \r_counter_reg_n_0_[1]\,
      R => \r_counter[5]_i_1_n_0\
    );
\r_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_counter[5]_i_2_n_0\,
      D => \r_counter[2]_i_1_n_0\,
      Q => \r_counter_reg_n_0_[2]\,
      R => \r_counter[5]_i_1_n_0\
    );
\r_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_counter[5]_i_2_n_0\,
      D => \r_counter[3]_i_1_n_0\,
      Q => \r_counter_reg_n_0_[3]\,
      R => \r_counter[5]_i_1_n_0\
    );
\r_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_counter[5]_i_2_n_0\,
      D => \r_counter[4]_i_1_n_0\,
      Q => \r_counter_reg_n_0_[4]\,
      R => \r_counter[5]_i_1_n_0\
    );
\r_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_counter[5]_i_2_n_0\,
      D => \r_counter[5]_i_3_n_0\,
      Q => \r_counter_reg_n_0_[5]\,
      R => \r_counter[5]_i_1_n_0\
    );
\r_curr_input_col[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => i_axis_TVALID,
      I1 => r_core_state,
      I2 => \r_curr_input_col_reg_n_0_[0]\,
      O => \r_curr_input_col[0]_i_1_n_0\
    );
\r_curr_input_col[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \r_curr_input_col_reg_n_0_[0]\,
      I1 => i_axis_TVALID,
      I2 => r_core_state,
      I3 => \r_curr_input_col_reg_n_0_[1]\,
      O => \r_curr_input_col[1]_i_1_n_0\
    );
\r_curr_input_col[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \r_curr_input_col[2]_i_3_n_0\,
      I1 => i_aresetn,
      O => r_curr_input_col
    );
\r_curr_input_col[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0080"
    )
        port map (
      I0 => \r_curr_input_col_reg_n_0_[0]\,
      I1 => \r_curr_input_col_reg_n_0_[1]\,
      I2 => i_axis_TVALID,
      I3 => r_core_state,
      I4 => \r_curr_input_col_reg_n_0_[2]\,
      O => \r_curr_input_col[2]_i_2_n_0\
    );
\r_curr_input_col[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \r_curr_input_row_reg_n_0_[2]\,
      I1 => \r_curr_input_row_reg_n_0_[0]\,
      I2 => \r_curr_input_row_reg_n_0_[1]\,
      I3 => r_core_state1,
      I4 => i_axis_TVALID,
      I5 => r_core_state,
      O => \r_curr_input_col[2]_i_3_n_0\
    );
\r_curr_input_col_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \r_curr_input_col[0]_i_1_n_0\,
      Q => \r_curr_input_col_reg_n_0_[0]\,
      R => r_curr_input_col
    );
\r_curr_input_col_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \r_curr_input_col[1]_i_1_n_0\,
      Q => \r_curr_input_col_reg_n_0_[1]\,
      R => r_curr_input_col
    );
\r_curr_input_col_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \r_curr_input_col[2]_i_2_n_0\,
      Q => \r_curr_input_col_reg_n_0_[2]\,
      R => r_curr_input_col
    );
\r_curr_input_row[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF40000000"
    )
        port map (
      I0 => r_core_state,
      I1 => i_axis_TVALID,
      I2 => \r_curr_input_col_reg_n_0_[2]\,
      I3 => \r_curr_input_col_reg_n_0_[0]\,
      I4 => \r_curr_input_col_reg_n_0_[1]\,
      I5 => \r_curr_input_row_reg_n_0_[0]\,
      O => \r_curr_input_row[0]_i_1_n_0\
    );
\r_curr_input_row[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0080"
    )
        port map (
      I0 => \r_curr_input_row_reg_n_0_[0]\,
      I1 => r_core_state1,
      I2 => i_axis_TVALID,
      I3 => r_core_state,
      I4 => \r_curr_input_row_reg_n_0_[1]\,
      O => \r_curr_input_row[1]_i_1_n_0\
    );
\r_curr_input_row[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00008000"
    )
        port map (
      I0 => \r_curr_input_row_reg_n_0_[0]\,
      I1 => \r_curr_input_row_reg_n_0_[1]\,
      I2 => r_core_state1,
      I3 => i_axis_TVALID,
      I4 => r_core_state,
      I5 => \r_curr_input_row_reg_n_0_[2]\,
      O => \r_curr_input_row[2]_i_1_n_0\
    );
\r_curr_input_row[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \r_curr_input_col_reg_n_0_[1]\,
      I1 => \r_curr_input_col_reg_n_0_[0]\,
      I2 => \r_curr_input_col_reg_n_0_[2]\,
      O => r_core_state1
    );
\r_curr_input_row_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \r_curr_input_row[0]_i_1_n_0\,
      Q => \r_curr_input_row_reg_n_0_[0]\,
      R => r_curr_input_col
    );
\r_curr_input_row_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \r_curr_input_row[1]_i_1_n_0\,
      Q => \r_curr_input_row_reg_n_0_[1]\,
      R => r_curr_input_col
    );
\r_curr_input_row_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \r_curr_input_row[2]_i_1_n_0\,
      Q => \r_curr_input_row_reg_n_0_[2]\,
      R => r_curr_input_col
    );
\r_curr_rle_col[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABFBFBF8A808080"
    )
        port map (
      I0 => \r_curr_rle_col[0]_i_2_n_0\,
      I1 => \r_curr_rle_col[0]_i_3_n_0\,
      I2 => r_core_state,
      I3 => \r_core_state0__0\,
      I4 => i_axis_TVALID,
      I5 => \r_curr_rle_col_reg_n_0_[0]\,
      O => \r_curr_rle_col[0]_i_1_n_0\
    );
\r_curr_rle_col[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15FF"
    )
        port map (
      I0 => \r_curr_rle_col_reg_n_0_[0]\,
      I1 => \^r_o_axis_tvalid_reg_0\,
      I2 => \^r_o_axis_tlast_reg_0\,
      I3 => r_core_state,
      O => \r_curr_rle_col[0]_i_2_n_0\
    );
\r_curr_rle_col[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80A080AF"
    )
        port map (
      I0 => i_axis_TREADY,
      I1 => \^r_o_axis_tlast_reg_0\,
      I2 => \^r_o_axis_tvalid_reg_0\,
      I3 => \w_last_entry__3\,
      I4 => r_counter1_carry_n_0,
      O => \r_curr_rle_col[0]_i_3_n_0\
    );
\r_curr_rle_col[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \r_curr_input_row_reg_n_0_[2]\,
      I1 => \r_curr_input_row_reg_n_0_[0]\,
      I2 => \r_curr_input_row_reg_n_0_[1]\,
      I3 => \r_curr_input_col_reg_n_0_[2]\,
      I4 => \r_curr_input_col_reg_n_0_[0]\,
      I5 => \r_curr_input_col_reg_n_0_[1]\,
      O => \r_core_state0__0\
    );
\r_curr_rle_col[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \r_curr_rle_col_reg_n_0_[1]\,
      I1 => r_curr_rle_col(2),
      I2 => \r_curr_rle_col_reg_n_0_[0]\,
      I3 => \r_curr_rle_col[2]_i_3_n_0\,
      O => \r_curr_rle_col[1]_i_1_n_0\
    );
\r_curr_rle_col[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \r_curr_rle_col_reg_n_0_[2]\,
      I1 => r_curr_rle_col(2),
      I2 => \r_curr_rle_col_reg_n_0_[1]\,
      I3 => \r_curr_rle_col_reg_n_0_[0]\,
      I4 => \r_curr_rle_col[2]_i_3_n_0\,
      O => \r_curr_rle_col[2]_i_1_n_0\
    );
\r_curr_rle_col[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A020002"
    )
        port map (
      I0 => r_core_state,
      I1 => r_counter1_carry_n_0,
      I2 => \w_last_entry__3\,
      I3 => \^r_o_axis_tvalid_reg_0\,
      I4 => i_axis_TREADY,
      O => r_curr_rle_col(2)
    );
\r_curr_rle_col[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2222222FFFFFFFF"
    )
        port map (
      I0 => \r_curr_rle_col[2]_i_4_n_0\,
      I1 => r_core_state,
      I2 => \^r_o_axis_tvalid_reg_0\,
      I3 => \^r_o_axis_tlast_reg_0\,
      I4 => i_axis_TREADY,
      I5 => i_aresetn,
      O => \r_curr_rle_col[2]_i_3_n_0\
    );
\r_curr_rle_col[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => r_core_state1,
      I1 => \r_curr_input_row_reg_n_0_[1]\,
      I2 => \r_curr_input_row_reg_n_0_[0]\,
      I3 => \r_curr_input_row_reg_n_0_[2]\,
      I4 => r_core_state,
      I5 => i_axis_TVALID,
      O => \r_curr_rle_col[2]_i_4_n_0\
    );
\r_curr_rle_col_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \r_curr_rle_col[0]_i_1_n_0\,
      Q => \r_curr_rle_col_reg_n_0_[0]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_curr_rle_col_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \r_curr_rle_col[1]_i_1_n_0\,
      Q => \r_curr_rle_col_reg_n_0_[1]\,
      R => '0'
    );
\r_curr_rle_col_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \r_curr_rle_col[2]_i_1_n_0\,
      Q => \r_curr_rle_col_reg_n_0_[2]\,
      R => '0'
    );
\r_curr_rle_row[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00606060"
    )
        port map (
      I0 => \r_curr_rle_row_reg_n_0_[0]\,
      I1 => \r_curr_rle_row[2]_i_2_n_0\,
      I2 => i_aresetn,
      I3 => r_core_state,
      I4 => r_curr_rle_row,
      O => \r_curr_rle_row[0]_i_1_n_0\
    );
\r_curr_rle_row[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00006A006A006A00"
    )
        port map (
      I0 => \r_curr_rle_row_reg_n_0_[1]\,
      I1 => \r_curr_rle_row[2]_i_2_n_0\,
      I2 => \r_curr_rle_row_reg_n_0_[0]\,
      I3 => i_aresetn,
      I4 => r_core_state,
      I5 => r_curr_rle_row,
      O => \r_curr_rle_row[1]_i_1_n_0\
    );
\r_curr_rle_row[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \r_curr_rle_row_reg_n_0_[2]\,
      I1 => \r_curr_rle_row[2]_i_2_n_0\,
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_curr_rle_row_reg_n_0_[0]\,
      I4 => r_o_axis_TDATA,
      O => \r_curr_rle_row[2]_i_1_n_0\
    );
\r_curr_rle_row[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0002000000020"
    )
        port map (
      I0 => r_core_state,
      I1 => r_counter1_carry_n_0,
      I2 => w_last_entry0,
      I3 => \w_last_entry__3\,
      I4 => \^r_o_axis_tvalid_reg_0\,
      I5 => i_axis_TREADY,
      O => \r_curr_rle_row[2]_i_2_n_0\
    );
\r_curr_rle_row[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \r_curr_rle_col_reg_n_0_[1]\,
      I1 => \r_curr_rle_col_reg_n_0_[0]\,
      I2 => \r_curr_rle_col_reg_n_0_[2]\,
      O => w_last_entry0
    );
\r_curr_rle_row_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \r_curr_rle_row[0]_i_1_n_0\,
      Q => \r_curr_rle_row_reg_n_0_[0]\,
      R => '0'
    );
\r_curr_rle_row_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \r_curr_rle_row[1]_i_1_n_0\,
      Q => \r_curr_rle_row_reg_n_0_[1]\,
      R => '0'
    );
\r_curr_rle_row_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \r_curr_rle_row[2]_i_1_n_0\,
      Q => \r_curr_rle_row_reg_n_0_[2]\,
      R => '0'
    );
\r_curr_value[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_curr_value[0]_i_2_n_0\,
      I1 => \r_input_coeffs_reg[0][0]\(0),
      I2 => r_core_state,
      O => \r_curr_value[0]_i_1_n_0\
    );
\r_curr_value[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][6]\(0),
      I1 => \r_input_coeffs_reg[2][6]\(0),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][6]\(0),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][6]\(0),
      O => \r_curr_value[0]_i_15_n_0\
    );
\r_curr_value[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][6][0]\,
      I1 => \r_input_coeffs_reg[6][6]\(0),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][6]\(0),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][6]\(0),
      O => \r_curr_value[0]_i_16_n_0\
    );
\r_curr_value[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][7]\(0),
      I1 => \r_input_coeffs_reg[2][7]\(0),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][7]\(0),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][7]\(0),
      O => \r_curr_value[0]_i_17_n_0\
    );
\r_curr_value[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][7][0]\,
      I1 => \r_input_coeffs_reg[6][7]\(0),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][7]\(0),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][7]\(0),
      O => \r_curr_value[0]_i_18_n_0\
    );
\r_curr_value[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][4]\(0),
      I1 => \r_input_coeffs_reg[2][4]\(0),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][4]\(0),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][4]\(0),
      O => \r_curr_value[0]_i_19_n_0\
    );
\r_curr_value[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_curr_value_reg[0]_i_3_n_0\,
      I1 => \r_curr_value_reg[0]_i_4_n_0\,
      I2 => \r_curr_rle_col_reg_n_0_[2]\,
      I3 => \r_curr_value_reg[0]_i_5_n_0\,
      I4 => \r_curr_rle_col_reg_n_0_[1]\,
      I5 => \r_curr_value_reg[0]_i_6_n_0\,
      O => \r_curr_value[0]_i_2_n_0\
    );
\r_curr_value[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][4][0]\,
      I1 => \r_input_coeffs_reg[6][4]\(0),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][4]\(0),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][4]\(0),
      O => \r_curr_value[0]_i_20_n_0\
    );
\r_curr_value[0]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][5]\(0),
      I1 => \r_input_coeffs_reg[2][5]\(0),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][5]\(0),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][5]\(0),
      O => \r_curr_value[0]_i_21_n_0\
    );
\r_curr_value[0]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][5][0]\,
      I1 => \r_input_coeffs_reg[6][5]\(0),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][5]\(0),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][5]\(0),
      O => \r_curr_value[0]_i_22_n_0\
    );
\r_curr_value[0]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][2]\(0),
      I1 => \r_input_coeffs_reg[2][2]\(0),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][2]\(0),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][2]\(0),
      O => \r_curr_value[0]_i_23_n_0\
    );
\r_curr_value[0]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][2][0]\,
      I1 => \r_input_coeffs_reg[6][2]\(0),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][2]\(0),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][2]\(0),
      O => \r_curr_value[0]_i_24_n_0\
    );
\r_curr_value[0]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][3]\(0),
      I1 => \r_input_coeffs_reg[2][3]\(0),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][3]\(0),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][3]\(0),
      O => \r_curr_value[0]_i_25_n_0\
    );
\r_curr_value[0]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][3][0]\,
      I1 => \r_input_coeffs_reg[6][3]\(0),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][3]\(0),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][3]\(0),
      O => \r_curr_value[0]_i_26_n_0\
    );
\r_curr_value[0]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][0]\(0),
      I1 => \r_input_coeffs_reg[2][0]\(0),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][0]\(0),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][0]\(0),
      O => \r_curr_value[0]_i_27_n_0\
    );
\r_curr_value[0]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][0][0]\,
      I1 => \r_input_coeffs_reg[6][0]\(0),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][0]\(0),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][0]\(0),
      O => \r_curr_value[0]_i_28_n_0\
    );
\r_curr_value[0]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][1]\(0),
      I1 => \r_input_coeffs_reg[2][1]\(0),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][1]\(0),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][1]\(0),
      O => \r_curr_value[0]_i_29_n_0\
    );
\r_curr_value[0]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][1][0]\,
      I1 => \r_input_coeffs_reg[6][1]\(0),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][1]\(0),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][1]\(0),
      O => \r_curr_value[0]_i_30_n_0\
    );
\r_curr_value[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_curr_value[1]_i_2_n_0\,
      I1 => \r_input_coeffs_reg[0][0]\(1),
      I2 => r_core_state,
      O => \r_curr_value[1]_i_1_n_0\
    );
\r_curr_value[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][6]\(1),
      I1 => \r_input_coeffs_reg[2][6]\(1),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][6]\(1),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][6]\(1),
      O => \r_curr_value[1]_i_15_n_0\
    );
\r_curr_value[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][6][1]\,
      I1 => \r_input_coeffs_reg[6][6]\(1),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][6]\(1),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][6]\(1),
      O => \r_curr_value[1]_i_16_n_0\
    );
\r_curr_value[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][7]\(1),
      I1 => \r_input_coeffs_reg[2][7]\(1),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][7]\(1),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][7]\(1),
      O => \r_curr_value[1]_i_17_n_0\
    );
\r_curr_value[1]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][7][1]\,
      I1 => \r_input_coeffs_reg[6][7]\(1),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][7]\(1),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][7]\(1),
      O => \r_curr_value[1]_i_18_n_0\
    );
\r_curr_value[1]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][4]\(1),
      I1 => \r_input_coeffs_reg[2][4]\(1),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][4]\(1),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][4]\(1),
      O => \r_curr_value[1]_i_19_n_0\
    );
\r_curr_value[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_curr_value_reg[1]_i_3_n_0\,
      I1 => \r_curr_value_reg[1]_i_4_n_0\,
      I2 => \r_curr_rle_col_reg_n_0_[2]\,
      I3 => \r_curr_value_reg[1]_i_5_n_0\,
      I4 => \r_curr_rle_col_reg_n_0_[1]\,
      I5 => \r_curr_value_reg[1]_i_6_n_0\,
      O => \r_curr_value[1]_i_2_n_0\
    );
\r_curr_value[1]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][4][1]\,
      I1 => \r_input_coeffs_reg[6][4]\(1),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][4]\(1),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][4]\(1),
      O => \r_curr_value[1]_i_20_n_0\
    );
\r_curr_value[1]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][5]\(1),
      I1 => \r_input_coeffs_reg[2][5]\(1),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][5]\(1),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][5]\(1),
      O => \r_curr_value[1]_i_21_n_0\
    );
\r_curr_value[1]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][5][1]\,
      I1 => \r_input_coeffs_reg[6][5]\(1),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][5]\(1),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][5]\(1),
      O => \r_curr_value[1]_i_22_n_0\
    );
\r_curr_value[1]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][2]\(1),
      I1 => \r_input_coeffs_reg[2][2]\(1),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][2]\(1),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][2]\(1),
      O => \r_curr_value[1]_i_23_n_0\
    );
\r_curr_value[1]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][2][1]\,
      I1 => \r_input_coeffs_reg[6][2]\(1),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][2]\(1),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][2]\(1),
      O => \r_curr_value[1]_i_24_n_0\
    );
\r_curr_value[1]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][3]\(1),
      I1 => \r_input_coeffs_reg[2][3]\(1),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][3]\(1),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][3]\(1),
      O => \r_curr_value[1]_i_25_n_0\
    );
\r_curr_value[1]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][3][1]\,
      I1 => \r_input_coeffs_reg[6][3]\(1),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][3]\(1),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][3]\(1),
      O => \r_curr_value[1]_i_26_n_0\
    );
\r_curr_value[1]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][0]\(1),
      I1 => \r_input_coeffs_reg[2][0]\(1),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][0]\(1),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][0]\(1),
      O => \r_curr_value[1]_i_27_n_0\
    );
\r_curr_value[1]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][0][1]\,
      I1 => \r_input_coeffs_reg[6][0]\(1),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][0]\(1),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][0]\(1),
      O => \r_curr_value[1]_i_28_n_0\
    );
\r_curr_value[1]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][1]\(1),
      I1 => \r_input_coeffs_reg[2][1]\(1),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][1]\(1),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][1]\(1),
      O => \r_curr_value[1]_i_29_n_0\
    );
\r_curr_value[1]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][1][1]\,
      I1 => \r_input_coeffs_reg[6][1]\(1),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][1]\(1),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][1]\(1),
      O => \r_curr_value[1]_i_30_n_0\
    );
\r_curr_value[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_curr_value[2]_i_2_n_0\,
      I1 => \r_input_coeffs_reg[0][0]\(2),
      I2 => r_core_state,
      O => \r_curr_value[2]_i_1_n_0\
    );
\r_curr_value[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][6]\(2),
      I1 => \r_input_coeffs_reg[2][6]\(2),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][6]\(2),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][6]\(2),
      O => \r_curr_value[2]_i_15_n_0\
    );
\r_curr_value[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][6][2]\,
      I1 => \r_input_coeffs_reg[6][6]\(2),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][6]\(2),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][6]\(2),
      O => \r_curr_value[2]_i_16_n_0\
    );
\r_curr_value[2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][7]\(2),
      I1 => \r_input_coeffs_reg[2][7]\(2),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][7]\(2),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][7]\(2),
      O => \r_curr_value[2]_i_17_n_0\
    );
\r_curr_value[2]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][7][2]\,
      I1 => \r_input_coeffs_reg[6][7]\(2),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][7]\(2),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][7]\(2),
      O => \r_curr_value[2]_i_18_n_0\
    );
\r_curr_value[2]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][4]\(2),
      I1 => \r_input_coeffs_reg[2][4]\(2),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][4]\(2),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][4]\(2),
      O => \r_curr_value[2]_i_19_n_0\
    );
\r_curr_value[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_curr_value_reg[2]_i_3_n_0\,
      I1 => \r_curr_value_reg[2]_i_4_n_0\,
      I2 => \r_curr_rle_col_reg_n_0_[2]\,
      I3 => \r_curr_value_reg[2]_i_5_n_0\,
      I4 => \r_curr_rle_col_reg_n_0_[1]\,
      I5 => \r_curr_value_reg[2]_i_6_n_0\,
      O => \r_curr_value[2]_i_2_n_0\
    );
\r_curr_value[2]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][4][2]\,
      I1 => \r_input_coeffs_reg[6][4]\(2),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][4]\(2),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][4]\(2),
      O => \r_curr_value[2]_i_20_n_0\
    );
\r_curr_value[2]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][5]\(2),
      I1 => \r_input_coeffs_reg[2][5]\(2),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][5]\(2),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][5]\(2),
      O => \r_curr_value[2]_i_21_n_0\
    );
\r_curr_value[2]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][5][2]\,
      I1 => \r_input_coeffs_reg[6][5]\(2),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][5]\(2),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][5]\(2),
      O => \r_curr_value[2]_i_22_n_0\
    );
\r_curr_value[2]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][2]\(2),
      I1 => \r_input_coeffs_reg[2][2]\(2),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][2]\(2),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][2]\(2),
      O => \r_curr_value[2]_i_23_n_0\
    );
\r_curr_value[2]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][2][2]\,
      I1 => \r_input_coeffs_reg[6][2]\(2),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][2]\(2),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][2]\(2),
      O => \r_curr_value[2]_i_24_n_0\
    );
\r_curr_value[2]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][3]\(2),
      I1 => \r_input_coeffs_reg[2][3]\(2),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][3]\(2),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][3]\(2),
      O => \r_curr_value[2]_i_25_n_0\
    );
\r_curr_value[2]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][3][2]\,
      I1 => \r_input_coeffs_reg[6][3]\(2),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][3]\(2),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][3]\(2),
      O => \r_curr_value[2]_i_26_n_0\
    );
\r_curr_value[2]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][0]\(2),
      I1 => \r_input_coeffs_reg[2][0]\(2),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][0]\(2),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][0]\(2),
      O => \r_curr_value[2]_i_27_n_0\
    );
\r_curr_value[2]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][0][2]\,
      I1 => \r_input_coeffs_reg[6][0]\(2),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][0]\(2),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][0]\(2),
      O => \r_curr_value[2]_i_28_n_0\
    );
\r_curr_value[2]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][1]\(2),
      I1 => \r_input_coeffs_reg[2][1]\(2),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][1]\(2),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][1]\(2),
      O => \r_curr_value[2]_i_29_n_0\
    );
\r_curr_value[2]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][1][2]\,
      I1 => \r_input_coeffs_reg[6][1]\(2),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][1]\(2),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][1]\(2),
      O => \r_curr_value[2]_i_30_n_0\
    );
\r_curr_value[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_curr_value[3]_i_2_n_0\,
      I1 => \r_input_coeffs_reg[0][0]\(3),
      I2 => r_core_state,
      O => \r_curr_value[3]_i_1_n_0\
    );
\r_curr_value[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][6]\(3),
      I1 => \r_input_coeffs_reg[2][6]\(3),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][6]\(3),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][6]\(3),
      O => \r_curr_value[3]_i_15_n_0\
    );
\r_curr_value[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][6][3]\,
      I1 => \r_input_coeffs_reg[6][6]\(3),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][6]\(3),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][6]\(3),
      O => \r_curr_value[3]_i_16_n_0\
    );
\r_curr_value[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][7]\(3),
      I1 => \r_input_coeffs_reg[2][7]\(3),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][7]\(3),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][7]\(3),
      O => \r_curr_value[3]_i_17_n_0\
    );
\r_curr_value[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][7][3]\,
      I1 => \r_input_coeffs_reg[6][7]\(3),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][7]\(3),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][7]\(3),
      O => \r_curr_value[3]_i_18_n_0\
    );
\r_curr_value[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][4]\(3),
      I1 => \r_input_coeffs_reg[2][4]\(3),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][4]\(3),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][4]\(3),
      O => \r_curr_value[3]_i_19_n_0\
    );
\r_curr_value[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_curr_value_reg[3]_i_3_n_0\,
      I1 => \r_curr_value_reg[3]_i_4_n_0\,
      I2 => \r_curr_rle_col_reg_n_0_[2]\,
      I3 => \r_curr_value_reg[3]_i_5_n_0\,
      I4 => \r_curr_rle_col_reg_n_0_[1]\,
      I5 => \r_curr_value_reg[3]_i_6_n_0\,
      O => \r_curr_value[3]_i_2_n_0\
    );
\r_curr_value[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][4][3]\,
      I1 => \r_input_coeffs_reg[6][4]\(3),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][4]\(3),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][4]\(3),
      O => \r_curr_value[3]_i_20_n_0\
    );
\r_curr_value[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][5]\(3),
      I1 => \r_input_coeffs_reg[2][5]\(3),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][5]\(3),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][5]\(3),
      O => \r_curr_value[3]_i_21_n_0\
    );
\r_curr_value[3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][5][3]\,
      I1 => \r_input_coeffs_reg[6][5]\(3),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][5]\(3),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][5]\(3),
      O => \r_curr_value[3]_i_22_n_0\
    );
\r_curr_value[3]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][2]\(3),
      I1 => \r_input_coeffs_reg[2][2]\(3),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][2]\(3),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][2]\(3),
      O => \r_curr_value[3]_i_23_n_0\
    );
\r_curr_value[3]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][2][3]\,
      I1 => \r_input_coeffs_reg[6][2]\(3),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][2]\(3),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][2]\(3),
      O => \r_curr_value[3]_i_24_n_0\
    );
\r_curr_value[3]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][3]\(3),
      I1 => \r_input_coeffs_reg[2][3]\(3),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][3]\(3),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][3]\(3),
      O => \r_curr_value[3]_i_25_n_0\
    );
\r_curr_value[3]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][3][3]\,
      I1 => \r_input_coeffs_reg[6][3]\(3),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][3]\(3),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][3]\(3),
      O => \r_curr_value[3]_i_26_n_0\
    );
\r_curr_value[3]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][0]\(3),
      I1 => \r_input_coeffs_reg[2][0]\(3),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][0]\(3),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][0]\(3),
      O => \r_curr_value[3]_i_27_n_0\
    );
\r_curr_value[3]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][0][3]\,
      I1 => \r_input_coeffs_reg[6][0]\(3),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][0]\(3),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][0]\(3),
      O => \r_curr_value[3]_i_28_n_0\
    );
\r_curr_value[3]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][1]\(3),
      I1 => \r_input_coeffs_reg[2][1]\(3),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][1]\(3),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][1]\(3),
      O => \r_curr_value[3]_i_29_n_0\
    );
\r_curr_value[3]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][1][3]\,
      I1 => \r_input_coeffs_reg[6][1]\(3),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][1]\(3),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][1]\(3),
      O => \r_curr_value[3]_i_30_n_0\
    );
\r_curr_value[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_curr_value[4]_i_2_n_0\,
      I1 => \r_input_coeffs_reg[0][0]\(4),
      I2 => r_core_state,
      O => \r_curr_value[4]_i_1_n_0\
    );
\r_curr_value[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][6]\(4),
      I1 => \r_input_coeffs_reg[2][6]\(4),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][6]\(4),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][6]\(4),
      O => \r_curr_value[4]_i_15_n_0\
    );
\r_curr_value[4]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][6][4]\,
      I1 => \r_input_coeffs_reg[6][6]\(4),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][6]\(4),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][6]\(4),
      O => \r_curr_value[4]_i_16_n_0\
    );
\r_curr_value[4]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][7]\(4),
      I1 => \r_input_coeffs_reg[2][7]\(4),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][7]\(4),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][7]\(4),
      O => \r_curr_value[4]_i_17_n_0\
    );
\r_curr_value[4]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][7][4]\,
      I1 => \r_input_coeffs_reg[6][7]\(4),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][7]\(4),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][7]\(4),
      O => \r_curr_value[4]_i_18_n_0\
    );
\r_curr_value[4]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][4]\(4),
      I1 => \r_input_coeffs_reg[2][4]\(4),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][4]\(4),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][4]\(4),
      O => \r_curr_value[4]_i_19_n_0\
    );
\r_curr_value[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_curr_value_reg[4]_i_3_n_0\,
      I1 => \r_curr_value_reg[4]_i_4_n_0\,
      I2 => \r_curr_rle_col_reg_n_0_[2]\,
      I3 => \r_curr_value_reg[4]_i_5_n_0\,
      I4 => \r_curr_rle_col_reg_n_0_[1]\,
      I5 => \r_curr_value_reg[4]_i_6_n_0\,
      O => \r_curr_value[4]_i_2_n_0\
    );
\r_curr_value[4]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][4][4]\,
      I1 => \r_input_coeffs_reg[6][4]\(4),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][4]\(4),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][4]\(4),
      O => \r_curr_value[4]_i_20_n_0\
    );
\r_curr_value[4]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][5]\(4),
      I1 => \r_input_coeffs_reg[2][5]\(4),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][5]\(4),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][5]\(4),
      O => \r_curr_value[4]_i_21_n_0\
    );
\r_curr_value[4]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][5][4]\,
      I1 => \r_input_coeffs_reg[6][5]\(4),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][5]\(4),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][5]\(4),
      O => \r_curr_value[4]_i_22_n_0\
    );
\r_curr_value[4]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][2]\(4),
      I1 => \r_input_coeffs_reg[2][2]\(4),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][2]\(4),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][2]\(4),
      O => \r_curr_value[4]_i_23_n_0\
    );
\r_curr_value[4]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][2][4]\,
      I1 => \r_input_coeffs_reg[6][2]\(4),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][2]\(4),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][2]\(4),
      O => \r_curr_value[4]_i_24_n_0\
    );
\r_curr_value[4]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][3]\(4),
      I1 => \r_input_coeffs_reg[2][3]\(4),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][3]\(4),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][3]\(4),
      O => \r_curr_value[4]_i_25_n_0\
    );
\r_curr_value[4]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][3][4]\,
      I1 => \r_input_coeffs_reg[6][3]\(4),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][3]\(4),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][3]\(4),
      O => \r_curr_value[4]_i_26_n_0\
    );
\r_curr_value[4]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][0]\(4),
      I1 => \r_input_coeffs_reg[2][0]\(4),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][0]\(4),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][0]\(4),
      O => \r_curr_value[4]_i_27_n_0\
    );
\r_curr_value[4]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][0][4]\,
      I1 => \r_input_coeffs_reg[6][0]\(4),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][0]\(4),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][0]\(4),
      O => \r_curr_value[4]_i_28_n_0\
    );
\r_curr_value[4]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][1]\(4),
      I1 => \r_input_coeffs_reg[2][1]\(4),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][1]\(4),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][1]\(4),
      O => \r_curr_value[4]_i_29_n_0\
    );
\r_curr_value[4]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][1][4]\,
      I1 => \r_input_coeffs_reg[6][1]\(4),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][1]\(4),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][1]\(4),
      O => \r_curr_value[4]_i_30_n_0\
    );
\r_curr_value[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_curr_value[5]_i_2_n_0\,
      I1 => \r_input_coeffs_reg[0][0]\(5),
      I2 => r_core_state,
      O => \r_curr_value[5]_i_1_n_0\
    );
\r_curr_value[5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][6]\(5),
      I1 => \r_input_coeffs_reg[2][6]\(5),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][6]\(5),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][6]\(5),
      O => \r_curr_value[5]_i_15_n_0\
    );
\r_curr_value[5]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][6][5]\,
      I1 => \r_input_coeffs_reg[6][6]\(5),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][6]\(5),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][6]\(5),
      O => \r_curr_value[5]_i_16_n_0\
    );
\r_curr_value[5]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][7]\(5),
      I1 => \r_input_coeffs_reg[2][7]\(5),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][7]\(5),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][7]\(5),
      O => \r_curr_value[5]_i_17_n_0\
    );
\r_curr_value[5]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][7][5]\,
      I1 => \r_input_coeffs_reg[6][7]\(5),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][7]\(5),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][7]\(5),
      O => \r_curr_value[5]_i_18_n_0\
    );
\r_curr_value[5]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][4]\(5),
      I1 => \r_input_coeffs_reg[2][4]\(5),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][4]\(5),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][4]\(5),
      O => \r_curr_value[5]_i_19_n_0\
    );
\r_curr_value[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_curr_value_reg[5]_i_3_n_0\,
      I1 => \r_curr_value_reg[5]_i_4_n_0\,
      I2 => \r_curr_rle_col_reg_n_0_[2]\,
      I3 => \r_curr_value_reg[5]_i_5_n_0\,
      I4 => \r_curr_rle_col_reg_n_0_[1]\,
      I5 => \r_curr_value_reg[5]_i_6_n_0\,
      O => \r_curr_value[5]_i_2_n_0\
    );
\r_curr_value[5]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][4][5]\,
      I1 => \r_input_coeffs_reg[6][4]\(5),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][4]\(5),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][4]\(5),
      O => \r_curr_value[5]_i_20_n_0\
    );
\r_curr_value[5]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][5]\(5),
      I1 => \r_input_coeffs_reg[2][5]\(5),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][5]\(5),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][5]\(5),
      O => \r_curr_value[5]_i_21_n_0\
    );
\r_curr_value[5]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][5][5]\,
      I1 => \r_input_coeffs_reg[6][5]\(5),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][5]\(5),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][5]\(5),
      O => \r_curr_value[5]_i_22_n_0\
    );
\r_curr_value[5]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][2]\(5),
      I1 => \r_input_coeffs_reg[2][2]\(5),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][2]\(5),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][2]\(5),
      O => \r_curr_value[5]_i_23_n_0\
    );
\r_curr_value[5]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][2][5]\,
      I1 => \r_input_coeffs_reg[6][2]\(5),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][2]\(5),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][2]\(5),
      O => \r_curr_value[5]_i_24_n_0\
    );
\r_curr_value[5]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][3]\(5),
      I1 => \r_input_coeffs_reg[2][3]\(5),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][3]\(5),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][3]\(5),
      O => \r_curr_value[5]_i_25_n_0\
    );
\r_curr_value[5]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][3][5]\,
      I1 => \r_input_coeffs_reg[6][3]\(5),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][3]\(5),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][3]\(5),
      O => \r_curr_value[5]_i_26_n_0\
    );
\r_curr_value[5]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][0]\(5),
      I1 => \r_input_coeffs_reg[2][0]\(5),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][0]\(5),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][0]\(5),
      O => \r_curr_value[5]_i_27_n_0\
    );
\r_curr_value[5]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][0][5]\,
      I1 => \r_input_coeffs_reg[6][0]\(5),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][0]\(5),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][0]\(5),
      O => \r_curr_value[5]_i_28_n_0\
    );
\r_curr_value[5]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][1]\(5),
      I1 => \r_input_coeffs_reg[2][1]\(5),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][1]\(5),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][1]\(5),
      O => \r_curr_value[5]_i_29_n_0\
    );
\r_curr_value[5]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][1][5]\,
      I1 => \r_input_coeffs_reg[6][1]\(5),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][1]\(5),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][1]\(5),
      O => \r_curr_value[5]_i_30_n_0\
    );
\r_curr_value[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_curr_value[6]_i_2_n_0\,
      I1 => \r_input_coeffs_reg[0][0]\(6),
      I2 => r_core_state,
      O => \r_curr_value[6]_i_1_n_0\
    );
\r_curr_value[6]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][6]\(6),
      I1 => \r_input_coeffs_reg[2][6]\(6),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][6]\(6),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][6]\(6),
      O => \r_curr_value[6]_i_15_n_0\
    );
\r_curr_value[6]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][6][6]\,
      I1 => \r_input_coeffs_reg[6][6]\(6),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][6]\(6),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][6]\(6),
      O => \r_curr_value[6]_i_16_n_0\
    );
\r_curr_value[6]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][7]\(6),
      I1 => \r_input_coeffs_reg[2][7]\(6),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][7]\(6),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][7]\(6),
      O => \r_curr_value[6]_i_17_n_0\
    );
\r_curr_value[6]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][7][6]\,
      I1 => \r_input_coeffs_reg[6][7]\(6),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][7]\(6),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][7]\(6),
      O => \r_curr_value[6]_i_18_n_0\
    );
\r_curr_value[6]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][4]\(6),
      I1 => \r_input_coeffs_reg[2][4]\(6),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][4]\(6),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][4]\(6),
      O => \r_curr_value[6]_i_19_n_0\
    );
\r_curr_value[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_curr_value_reg[6]_i_3_n_0\,
      I1 => \r_curr_value_reg[6]_i_4_n_0\,
      I2 => \r_curr_rle_col_reg_n_0_[2]\,
      I3 => \r_curr_value_reg[6]_i_5_n_0\,
      I4 => \r_curr_rle_col_reg_n_0_[1]\,
      I5 => \r_curr_value_reg[6]_i_6_n_0\,
      O => \r_curr_value[6]_i_2_n_0\
    );
\r_curr_value[6]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][4][6]\,
      I1 => \r_input_coeffs_reg[6][4]\(6),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][4]\(6),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][4]\(6),
      O => \r_curr_value[6]_i_20_n_0\
    );
\r_curr_value[6]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][5]\(6),
      I1 => \r_input_coeffs_reg[2][5]\(6),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][5]\(6),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][5]\(6),
      O => \r_curr_value[6]_i_21_n_0\
    );
\r_curr_value[6]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][5][6]\,
      I1 => \r_input_coeffs_reg[6][5]\(6),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][5]\(6),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][5]\(6),
      O => \r_curr_value[6]_i_22_n_0\
    );
\r_curr_value[6]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][2]\(6),
      I1 => \r_input_coeffs_reg[2][2]\(6),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][2]\(6),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][2]\(6),
      O => \r_curr_value[6]_i_23_n_0\
    );
\r_curr_value[6]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][2][6]\,
      I1 => \r_input_coeffs_reg[6][2]\(6),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][2]\(6),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][2]\(6),
      O => \r_curr_value[6]_i_24_n_0\
    );
\r_curr_value[6]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][3]\(6),
      I1 => \r_input_coeffs_reg[2][3]\(6),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][3]\(6),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][3]\(6),
      O => \r_curr_value[6]_i_25_n_0\
    );
\r_curr_value[6]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][3][6]\,
      I1 => \r_input_coeffs_reg[6][3]\(6),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][3]\(6),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][3]\(6),
      O => \r_curr_value[6]_i_26_n_0\
    );
\r_curr_value[6]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][0]\(6),
      I1 => \r_input_coeffs_reg[2][0]\(6),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][0]\(6),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][0]\(6),
      O => \r_curr_value[6]_i_27_n_0\
    );
\r_curr_value[6]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][0][6]\,
      I1 => \r_input_coeffs_reg[6][0]\(6),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][0]\(6),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][0]\(6),
      O => \r_curr_value[6]_i_28_n_0\
    );
\r_curr_value[6]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][1]\(6),
      I1 => \r_input_coeffs_reg[2][1]\(6),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][1]\(6),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][1]\(6),
      O => \r_curr_value[6]_i_29_n_0\
    );
\r_curr_value[6]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][1][6]\,
      I1 => \r_input_coeffs_reg[6][1]\(6),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][1]\(6),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][1]\(6),
      O => \r_curr_value[6]_i_30_n_0\
    );
\r_curr_value[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_curr_value[7]_i_2_n_0\,
      I1 => \r_input_coeffs_reg[0][0]\(7),
      I2 => r_core_state,
      O => \r_curr_value[7]_i_1_n_0\
    );
\r_curr_value[7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][6]\(7),
      I1 => \r_input_coeffs_reg[2][6]\(7),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][6]\(7),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][6]\(7),
      O => \r_curr_value[7]_i_15_n_0\
    );
\r_curr_value[7]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][6][7]\,
      I1 => \r_input_coeffs_reg[6][6]\(7),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][6]\(7),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][6]\(7),
      O => \r_curr_value[7]_i_16_n_0\
    );
\r_curr_value[7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][7]\(7),
      I1 => \r_input_coeffs_reg[2][7]\(7),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][7]\(7),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][7]\(7),
      O => \r_curr_value[7]_i_17_n_0\
    );
\r_curr_value[7]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][7][7]\,
      I1 => \r_input_coeffs_reg[6][7]\(7),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][7]\(7),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][7]\(7),
      O => \r_curr_value[7]_i_18_n_0\
    );
\r_curr_value[7]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][4]\(7),
      I1 => \r_input_coeffs_reg[2][4]\(7),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][4]\(7),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][4]\(7),
      O => \r_curr_value[7]_i_19_n_0\
    );
\r_curr_value[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_curr_value_reg[7]_i_3_n_0\,
      I1 => \r_curr_value_reg[7]_i_4_n_0\,
      I2 => \r_curr_rle_col_reg_n_0_[2]\,
      I3 => \r_curr_value_reg[7]_i_5_n_0\,
      I4 => \r_curr_rle_col_reg_n_0_[1]\,
      I5 => \r_curr_value_reg[7]_i_6_n_0\,
      O => \r_curr_value[7]_i_2_n_0\
    );
\r_curr_value[7]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][4][7]\,
      I1 => \r_input_coeffs_reg[6][4]\(7),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][4]\(7),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][4]\(7),
      O => \r_curr_value[7]_i_20_n_0\
    );
\r_curr_value[7]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][5]\(7),
      I1 => \r_input_coeffs_reg[2][5]\(7),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][5]\(7),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][5]\(7),
      O => \r_curr_value[7]_i_21_n_0\
    );
\r_curr_value[7]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][5][7]\,
      I1 => \r_input_coeffs_reg[6][5]\(7),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][5]\(7),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][5]\(7),
      O => \r_curr_value[7]_i_22_n_0\
    );
\r_curr_value[7]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][2]\(7),
      I1 => \r_input_coeffs_reg[2][2]\(7),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][2]\(7),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][2]\(7),
      O => \r_curr_value[7]_i_23_n_0\
    );
\r_curr_value[7]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][2][7]\,
      I1 => \r_input_coeffs_reg[6][2]\(7),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][2]\(7),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][2]\(7),
      O => \r_curr_value[7]_i_24_n_0\
    );
\r_curr_value[7]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][3]\(7),
      I1 => \r_input_coeffs_reg[2][3]\(7),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][3]\(7),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][3]\(7),
      O => \r_curr_value[7]_i_25_n_0\
    );
\r_curr_value[7]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][3][7]\,
      I1 => \r_input_coeffs_reg[6][3]\(7),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][3]\(7),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][3]\(7),
      O => \r_curr_value[7]_i_26_n_0\
    );
\r_curr_value[7]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][0]\(7),
      I1 => \r_input_coeffs_reg[2][0]\(7),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][0]\(7),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][0]\(7),
      O => \r_curr_value[7]_i_27_n_0\
    );
\r_curr_value[7]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][0][7]\,
      I1 => \r_input_coeffs_reg[6][0]\(7),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][0]\(7),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][0]\(7),
      O => \r_curr_value[7]_i_28_n_0\
    );
\r_curr_value[7]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][1]\(7),
      I1 => \r_input_coeffs_reg[2][1]\(7),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][1]\(7),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][1]\(7),
      O => \r_curr_value[7]_i_29_n_0\
    );
\r_curr_value[7]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][1][7]\,
      I1 => \r_input_coeffs_reg[6][1]\(7),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][1]\(7),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][1]\(7),
      O => \r_curr_value[7]_i_30_n_0\
    );
\r_curr_value[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_curr_value[8]_i_2_n_0\,
      I1 => \r_input_coeffs_reg[0][0]\(8),
      I2 => r_core_state,
      O => \r_curr_value[8]_i_1_n_0\
    );
\r_curr_value[8]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][6]\(8),
      I1 => \r_input_coeffs_reg[2][6]\(8),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][6]\(8),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][6]\(8),
      O => \r_curr_value[8]_i_15_n_0\
    );
\r_curr_value[8]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][6][8]\,
      I1 => \r_input_coeffs_reg[6][6]\(8),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][6]\(8),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][6]\(8),
      O => \r_curr_value[8]_i_16_n_0\
    );
\r_curr_value[8]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][7]\(8),
      I1 => \r_input_coeffs_reg[2][7]\(8),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][7]\(8),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][7]\(8),
      O => \r_curr_value[8]_i_17_n_0\
    );
\r_curr_value[8]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][7][8]\,
      I1 => \r_input_coeffs_reg[6][7]\(8),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][7]\(8),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][7]\(8),
      O => \r_curr_value[8]_i_18_n_0\
    );
\r_curr_value[8]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][4]\(8),
      I1 => \r_input_coeffs_reg[2][4]\(8),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][4]\(8),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][4]\(8),
      O => \r_curr_value[8]_i_19_n_0\
    );
\r_curr_value[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_curr_value_reg[8]_i_3_n_0\,
      I1 => \r_curr_value_reg[8]_i_4_n_0\,
      I2 => \r_curr_rle_col_reg_n_0_[2]\,
      I3 => \r_curr_value_reg[8]_i_5_n_0\,
      I4 => \r_curr_rle_col_reg_n_0_[1]\,
      I5 => \r_curr_value_reg[8]_i_6_n_0\,
      O => \r_curr_value[8]_i_2_n_0\
    );
\r_curr_value[8]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][4][8]\,
      I1 => \r_input_coeffs_reg[6][4]\(8),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][4]\(8),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][4]\(8),
      O => \r_curr_value[8]_i_20_n_0\
    );
\r_curr_value[8]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][5]\(8),
      I1 => \r_input_coeffs_reg[2][5]\(8),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][5]\(8),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][5]\(8),
      O => \r_curr_value[8]_i_21_n_0\
    );
\r_curr_value[8]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][5][8]\,
      I1 => \r_input_coeffs_reg[6][5]\(8),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][5]\(8),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][5]\(8),
      O => \r_curr_value[8]_i_22_n_0\
    );
\r_curr_value[8]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][2]\(8),
      I1 => \r_input_coeffs_reg[2][2]\(8),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][2]\(8),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][2]\(8),
      O => \r_curr_value[8]_i_23_n_0\
    );
\r_curr_value[8]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][2][8]\,
      I1 => \r_input_coeffs_reg[6][2]\(8),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][2]\(8),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][2]\(8),
      O => \r_curr_value[8]_i_24_n_0\
    );
\r_curr_value[8]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][3]\(8),
      I1 => \r_input_coeffs_reg[2][3]\(8),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][3]\(8),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][3]\(8),
      O => \r_curr_value[8]_i_25_n_0\
    );
\r_curr_value[8]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][3][8]\,
      I1 => \r_input_coeffs_reg[6][3]\(8),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][3]\(8),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][3]\(8),
      O => \r_curr_value[8]_i_26_n_0\
    );
\r_curr_value[8]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][0]\(8),
      I1 => \r_input_coeffs_reg[2][0]\(8),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][0]\(8),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][0]\(8),
      O => \r_curr_value[8]_i_27_n_0\
    );
\r_curr_value[8]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][0][8]\,
      I1 => \r_input_coeffs_reg[6][0]\(8),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][0]\(8),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][0]\(8),
      O => \r_curr_value[8]_i_28_n_0\
    );
\r_curr_value[8]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][1]\(8),
      I1 => \r_input_coeffs_reg[2][1]\(8),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][1]\(8),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][1]\(8),
      O => \r_curr_value[8]_i_29_n_0\
    );
\r_curr_value[8]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][1][8]\,
      I1 => \r_input_coeffs_reg[6][1]\(8),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][1]\(8),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][1]\(8),
      O => \r_curr_value[8]_i_30_n_0\
    );
\r_curr_value[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => \^r_o_axis_tvalid_reg_0\,
      I1 => i_axis_TREADY,
      I2 => r_core_state,
      I3 => i_axis_TVALID,
      I4 => \r_core_state0__0\,
      O => \r_curr_value[9]_i_1_n_0\
    );
\r_curr_value[9]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][6]\(9),
      I1 => \r_input_coeffs_reg[2][6]\(9),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][6]\(9),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][6]\(9),
      O => \r_curr_value[9]_i_16_n_0\
    );
\r_curr_value[9]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][6][9]\,
      I1 => \r_input_coeffs_reg[6][6]\(9),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][6]\(9),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][6]\(9),
      O => \r_curr_value[9]_i_17_n_0\
    );
\r_curr_value[9]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][7]\(9),
      I1 => \r_input_coeffs_reg[2][7]\(9),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][7]\(9),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][7]\(9),
      O => \r_curr_value[9]_i_18_n_0\
    );
\r_curr_value[9]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][7][9]\,
      I1 => \r_input_coeffs_reg[6][7]\(9),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][7]\(9),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][7]\(9),
      O => \r_curr_value[9]_i_19_n_0\
    );
\r_curr_value[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_curr_value[9]_i_3_n_0\,
      I1 => \r_input_coeffs_reg[0][0]\(9),
      I2 => r_core_state,
      O => \r_curr_value[9]_i_2_n_0\
    );
\r_curr_value[9]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][4]\(9),
      I1 => \r_input_coeffs_reg[2][4]\(9),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][4]\(9),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][4]\(9),
      O => \r_curr_value[9]_i_20_n_0\
    );
\r_curr_value[9]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][4][9]\,
      I1 => \r_input_coeffs_reg[6][4]\(9),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][4]\(9),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][4]\(9),
      O => \r_curr_value[9]_i_21_n_0\
    );
\r_curr_value[9]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][5]\(9),
      I1 => \r_input_coeffs_reg[2][5]\(9),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][5]\(9),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][5]\(9),
      O => \r_curr_value[9]_i_22_n_0\
    );
\r_curr_value[9]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][5][9]\,
      I1 => \r_input_coeffs_reg[6][5]\(9),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][5]\(9),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][5]\(9),
      O => \r_curr_value[9]_i_23_n_0\
    );
\r_curr_value[9]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][2]\(9),
      I1 => \r_input_coeffs_reg[2][2]\(9),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][2]\(9),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][2]\(9),
      O => \r_curr_value[9]_i_24_n_0\
    );
\r_curr_value[9]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][2][9]\,
      I1 => \r_input_coeffs_reg[6][2]\(9),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][2]\(9),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][2]\(9),
      O => \r_curr_value[9]_i_25_n_0\
    );
\r_curr_value[9]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][3]\(9),
      I1 => \r_input_coeffs_reg[2][3]\(9),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][3]\(9),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][3]\(9),
      O => \r_curr_value[9]_i_26_n_0\
    );
\r_curr_value[9]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][3][9]\,
      I1 => \r_input_coeffs_reg[6][3]\(9),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][3]\(9),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][3]\(9),
      O => \r_curr_value[9]_i_27_n_0\
    );
\r_curr_value[9]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][0]\(9),
      I1 => \r_input_coeffs_reg[2][0]\(9),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][0]\(9),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][0]\(9),
      O => \r_curr_value[9]_i_28_n_0\
    );
\r_curr_value[9]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][0][9]\,
      I1 => \r_input_coeffs_reg[6][0]\(9),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][0]\(9),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][0]\(9),
      O => \r_curr_value[9]_i_29_n_0\
    );
\r_curr_value[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_curr_value_reg[9]_i_4_n_0\,
      I1 => \r_curr_value_reg[9]_i_5_n_0\,
      I2 => \r_curr_rle_col_reg_n_0_[2]\,
      I3 => \r_curr_value_reg[9]_i_6_n_0\,
      I4 => \r_curr_rle_col_reg_n_0_[1]\,
      I5 => \r_curr_value_reg[9]_i_7_n_0\,
      O => \r_curr_value[9]_i_3_n_0\
    );
\r_curr_value[9]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg[3][1]\(9),
      I1 => \r_input_coeffs_reg[2][1]\(9),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[1][1]\(9),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[0][1]\(9),
      O => \r_curr_value[9]_i_30_n_0\
    );
\r_curr_value[9]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r_input_coeffs_reg_n_0_[7][1][9]\,
      I1 => \r_input_coeffs_reg[6][1]\(9),
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_input_coeffs_reg[5][1]\(9),
      I4 => \r_curr_rle_row_reg_n_0_[0]\,
      I5 => \r_input_coeffs_reg[4][1]\(9),
      O => \r_curr_value[9]_i_31_n_0\
    );
\r_curr_value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_curr_value[9]_i_1_n_0\,
      D => \r_curr_value[0]_i_1_n_0\,
      Q => r_curr_value(0),
      R => r_o_axis_TDATA
    );
\r_curr_value_reg[0]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[0]_i_21_n_0\,
      I1 => \r_curr_value[0]_i_22_n_0\,
      O => \r_curr_value_reg[0]_i_10_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[0]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[0]_i_23_n_0\,
      I1 => \r_curr_value[0]_i_24_n_0\,
      O => \r_curr_value_reg[0]_i_11_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[0]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[0]_i_25_n_0\,
      I1 => \r_curr_value[0]_i_26_n_0\,
      O => \r_curr_value_reg[0]_i_12_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[0]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[0]_i_27_n_0\,
      I1 => \r_curr_value[0]_i_28_n_0\,
      O => \r_input_coeffs__0\(0),
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[0]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[0]_i_29_n_0\,
      I1 => \r_curr_value[0]_i_30_n_0\,
      O => \r_curr_value_reg[0]_i_14_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[0]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[0]_i_7_n_0\,
      I1 => \r_curr_value_reg[0]_i_8_n_0\,
      O => \r_curr_value_reg[0]_i_3_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[0]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[0]_i_9_n_0\,
      I1 => \r_curr_value_reg[0]_i_10_n_0\,
      O => \r_curr_value_reg[0]_i_4_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[0]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[0]_i_11_n_0\,
      I1 => \r_curr_value_reg[0]_i_12_n_0\,
      O => \r_curr_value_reg[0]_i_5_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[0]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_input_coeffs__0\(0),
      I1 => \r_curr_value_reg[0]_i_14_n_0\,
      O => \r_curr_value_reg[0]_i_6_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[0]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[0]_i_15_n_0\,
      I1 => \r_curr_value[0]_i_16_n_0\,
      O => \r_curr_value_reg[0]_i_7_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[0]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[0]_i_17_n_0\,
      I1 => \r_curr_value[0]_i_18_n_0\,
      O => \r_curr_value_reg[0]_i_8_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[0]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[0]_i_19_n_0\,
      I1 => \r_curr_value[0]_i_20_n_0\,
      O => \r_curr_value_reg[0]_i_9_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_curr_value[9]_i_1_n_0\,
      D => \r_curr_value[1]_i_1_n_0\,
      Q => r_curr_value(1),
      R => r_o_axis_TDATA
    );
\r_curr_value_reg[1]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[1]_i_21_n_0\,
      I1 => \r_curr_value[1]_i_22_n_0\,
      O => \r_curr_value_reg[1]_i_10_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[1]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[1]_i_23_n_0\,
      I1 => \r_curr_value[1]_i_24_n_0\,
      O => \r_curr_value_reg[1]_i_11_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[1]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[1]_i_25_n_0\,
      I1 => \r_curr_value[1]_i_26_n_0\,
      O => \r_curr_value_reg[1]_i_12_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[1]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[1]_i_27_n_0\,
      I1 => \r_curr_value[1]_i_28_n_0\,
      O => \r_input_coeffs__0\(1),
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[1]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[1]_i_29_n_0\,
      I1 => \r_curr_value[1]_i_30_n_0\,
      O => \r_curr_value_reg[1]_i_14_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[1]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[1]_i_7_n_0\,
      I1 => \r_curr_value_reg[1]_i_8_n_0\,
      O => \r_curr_value_reg[1]_i_3_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[1]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[1]_i_9_n_0\,
      I1 => \r_curr_value_reg[1]_i_10_n_0\,
      O => \r_curr_value_reg[1]_i_4_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[1]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[1]_i_11_n_0\,
      I1 => \r_curr_value_reg[1]_i_12_n_0\,
      O => \r_curr_value_reg[1]_i_5_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[1]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_input_coeffs__0\(1),
      I1 => \r_curr_value_reg[1]_i_14_n_0\,
      O => \r_curr_value_reg[1]_i_6_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[1]_i_15_n_0\,
      I1 => \r_curr_value[1]_i_16_n_0\,
      O => \r_curr_value_reg[1]_i_7_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[1]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[1]_i_17_n_0\,
      I1 => \r_curr_value[1]_i_18_n_0\,
      O => \r_curr_value_reg[1]_i_8_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[1]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[1]_i_19_n_0\,
      I1 => \r_curr_value[1]_i_20_n_0\,
      O => \r_curr_value_reg[1]_i_9_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_curr_value[9]_i_1_n_0\,
      D => \r_curr_value[2]_i_1_n_0\,
      Q => r_curr_value(2),
      R => r_o_axis_TDATA
    );
\r_curr_value_reg[2]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[2]_i_21_n_0\,
      I1 => \r_curr_value[2]_i_22_n_0\,
      O => \r_curr_value_reg[2]_i_10_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[2]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[2]_i_23_n_0\,
      I1 => \r_curr_value[2]_i_24_n_0\,
      O => \r_curr_value_reg[2]_i_11_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[2]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[2]_i_25_n_0\,
      I1 => \r_curr_value[2]_i_26_n_0\,
      O => \r_curr_value_reg[2]_i_12_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[2]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[2]_i_27_n_0\,
      I1 => \r_curr_value[2]_i_28_n_0\,
      O => \r_input_coeffs__0\(2),
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[2]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[2]_i_29_n_0\,
      I1 => \r_curr_value[2]_i_30_n_0\,
      O => \r_curr_value_reg[2]_i_14_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[2]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[2]_i_7_n_0\,
      I1 => \r_curr_value_reg[2]_i_8_n_0\,
      O => \r_curr_value_reg[2]_i_3_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[2]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[2]_i_9_n_0\,
      I1 => \r_curr_value_reg[2]_i_10_n_0\,
      O => \r_curr_value_reg[2]_i_4_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[2]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[2]_i_11_n_0\,
      I1 => \r_curr_value_reg[2]_i_12_n_0\,
      O => \r_curr_value_reg[2]_i_5_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[2]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_input_coeffs__0\(2),
      I1 => \r_curr_value_reg[2]_i_14_n_0\,
      O => \r_curr_value_reg[2]_i_6_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[2]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[2]_i_15_n_0\,
      I1 => \r_curr_value[2]_i_16_n_0\,
      O => \r_curr_value_reg[2]_i_7_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[2]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[2]_i_17_n_0\,
      I1 => \r_curr_value[2]_i_18_n_0\,
      O => \r_curr_value_reg[2]_i_8_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[2]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[2]_i_19_n_0\,
      I1 => \r_curr_value[2]_i_20_n_0\,
      O => \r_curr_value_reg[2]_i_9_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_curr_value[9]_i_1_n_0\,
      D => \r_curr_value[3]_i_1_n_0\,
      Q => r_curr_value(3),
      R => r_o_axis_TDATA
    );
\r_curr_value_reg[3]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[3]_i_21_n_0\,
      I1 => \r_curr_value[3]_i_22_n_0\,
      O => \r_curr_value_reg[3]_i_10_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[3]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[3]_i_23_n_0\,
      I1 => \r_curr_value[3]_i_24_n_0\,
      O => \r_curr_value_reg[3]_i_11_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[3]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[3]_i_25_n_0\,
      I1 => \r_curr_value[3]_i_26_n_0\,
      O => \r_curr_value_reg[3]_i_12_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[3]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[3]_i_27_n_0\,
      I1 => \r_curr_value[3]_i_28_n_0\,
      O => \r_input_coeffs__0\(3),
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[3]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[3]_i_29_n_0\,
      I1 => \r_curr_value[3]_i_30_n_0\,
      O => \r_curr_value_reg[3]_i_14_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[3]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[3]_i_7_n_0\,
      I1 => \r_curr_value_reg[3]_i_8_n_0\,
      O => \r_curr_value_reg[3]_i_3_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[3]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[3]_i_9_n_0\,
      I1 => \r_curr_value_reg[3]_i_10_n_0\,
      O => \r_curr_value_reg[3]_i_4_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[3]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[3]_i_11_n_0\,
      I1 => \r_curr_value_reg[3]_i_12_n_0\,
      O => \r_curr_value_reg[3]_i_5_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[3]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_input_coeffs__0\(3),
      I1 => \r_curr_value_reg[3]_i_14_n_0\,
      O => \r_curr_value_reg[3]_i_6_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[3]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[3]_i_15_n_0\,
      I1 => \r_curr_value[3]_i_16_n_0\,
      O => \r_curr_value_reg[3]_i_7_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[3]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[3]_i_17_n_0\,
      I1 => \r_curr_value[3]_i_18_n_0\,
      O => \r_curr_value_reg[3]_i_8_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[3]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[3]_i_19_n_0\,
      I1 => \r_curr_value[3]_i_20_n_0\,
      O => \r_curr_value_reg[3]_i_9_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_curr_value[9]_i_1_n_0\,
      D => \r_curr_value[4]_i_1_n_0\,
      Q => r_curr_value(4),
      R => r_o_axis_TDATA
    );
\r_curr_value_reg[4]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[4]_i_21_n_0\,
      I1 => \r_curr_value[4]_i_22_n_0\,
      O => \r_curr_value_reg[4]_i_10_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[4]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[4]_i_23_n_0\,
      I1 => \r_curr_value[4]_i_24_n_0\,
      O => \r_curr_value_reg[4]_i_11_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[4]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[4]_i_25_n_0\,
      I1 => \r_curr_value[4]_i_26_n_0\,
      O => \r_curr_value_reg[4]_i_12_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[4]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[4]_i_27_n_0\,
      I1 => \r_curr_value[4]_i_28_n_0\,
      O => \r_input_coeffs__0\(4),
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[4]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[4]_i_29_n_0\,
      I1 => \r_curr_value[4]_i_30_n_0\,
      O => \r_curr_value_reg[4]_i_14_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[4]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[4]_i_7_n_0\,
      I1 => \r_curr_value_reg[4]_i_8_n_0\,
      O => \r_curr_value_reg[4]_i_3_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[4]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[4]_i_9_n_0\,
      I1 => \r_curr_value_reg[4]_i_10_n_0\,
      O => \r_curr_value_reg[4]_i_4_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[4]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[4]_i_11_n_0\,
      I1 => \r_curr_value_reg[4]_i_12_n_0\,
      O => \r_curr_value_reg[4]_i_5_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[4]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_input_coeffs__0\(4),
      I1 => \r_curr_value_reg[4]_i_14_n_0\,
      O => \r_curr_value_reg[4]_i_6_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[4]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[4]_i_15_n_0\,
      I1 => \r_curr_value[4]_i_16_n_0\,
      O => \r_curr_value_reg[4]_i_7_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[4]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[4]_i_17_n_0\,
      I1 => \r_curr_value[4]_i_18_n_0\,
      O => \r_curr_value_reg[4]_i_8_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[4]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[4]_i_19_n_0\,
      I1 => \r_curr_value[4]_i_20_n_0\,
      O => \r_curr_value_reg[4]_i_9_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_curr_value[9]_i_1_n_0\,
      D => \r_curr_value[5]_i_1_n_0\,
      Q => r_curr_value(5),
      R => r_o_axis_TDATA
    );
\r_curr_value_reg[5]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[5]_i_21_n_0\,
      I1 => \r_curr_value[5]_i_22_n_0\,
      O => \r_curr_value_reg[5]_i_10_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[5]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[5]_i_23_n_0\,
      I1 => \r_curr_value[5]_i_24_n_0\,
      O => \r_curr_value_reg[5]_i_11_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[5]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[5]_i_25_n_0\,
      I1 => \r_curr_value[5]_i_26_n_0\,
      O => \r_curr_value_reg[5]_i_12_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[5]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[5]_i_27_n_0\,
      I1 => \r_curr_value[5]_i_28_n_0\,
      O => \r_input_coeffs__0\(5),
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[5]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[5]_i_29_n_0\,
      I1 => \r_curr_value[5]_i_30_n_0\,
      O => \r_curr_value_reg[5]_i_14_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[5]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[5]_i_7_n_0\,
      I1 => \r_curr_value_reg[5]_i_8_n_0\,
      O => \r_curr_value_reg[5]_i_3_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[5]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[5]_i_9_n_0\,
      I1 => \r_curr_value_reg[5]_i_10_n_0\,
      O => \r_curr_value_reg[5]_i_4_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[5]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[5]_i_11_n_0\,
      I1 => \r_curr_value_reg[5]_i_12_n_0\,
      O => \r_curr_value_reg[5]_i_5_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[5]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_input_coeffs__0\(5),
      I1 => \r_curr_value_reg[5]_i_14_n_0\,
      O => \r_curr_value_reg[5]_i_6_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[5]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[5]_i_15_n_0\,
      I1 => \r_curr_value[5]_i_16_n_0\,
      O => \r_curr_value_reg[5]_i_7_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[5]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[5]_i_17_n_0\,
      I1 => \r_curr_value[5]_i_18_n_0\,
      O => \r_curr_value_reg[5]_i_8_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[5]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[5]_i_19_n_0\,
      I1 => \r_curr_value[5]_i_20_n_0\,
      O => \r_curr_value_reg[5]_i_9_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_curr_value[9]_i_1_n_0\,
      D => \r_curr_value[6]_i_1_n_0\,
      Q => r_curr_value(6),
      R => r_o_axis_TDATA
    );
\r_curr_value_reg[6]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[6]_i_21_n_0\,
      I1 => \r_curr_value[6]_i_22_n_0\,
      O => \r_curr_value_reg[6]_i_10_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[6]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[6]_i_23_n_0\,
      I1 => \r_curr_value[6]_i_24_n_0\,
      O => \r_curr_value_reg[6]_i_11_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[6]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[6]_i_25_n_0\,
      I1 => \r_curr_value[6]_i_26_n_0\,
      O => \r_curr_value_reg[6]_i_12_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[6]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[6]_i_27_n_0\,
      I1 => \r_curr_value[6]_i_28_n_0\,
      O => \r_input_coeffs__0\(6),
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[6]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[6]_i_29_n_0\,
      I1 => \r_curr_value[6]_i_30_n_0\,
      O => \r_curr_value_reg[6]_i_14_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[6]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[6]_i_7_n_0\,
      I1 => \r_curr_value_reg[6]_i_8_n_0\,
      O => \r_curr_value_reg[6]_i_3_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[6]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[6]_i_9_n_0\,
      I1 => \r_curr_value_reg[6]_i_10_n_0\,
      O => \r_curr_value_reg[6]_i_4_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[6]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[6]_i_11_n_0\,
      I1 => \r_curr_value_reg[6]_i_12_n_0\,
      O => \r_curr_value_reg[6]_i_5_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[6]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_input_coeffs__0\(6),
      I1 => \r_curr_value_reg[6]_i_14_n_0\,
      O => \r_curr_value_reg[6]_i_6_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[6]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[6]_i_15_n_0\,
      I1 => \r_curr_value[6]_i_16_n_0\,
      O => \r_curr_value_reg[6]_i_7_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[6]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[6]_i_17_n_0\,
      I1 => \r_curr_value[6]_i_18_n_0\,
      O => \r_curr_value_reg[6]_i_8_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[6]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[6]_i_19_n_0\,
      I1 => \r_curr_value[6]_i_20_n_0\,
      O => \r_curr_value_reg[6]_i_9_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_curr_value[9]_i_1_n_0\,
      D => \r_curr_value[7]_i_1_n_0\,
      Q => r_curr_value(7),
      R => r_o_axis_TDATA
    );
\r_curr_value_reg[7]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[7]_i_21_n_0\,
      I1 => \r_curr_value[7]_i_22_n_0\,
      O => \r_curr_value_reg[7]_i_10_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[7]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[7]_i_23_n_0\,
      I1 => \r_curr_value[7]_i_24_n_0\,
      O => \r_curr_value_reg[7]_i_11_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[7]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[7]_i_25_n_0\,
      I1 => \r_curr_value[7]_i_26_n_0\,
      O => \r_curr_value_reg[7]_i_12_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[7]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[7]_i_27_n_0\,
      I1 => \r_curr_value[7]_i_28_n_0\,
      O => \r_input_coeffs__0\(7),
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[7]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[7]_i_29_n_0\,
      I1 => \r_curr_value[7]_i_30_n_0\,
      O => \r_curr_value_reg[7]_i_14_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[7]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[7]_i_7_n_0\,
      I1 => \r_curr_value_reg[7]_i_8_n_0\,
      O => \r_curr_value_reg[7]_i_3_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[7]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[7]_i_9_n_0\,
      I1 => \r_curr_value_reg[7]_i_10_n_0\,
      O => \r_curr_value_reg[7]_i_4_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[7]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[7]_i_11_n_0\,
      I1 => \r_curr_value_reg[7]_i_12_n_0\,
      O => \r_curr_value_reg[7]_i_5_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[7]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_input_coeffs__0\(7),
      I1 => \r_curr_value_reg[7]_i_14_n_0\,
      O => \r_curr_value_reg[7]_i_6_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[7]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[7]_i_15_n_0\,
      I1 => \r_curr_value[7]_i_16_n_0\,
      O => \r_curr_value_reg[7]_i_7_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[7]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[7]_i_17_n_0\,
      I1 => \r_curr_value[7]_i_18_n_0\,
      O => \r_curr_value_reg[7]_i_8_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[7]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[7]_i_19_n_0\,
      I1 => \r_curr_value[7]_i_20_n_0\,
      O => \r_curr_value_reg[7]_i_9_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_curr_value[9]_i_1_n_0\,
      D => \r_curr_value[8]_i_1_n_0\,
      Q => r_curr_value(8),
      R => r_o_axis_TDATA
    );
\r_curr_value_reg[8]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[8]_i_21_n_0\,
      I1 => \r_curr_value[8]_i_22_n_0\,
      O => \r_curr_value_reg[8]_i_10_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[8]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[8]_i_23_n_0\,
      I1 => \r_curr_value[8]_i_24_n_0\,
      O => \r_curr_value_reg[8]_i_11_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[8]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[8]_i_25_n_0\,
      I1 => \r_curr_value[8]_i_26_n_0\,
      O => \r_curr_value_reg[8]_i_12_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[8]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[8]_i_27_n_0\,
      I1 => \r_curr_value[8]_i_28_n_0\,
      O => \r_input_coeffs__0\(8),
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[8]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[8]_i_29_n_0\,
      I1 => \r_curr_value[8]_i_30_n_0\,
      O => \r_curr_value_reg[8]_i_14_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[8]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[8]_i_7_n_0\,
      I1 => \r_curr_value_reg[8]_i_8_n_0\,
      O => \r_curr_value_reg[8]_i_3_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[8]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[8]_i_9_n_0\,
      I1 => \r_curr_value_reg[8]_i_10_n_0\,
      O => \r_curr_value_reg[8]_i_4_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[8]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[8]_i_11_n_0\,
      I1 => \r_curr_value_reg[8]_i_12_n_0\,
      O => \r_curr_value_reg[8]_i_5_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[8]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_input_coeffs__0\(8),
      I1 => \r_curr_value_reg[8]_i_14_n_0\,
      O => \r_curr_value_reg[8]_i_6_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[8]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[8]_i_15_n_0\,
      I1 => \r_curr_value[8]_i_16_n_0\,
      O => \r_curr_value_reg[8]_i_7_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[8]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[8]_i_17_n_0\,
      I1 => \r_curr_value[8]_i_18_n_0\,
      O => \r_curr_value_reg[8]_i_8_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[8]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[8]_i_19_n_0\,
      I1 => \r_curr_value[8]_i_20_n_0\,
      O => \r_curr_value_reg[8]_i_9_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_curr_value[9]_i_1_n_0\,
      D => \r_curr_value[9]_i_2_n_0\,
      Q => r_curr_value(9),
      R => r_o_axis_TDATA
    );
\r_curr_value_reg[9]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[9]_i_20_n_0\,
      I1 => \r_curr_value[9]_i_21_n_0\,
      O => \r_curr_value_reg[9]_i_10_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[9]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[9]_i_22_n_0\,
      I1 => \r_curr_value[9]_i_23_n_0\,
      O => \r_curr_value_reg[9]_i_11_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[9]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[9]_i_24_n_0\,
      I1 => \r_curr_value[9]_i_25_n_0\,
      O => \r_curr_value_reg[9]_i_12_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[9]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[9]_i_26_n_0\,
      I1 => \r_curr_value[9]_i_27_n_0\,
      O => \r_curr_value_reg[9]_i_13_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[9]_i_14\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[9]_i_28_n_0\,
      I1 => \r_curr_value[9]_i_29_n_0\,
      O => \r_input_coeffs__0\(9),
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[9]_i_15\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[9]_i_30_n_0\,
      I1 => \r_curr_value[9]_i_31_n_0\,
      O => \r_curr_value_reg[9]_i_15_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[9]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[9]_i_8_n_0\,
      I1 => \r_curr_value_reg[9]_i_9_n_0\,
      O => \r_curr_value_reg[9]_i_4_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[9]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[9]_i_10_n_0\,
      I1 => \r_curr_value_reg[9]_i_11_n_0\,
      O => \r_curr_value_reg[9]_i_5_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[9]_i_6\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_curr_value_reg[9]_i_12_n_0\,
      I1 => \r_curr_value_reg[9]_i_13_n_0\,
      O => \r_curr_value_reg[9]_i_6_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[9]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \r_input_coeffs__0\(9),
      I1 => \r_curr_value_reg[9]_i_15_n_0\,
      O => \r_curr_value_reg[9]_i_7_n_0\,
      S => \r_curr_rle_col_reg_n_0_[0]\
    );
\r_curr_value_reg[9]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[9]_i_16_n_0\,
      I1 => \r_curr_value[9]_i_17_n_0\,
      O => \r_curr_value_reg[9]_i_8_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_curr_value_reg[9]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \r_curr_value[9]_i_18_n_0\,
      I1 => \r_curr_value[9]_i_19_n_0\,
      O => \r_curr_value_reg[9]_i_9_n_0\,
      S => \r_curr_rle_row_reg_n_0_[2]\
    );
\r_input_coeffs[0][0][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_axis_TDATA(0),
      I1 => r_core_state,
      O => r_input_coeffs(0)
    );
\r_input_coeffs[0][0][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_axis_TDATA(1),
      I1 => r_core_state,
      O => r_input_coeffs(1)
    );
\r_input_coeffs[0][0][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_axis_TDATA(2),
      I1 => r_core_state,
      O => r_input_coeffs(2)
    );
\r_input_coeffs[0][0][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_axis_TDATA(3),
      I1 => r_core_state,
      O => r_input_coeffs(3)
    );
\r_input_coeffs[0][0][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_axis_TDATA(4),
      I1 => r_core_state,
      O => r_input_coeffs(4)
    );
\r_input_coeffs[0][0][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_axis_TDATA(5),
      I1 => r_core_state,
      O => r_input_coeffs(5)
    );
\r_input_coeffs[0][0][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_axis_TDATA(6),
      I1 => r_core_state,
      O => r_input_coeffs(6)
    );
\r_input_coeffs[0][0][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_axis_TDATA(7),
      I1 => r_core_state,
      O => r_input_coeffs(7)
    );
\r_input_coeffs[0][0][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_axis_TDATA(8),
      I1 => r_core_state,
      O => r_input_coeffs(8)
    );
\r_input_coeffs[0][0][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs_reg[7][0]\,
      I5 => \r_input_coeffs[0][0][9]_i_5_n_0\,
      O => \r_input_coeffs[0][0][9]_i_1_n_0\
    );
\r_input_coeffs[0][0][9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => i_axis_TDATA(9),
      I1 => r_core_state,
      O => r_input_coeffs(9)
    );
\r_input_coeffs[0][0][9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^r_o_axis_tvalid_reg_0\,
      I1 => i_axis_TREADY,
      I2 => \^r_o_axis_tlast_reg_0\,
      O => r_curr_rle_row
    );
\r_input_coeffs[0][0][9]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \r_curr_input_col_reg_n_0_[2]\,
      I1 => \r_curr_input_col_reg_n_0_[0]\,
      I2 => \r_curr_input_col_reg_n_0_[1]\,
      O => \r_input_coeffs_reg[7][0]\
    );
\r_input_coeffs[0][0][9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_curr_input_row_reg_n_0_[1]\,
      I1 => \r_curr_input_row_reg_n_0_[2]\,
      O => \r_input_coeffs[0][0][9]_i_5_n_0\
    );
\r_input_coeffs[0][1][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs_reg[7][1]\,
      I5 => \r_input_coeffs[0][0][9]_i_5_n_0\,
      O => \r_input_coeffs[0][1][9]_i_1_n_0\
    );
\r_input_coeffs[0][1][9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \r_curr_input_col_reg_n_0_[2]\,
      I1 => \r_curr_input_col_reg_n_0_[0]\,
      I2 => \r_curr_input_col_reg_n_0_[1]\,
      O => \r_input_coeffs_reg[7][1]\
    );
\r_input_coeffs[0][2][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs_reg[7][2]\,
      I5 => \r_input_coeffs[0][0][9]_i_5_n_0\,
      O => \r_input_coeffs[0][2][9]_i_1_n_0\
    );
\r_input_coeffs[0][2][9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \r_curr_input_col_reg_n_0_[0]\,
      I1 => \r_curr_input_col_reg_n_0_[1]\,
      I2 => \r_curr_input_col_reg_n_0_[2]\,
      O => \r_input_coeffs_reg[7][2]\
    );
\r_input_coeffs[0][3][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs[0][3][9]_i_2_n_0\,
      I5 => \r_input_coeffs[0][0][9]_i_5_n_0\,
      O => \r_input_coeffs[0][3][9]_i_1_n_0\
    );
\r_input_coeffs[0][3][9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \r_curr_input_col_reg_n_0_[0]\,
      I1 => \r_curr_input_col_reg_n_0_[1]\,
      I2 => \r_curr_input_col_reg_n_0_[2]\,
      O => \r_input_coeffs[0][3][9]_i_2_n_0\
    );
\r_input_coeffs[0][4][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs_reg[7][4]\,
      I5 => \r_input_coeffs[0][0][9]_i_5_n_0\,
      O => \r_input_coeffs[0][4][9]_i_1_n_0\
    );
\r_input_coeffs[0][4][9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \r_curr_input_col_reg_n_0_[0]\,
      I1 => \r_curr_input_col_reg_n_0_[2]\,
      I2 => \r_curr_input_col_reg_n_0_[1]\,
      O => \r_input_coeffs_reg[7][4]\
    );
\r_input_coeffs[0][5][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs[0][5][9]_i_2_n_0\,
      I5 => \r_input_coeffs[0][0][9]_i_5_n_0\,
      O => \r_input_coeffs[0][5][9]_i_1_n_0\
    );
\r_input_coeffs[0][5][9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \r_curr_input_col_reg_n_0_[0]\,
      I1 => \r_curr_input_col_reg_n_0_[2]\,
      I2 => \r_curr_input_col_reg_n_0_[1]\,
      O => \r_input_coeffs[0][5][9]_i_2_n_0\
    );
\r_input_coeffs[0][6][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs_reg[7][6]\,
      I5 => \r_input_coeffs[0][0][9]_i_5_n_0\,
      O => \r_input_coeffs[0][6][9]_i_1_n_0\
    );
\r_input_coeffs[0][6][9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \r_curr_input_col_reg_n_0_[1]\,
      I1 => \r_curr_input_col_reg_n_0_[2]\,
      I2 => \r_curr_input_col_reg_n_0_[0]\,
      O => \r_input_coeffs_reg[7][6]\
    );
\r_input_coeffs[0][7][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => r_core_state1,
      I5 => \r_input_coeffs[0][0][9]_i_5_n_0\,
      O => \r_input_coeffs[0][7][9]_i_1_n_0\
    );
\r_input_coeffs[1][0][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs_reg[7][0]\,
      I5 => \r_input_coeffs[0][0][9]_i_5_n_0\,
      O => \r_input_coeffs[1][0][9]_i_1_n_0\
    );
\r_input_coeffs[1][1][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs_reg[7][1]\,
      I5 => \r_input_coeffs[0][0][9]_i_5_n_0\,
      O => \r_input_coeffs[1][1][9]_i_1_n_0\
    );
\r_input_coeffs[1][2][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs_reg[7][2]\,
      I5 => \r_input_coeffs[0][0][9]_i_5_n_0\,
      O => \r_input_coeffs[1][2][9]_i_1_n_0\
    );
\r_input_coeffs[1][3][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs[0][3][9]_i_2_n_0\,
      I5 => \r_input_coeffs[0][0][9]_i_5_n_0\,
      O => \r_input_coeffs[1][3][9]_i_1_n_0\
    );
\r_input_coeffs[1][4][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs_reg[7][4]\,
      I5 => \r_input_coeffs[0][0][9]_i_5_n_0\,
      O => \r_input_coeffs[1][4][9]_i_1_n_0\
    );
\r_input_coeffs[1][5][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs[0][5][9]_i_2_n_0\,
      I5 => \r_input_coeffs[0][0][9]_i_5_n_0\,
      O => \r_input_coeffs[1][5][9]_i_1_n_0\
    );
\r_input_coeffs[1][6][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs_reg[7][6]\,
      I5 => \r_input_coeffs[0][0][9]_i_5_n_0\,
      O => \r_input_coeffs[1][6][9]_i_1_n_0\
    );
\r_input_coeffs[1][7][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => r_core_state1,
      I5 => \r_input_coeffs[0][0][9]_i_5_n_0\,
      O => \r_input_coeffs[1][7][9]_i_1_n_0\
    );
\r_input_coeffs[2][0][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[1]\,
      I4 => \r_input_coeffs_reg[7][0]\,
      I5 => \r_input_coeffs[2][0][9]_i_2_n_0\,
      O => \r_input_coeffs[2][0][9]_i_1_n_0\
    );
\r_input_coeffs[2][0][9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_curr_input_row_reg_n_0_[0]\,
      I1 => \r_curr_input_row_reg_n_0_[2]\,
      O => \r_input_coeffs[2][0][9]_i_2_n_0\
    );
\r_input_coeffs[2][1][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[1]\,
      I4 => \r_input_coeffs_reg[7][1]\,
      I5 => \r_input_coeffs[2][0][9]_i_2_n_0\,
      O => \r_input_coeffs[2][1][9]_i_1_n_0\
    );
\r_input_coeffs[2][2][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[1]\,
      I4 => \r_input_coeffs_reg[7][2]\,
      I5 => \r_input_coeffs[2][0][9]_i_2_n_0\,
      O => \r_input_coeffs[2][2][9]_i_1_n_0\
    );
\r_input_coeffs[2][3][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[1]\,
      I4 => \r_input_coeffs[0][3][9]_i_2_n_0\,
      I5 => \r_input_coeffs[2][0][9]_i_2_n_0\,
      O => \r_input_coeffs[2][3][9]_i_1_n_0\
    );
\r_input_coeffs[2][4][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[1]\,
      I4 => \r_input_coeffs_reg[7][4]\,
      I5 => \r_input_coeffs[2][0][9]_i_2_n_0\,
      O => \r_input_coeffs[2][4][9]_i_1_n_0\
    );
\r_input_coeffs[2][5][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[1]\,
      I4 => \r_input_coeffs[0][5][9]_i_2_n_0\,
      I5 => \r_input_coeffs[2][0][9]_i_2_n_0\,
      O => \r_input_coeffs[2][5][9]_i_1_n_0\
    );
\r_input_coeffs[2][6][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[1]\,
      I4 => \r_input_coeffs_reg[7][6]\,
      I5 => \r_input_coeffs[2][0][9]_i_2_n_0\,
      O => \r_input_coeffs[2][6][9]_i_1_n_0\
    );
\r_input_coeffs[2][7][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[1]\,
      I4 => r_core_state1,
      I5 => \r_input_coeffs[2][0][9]_i_2_n_0\,
      O => \r_input_coeffs[2][7][9]_i_1_n_0\
    );
\r_input_coeffs[3][0][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs[3][0][9]_i_2_n_0\,
      I4 => \r_input_coeffs_reg[7][0]\,
      I5 => \r_curr_input_row_reg_n_0_[2]\,
      O => \r_input_coeffs[3][0][9]_i_1_n_0\
    );
\r_input_coeffs[3][0][9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \r_curr_input_row_reg_n_0_[1]\,
      I1 => \r_curr_input_row_reg_n_0_[0]\,
      O => \r_input_coeffs[3][0][9]_i_2_n_0\
    );
\r_input_coeffs[3][1][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs[3][0][9]_i_2_n_0\,
      I4 => \r_input_coeffs_reg[7][1]\,
      I5 => \r_curr_input_row_reg_n_0_[2]\,
      O => \r_input_coeffs[3][1][9]_i_1_n_0\
    );
\r_input_coeffs[3][2][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs[3][0][9]_i_2_n_0\,
      I4 => \r_input_coeffs_reg[7][2]\,
      I5 => \r_curr_input_row_reg_n_0_[2]\,
      O => \r_input_coeffs[3][2][9]_i_1_n_0\
    );
\r_input_coeffs[3][3][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs[3][0][9]_i_2_n_0\,
      I4 => \r_input_coeffs[0][3][9]_i_2_n_0\,
      I5 => \r_curr_input_row_reg_n_0_[2]\,
      O => \r_input_coeffs[3][3][9]_i_1_n_0\
    );
\r_input_coeffs[3][4][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs[3][0][9]_i_2_n_0\,
      I4 => \r_input_coeffs_reg[7][4]\,
      I5 => \r_curr_input_row_reg_n_0_[2]\,
      O => \r_input_coeffs[3][4][9]_i_1_n_0\
    );
\r_input_coeffs[3][5][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs[3][0][9]_i_2_n_0\,
      I4 => \r_input_coeffs[0][5][9]_i_2_n_0\,
      I5 => \r_curr_input_row_reg_n_0_[2]\,
      O => \r_input_coeffs[3][5][9]_i_1_n_0\
    );
\r_input_coeffs[3][6][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs[3][0][9]_i_2_n_0\,
      I4 => \r_input_coeffs_reg[7][6]\,
      I5 => \r_curr_input_row_reg_n_0_[2]\,
      O => \r_input_coeffs[3][6][9]_i_1_n_0\
    );
\r_input_coeffs[3][7][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs[3][0][9]_i_2_n_0\,
      I4 => r_core_state1,
      I5 => \r_curr_input_row_reg_n_0_[2]\,
      O => \r_input_coeffs[3][7][9]_i_1_n_0\
    );
\r_input_coeffs[4][0][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs_reg[7][0]\,
      I4 => \r_curr_input_row_reg_n_0_[2]\,
      I5 => \r_input_coeffs[4][0][9]_i_2_n_0\,
      O => \r_input_coeffs[4][0][9]_i_1_n_0\
    );
\r_input_coeffs[4][0][9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_curr_input_row_reg_n_0_[0]\,
      I1 => \r_curr_input_row_reg_n_0_[1]\,
      O => \r_input_coeffs[4][0][9]_i_2_n_0\
    );
\r_input_coeffs[4][1][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs_reg[7][1]\,
      I4 => \r_curr_input_row_reg_n_0_[2]\,
      I5 => \r_input_coeffs[4][0][9]_i_2_n_0\,
      O => \r_input_coeffs[4][1][9]_i_1_n_0\
    );
\r_input_coeffs[4][2][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs_reg[7][2]\,
      I4 => \r_curr_input_row_reg_n_0_[2]\,
      I5 => \r_input_coeffs[4][0][9]_i_2_n_0\,
      O => \r_input_coeffs[4][2][9]_i_1_n_0\
    );
\r_input_coeffs[4][3][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs[0][3][9]_i_2_n_0\,
      I4 => \r_curr_input_row_reg_n_0_[2]\,
      I5 => \r_input_coeffs[4][0][9]_i_2_n_0\,
      O => \r_input_coeffs[4][3][9]_i_1_n_0\
    );
\r_input_coeffs[4][4][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs_reg[7][4]\,
      I4 => \r_curr_input_row_reg_n_0_[2]\,
      I5 => \r_input_coeffs[4][0][9]_i_2_n_0\,
      O => \r_input_coeffs[4][4][9]_i_1_n_0\
    );
\r_input_coeffs[4][5][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs[0][5][9]_i_2_n_0\,
      I4 => \r_curr_input_row_reg_n_0_[2]\,
      I5 => \r_input_coeffs[4][0][9]_i_2_n_0\,
      O => \r_input_coeffs[4][5][9]_i_1_n_0\
    );
\r_input_coeffs[4][6][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs_reg[7][6]\,
      I4 => \r_curr_input_row_reg_n_0_[2]\,
      I5 => \r_input_coeffs[4][0][9]_i_2_n_0\,
      O => \r_input_coeffs[4][6][9]_i_1_n_0\
    );
\r_input_coeffs[4][7][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => r_core_state1,
      I4 => \r_curr_input_row_reg_n_0_[2]\,
      I5 => \r_input_coeffs[4][0][9]_i_2_n_0\,
      O => \r_input_coeffs[4][7][9]_i_1_n_0\
    );
\r_input_coeffs[5][0][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs_reg[7][0]\,
      I5 => \r_input_coeffs[5][0][9]_i_2_n_0\,
      O => \r_input_coeffs[5][0][9]_i_1_n_0\
    );
\r_input_coeffs[5][0][9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_curr_input_row_reg_n_0_[2]\,
      I1 => \r_curr_input_row_reg_n_0_[1]\,
      O => \r_input_coeffs[5][0][9]_i_2_n_0\
    );
\r_input_coeffs[5][1][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs_reg[7][1]\,
      I5 => \r_input_coeffs[5][0][9]_i_2_n_0\,
      O => \r_input_coeffs[5][1][9]_i_1_n_0\
    );
\r_input_coeffs[5][2][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs_reg[7][2]\,
      I5 => \r_input_coeffs[5][0][9]_i_2_n_0\,
      O => \r_input_coeffs[5][2][9]_i_1_n_0\
    );
\r_input_coeffs[5][3][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs[0][3][9]_i_2_n_0\,
      I5 => \r_input_coeffs[5][0][9]_i_2_n_0\,
      O => \r_input_coeffs[5][3][9]_i_1_n_0\
    );
\r_input_coeffs[5][4][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs_reg[7][4]\,
      I5 => \r_input_coeffs[5][0][9]_i_2_n_0\,
      O => \r_input_coeffs[5][4][9]_i_1_n_0\
    );
\r_input_coeffs[5][5][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs[0][5][9]_i_2_n_0\,
      I5 => \r_input_coeffs[5][0][9]_i_2_n_0\,
      O => \r_input_coeffs[5][5][9]_i_1_n_0\
    );
\r_input_coeffs[5][6][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => \r_input_coeffs_reg[7][6]\,
      I5 => \r_input_coeffs[5][0][9]_i_2_n_0\,
      O => \r_input_coeffs[5][6][9]_i_1_n_0\
    );
\r_input_coeffs[5][7][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[0]\,
      I4 => r_core_state1,
      I5 => \r_input_coeffs[5][0][9]_i_2_n_0\,
      O => \r_input_coeffs[5][7][9]_i_1_n_0\
    );
\r_input_coeffs[6][0][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[1]\,
      I4 => \r_input_coeffs_reg[7][0]\,
      I5 => \r_input_coeffs[6][0][9]_i_2_n_0\,
      O => \r_input_coeffs[6][0][9]_i_1_n_0\
    );
\r_input_coeffs[6][0][9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_curr_input_row_reg_n_0_[2]\,
      I1 => \r_curr_input_row_reg_n_0_[0]\,
      O => \r_input_coeffs[6][0][9]_i_2_n_0\
    );
\r_input_coeffs[6][1][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[1]\,
      I4 => \r_input_coeffs_reg[7][1]\,
      I5 => \r_input_coeffs[6][0][9]_i_2_n_0\,
      O => \r_input_coeffs[6][1][9]_i_1_n_0\
    );
\r_input_coeffs[6][2][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[1]\,
      I4 => \r_input_coeffs_reg[7][2]\,
      I5 => \r_input_coeffs[6][0][9]_i_2_n_0\,
      O => \r_input_coeffs[6][2][9]_i_1_n_0\
    );
\r_input_coeffs[6][3][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[1]\,
      I4 => \r_input_coeffs[0][3][9]_i_2_n_0\,
      I5 => \r_input_coeffs[6][0][9]_i_2_n_0\,
      O => \r_input_coeffs[6][3][9]_i_1_n_0\
    );
\r_input_coeffs[6][4][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[1]\,
      I4 => \r_input_coeffs_reg[7][4]\,
      I5 => \r_input_coeffs[6][0][9]_i_2_n_0\,
      O => \r_input_coeffs[6][4][9]_i_1_n_0\
    );
\r_input_coeffs[6][5][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[1]\,
      I4 => \r_input_coeffs[0][5][9]_i_2_n_0\,
      I5 => \r_input_coeffs[6][0][9]_i_2_n_0\,
      O => \r_input_coeffs[6][5][9]_i_1_n_0\
    );
\r_input_coeffs[6][6][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[1]\,
      I4 => \r_input_coeffs_reg[7][6]\,
      I5 => \r_input_coeffs[6][0][9]_i_2_n_0\,
      O => \r_input_coeffs[6][6][9]_i_1_n_0\
    );
\r_input_coeffs[6][7][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_curr_input_row_reg_n_0_[1]\,
      I4 => r_core_state1,
      I5 => \r_input_coeffs[6][0][9]_i_2_n_0\,
      O => \r_input_coeffs[6][7][9]_i_1_n_0\
    );
\r_input_coeffs[7][0][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs_reg[7][0]\,
      I4 => \r_curr_input_row_reg_n_0_[2]\,
      I5 => \r_input_coeffs[3][0][9]_i_2_n_0\,
      O => \r_input_coeffs[7][0][9]_i_1_n_0\
    );
\r_input_coeffs[7][1][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs_reg[7][1]\,
      I4 => \r_curr_input_row_reg_n_0_[2]\,
      I5 => \r_input_coeffs[3][0][9]_i_2_n_0\,
      O => \r_input_coeffs[7][1][9]_i_1_n_0\
    );
\r_input_coeffs[7][2][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs_reg[7][2]\,
      I4 => \r_curr_input_row_reg_n_0_[2]\,
      I5 => \r_input_coeffs[3][0][9]_i_2_n_0\,
      O => \r_input_coeffs[7][2][9]_i_1_n_0\
    );
\r_input_coeffs[7][3][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs[0][3][9]_i_2_n_0\,
      I4 => \r_curr_input_row_reg_n_0_[2]\,
      I5 => \r_input_coeffs[3][0][9]_i_2_n_0\,
      O => \r_input_coeffs[7][3][9]_i_1_n_0\
    );
\r_input_coeffs[7][4][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs_reg[7][4]\,
      I4 => \r_curr_input_row_reg_n_0_[2]\,
      I5 => \r_input_coeffs[3][0][9]_i_2_n_0\,
      O => \r_input_coeffs[7][4][9]_i_1_n_0\
    );
\r_input_coeffs[7][5][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs[0][5][9]_i_2_n_0\,
      I4 => \r_curr_input_row_reg_n_0_[2]\,
      I5 => \r_input_coeffs[3][0][9]_i_2_n_0\,
      O => \r_input_coeffs[7][5][9]_i_1_n_0\
    );
\r_input_coeffs[7][6][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => \r_input_coeffs_reg[7][6]\,
      I4 => \r_curr_input_row_reg_n_0_[2]\,
      I5 => \r_input_coeffs[3][0][9]_i_2_n_0\,
      O => \r_input_coeffs[7][6][9]_i_1_n_0\
    );
\r_input_coeffs[7][7][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => r_curr_rle_row,
      I1 => r_core_state,
      I2 => i_axis_TVALID,
      I3 => r_core_state1,
      I4 => \r_curr_input_row_reg_n_0_[2]\,
      I5 => \r_input_coeffs[3][0][9]_i_2_n_0\,
      O => \r_input_coeffs[7][7][9]_i_1_n_0\
    );
\r_input_coeffs_reg[0][0][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][0][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[0][0]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][0][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][0][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[0][0]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][0][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][0][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[0][0]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][0][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][0][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[0][0]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][0][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][0][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[0][0]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][0][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][0][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[0][0]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][0][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][0][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[0][0]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][0][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][0][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[0][0]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][0][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][0][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[0][0]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][0][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][0][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[0][0]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][1][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][1][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[0][1]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][1][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][1][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[0][1]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][1][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][1][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[0][1]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][1][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][1][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[0][1]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][1][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][1][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[0][1]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][1][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][1][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[0][1]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][1][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][1][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[0][1]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][1][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][1][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[0][1]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][1][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][1][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[0][1]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][1][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][1][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[0][1]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][2][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][2][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[0][2]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][2][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][2][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[0][2]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][2][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][2][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[0][2]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][2][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][2][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[0][2]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][2][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][2][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[0][2]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][2][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][2][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[0][2]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][2][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][2][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[0][2]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][2][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][2][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[0][2]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][2][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][2][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[0][2]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][2][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][2][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[0][2]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][3][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][3][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[0][3]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][3][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][3][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[0][3]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][3][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][3][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[0][3]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][3][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][3][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[0][3]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][3][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][3][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[0][3]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][3][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][3][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[0][3]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][3][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][3][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[0][3]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][3][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][3][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[0][3]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][3][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][3][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[0][3]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][3][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][3][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[0][3]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][4][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][4][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[0][4]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][4][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][4][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[0][4]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][4][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][4][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[0][4]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][4][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][4][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[0][4]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][4][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][4][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[0][4]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][4][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][4][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[0][4]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][4][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][4][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[0][4]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][4][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][4][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[0][4]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][4][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][4][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[0][4]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][4][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][4][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[0][4]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][5][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][5][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[0][5]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][5][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][5][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[0][5]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][5][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][5][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[0][5]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][5][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][5][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[0][5]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][5][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][5][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[0][5]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][5][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][5][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[0][5]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][5][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][5][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[0][5]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][5][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][5][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[0][5]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][5][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][5][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[0][5]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][5][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][5][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[0][5]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][6][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][6][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[0][6]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][6][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][6][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[0][6]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][6][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][6][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[0][6]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][6][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][6][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[0][6]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][6][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][6][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[0][6]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][6][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][6][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[0][6]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][6][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][6][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[0][6]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][6][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][6][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[0][6]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][6][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][6][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[0][6]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][6][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][6][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[0][6]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][7][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][7][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[0][7]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][7][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][7][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[0][7]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][7][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][7][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[0][7]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][7][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][7][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[0][7]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][7][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][7][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[0][7]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][7][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][7][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[0][7]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][7][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][7][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[0][7]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][7][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][7][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[0][7]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][7][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][7][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[0][7]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[0][7][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[0][7][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[0][7]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][0][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][0][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[1][0]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][0][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][0][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[1][0]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][0][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][0][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[1][0]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][0][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][0][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[1][0]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][0][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][0][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[1][0]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][0][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][0][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[1][0]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][0][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][0][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[1][0]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][0][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][0][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[1][0]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][0][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][0][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[1][0]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][0][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][0][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[1][0]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][1][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][1][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[1][1]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][1][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][1][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[1][1]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][1][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][1][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[1][1]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][1][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][1][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[1][1]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][1][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][1][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[1][1]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][1][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][1][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[1][1]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][1][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][1][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[1][1]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][1][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][1][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[1][1]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][1][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][1][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[1][1]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][1][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][1][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[1][1]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][2][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][2][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[1][2]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][2][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][2][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[1][2]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][2][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][2][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[1][2]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][2][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][2][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[1][2]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][2][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][2][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[1][2]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][2][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][2][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[1][2]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][2][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][2][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[1][2]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][2][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][2][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[1][2]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][2][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][2][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[1][2]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][2][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][2][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[1][2]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][3][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][3][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[1][3]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][3][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][3][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[1][3]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][3][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][3][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[1][3]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][3][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][3][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[1][3]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][3][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][3][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[1][3]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][3][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][3][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[1][3]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][3][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][3][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[1][3]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][3][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][3][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[1][3]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][3][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][3][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[1][3]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][3][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][3][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[1][3]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][4][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][4][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[1][4]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][4][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][4][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[1][4]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][4][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][4][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[1][4]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][4][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][4][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[1][4]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][4][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][4][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[1][4]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][4][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][4][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[1][4]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][4][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][4][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[1][4]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][4][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][4][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[1][4]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][4][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][4][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[1][4]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][4][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][4][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[1][4]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][5][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][5][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[1][5]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][5][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][5][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[1][5]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][5][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][5][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[1][5]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][5][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][5][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[1][5]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][5][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][5][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[1][5]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][5][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][5][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[1][5]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][5][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][5][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[1][5]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][5][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][5][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[1][5]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][5][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][5][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[1][5]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][5][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][5][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[1][5]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][6][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][6][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[1][6]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][6][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][6][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[1][6]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][6][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][6][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[1][6]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][6][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][6][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[1][6]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][6][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][6][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[1][6]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][6][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][6][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[1][6]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][6][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][6][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[1][6]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][6][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][6][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[1][6]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][6][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][6][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[1][6]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][6][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][6][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[1][6]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][7][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][7][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[1][7]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][7][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][7][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[1][7]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][7][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][7][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[1][7]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][7][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][7][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[1][7]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][7][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][7][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[1][7]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][7][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][7][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[1][7]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][7][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][7][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[1][7]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][7][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][7][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[1][7]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][7][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][7][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[1][7]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[1][7][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[1][7][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[1][7]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][0][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][0][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[2][0]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][0][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][0][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[2][0]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][0][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][0][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[2][0]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][0][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][0][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[2][0]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][0][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][0][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[2][0]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][0][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][0][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[2][0]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][0][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][0][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[2][0]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][0][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][0][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[2][0]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][0][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][0][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[2][0]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][0][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][0][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[2][0]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][1][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][1][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[2][1]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][1][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][1][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[2][1]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][1][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][1][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[2][1]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][1][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][1][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[2][1]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][1][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][1][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[2][1]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][1][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][1][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[2][1]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][1][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][1][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[2][1]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][1][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][1][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[2][1]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][1][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][1][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[2][1]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][1][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][1][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[2][1]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][2][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][2][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[2][2]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][2][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][2][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[2][2]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][2][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][2][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[2][2]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][2][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][2][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[2][2]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][2][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][2][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[2][2]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][2][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][2][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[2][2]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][2][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][2][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[2][2]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][2][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][2][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[2][2]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][2][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][2][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[2][2]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][2][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][2][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[2][2]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][3][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][3][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[2][3]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][3][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][3][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[2][3]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][3][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][3][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[2][3]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][3][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][3][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[2][3]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][3][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][3][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[2][3]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][3][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][3][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[2][3]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][3][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][3][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[2][3]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][3][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][3][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[2][3]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][3][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][3][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[2][3]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][3][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][3][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[2][3]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][4][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][4][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[2][4]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][4][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][4][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[2][4]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][4][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][4][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[2][4]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][4][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][4][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[2][4]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][4][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][4][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[2][4]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][4][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][4][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[2][4]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][4][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][4][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[2][4]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][4][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][4][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[2][4]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][4][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][4][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[2][4]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][4][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][4][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[2][4]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][5][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][5][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[2][5]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][5][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][5][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[2][5]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][5][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][5][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[2][5]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][5][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][5][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[2][5]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][5][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][5][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[2][5]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][5][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][5][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[2][5]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][5][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][5][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[2][5]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][5][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][5][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[2][5]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][5][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][5][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[2][5]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][5][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][5][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[2][5]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][6][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][6][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[2][6]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][6][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][6][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[2][6]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][6][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][6][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[2][6]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][6][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][6][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[2][6]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][6][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][6][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[2][6]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][6][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][6][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[2][6]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][6][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][6][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[2][6]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][6][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][6][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[2][6]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][6][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][6][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[2][6]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][6][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][6][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[2][6]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][7][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][7][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[2][7]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][7][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][7][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[2][7]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][7][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][7][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[2][7]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][7][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][7][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[2][7]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][7][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][7][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[2][7]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][7][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][7][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[2][7]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][7][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][7][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[2][7]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][7][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][7][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[2][7]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][7][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][7][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[2][7]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[2][7][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[2][7][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[2][7]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][0][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][0][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[3][0]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][0][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][0][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[3][0]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][0][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][0][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[3][0]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][0][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][0][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[3][0]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][0][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][0][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[3][0]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][0][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][0][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[3][0]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][0][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][0][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[3][0]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][0][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][0][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[3][0]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][0][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][0][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[3][0]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][0][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][0][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[3][0]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][1][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][1][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[3][1]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][1][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][1][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[3][1]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][1][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][1][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[3][1]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][1][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][1][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[3][1]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][1][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][1][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[3][1]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][1][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][1][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[3][1]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][1][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][1][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[3][1]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][1][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][1][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[3][1]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][1][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][1][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[3][1]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][1][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][1][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[3][1]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][2][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][2][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[3][2]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][2][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][2][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[3][2]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][2][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][2][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[3][2]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][2][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][2][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[3][2]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][2][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][2][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[3][2]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][2][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][2][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[3][2]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][2][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][2][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[3][2]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][2][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][2][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[3][2]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][2][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][2][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[3][2]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][2][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][2][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[3][2]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][3][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][3][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[3][3]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][3][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][3][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[3][3]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][3][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][3][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[3][3]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][3][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][3][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[3][3]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][3][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][3][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[3][3]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][3][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][3][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[3][3]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][3][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][3][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[3][3]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][3][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][3][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[3][3]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][3][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][3][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[3][3]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][3][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][3][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[3][3]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][4][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][4][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[3][4]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][4][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][4][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[3][4]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][4][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][4][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[3][4]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][4][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][4][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[3][4]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][4][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][4][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[3][4]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][4][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][4][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[3][4]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][4][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][4][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[3][4]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][4][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][4][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[3][4]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][4][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][4][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[3][4]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][4][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][4][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[3][4]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][5][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][5][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[3][5]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][5][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][5][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[3][5]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][5][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][5][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[3][5]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][5][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][5][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[3][5]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][5][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][5][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[3][5]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][5][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][5][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[3][5]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][5][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][5][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[3][5]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][5][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][5][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[3][5]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][5][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][5][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[3][5]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][5][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][5][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[3][5]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][6][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][6][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[3][6]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][6][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][6][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[3][6]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][6][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][6][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[3][6]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][6][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][6][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[3][6]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][6][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][6][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[3][6]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][6][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][6][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[3][6]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][6][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][6][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[3][6]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][6][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][6][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[3][6]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][6][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][6][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[3][6]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][6][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][6][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[3][6]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][7][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][7][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[3][7]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][7][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][7][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[3][7]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][7][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][7][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[3][7]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][7][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][7][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[3][7]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][7][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][7][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[3][7]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][7][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][7][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[3][7]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][7][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][7][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[3][7]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][7][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][7][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[3][7]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][7][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][7][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[3][7]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[3][7][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[3][7][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[3][7]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][0][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][0][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[4][0]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][0][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][0][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[4][0]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][0][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][0][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[4][0]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][0][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][0][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[4][0]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][0][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][0][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[4][0]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][0][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][0][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[4][0]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][0][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][0][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[4][0]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][0][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][0][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[4][0]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][0][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][0][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[4][0]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][0][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][0][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[4][0]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][1][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][1][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[4][1]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][1][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][1][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[4][1]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][1][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][1][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[4][1]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][1][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][1][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[4][1]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][1][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][1][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[4][1]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][1][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][1][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[4][1]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][1][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][1][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[4][1]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][1][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][1][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[4][1]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][1][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][1][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[4][1]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][1][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][1][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[4][1]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][2][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][2][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[4][2]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][2][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][2][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[4][2]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][2][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][2][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[4][2]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][2][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][2][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[4][2]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][2][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][2][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[4][2]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][2][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][2][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[4][2]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][2][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][2][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[4][2]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][2][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][2][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[4][2]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][2][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][2][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[4][2]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][2][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][2][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[4][2]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][3][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][3][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[4][3]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][3][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][3][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[4][3]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][3][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][3][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[4][3]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][3][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][3][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[4][3]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][3][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][3][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[4][3]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][3][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][3][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[4][3]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][3][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][3][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[4][3]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][3][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][3][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[4][3]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][3][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][3][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[4][3]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][3][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][3][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[4][3]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][4][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][4][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[4][4]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][4][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][4][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[4][4]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][4][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][4][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[4][4]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][4][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][4][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[4][4]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][4][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][4][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[4][4]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][4][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][4][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[4][4]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][4][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][4][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[4][4]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][4][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][4][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[4][4]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][4][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][4][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[4][4]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][4][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][4][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[4][4]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][5][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][5][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[4][5]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][5][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][5][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[4][5]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][5][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][5][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[4][5]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][5][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][5][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[4][5]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][5][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][5][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[4][5]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][5][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][5][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[4][5]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][5][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][5][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[4][5]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][5][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][5][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[4][5]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][5][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][5][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[4][5]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][5][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][5][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[4][5]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][6][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][6][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[4][6]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][6][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][6][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[4][6]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][6][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][6][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[4][6]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][6][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][6][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[4][6]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][6][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][6][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[4][6]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][6][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][6][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[4][6]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][6][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][6][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[4][6]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][6][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][6][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[4][6]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][6][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][6][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[4][6]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][6][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][6][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[4][6]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][7][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][7][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[4][7]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][7][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][7][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[4][7]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][7][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][7][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[4][7]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][7][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][7][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[4][7]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][7][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][7][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[4][7]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][7][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][7][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[4][7]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][7][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][7][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[4][7]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][7][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][7][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[4][7]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][7][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][7][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[4][7]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[4][7][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[4][7][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[4][7]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][0][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][0][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[5][0]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][0][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][0][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[5][0]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][0][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][0][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[5][0]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][0][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][0][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[5][0]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][0][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][0][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[5][0]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][0][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][0][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[5][0]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][0][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][0][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[5][0]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][0][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][0][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[5][0]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][0][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][0][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[5][0]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][0][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][0][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[5][0]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][1][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][1][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[5][1]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][1][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][1][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[5][1]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][1][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][1][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[5][1]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][1][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][1][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[5][1]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][1][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][1][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[5][1]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][1][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][1][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[5][1]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][1][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][1][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[5][1]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][1][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][1][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[5][1]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][1][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][1][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[5][1]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][1][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][1][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[5][1]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][2][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][2][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[5][2]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][2][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][2][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[5][2]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][2][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][2][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[5][2]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][2][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][2][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[5][2]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][2][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][2][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[5][2]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][2][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][2][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[5][2]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][2][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][2][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[5][2]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][2][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][2][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[5][2]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][2][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][2][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[5][2]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][2][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][2][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[5][2]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][3][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][3][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[5][3]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][3][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][3][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[5][3]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][3][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][3][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[5][3]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][3][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][3][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[5][3]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][3][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][3][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[5][3]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][3][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][3][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[5][3]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][3][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][3][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[5][3]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][3][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][3][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[5][3]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][3][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][3][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[5][3]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][3][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][3][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[5][3]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][4][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][4][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[5][4]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][4][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][4][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[5][4]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][4][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][4][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[5][4]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][4][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][4][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[5][4]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][4][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][4][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[5][4]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][4][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][4][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[5][4]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][4][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][4][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[5][4]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][4][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][4][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[5][4]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][4][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][4][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[5][4]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][4][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][4][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[5][4]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][5][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][5][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[5][5]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][5][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][5][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[5][5]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][5][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][5][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[5][5]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][5][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][5][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[5][5]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][5][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][5][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[5][5]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][5][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][5][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[5][5]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][5][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][5][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[5][5]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][5][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][5][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[5][5]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][5][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][5][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[5][5]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][5][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][5][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[5][5]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][6][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][6][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[5][6]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][6][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][6][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[5][6]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][6][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][6][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[5][6]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][6][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][6][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[5][6]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][6][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][6][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[5][6]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][6][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][6][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[5][6]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][6][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][6][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[5][6]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][6][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][6][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[5][6]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][6][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][6][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[5][6]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][6][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][6][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[5][6]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][7][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][7][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[5][7]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][7][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][7][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[5][7]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][7][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][7][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[5][7]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][7][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][7][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[5][7]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][7][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][7][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[5][7]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][7][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][7][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[5][7]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][7][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][7][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[5][7]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][7][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][7][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[5][7]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][7][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][7][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[5][7]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[5][7][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[5][7][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[5][7]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][0][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][0][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[6][0]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][0][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][0][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[6][0]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][0][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][0][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[6][0]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][0][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][0][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[6][0]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][0][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][0][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[6][0]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][0][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][0][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[6][0]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][0][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][0][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[6][0]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][0][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][0][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[6][0]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][0][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][0][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[6][0]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][0][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][0][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[6][0]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][1][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][1][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[6][1]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][1][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][1][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[6][1]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][1][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][1][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[6][1]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][1][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][1][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[6][1]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][1][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][1][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[6][1]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][1][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][1][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[6][1]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][1][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][1][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[6][1]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][1][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][1][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[6][1]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][1][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][1][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[6][1]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][1][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][1][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[6][1]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][2][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][2][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[6][2]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][2][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][2][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[6][2]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][2][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][2][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[6][2]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][2][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][2][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[6][2]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][2][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][2][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[6][2]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][2][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][2][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[6][2]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][2][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][2][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[6][2]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][2][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][2][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[6][2]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][2][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][2][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[6][2]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][2][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][2][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[6][2]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][3][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][3][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[6][3]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][3][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][3][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[6][3]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][3][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][3][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[6][3]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][3][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][3][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[6][3]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][3][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][3][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[6][3]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][3][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][3][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[6][3]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][3][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][3][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[6][3]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][3][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][3][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[6][3]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][3][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][3][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[6][3]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][3][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][3][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[6][3]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][4][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][4][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[6][4]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][4][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][4][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[6][4]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][4][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][4][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[6][4]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][4][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][4][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[6][4]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][4][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][4][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[6][4]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][4][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][4][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[6][4]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][4][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][4][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[6][4]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][4][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][4][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[6][4]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][4][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][4][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[6][4]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][4][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][4][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[6][4]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][5][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][5][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[6][5]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][5][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][5][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[6][5]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][5][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][5][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[6][5]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][5][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][5][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[6][5]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][5][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][5][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[6][5]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][5][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][5][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[6][5]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][5][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][5][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[6][5]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][5][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][5][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[6][5]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][5][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][5][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[6][5]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][5][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][5][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[6][5]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][6][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][6][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[6][6]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][6][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][6][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[6][6]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][6][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][6][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[6][6]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][6][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][6][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[6][6]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][6][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][6][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[6][6]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][6][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][6][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[6][6]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][6][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][6][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[6][6]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][6][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][6][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[6][6]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][6][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][6][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[6][6]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][6][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][6][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[6][6]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][7][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][7][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg[6][7]\(0),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][7][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][7][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg[6][7]\(1),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][7][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][7][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg[6][7]\(2),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][7][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][7][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg[6][7]\(3),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][7][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][7][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg[6][7]\(4),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][7][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][7][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg[6][7]\(5),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][7][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][7][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg[6][7]\(6),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][7][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][7][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg[6][7]\(7),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][7][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][7][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg[6][7]\(8),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[6][7][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[6][7][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg[6][7]\(9),
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][0][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][0][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg_n_0_[7][0][0]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][0][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][0][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg_n_0_[7][0][1]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][0][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][0][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg_n_0_[7][0][2]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][0][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][0][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg_n_0_[7][0][3]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][0][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][0][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg_n_0_[7][0][4]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][0][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][0][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg_n_0_[7][0][5]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][0][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][0][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg_n_0_[7][0][6]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][0][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][0][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg_n_0_[7][0][7]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][0][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][0][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg_n_0_[7][0][8]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][0][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][0][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg_n_0_[7][0][9]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][1][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][1][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg_n_0_[7][1][0]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][1][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][1][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg_n_0_[7][1][1]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][1][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][1][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg_n_0_[7][1][2]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][1][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][1][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg_n_0_[7][1][3]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][1][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][1][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg_n_0_[7][1][4]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][1][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][1][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg_n_0_[7][1][5]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][1][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][1][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg_n_0_[7][1][6]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][1][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][1][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg_n_0_[7][1][7]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][1][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][1][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg_n_0_[7][1][8]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][1][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][1][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg_n_0_[7][1][9]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][2][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][2][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg_n_0_[7][2][0]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][2][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][2][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg_n_0_[7][2][1]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][2][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][2][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg_n_0_[7][2][2]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][2][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][2][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg_n_0_[7][2][3]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][2][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][2][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg_n_0_[7][2][4]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][2][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][2][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg_n_0_[7][2][5]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][2][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][2][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg_n_0_[7][2][6]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][2][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][2][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg_n_0_[7][2][7]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][2][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][2][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg_n_0_[7][2][8]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][2][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][2][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg_n_0_[7][2][9]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][3][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][3][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg_n_0_[7][3][0]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][3][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][3][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg_n_0_[7][3][1]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][3][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][3][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg_n_0_[7][3][2]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][3][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][3][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg_n_0_[7][3][3]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][3][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][3][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg_n_0_[7][3][4]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][3][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][3][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg_n_0_[7][3][5]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][3][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][3][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg_n_0_[7][3][6]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][3][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][3][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg_n_0_[7][3][7]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][3][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][3][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg_n_0_[7][3][8]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][3][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][3][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg_n_0_[7][3][9]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][4][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][4][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg_n_0_[7][4][0]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][4][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][4][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg_n_0_[7][4][1]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][4][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][4][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg_n_0_[7][4][2]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][4][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][4][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg_n_0_[7][4][3]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][4][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][4][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg_n_0_[7][4][4]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][4][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][4][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg_n_0_[7][4][5]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][4][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][4][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg_n_0_[7][4][6]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][4][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][4][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg_n_0_[7][4][7]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][4][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][4][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg_n_0_[7][4][8]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][4][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][4][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg_n_0_[7][4][9]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][5][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][5][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg_n_0_[7][5][0]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][5][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][5][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg_n_0_[7][5][1]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][5][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][5][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg_n_0_[7][5][2]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][5][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][5][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg_n_0_[7][5][3]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][5][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][5][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg_n_0_[7][5][4]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][5][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][5][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg_n_0_[7][5][5]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][5][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][5][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg_n_0_[7][5][6]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][5][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][5][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg_n_0_[7][5][7]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][5][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][5][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg_n_0_[7][5][8]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][5][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][5][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg_n_0_[7][5][9]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][6][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][6][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg_n_0_[7][6][0]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][6][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][6][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg_n_0_[7][6][1]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][6][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][6][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg_n_0_[7][6][2]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][6][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][6][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg_n_0_[7][6][3]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][6][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][6][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg_n_0_[7][6][4]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][6][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][6][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg_n_0_[7][6][5]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][6][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][6][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg_n_0_[7][6][6]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][6][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][6][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg_n_0_[7][6][7]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][6][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][6][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg_n_0_[7][6][8]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][6][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][6][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg_n_0_[7][6][9]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][7][0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][7][9]_i_1_n_0\,
      D => r_input_coeffs(0),
      Q => \r_input_coeffs_reg_n_0_[7][7][0]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][7][1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][7][9]_i_1_n_0\,
      D => r_input_coeffs(1),
      Q => \r_input_coeffs_reg_n_0_[7][7][1]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][7][2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][7][9]_i_1_n_0\,
      D => r_input_coeffs(2),
      Q => \r_input_coeffs_reg_n_0_[7][7][2]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][7][3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][7][9]_i_1_n_0\,
      D => r_input_coeffs(3),
      Q => \r_input_coeffs_reg_n_0_[7][7][3]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][7][4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][7][9]_i_1_n_0\,
      D => r_input_coeffs(4),
      Q => \r_input_coeffs_reg_n_0_[7][7][4]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][7][5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][7][9]_i_1_n_0\,
      D => r_input_coeffs(5),
      Q => \r_input_coeffs_reg_n_0_[7][7][5]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][7][6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][7][9]_i_1_n_0\,
      D => r_input_coeffs(6),
      Q => \r_input_coeffs_reg_n_0_[7][7][6]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][7][7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][7][9]_i_1_n_0\,
      D => r_input_coeffs(7),
      Q => \r_input_coeffs_reg_n_0_[7][7][7]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][7][8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][7][9]_i_1_n_0\,
      D => r_input_coeffs(8),
      Q => \r_input_coeffs_reg_n_0_[7][7][8]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_input_coeffs_reg[7][7][9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_input_coeffs[7][7][9]_i_1_n_0\,
      D => r_input_coeffs(9),
      Q => \r_input_coeffs_reg_n_0_[7][7][9]\,
      R => r_o_axis_TVALID_i_1_n_0
    );
\r_o_axis_TDATA[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w_counter_shifted1__0\,
      I1 => \r_counter_reg_n_0_[0]\,
      O => \r_o_axis_TDATA[10]_i_1_n_0\
    );
\r_o_axis_TDATA[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \r_counter_reg_n_0_[0]\,
      I1 => \w_counter_shifted1__0\,
      I2 => \r_counter_reg_n_0_[1]\,
      O => \r_o_axis_TDATA[11]_i_1_n_0\
    );
\r_o_axis_TDATA[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \r_counter_reg_n_0_[0]\,
      I1 => \r_counter_reg_n_0_[1]\,
      I2 => \w_counter_shifted1__0\,
      I3 => \r_counter_reg_n_0_[2]\,
      O => \r_o_axis_TDATA[12]_i_1_n_0\
    );
\r_o_axis_TDATA[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \r_counter_reg_n_0_[1]\,
      I1 => \r_counter_reg_n_0_[0]\,
      I2 => \r_counter_reg_n_0_[2]\,
      I3 => \w_counter_shifted1__0\,
      I4 => \r_counter_reg_n_0_[3]\,
      O => \r_o_axis_TDATA[13]_i_1_n_0\
    );
\r_o_axis_TDATA[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \r_counter_reg_n_0_[2]\,
      I1 => \r_counter_reg_n_0_[0]\,
      I2 => \r_counter_reg_n_0_[1]\,
      I3 => \r_counter_reg_n_0_[3]\,
      I4 => \w_counter_shifted1__0\,
      I5 => \r_counter_reg_n_0_[4]\,
      O => \r_o_axis_TDATA[14]_i_1_n_0\
    );
\r_o_axis_TDATA[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8000FFFF"
    )
        port map (
      I0 => \^r_o_axis_tvalid_reg_0\,
      I1 => i_axis_TREADY,
      I2 => \^r_o_axis_tlast_reg_0\,
      I3 => r_core_state,
      I4 => i_aresetn,
      O => r_o_axis_TDATA
    );
\r_o_axis_TDATA[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2220"
    )
        port map (
      I0 => r_core_state,
      I1 => \^r_o_axis_tvalid_reg_0\,
      I2 => r_counter1_carry_n_0,
      I3 => \w_last_entry__3\,
      O => \r_o_axis_TDATA[15]_i_2_n_0\
    );
\r_o_axis_TDATA[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_o_axis_TDATA[15]_i_4_n_0\,
      I1 => \w_counter_shifted1__0\,
      I2 => \r_counter_reg_n_0_[5]\,
      O => \r_o_axis_TDATA[15]_i_3_n_0\
    );
\r_o_axis_TDATA[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \r_counter_reg_n_0_[3]\,
      I1 => \r_counter_reg_n_0_[1]\,
      I2 => \r_counter_reg_n_0_[0]\,
      I3 => \r_counter_reg_n_0_[2]\,
      I4 => \r_counter_reg_n_0_[4]\,
      I5 => \r_counter_reg_n_0_[5]\,
      O => \r_o_axis_TDATA[15]_i_4_n_0\
    );
\r_o_axis_TDATA[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \w_last_entry__3\,
      I1 => \r_counter0__9\,
      O => \w_counter_shifted1__0\
    );
\r_o_axis_TDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_o_axis_TDATA[15]_i_2_n_0\,
      D => r_curr_value(0),
      Q => o_axis_TDATA(0),
      R => r_o_axis_TDATA
    );
\r_o_axis_TDATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_o_axis_TDATA[15]_i_2_n_0\,
      D => \r_o_axis_TDATA[10]_i_1_n_0\,
      Q => o_axis_TDATA(10),
      R => r_o_axis_TDATA
    );
\r_o_axis_TDATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_o_axis_TDATA[15]_i_2_n_0\,
      D => \r_o_axis_TDATA[11]_i_1_n_0\,
      Q => o_axis_TDATA(11),
      R => r_o_axis_TDATA
    );
\r_o_axis_TDATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_o_axis_TDATA[15]_i_2_n_0\,
      D => \r_o_axis_TDATA[12]_i_1_n_0\,
      Q => o_axis_TDATA(12),
      R => r_o_axis_TDATA
    );
\r_o_axis_TDATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_o_axis_TDATA[15]_i_2_n_0\,
      D => \r_o_axis_TDATA[13]_i_1_n_0\,
      Q => o_axis_TDATA(13),
      R => r_o_axis_TDATA
    );
\r_o_axis_TDATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_o_axis_TDATA[15]_i_2_n_0\,
      D => \r_o_axis_TDATA[14]_i_1_n_0\,
      Q => o_axis_TDATA(14),
      R => r_o_axis_TDATA
    );
\r_o_axis_TDATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_o_axis_TDATA[15]_i_2_n_0\,
      D => \r_o_axis_TDATA[15]_i_3_n_0\,
      Q => o_axis_TDATA(15),
      R => r_o_axis_TDATA
    );
\r_o_axis_TDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_o_axis_TDATA[15]_i_2_n_0\,
      D => r_curr_value(1),
      Q => o_axis_TDATA(1),
      R => r_o_axis_TDATA
    );
\r_o_axis_TDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_o_axis_TDATA[15]_i_2_n_0\,
      D => r_curr_value(2),
      Q => o_axis_TDATA(2),
      R => r_o_axis_TDATA
    );
\r_o_axis_TDATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_o_axis_TDATA[15]_i_2_n_0\,
      D => r_curr_value(3),
      Q => o_axis_TDATA(3),
      R => r_o_axis_TDATA
    );
\r_o_axis_TDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_o_axis_TDATA[15]_i_2_n_0\,
      D => r_curr_value(4),
      Q => o_axis_TDATA(4),
      R => r_o_axis_TDATA
    );
\r_o_axis_TDATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_o_axis_TDATA[15]_i_2_n_0\,
      D => r_curr_value(5),
      Q => o_axis_TDATA(5),
      R => r_o_axis_TDATA
    );
\r_o_axis_TDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_o_axis_TDATA[15]_i_2_n_0\,
      D => r_curr_value(6),
      Q => o_axis_TDATA(6),
      R => r_o_axis_TDATA
    );
\r_o_axis_TDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_o_axis_TDATA[15]_i_2_n_0\,
      D => r_curr_value(7),
      Q => o_axis_TDATA(7),
      R => r_o_axis_TDATA
    );
\r_o_axis_TDATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_o_axis_TDATA[15]_i_2_n_0\,
      D => r_curr_value(8),
      Q => o_axis_TDATA(8),
      R => r_o_axis_TDATA
    );
\r_o_axis_TDATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_o_axis_TDATA[15]_i_2_n_0\,
      D => r_curr_value(9),
      Q => o_axis_TDATA(9),
      R => r_o_axis_TDATA
    );
r_o_axis_TLAST_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAEAA"
    )
        port map (
      I0 => \^r_o_axis_tlast_reg_0\,
      I1 => r_core_state,
      I2 => \^r_o_axis_tvalid_reg_0\,
      I3 => \w_last_entry__3\,
      I4 => r_counter1_carry_n_0,
      I5 => r_o_axis_TLAST_i_2_n_0,
      O => r_o_axis_TLAST_i_1_n_0
    );
r_o_axis_TLAST_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => \^r_o_axis_tvalid_reg_0\,
      I1 => i_axis_TREADY,
      I2 => r_core_state,
      I3 => i_aresetn,
      O => r_o_axis_TLAST_i_2_n_0
    );
r_o_axis_TLAST_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => r_o_axis_TLAST_i_1_n_0,
      Q => \^r_o_axis_tlast_reg_0\,
      R => '0'
    );
r_o_axis_TVALID_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_aresetn,
      O => r_o_axis_TVALID_i_1_n_0
    );
r_o_axis_TVALID_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55FFFC00"
    )
        port map (
      I0 => i_axis_TREADY,
      I1 => r_counter1_carry_n_0,
      I2 => \w_last_entry__3\,
      I3 => r_core_state,
      I4 => \^r_o_axis_tvalid_reg_0\,
      O => r_o_axis_TVALID_i_2_n_0
    );
r_o_axis_TVALID_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \r_curr_rle_row_reg_n_0_[2]\,
      I1 => \r_curr_rle_row_reg_n_0_[0]\,
      I2 => \r_curr_rle_row_reg_n_0_[1]\,
      I3 => \r_curr_rle_col_reg_n_0_[2]\,
      I4 => \r_curr_rle_col_reg_n_0_[0]\,
      I5 => \r_curr_rle_col_reg_n_0_[1]\,
      O => \w_last_entry__3\
    );
r_o_axis_TVALID_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => r_o_axis_TVALID_i_2_n_0,
      Q => \^r_o_axis_tvalid_reg_0\,
      R => r_o_axis_TVALID_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_run_length_encoder_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_run_length_encoder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_run_length_encoder_0_0 : entity is "design_1_run_length_encoder_0_0,run_length_encoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_run_length_encoder_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_run_length_encoder_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_run_length_encoder_0_0 : entity is "run_length_encoder,Vivado 2018.3";
end design_1_run_length_encoder_0_0;

architecture STRUCTURE of design_1_run_length_encoder_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_aresetn : signal is "xilinx.com:signal:reset:1.0 i_aresetn RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_aresetn : signal is "XIL_INTERFACENAME i_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_axis_TLAST : signal is "xilinx.com:interface:axis:1.0 i_axis TLAST";
  attribute X_INTERFACE_PARAMETER of i_axis_TLAST : signal is "XIL_INTERFACENAME i_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_axis_TREADY : signal is "xilinx.com:interface:axis:1.0 o_axis TREADY";
  attribute X_INTERFACE_INFO of i_axis_TVALID : signal is "xilinx.com:interface:axis:1.0 i_axis TVALID";
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_aresetn, ASSOCIATED_BUSIF i_axis:o_axis, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_axis_TLAST : signal is "xilinx.com:interface:axis:1.0 o_axis TLAST";
  attribute X_INTERFACE_PARAMETER of o_axis_TLAST : signal is "XIL_INTERFACENAME o_axis, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of o_axis_TREADY : signal is "xilinx.com:interface:axis:1.0 i_axis TREADY";
  attribute X_INTERFACE_INFO of o_axis_TVALID : signal is "xilinx.com:interface:axis:1.0 o_axis TVALID";
  attribute X_INTERFACE_INFO of i_axis_TDATA : signal is "xilinx.com:interface:axis:1.0 i_axis TDATA";
  attribute X_INTERFACE_INFO of o_axis_TDATA : signal is "xilinx.com:interface:axis:1.0 o_axis TDATA";
begin
inst: entity work.design_1_run_length_encoder_0_0_run_length_encoder
     port map (
      i_aresetn => i_aresetn,
      i_axis_TDATA(9 downto 0) => i_axis_TDATA(9 downto 0),
      i_axis_TREADY => i_axis_TREADY,
      i_axis_TVALID => i_axis_TVALID,
      i_clk => i_clk,
      o_axis_TDATA(15 downto 0) => o_axis_TDATA(15 downto 0),
      o_axis_TREADY => o_axis_TREADY,
      r_o_axis_TLAST_reg_0 => o_axis_TLAST,
      r_o_axis_TVALID_reg_0 => o_axis_TVALID
    );
end STRUCTURE;
