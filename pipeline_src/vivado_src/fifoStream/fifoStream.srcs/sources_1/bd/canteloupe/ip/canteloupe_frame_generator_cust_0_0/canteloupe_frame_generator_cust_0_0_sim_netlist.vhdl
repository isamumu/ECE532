-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
-- Date        : Tue Mar 30 21:40:32 2021
-- Host        : BA3145WS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top canteloupe_frame_generator_cust_0_0 -prefix
--               canteloupe_frame_generator_cust_0_0_ canteloupe_frame_generator_cust_0_0_sim_netlist.vhdl
-- Design      : canteloupe_frame_generator_cust_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity canteloupe_frame_generator_cust_0_0_fifo_status is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end canteloupe_frame_generator_cust_0_0_fifo_status;

architecture STRUCTURE of canteloupe_frame_generator_cust_0_0_fifo_status is
  signal address_equal1_carry_n_1 : STD_LOGIC;
  signal address_equal1_carry_n_2 : STD_LOGIC;
  signal address_equal1_carry_n_3 : STD_LOGIC;
  signal NLW_address_equal1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
address_equal1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CO(0),
      CO(2) => address_equal1_carry_n_1,
      CO(1) => address_equal1_carry_n_2,
      CO(0) => address_equal1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_address_equal1_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity canteloupe_frame_generator_cust_0_0_read_address_pointer is
  port (
    i_aresetn_0 : out STD_LOGIC;
    \r_num_cycles_without_valid_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \r_packet_size_reg[10]\ : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    fifo_we : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    i_aresetn : in STD_LOGIC;
    \r_num_cycles_without_valid_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_num_cycles_without_valid_reg[15]_0\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_num_cycles_without_valid_reg[8]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_num_cycles_without_valid_reg[12]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_num_cycles_without_valid_reg[15]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_r_core_state_reg[2]\ : in STD_LOGIC;
    \FSM_sequential_r_core_state_reg[2]_0\ : in STD_LOGIC;
    \FSM_sequential_r_core_state_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_r_core_state_reg[2]_2\ : in STD_LOGIC;
    rx_mic_TVALID : in STD_LOGIC;
    \FSM_sequential_r_core_state_reg[2]_3\ : in STD_LOGIC;
    \FSM_sequential_r_core_state_reg[2]_4\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    tx_fifo_TREADY : in STD_LOGIC;
    \read_address_int_reg[11]_0\ : in STD_LOGIC;
    mem_reg : in STD_LOGIC;
    r_core_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_clk : in STD_LOGIC;
    \read_address_int_reg[11]_1\ : in STD_LOGIC
  );
end canteloupe_frame_generator_cust_0_0_read_address_pointer;

architecture STRUCTURE of canteloupe_frame_generator_cust_0_0_read_address_pointer is
  signal \FSM_sequential_r_core_state[2]_i_2_n_0\ : STD_LOGIC;
  signal fifo_rd : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \read_address_int[0]_i_3_n_0\ : STD_LOGIC;
  signal \read_address_int[0]_i_4_n_0\ : STD_LOGIC;
  signal \read_address_int_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \read_address_int_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \read_address_int_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \read_address_int_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \read_address_int_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \read_address_int_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \read_address_int_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \read_address_int_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \read_address_int_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_address_int_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \read_address_int_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \read_address_int_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \read_address_int_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \read_address_int_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \read_address_int_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \read_address_int_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \read_address_int_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \read_address_int_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \read_address_int_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \read_address_int_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \read_address_int_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \read_address_int_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \read_address_int_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_read_address_int_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_num_cycles_without_valid[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_num_cycles_without_valid[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_num_cycles_without_valid[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r_num_cycles_without_valid[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_num_cycles_without_valid[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \r_num_cycles_without_valid[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_num_cycles_without_valid[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_num_cycles_without_valid[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_num_cycles_without_valid[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_num_cycles_without_valid[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_num_cycles_without_valid[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_num_cycles_without_valid[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_num_cycles_without_valid[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_num_cycles_without_valid[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_num_cycles_without_valid[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r_num_cycles_without_valid[9]_i_1\ : label is "soft_lutpair4";
begin
  \out\(11 downto 0) <= \^out\(11 downto 0);
\FSM_sequential_r_core_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8F888F8888"
    )
        port map (
      I0 => \FSM_sequential_r_core_state[2]_i_2_n_0\,
      I1 => E(0),
      I2 => \FSM_sequential_r_core_state_reg[2]\,
      I3 => \FSM_sequential_r_core_state_reg[2]_0\,
      I4 => \FSM_sequential_r_core_state_reg[2]_1\(0),
      I5 => \FSM_sequential_r_core_state_reg[2]_2\,
      O => \r_packet_size_reg[10]\
    );
\FSM_sequential_r_core_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAFBFBFBFBFBAA"
    )
        port map (
      I0 => rx_mic_TVALID,
      I1 => \FSM_sequential_r_core_state_reg[2]_3\,
      I2 => \FSM_sequential_r_core_state_reg[2]_4\,
      I3 => CO(0),
      I4 => \^out\(11),
      I5 => ADDRARDADDR(5),
      O => \FSM_sequential_r_core_state[2]_i_2_n_0\
    );
address_equal1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^out\(10),
      I1 => ADDRARDADDR(4),
      I2 => \^out\(9),
      I3 => ADDRARDADDR(3),
      O => S(1)
    );
address_equal1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^out\(0),
      I1 => ADDRARDADDR(0),
      I2 => ADDRARDADDR(2),
      I3 => \^out\(2),
      I4 => ADDRARDADDR(1),
      I5 => \^out\(1),
      O => S(0)
    );
mem_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => fifo_rd,
      I1 => i_aresetn,
      O => i_aresetn_0
    );
mem_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A88A"
    )
        port map (
      I0 => mem_reg,
      I1 => CO(0),
      I2 => ADDRARDADDR(5),
      I3 => \^out\(11),
      O => fifo_we
    );
\r_num_cycles_without_valid[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg[0]\(0),
      I1 => \r_num_cycles_without_valid_reg[15]_0\,
      I2 => \FSM_sequential_r_core_state[2]_i_2_n_0\,
      O => \r_num_cycles_without_valid_reg[15]\(0)
    );
\r_num_cycles_without_valid[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg[12]\(1),
      I1 => \r_num_cycles_without_valid_reg[15]_0\,
      I2 => \FSM_sequential_r_core_state[2]_i_2_n_0\,
      O => \r_num_cycles_without_valid_reg[15]\(10)
    );
\r_num_cycles_without_valid[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg[12]\(2),
      I1 => \r_num_cycles_without_valid_reg[15]_0\,
      I2 => \FSM_sequential_r_core_state[2]_i_2_n_0\,
      O => \r_num_cycles_without_valid_reg[15]\(11)
    );
\r_num_cycles_without_valid[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg[12]\(3),
      I1 => \r_num_cycles_without_valid_reg[15]_0\,
      I2 => \FSM_sequential_r_core_state[2]_i_2_n_0\,
      O => \r_num_cycles_without_valid_reg[15]\(12)
    );
\r_num_cycles_without_valid[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg[15]_1\(0),
      I1 => \r_num_cycles_without_valid_reg[15]_0\,
      I2 => \FSM_sequential_r_core_state[2]_i_2_n_0\,
      O => \r_num_cycles_without_valid_reg[15]\(13)
    );
\r_num_cycles_without_valid[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg[15]_1\(1),
      I1 => \r_num_cycles_without_valid_reg[15]_0\,
      I2 => \FSM_sequential_r_core_state[2]_i_2_n_0\,
      O => \r_num_cycles_without_valid_reg[15]\(14)
    );
\r_num_cycles_without_valid[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg[15]_1\(2),
      I1 => \r_num_cycles_without_valid_reg[15]_0\,
      I2 => \FSM_sequential_r_core_state[2]_i_2_n_0\,
      O => \r_num_cycles_without_valid_reg[15]\(15)
    );
\r_num_cycles_without_valid[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => O(0),
      I1 => \r_num_cycles_without_valid_reg[15]_0\,
      I2 => \FSM_sequential_r_core_state[2]_i_2_n_0\,
      O => \r_num_cycles_without_valid_reg[15]\(1)
    );
\r_num_cycles_without_valid[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => O(1),
      I1 => \r_num_cycles_without_valid_reg[15]_0\,
      I2 => \FSM_sequential_r_core_state[2]_i_2_n_0\,
      O => \r_num_cycles_without_valid_reg[15]\(2)
    );
\r_num_cycles_without_valid[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => O(2),
      I1 => \r_num_cycles_without_valid_reg[15]_0\,
      I2 => \FSM_sequential_r_core_state[2]_i_2_n_0\,
      O => \r_num_cycles_without_valid_reg[15]\(3)
    );
\r_num_cycles_without_valid[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => O(3),
      I1 => \r_num_cycles_without_valid_reg[15]_0\,
      I2 => \FSM_sequential_r_core_state[2]_i_2_n_0\,
      O => \r_num_cycles_without_valid_reg[15]\(4)
    );
\r_num_cycles_without_valid[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg[8]\(0),
      I1 => \r_num_cycles_without_valid_reg[15]_0\,
      I2 => \FSM_sequential_r_core_state[2]_i_2_n_0\,
      O => \r_num_cycles_without_valid_reg[15]\(5)
    );
\r_num_cycles_without_valid[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg[8]\(1),
      I1 => \r_num_cycles_without_valid_reg[15]_0\,
      I2 => \FSM_sequential_r_core_state[2]_i_2_n_0\,
      O => \r_num_cycles_without_valid_reg[15]\(6)
    );
\r_num_cycles_without_valid[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg[8]\(2),
      I1 => \r_num_cycles_without_valid_reg[15]_0\,
      I2 => \FSM_sequential_r_core_state[2]_i_2_n_0\,
      O => \r_num_cycles_without_valid_reg[15]\(7)
    );
\r_num_cycles_without_valid[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg[8]\(3),
      I1 => \r_num_cycles_without_valid_reg[15]_0\,
      I2 => \FSM_sequential_r_core_state[2]_i_2_n_0\,
      O => \r_num_cycles_without_valid_reg[15]\(8)
    );
\r_num_cycles_without_valid[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg[12]\(0),
      I1 => \r_num_cycles_without_valid_reg[15]_0\,
      I2 => \FSM_sequential_r_core_state[2]_i_2_n_0\,
      O => \r_num_cycles_without_valid_reg[15]\(9)
    );
\read_address_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F60000000000"
    )
        port map (
      I0 => ADDRARDADDR(5),
      I1 => \^out\(11),
      I2 => CO(0),
      I3 => tx_fifo_TREADY,
      I4 => \read_address_int_reg[11]_0\,
      I5 => \read_address_int[0]_i_3_n_0\,
      O => fifo_rd
    );
\read_address_int[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_core_state(0),
      I1 => r_core_state(1),
      O => \read_address_int[0]_i_3_n_0\
    );
\read_address_int[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(0),
      O => \read_address_int[0]_i_4_n_0\
    );
\read_address_int_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_rd,
      CLR => \read_address_int_reg[11]_1\,
      D => \read_address_int_reg[0]_i_2_n_7\,
      Q => \^out\(0)
    );
\read_address_int_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \read_address_int_reg[0]_i_2_n_0\,
      CO(2) => \read_address_int_reg[0]_i_2_n_1\,
      CO(1) => \read_address_int_reg[0]_i_2_n_2\,
      CO(0) => \read_address_int_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \read_address_int_reg[0]_i_2_n_4\,
      O(2) => \read_address_int_reg[0]_i_2_n_5\,
      O(1) => \read_address_int_reg[0]_i_2_n_6\,
      O(0) => \read_address_int_reg[0]_i_2_n_7\,
      S(3 downto 1) => \^out\(3 downto 1),
      S(0) => \read_address_int[0]_i_4_n_0\
    );
\read_address_int_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_rd,
      CLR => \read_address_int_reg[11]_1\,
      D => \read_address_int_reg[8]_i_1_n_5\,
      Q => \^out\(10)
    );
\read_address_int_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_rd,
      CLR => \read_address_int_reg[11]_1\,
      D => \read_address_int_reg[8]_i_1_n_4\,
      Q => \^out\(11)
    );
\read_address_int_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_rd,
      CLR => \read_address_int_reg[11]_1\,
      D => \read_address_int_reg[0]_i_2_n_6\,
      Q => \^out\(1)
    );
\read_address_int_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_rd,
      CLR => \read_address_int_reg[11]_1\,
      D => \read_address_int_reg[0]_i_2_n_5\,
      Q => \^out\(2)
    );
\read_address_int_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_rd,
      CLR => \read_address_int_reg[11]_1\,
      D => \read_address_int_reg[0]_i_2_n_4\,
      Q => \^out\(3)
    );
\read_address_int_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_rd,
      CLR => \read_address_int_reg[11]_1\,
      D => \read_address_int_reg[4]_i_1_n_7\,
      Q => \^out\(4)
    );
\read_address_int_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_address_int_reg[0]_i_2_n_0\,
      CO(3) => \read_address_int_reg[4]_i_1_n_0\,
      CO(2) => \read_address_int_reg[4]_i_1_n_1\,
      CO(1) => \read_address_int_reg[4]_i_1_n_2\,
      CO(0) => \read_address_int_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \read_address_int_reg[4]_i_1_n_4\,
      O(2) => \read_address_int_reg[4]_i_1_n_5\,
      O(1) => \read_address_int_reg[4]_i_1_n_6\,
      O(0) => \read_address_int_reg[4]_i_1_n_7\,
      S(3 downto 0) => \^out\(7 downto 4)
    );
\read_address_int_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_rd,
      CLR => \read_address_int_reg[11]_1\,
      D => \read_address_int_reg[4]_i_1_n_6\,
      Q => \^out\(5)
    );
\read_address_int_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_rd,
      CLR => \read_address_int_reg[11]_1\,
      D => \read_address_int_reg[4]_i_1_n_5\,
      Q => \^out\(6)
    );
\read_address_int_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_rd,
      CLR => \read_address_int_reg[11]_1\,
      D => \read_address_int_reg[4]_i_1_n_4\,
      Q => \^out\(7)
    );
\read_address_int_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_rd,
      CLR => \read_address_int_reg[11]_1\,
      D => \read_address_int_reg[8]_i_1_n_7\,
      Q => \^out\(8)
    );
\read_address_int_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_address_int_reg[4]_i_1_n_0\,
      CO(3) => \NLW_read_address_int_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \read_address_int_reg[8]_i_1_n_1\,
      CO(1) => \read_address_int_reg[8]_i_1_n_2\,
      CO(0) => \read_address_int_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \read_address_int_reg[8]_i_1_n_4\,
      O(2) => \read_address_int_reg[8]_i_1_n_5\,
      O(1) => \read_address_int_reg[8]_i_1_n_6\,
      O(0) => \read_address_int_reg[8]_i_1_n_7\,
      S(3 downto 0) => \^out\(11 downto 8)
    );
\read_address_int_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_rd,
      CLR => \read_address_int_reg[11]_1\,
      D => \read_address_int_reg[8]_i_1_n_6\,
      Q => \^out\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity canteloupe_frame_generator_cust_0_0_tri_mode_ethernet_mac_2_bram_tdp is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_clk : in STD_LOGIC;
    i_aresetn : in STD_LOGIC;
    mem_reg_0 : in STD_LOGIC;
    w_areset : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fifo_we : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[7]\ : in STD_LOGIC;
    r_core_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_tx_fifo_tdata_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_tx_fifo_tdata_reg[3]\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[3]_0\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[3]_1\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[4]\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[4]_0\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[0]\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[0]_0\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[0]_1\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[5]\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_tx_fifo_tdata_reg[2]_0\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_tx_fifo_tdata_reg[1]_0\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[1]_1\ : in STD_LOGIC
  );
end canteloupe_frame_generator_cust_0_0_tri_mode_ethernet_mac_2_bram_tdp;

architecture STRUCTURE of canteloupe_frame_generator_cust_0_0_tri_mode_ethernet_mac_2_bram_tdp is
  signal \r_tx_fifo_tdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[2]_i_3_n_0\ : STD_LOGIC;
  signal w_fifo_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg : label is 32768;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg : label is "mem";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of mem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of mem_reg : label is 4095;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of mem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of mem_reg : label is 7;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg : label is 4095;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg : label is 7;
begin
mem_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => ADDRARDADDR(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => \out\(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => i_clk,
      CLKBWRCLK => i_clk,
      DBITERR => NLW_mem_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => Q(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => NLW_mem_reg_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_mem_reg_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => w_fifo_data_out(7 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_mem_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_mem_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => i_aresetn,
      ENBWREN => mem_reg_0,
      INJECTDBITERR => NLW_mem_reg_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => w_areset,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_SBITERR_UNCONNECTED,
      WEA(3) => fifo_we,
      WEA(2) => fifo_we,
      WEA(1) => fifo_we,
      WEA(0) => fifo_we,
      WEBWE(7 downto 0) => B"00000000"
    );
\r_tx_fifo_tdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBBABBAAAA"
    )
        port map (
      I0 => \r_tx_fifo_tdata_reg[0]\,
      I1 => r_core_state(2),
      I2 => w_fifo_data_out(0),
      I3 => \r_tx_fifo_tdata_reg[3]\,
      I4 => \r_tx_fifo_tdata_reg[0]_0\,
      I5 => \r_tx_fifo_tdata_reg[0]_1\,
      O => D(0)
    );
\r_tx_fifo_tdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB888B8"
    )
        port map (
      I0 => \r_tx_fifo_tdata_reg[1]_1\,
      I1 => r_core_state(2),
      I2 => w_fifo_data_out(1),
      I3 => r_core_state(1),
      I4 => \r_tx_fifo_tdata[1]_i_3_n_0\,
      O => D(1)
    );
\r_tx_fifo_tdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAFEFA0EFA0EFA0"
    )
        port map (
      I0 => \r_tx_fifo_tdata_reg[1]\(1),
      I1 => \r_tx_fifo_tdata_reg[7]\,
      I2 => r_core_state(0),
      I3 => \r_tx_fifo_tdata_reg[7]_0\(0),
      I4 => \r_tx_fifo_tdata_reg[1]_0\,
      I5 => w_fifo_data_out(1),
      O => \r_tx_fifo_tdata[1]_i_3_n_0\
    );
\r_tx_fifo_tdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFFBA00"
    )
        port map (
      I0 => \r_tx_fifo_tdata_reg[2]\(0),
      I1 => \r_tx_fifo_tdata_reg[2]_0\,
      I2 => \r_tx_fifo_tdata_reg[1]\(0),
      I3 => r_core_state(2),
      I4 => \r_tx_fifo_tdata[2]_i_3_n_0\,
      O => D(2)
    );
\r_tx_fifo_tdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EACAEACA"
    )
        port map (
      I0 => \r_tx_fifo_tdata_reg[7]_0\(1),
      I1 => \r_tx_fifo_tdata_reg[1]\(0),
      I2 => r_core_state(0),
      I3 => \r_tx_fifo_tdata_reg[7]\,
      I4 => w_fifo_data_out(2),
      I5 => \r_tx_fifo_tdata_reg[3]\,
      O => \r_tx_fifo_tdata[2]_i_3_n_0\
    );
\r_tx_fifo_tdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4500"
    )
        port map (
      I0 => r_core_state(2),
      I1 => w_fifo_data_out(3),
      I2 => \r_tx_fifo_tdata_reg[3]\,
      I3 => \r_tx_fifo_tdata_reg[3]_0\,
      I4 => \r_tx_fifo_tdata_reg[3]_1\,
      O => D(3)
    );
\r_tx_fifo_tdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF4500"
    )
        port map (
      I0 => r_core_state(2),
      I1 => w_fifo_data_out(4),
      I2 => \r_tx_fifo_tdata_reg[3]\,
      I3 => \r_tx_fifo_tdata_reg[4]\,
      I4 => \r_tx_fifo_tdata_reg[4]_0\,
      O => D(4)
    );
\r_tx_fifo_tdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBBABBAAAA"
    )
        port map (
      I0 => \r_tx_fifo_tdata_reg[0]\,
      I1 => r_core_state(2),
      I2 => w_fifo_data_out(5),
      I3 => \r_tx_fifo_tdata_reg[3]\,
      I4 => \r_tx_fifo_tdata_reg[5]\,
      I5 => \r_tx_fifo_tdata_reg[0]_0\,
      O => D(5)
    );
\r_tx_fifo_tdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB000B0"
    )
        port map (
      I0 => \r_tx_fifo_tdata_reg[7]\,
      I1 => r_core_state(0),
      I2 => \r_tx_fifo_tdata_reg[7]_0\(2),
      I3 => \r_tx_fifo_tdata_reg[3]\,
      I4 => w_fifo_data_out(6),
      I5 => r_core_state(2),
      O => D(6)
    );
\r_tx_fifo_tdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFB000B0"
    )
        port map (
      I0 => \r_tx_fifo_tdata_reg[7]\,
      I1 => r_core_state(0),
      I2 => \r_tx_fifo_tdata_reg[7]_0\(3),
      I3 => \r_tx_fifo_tdata_reg[3]\,
      I4 => w_fifo_data_out(7),
      I5 => r_core_state(2),
      O => D(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity canteloupe_frame_generator_cust_0_0_write_address_pointer is
  port (
    ADDRARDADDR : out STD_LOGIC_VECTOR ( 11 downto 0 );
    i_aresetn_0 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fifo_we : in STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_aresetn : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end canteloupe_frame_generator_cust_0_0_write_address_pointer;

architecture STRUCTURE of canteloupe_frame_generator_cust_0_0_write_address_pointer is
  signal \^addrardaddr\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^i_aresetn_0\ : STD_LOGIC;
  signal \write_address_int[0]_i_2_n_0\ : STD_LOGIC;
  signal \write_address_int_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_address_int_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \write_address_int_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \write_address_int_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \write_address_int_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \write_address_int_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \write_address_int_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \write_address_int_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \write_address_int_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \write_address_int_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \write_address_int_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \write_address_int_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \write_address_int_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \write_address_int_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \write_address_int_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \write_address_int_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \write_address_int_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \write_address_int_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \write_address_int_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \write_address_int_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \write_address_int_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \write_address_int_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \write_address_int_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_write_address_int_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  ADDRARDADDR(11 downto 0) <= \^addrardaddr\(11 downto 0);
  i_aresetn_0 <= \^i_aresetn_0\;
address_equal1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^addrardaddr\(6),
      I1 => \out\(3),
      I2 => \^addrardaddr\(7),
      I3 => \out\(4),
      I4 => \out\(5),
      I5 => \^addrardaddr\(8),
      O => S(1)
    );
address_equal1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^addrardaddr\(3),
      I1 => \out\(0),
      I2 => \^addrardaddr\(4),
      I3 => \out\(1),
      I4 => \out\(2),
      I5 => \^addrardaddr\(5),
      O => S(0)
    );
\r_tx_fifo_tdata[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_aresetn,
      O => \^i_aresetn_0\
    );
\write_address_int[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addrardaddr\(0),
      O => \write_address_int[0]_i_2_n_0\
    );
\write_address_int_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_we,
      CLR => \^i_aresetn_0\,
      D => \write_address_int_reg[0]_i_1_n_7\,
      Q => \^addrardaddr\(0)
    );
\write_address_int_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \write_address_int_reg[0]_i_1_n_0\,
      CO(2) => \write_address_int_reg[0]_i_1_n_1\,
      CO(1) => \write_address_int_reg[0]_i_1_n_2\,
      CO(0) => \write_address_int_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \write_address_int_reg[0]_i_1_n_4\,
      O(2) => \write_address_int_reg[0]_i_1_n_5\,
      O(1) => \write_address_int_reg[0]_i_1_n_6\,
      O(0) => \write_address_int_reg[0]_i_1_n_7\,
      S(3 downto 1) => \^addrardaddr\(3 downto 1),
      S(0) => \write_address_int[0]_i_2_n_0\
    );
\write_address_int_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_we,
      CLR => \^i_aresetn_0\,
      D => \write_address_int_reg[8]_i_1_n_5\,
      Q => \^addrardaddr\(10)
    );
\write_address_int_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_we,
      CLR => \^i_aresetn_0\,
      D => \write_address_int_reg[8]_i_1_n_4\,
      Q => \^addrardaddr\(11)
    );
\write_address_int_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_we,
      CLR => \^i_aresetn_0\,
      D => \write_address_int_reg[0]_i_1_n_6\,
      Q => \^addrardaddr\(1)
    );
\write_address_int_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_we,
      CLR => \^i_aresetn_0\,
      D => \write_address_int_reg[0]_i_1_n_5\,
      Q => \^addrardaddr\(2)
    );
\write_address_int_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_we,
      CLR => \^i_aresetn_0\,
      D => \write_address_int_reg[0]_i_1_n_4\,
      Q => \^addrardaddr\(3)
    );
\write_address_int_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_we,
      CLR => \^i_aresetn_0\,
      D => \write_address_int_reg[4]_i_1_n_7\,
      Q => \^addrardaddr\(4)
    );
\write_address_int_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_address_int_reg[0]_i_1_n_0\,
      CO(3) => \write_address_int_reg[4]_i_1_n_0\,
      CO(2) => \write_address_int_reg[4]_i_1_n_1\,
      CO(1) => \write_address_int_reg[4]_i_1_n_2\,
      CO(0) => \write_address_int_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \write_address_int_reg[4]_i_1_n_4\,
      O(2) => \write_address_int_reg[4]_i_1_n_5\,
      O(1) => \write_address_int_reg[4]_i_1_n_6\,
      O(0) => \write_address_int_reg[4]_i_1_n_7\,
      S(3 downto 0) => \^addrardaddr\(7 downto 4)
    );
\write_address_int_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_we,
      CLR => \^i_aresetn_0\,
      D => \write_address_int_reg[4]_i_1_n_6\,
      Q => \^addrardaddr\(5)
    );
\write_address_int_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_we,
      CLR => \^i_aresetn_0\,
      D => \write_address_int_reg[4]_i_1_n_5\,
      Q => \^addrardaddr\(6)
    );
\write_address_int_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_we,
      CLR => \^i_aresetn_0\,
      D => \write_address_int_reg[4]_i_1_n_4\,
      Q => \^addrardaddr\(7)
    );
\write_address_int_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_we,
      CLR => \^i_aresetn_0\,
      D => \write_address_int_reg[8]_i_1_n_7\,
      Q => \^addrardaddr\(8)
    );
\write_address_int_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_address_int_reg[4]_i_1_n_0\,
      CO(3) => \NLW_write_address_int_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \write_address_int_reg[8]_i_1_n_1\,
      CO(1) => \write_address_int_reg[8]_i_1_n_2\,
      CO(0) => \write_address_int_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \write_address_int_reg[8]_i_1_n_4\,
      O(2) => \write_address_int_reg[8]_i_1_n_5\,
      O(1) => \write_address_int_reg[8]_i_1_n_6\,
      O(0) => \write_address_int_reg[8]_i_1_n_7\,
      S(3 downto 0) => \^addrardaddr\(11 downto 8)
    );
\write_address_int_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => fifo_we,
      CLR => \^i_aresetn_0\,
      D => \write_address_int_reg[8]_i_1_n_6\,
      Q => \^addrardaddr\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity canteloupe_frame_generator_cust_0_0_memory is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_clk : in STD_LOGIC;
    i_aresetn : in STD_LOGIC;
    mem_reg : in STD_LOGIC;
    w_areset : in STD_LOGIC;
    ADDRARDADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 11 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    fifo_we : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[7]\ : in STD_LOGIC;
    r_core_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_tx_fifo_tdata_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_tx_fifo_tdata_reg[3]\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[3]_0\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[3]_1\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[4]\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[4]_0\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[0]\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[0]_0\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[0]_1\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[5]\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_tx_fifo_tdata_reg[2]_0\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_tx_fifo_tdata_reg[1]_0\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[1]_1\ : in STD_LOGIC
  );
end canteloupe_frame_generator_cust_0_0_memory;

architecture STRUCTURE of canteloupe_frame_generator_cust_0_0_memory is
begin
tx_ramgen_i: entity work.canteloupe_frame_generator_cust_0_0_tri_mode_ethernet_mac_2_bram_tdp
     port map (
      ADDRARDADDR(11 downto 0) => ADDRARDADDR(11 downto 0),
      D(7 downto 0) => D(7 downto 0),
      Q(7 downto 0) => Q(7 downto 0),
      fifo_we => fifo_we,
      i_aresetn => i_aresetn,
      i_clk => i_clk,
      mem_reg_0 => mem_reg,
      \out\(11 downto 0) => \out\(11 downto 0),
      r_core_state(2 downto 0) => r_core_state(2 downto 0),
      \r_tx_fifo_tdata_reg[0]\ => \r_tx_fifo_tdata_reg[0]\,
      \r_tx_fifo_tdata_reg[0]_0\ => \r_tx_fifo_tdata_reg[0]_0\,
      \r_tx_fifo_tdata_reg[0]_1\ => \r_tx_fifo_tdata_reg[0]_1\,
      \r_tx_fifo_tdata_reg[1]\(1 downto 0) => \r_tx_fifo_tdata_reg[1]\(1 downto 0),
      \r_tx_fifo_tdata_reg[1]_0\ => \r_tx_fifo_tdata_reg[1]_0\,
      \r_tx_fifo_tdata_reg[1]_1\ => \r_tx_fifo_tdata_reg[1]_1\,
      \r_tx_fifo_tdata_reg[2]\(0) => \r_tx_fifo_tdata_reg[2]\(0),
      \r_tx_fifo_tdata_reg[2]_0\ => \r_tx_fifo_tdata_reg[2]_0\,
      \r_tx_fifo_tdata_reg[3]\ => \r_tx_fifo_tdata_reg[3]\,
      \r_tx_fifo_tdata_reg[3]_0\ => \r_tx_fifo_tdata_reg[3]_0\,
      \r_tx_fifo_tdata_reg[3]_1\ => \r_tx_fifo_tdata_reg[3]_1\,
      \r_tx_fifo_tdata_reg[4]\ => \r_tx_fifo_tdata_reg[4]\,
      \r_tx_fifo_tdata_reg[4]_0\ => \r_tx_fifo_tdata_reg[4]_0\,
      \r_tx_fifo_tdata_reg[5]\ => \r_tx_fifo_tdata_reg[5]\,
      \r_tx_fifo_tdata_reg[7]\ => \r_tx_fifo_tdata_reg[7]\,
      \r_tx_fifo_tdata_reg[7]_0\(3 downto 0) => \r_tx_fifo_tdata_reg[7]_0\(3 downto 0),
      w_areset => w_areset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity canteloupe_frame_generator_cust_0_0_fifo_mem is
  port (
    w_areset : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \r_num_cycles_without_valid_reg[15]\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \r_packet_size_reg[10]\ : out STD_LOGIC;
    i_clk : in STD_LOGIC;
    i_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \r_tx_fifo_tdata_reg[7]\ : in STD_LOGIC;
    r_core_state : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_tx_fifo_tdata_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_tx_fifo_tdata_reg[3]\ : in STD_LOGIC;
    \r_num_cycles_without_valid_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_num_cycles_without_valid_reg[15]_0\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_num_cycles_without_valid_reg[8]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_num_cycles_without_valid_reg[12]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_num_cycles_without_valid_reg[15]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_r_core_state_reg[2]\ : in STD_LOGIC;
    \FSM_sequential_r_core_state_reg[2]_0\ : in STD_LOGIC;
    \FSM_sequential_r_core_state_reg[2]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_r_core_state_reg[2]_2\ : in STD_LOGIC;
    rx_mic_TVALID : in STD_LOGIC;
    \FSM_sequential_r_core_state_reg[2]_3\ : in STD_LOGIC;
    \FSM_sequential_r_core_state_reg[2]_4\ : in STD_LOGIC;
    tx_fifo_TREADY : in STD_LOGIC;
    \read_address_int_reg[11]\ : in STD_LOGIC;
    mem_reg : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[3]_0\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[3]_1\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[4]\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[4]_0\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[0]\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[0]_0\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[0]_1\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[5]\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_tx_fifo_tdata_reg[2]_0\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \r_tx_fifo_tdata_reg[1]_0\ : in STD_LOGIC;
    \r_tx_fifo_tdata_reg[1]_1\ : in STD_LOGIC
  );
end canteloupe_frame_generator_cust_0_0_fifo_mem;

architecture STRUCTURE of canteloupe_frame_generator_cust_0_0_fifo_mem is
  signal address_equal1 : STD_LOGIC;
  signal fifo_we : STD_LOGIC;
  signal read_address : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal top1_n_13 : STD_LOGIC;
  signal top1_n_14 : STD_LOGIC;
  signal top2_n_0 : STD_LOGIC;
  signal top2_n_31 : STD_LOGIC;
  signal top2_n_32 : STD_LOGIC;
  signal \^w_areset\ : STD_LOGIC;
  signal write_address : STD_LOGIC_VECTOR ( 11 downto 0 );
begin
  w_areset <= \^w_areset\;
top1: entity work.canteloupe_frame_generator_cust_0_0_write_address_pointer
     port map (
      ADDRARDADDR(11 downto 0) => write_address(11 downto 0),
      S(1) => top1_n_13,
      S(0) => top1_n_14,
      fifo_we => fifo_we,
      i_aresetn => i_aresetn,
      i_aresetn_0 => \^w_areset\,
      i_clk => i_clk,
      \out\(5 downto 0) => read_address(8 downto 3)
    );
top2: entity work.canteloupe_frame_generator_cust_0_0_read_address_pointer
     port map (
      ADDRARDADDR(5 downto 3) => write_address(11 downto 9),
      ADDRARDADDR(2 downto 0) => write_address(2 downto 0),
      CO(0) => address_equal1,
      E(0) => E(0),
      \FSM_sequential_r_core_state_reg[2]\ => \FSM_sequential_r_core_state_reg[2]\,
      \FSM_sequential_r_core_state_reg[2]_0\ => \FSM_sequential_r_core_state_reg[2]_0\,
      \FSM_sequential_r_core_state_reg[2]_1\(0) => \FSM_sequential_r_core_state_reg[2]_1\(0),
      \FSM_sequential_r_core_state_reg[2]_2\ => \FSM_sequential_r_core_state_reg[2]_2\,
      \FSM_sequential_r_core_state_reg[2]_3\ => \FSM_sequential_r_core_state_reg[2]_3\,
      \FSM_sequential_r_core_state_reg[2]_4\ => \FSM_sequential_r_core_state_reg[2]_4\,
      O(3 downto 0) => O(3 downto 0),
      S(1) => top2_n_31,
      S(0) => top2_n_32,
      fifo_we => fifo_we,
      i_aresetn => i_aresetn,
      i_aresetn_0 => top2_n_0,
      i_clk => i_clk,
      mem_reg => mem_reg,
      \out\(11 downto 0) => read_address(11 downto 0),
      r_core_state(1) => r_core_state(2),
      r_core_state(0) => r_core_state(0),
      \r_num_cycles_without_valid_reg[0]\(0) => \r_num_cycles_without_valid_reg[0]\(0),
      \r_num_cycles_without_valid_reg[12]\(3 downto 0) => \r_num_cycles_without_valid_reg[12]\(3 downto 0),
      \r_num_cycles_without_valid_reg[15]\(15 downto 0) => \r_num_cycles_without_valid_reg[15]\(15 downto 0),
      \r_num_cycles_without_valid_reg[15]_0\ => \r_num_cycles_without_valid_reg[15]_0\,
      \r_num_cycles_without_valid_reg[15]_1\(2 downto 0) => \r_num_cycles_without_valid_reg[15]_1\(2 downto 0),
      \r_num_cycles_without_valid_reg[8]\(3 downto 0) => \r_num_cycles_without_valid_reg[8]\(3 downto 0),
      \r_packet_size_reg[10]\ => \r_packet_size_reg[10]\,
      \read_address_int_reg[11]_0\ => \read_address_int_reg[11]\,
      \read_address_int_reg[11]_1\ => \^w_areset\,
      rx_mic_TVALID => rx_mic_TVALID,
      tx_fifo_TREADY => tx_fifo_TREADY
    );
top3: entity work.canteloupe_frame_generator_cust_0_0_memory
     port map (
      ADDRARDADDR(11 downto 0) => write_address(11 downto 0),
      D(7 downto 0) => D(7 downto 0),
      Q(7 downto 0) => Q(7 downto 0),
      fifo_we => fifo_we,
      i_aresetn => i_aresetn,
      i_clk => i_clk,
      mem_reg => top2_n_0,
      \out\(11 downto 0) => read_address(11 downto 0),
      r_core_state(2 downto 0) => r_core_state(2 downto 0),
      \r_tx_fifo_tdata_reg[0]\ => \r_tx_fifo_tdata_reg[0]\,
      \r_tx_fifo_tdata_reg[0]_0\ => \r_tx_fifo_tdata_reg[0]_0\,
      \r_tx_fifo_tdata_reg[0]_1\ => \r_tx_fifo_tdata_reg[0]_1\,
      \r_tx_fifo_tdata_reg[1]\(1 downto 0) => \r_tx_fifo_tdata_reg[1]\(1 downto 0),
      \r_tx_fifo_tdata_reg[1]_0\ => \r_tx_fifo_tdata_reg[1]_0\,
      \r_tx_fifo_tdata_reg[1]_1\ => \r_tx_fifo_tdata_reg[1]_1\,
      \r_tx_fifo_tdata_reg[2]\(0) => \r_tx_fifo_tdata_reg[2]\(0),
      \r_tx_fifo_tdata_reg[2]_0\ => \r_tx_fifo_tdata_reg[2]_0\,
      \r_tx_fifo_tdata_reg[3]\ => \r_tx_fifo_tdata_reg[3]\,
      \r_tx_fifo_tdata_reg[3]_0\ => \r_tx_fifo_tdata_reg[3]_0\,
      \r_tx_fifo_tdata_reg[3]_1\ => \r_tx_fifo_tdata_reg[3]_1\,
      \r_tx_fifo_tdata_reg[4]\ => \r_tx_fifo_tdata_reg[4]\,
      \r_tx_fifo_tdata_reg[4]_0\ => \r_tx_fifo_tdata_reg[4]_0\,
      \r_tx_fifo_tdata_reg[5]\ => \r_tx_fifo_tdata_reg[5]\,
      \r_tx_fifo_tdata_reg[7]\ => \r_tx_fifo_tdata_reg[7]\,
      \r_tx_fifo_tdata_reg[7]_0\(3 downto 0) => \r_tx_fifo_tdata_reg[7]_0\(3 downto 0),
      w_areset => \^w_areset\
    );
top4: entity work.canteloupe_frame_generator_cust_0_0_fifo_status
     port map (
      CO(0) => address_equal1,
      S(3) => top2_n_31,
      S(2) => top1_n_13,
      S(1) => top1_n_14,
      S(0) => top2_n_32
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity canteloupe_frame_generator_cust_0_0_frame_generator_custom is
  port (
    rx_mic_TREADY : out STD_LOGIC;
    tx_fifo_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    r_tx_fifo_tlast_reg_0 : out STD_LOGIC;
    tx_fifo_TVALID : out STD_LOGIC;
    i_aresetn : in STD_LOGIC;
    rx_mic_TVALID : in STD_LOGIC;
    tx_fifo_TREADY : in STD_LOGIC;
    rx_mic_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    i_clk : in STD_LOGIC;
    rx_mic_TLAST : in STD_LOGIC
  );
end canteloupe_frame_generator_cust_0_0_frame_generator_custom;

architecture STRUCTURE of canteloupe_frame_generator_cust_0_0_frame_generator_custom is
  signal \FSM_sequential_r_core_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_core_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_core_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_core_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_core_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_core_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_core_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_core_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_core_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_core_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_core_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_core_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_core_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_core_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_r_core_state[2]_i_9_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal in26 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal mem_n_1 : STD_LOGIC;
  signal mem_n_10 : STD_LOGIC;
  signal mem_n_11 : STD_LOGIC;
  signal mem_n_12 : STD_LOGIC;
  signal mem_n_13 : STD_LOGIC;
  signal mem_n_14 : STD_LOGIC;
  signal mem_n_15 : STD_LOGIC;
  signal mem_n_16 : STD_LOGIC;
  signal mem_n_17 : STD_LOGIC;
  signal mem_n_18 : STD_LOGIC;
  signal mem_n_19 : STD_LOGIC;
  signal mem_n_2 : STD_LOGIC;
  signal mem_n_20 : STD_LOGIC;
  signal mem_n_21 : STD_LOGIC;
  signal mem_n_22 : STD_LOGIC;
  signal mem_n_23 : STD_LOGIC;
  signal mem_n_24 : STD_LOGIC;
  signal mem_n_25 : STD_LOGIC;
  signal mem_n_3 : STD_LOGIC;
  signal mem_n_4 : STD_LOGIC;
  signal mem_n_5 : STD_LOGIC;
  signal mem_n_6 : STD_LOGIC;
  signal mem_n_7 : STD_LOGIC;
  signal mem_n_8 : STD_LOGIC;
  signal mem_n_9 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal r_byte_count : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal r_byte_count_0 : STD_LOGIC;
  signal \r_byte_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_byte_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_byte_count_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_byte_count_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_byte_count_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_byte_count_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_byte_count_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_byte_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_byte_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_byte_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_byte_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_byte_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_byte_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_byte_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_byte_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_byte_count_reg_n_0_[9]\ : STD_LOGIC;
  signal r_core_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal r_dest_addr : STD_LOGIC_VECTOR ( 42 downto 2 );
  signal \r_dest_addr[2]_i_2_n_0\ : STD_LOGIC;
  signal r_dest_addr_3 : STD_LOGIC;
  signal r_fifo_data_in : STD_LOGIC;
  signal r_fifo_data_in0_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \r_fifo_data_in[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_fifo_data_in[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_fifo_data_in_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_fifo_data_in_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_fifo_data_in_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_fifo_data_in_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_fifo_data_in_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_fifo_data_in_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_fifo_data_in_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_fifo_data_in_reg_n_0_[7]\ : STD_LOGIC;
  signal r_fifo_write_enable_i_1_n_0 : STD_LOGIC;
  signal r_fifo_write_enable_reg_n_0 : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__0_n_0\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__0_n_1\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__0_n_2\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__0_n_3\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__0_n_4\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__0_n_5\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__0_n_6\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__0_n_7\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__1_n_0\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__1_n_1\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__1_n_2\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__1_n_3\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__1_n_4\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__1_n_5\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__1_n_6\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__1_n_7\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__2_n_2\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__2_n_3\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__2_n_5\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__2_n_6\ : STD_LOGIC;
  signal \r_num_cycles_without_valid1_carry__2_n_7\ : STD_LOGIC;
  signal r_num_cycles_without_valid1_carry_n_0 : STD_LOGIC;
  signal r_num_cycles_without_valid1_carry_n_1 : STD_LOGIC;
  signal r_num_cycles_without_valid1_carry_n_2 : STD_LOGIC;
  signal r_num_cycles_without_valid1_carry_n_3 : STD_LOGIC;
  signal r_num_cycles_without_valid1_carry_n_4 : STD_LOGIC;
  signal r_num_cycles_without_valid1_carry_n_5 : STD_LOGIC;
  signal r_num_cycles_without_valid1_carry_n_6 : STD_LOGIC;
  signal r_num_cycles_without_valid1_carry_n_7 : STD_LOGIC;
  signal \r_num_cycles_without_valid[15]_i_2_n_0\ : STD_LOGIC;
  signal \r_num_cycles_without_valid[15]_i_3_n_0\ : STD_LOGIC;
  signal \r_num_cycles_without_valid[15]_i_4_n_0\ : STD_LOGIC;
  signal \r_num_cycles_without_valid[15]_i_5_n_0\ : STD_LOGIC;
  signal \r_num_cycles_without_valid_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_num_cycles_without_valid_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_num_cycles_without_valid_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_num_cycles_without_valid_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_num_cycles_without_valid_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_num_cycles_without_valid_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_num_cycles_without_valid_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_num_cycles_without_valid_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_num_cycles_without_valid_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_num_cycles_without_valid_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_num_cycles_without_valid_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_num_cycles_without_valid_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_num_cycles_without_valid_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_num_cycles_without_valid_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_num_cycles_without_valid_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_num_cycles_without_valid_reg_n_0_[9]\ : STD_LOGIC;
  signal r_packet_size : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \r_packet_size0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \r_packet_size0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \r_packet_size0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \r_packet_size0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \r_packet_size0_carry__0_n_0\ : STD_LOGIC;
  signal \r_packet_size0_carry__0_n_1\ : STD_LOGIC;
  signal \r_packet_size0_carry__0_n_2\ : STD_LOGIC;
  signal \r_packet_size0_carry__0_n_3\ : STD_LOGIC;
  signal \r_packet_size0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \r_packet_size0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \r_packet_size0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \r_packet_size0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \r_packet_size0_carry__1_n_0\ : STD_LOGIC;
  signal \r_packet_size0_carry__1_n_1\ : STD_LOGIC;
  signal \r_packet_size0_carry__1_n_2\ : STD_LOGIC;
  signal \r_packet_size0_carry__1_n_3\ : STD_LOGIC;
  signal \r_packet_size0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \r_packet_size0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \r_packet_size0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \r_packet_size0_carry__2_n_2\ : STD_LOGIC;
  signal \r_packet_size0_carry__2_n_3\ : STD_LOGIC;
  signal r_packet_size0_carry_i_1_n_0 : STD_LOGIC;
  signal r_packet_size0_carry_i_2_n_0 : STD_LOGIC;
  signal r_packet_size0_carry_i_3_n_0 : STD_LOGIC;
  signal r_packet_size0_carry_i_4_n_0 : STD_LOGIC;
  signal r_packet_size0_carry_n_0 : STD_LOGIC;
  signal r_packet_size0_carry_n_1 : STD_LOGIC;
  signal r_packet_size0_carry_n_2 : STD_LOGIC;
  signal r_packet_size0_carry_n_3 : STD_LOGIC;
  signal \r_packet_size[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_packet_size[15]_i_3_n_0\ : STD_LOGIC;
  signal r_packet_size_1 : STD_LOGIC;
  signal \r_packet_size_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \r_packet_size_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \r_packet_size_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \r_packet_size_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \r_packet_size_reg[15]_i_4_n_2\ : STD_LOGIC;
  signal \r_packet_size_reg[15]_i_4_n_3\ : STD_LOGIC;
  signal \r_packet_size_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_packet_size_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \r_packet_size_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \r_packet_size_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \r_packet_size_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \r_packet_size_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \r_packet_size_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \r_packet_size_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \r_packet_size_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_packet_size_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_packet_size_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_packet_size_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_packet_size_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_packet_size_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_packet_size_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_packet_size_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_packet_size_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_packet_size_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_packet_size_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_packet_size_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_packet_size_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_packet_size_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_packet_size_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_packet_size_reg_n_0_[9]\ : STD_LOGIC;
  signal r_rx_mic_tdata_ls_byte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_rx_mic_tdata_ls_byte[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_rx_mic_tdata_ls_byte_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_rx_mic_tdata_ls_byte_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_rx_mic_tdata_ls_byte_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_rx_mic_tdata_ls_byte_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_rx_mic_tdata_ls_byte_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_rx_mic_tdata_ls_byte_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_rx_mic_tdata_ls_byte_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_rx_mic_tdata_ls_byte_reg_n_0_[7]\ : STD_LOGIC;
  signal r_src_addr : STD_LOGIC_VECTOR ( 44 downto 9 );
  signal \r_src_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_src_addr[24]_i_1_n_0\ : STD_LOGIC;
  signal r_src_addr_2 : STD_LOGIC;
  signal \r_src_addr_reg_n_0_[25]\ : STD_LOGIC;
  signal \r_src_addr_reg_n_0_[40]\ : STD_LOGIC;
  signal \r_src_addr_reg_n_0_[41]\ : STD_LOGIC;
  signal \r_src_addr_reg_n_0_[44]\ : STD_LOGIC;
  signal r_tlast_marker_counter_i_1_n_0 : STD_LOGIC;
  signal r_tlast_marker_counter_reg_n_0 : STD_LOGIC;
  signal r_tlast_received_i_1_n_0 : STD_LOGIC;
  signal r_tlast_received_reg_n_0 : STD_LOGIC;
  signal r_tx_fifo_tdata : STD_LOGIC;
  signal \r_tx_fifo_tdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[7]_i_10_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[7]_i_11_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[7]_i_12_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[7]_i_8_n_0\ : STD_LOGIC;
  signal \r_tx_fifo_tdata[7]_i_9_n_0\ : STD_LOGIC;
  signal r_tx_fifo_tlast : STD_LOGIC;
  signal r_tx_fifo_tlast_i_1_n_0 : STD_LOGIC;
  signal r_tx_fifo_tlast_i_2_n_0 : STD_LOGIC;
  signal r_tx_fifo_tlast_i_3_n_0 : STD_LOGIC;
  signal r_tx_fifo_tlast_i_5_n_0 : STD_LOGIC;
  signal \^r_tx_fifo_tlast_reg_0\ : STD_LOGIC;
  signal \^rx_mic_tready\ : STD_LOGIC;
  signal w_areset : STD_LOGIC;
  signal \NLW_r_num_cycles_without_valid1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_num_cycles_without_valid1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_packet_size0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_packet_size0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_packet_size_reg[15]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_packet_size_reg[15]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_r_core_state[0]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_r_core_state[1]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_sequential_r_core_state[2]_i_10\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_r_core_state[2]_i_3\ : label is "soft_lutpair17";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_core_state_reg[0]\ : label is "STATE_RECEIVE_DATA_SECOND_BYTE:111,STATE_TRANSMIT_HEADER_PREP:101,STATE_RECEIVE_TLAST:110,STATE_TRANSMIT_DEST_ADDRESS:100,STATE_TRANSMIT_SRC_ADDRESS:011,STATE_TRANSMIT_SIZE:010,STATE_TRANSMIT_DATA:000,STATE_RECEIVE_DATA_FIRST_BYTE:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_core_state_reg[1]\ : label is "STATE_RECEIVE_DATA_SECOND_BYTE:111,STATE_TRANSMIT_HEADER_PREP:101,STATE_RECEIVE_TLAST:110,STATE_TRANSMIT_DEST_ADDRESS:100,STATE_TRANSMIT_SRC_ADDRESS:011,STATE_TRANSMIT_SIZE:010,STATE_TRANSMIT_DATA:000,STATE_RECEIVE_DATA_FIRST_BYTE:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_r_core_state_reg[2]\ : label is "STATE_RECEIVE_DATA_SECOND_BYTE:111,STATE_TRANSMIT_HEADER_PREP:101,STATE_RECEIVE_TLAST:110,STATE_TRANSMIT_DEST_ADDRESS:100,STATE_TRANSMIT_SRC_ADDRESS:011,STATE_TRANSMIT_SIZE:010,STATE_TRANSMIT_DATA:000,STATE_RECEIVE_DATA_FIRST_BYTE:001";
  attribute SOFT_HLUTNM of \r_byte_count[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_byte_count[10]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_byte_count[11]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_byte_count[12]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_byte_count[13]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_byte_count[14]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r_byte_count[15]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r_byte_count[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_byte_count[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_byte_count[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_byte_count[5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_byte_count[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_byte_count[7]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_byte_count[8]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r_byte_count[9]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r_dest_addr[26]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_dest_addr[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r_fifo_data_in[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of r_fifo_write_enable_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_packet_size[15]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \r_rx_mic_tdata_ls_byte[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r_rx_mic_tdata_ls_byte[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r_rx_mic_tdata_ls_byte[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r_rx_mic_tdata_ls_byte[4]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r_rx_mic_tdata_ls_byte[5]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_rx_mic_tdata_ls_byte[6]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_rx_mic_tdata_ls_byte[7]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r_src_addr[24]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_src_addr[28]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_src_addr[33]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of r_tlast_marker_counter_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of r_tlast_received_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r_tx_fifo_tdata[0]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_tx_fifo_tdata[1]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_tx_fifo_tdata[2]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \r_tx_fifo_tdata[3]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_tx_fifo_tdata[4]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_tx_fifo_tdata[5]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r_tx_fifo_tdata[5]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \r_tx_fifo_tdata[5]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_tx_fifo_tdata[7]_i_8\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of r_tx_fifo_tlast_i_2 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of r_tx_fifo_tlast_i_4 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of tx_fifo_TVALID_INST_0 : label is "soft_lutpair8";
begin
  r_tx_fifo_tlast_reg_0 <= \^r_tx_fifo_tlast_reg_0\;
  rx_mic_TREADY <= \^rx_mic_tready\;
\FSM_sequential_r_core_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEEAAEAAAEAAAEA"
    )
        port map (
      I0 => \FSM_sequential_r_core_state[0]_i_2_n_0\,
      I1 => r_core_state(2),
      I2 => r_core_state(1),
      I3 => \FSM_sequential_r_core_state[0]_i_3_n_0\,
      I4 => r_dest_addr(2),
      I5 => tx_fifo_TREADY,
      O => \FSM_sequential_r_core_state[0]_i_1_n_0\
    );
\FSM_sequential_r_core_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0050545050505450"
    )
        port map (
      I0 => r_core_state(2),
      I1 => \^r_tx_fifo_tlast_reg_0\,
      I2 => r_core_state(0),
      I3 => tx_fifo_TREADY,
      I4 => r_core_state(1),
      I5 => \r_tx_fifo_tdata[7]_i_4_n_0\,
      O => \FSM_sequential_r_core_state[0]_i_2_n_0\
    );
\FSM_sequential_r_core_state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => r_tlast_marker_counter_reg_n_0,
      I1 => r_tlast_received_reg_n_0,
      I2 => r_core_state(0),
      O => \FSM_sequential_r_core_state[0]_i_3_n_0\
    );
\FSM_sequential_r_core_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCFCDDCCCCCCDDCC"
    )
        port map (
      I0 => \FSM_sequential_r_core_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_r_core_state[1]_i_3_n_0\,
      I2 => r_dest_addr(2),
      I3 => r_core_state(1),
      I4 => r_core_state(2),
      I5 => tx_fifo_TREADY,
      O => \FSM_sequential_r_core_state[1]_i_1_n_0\
    );
\FSM_sequential_r_core_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => tx_fifo_TREADY,
      I1 => \r_tx_fifo_tdata[4]_i_4_n_0\,
      I2 => r_core_state(0),
      O => \FSM_sequential_r_core_state[1]_i_2_n_0\
    );
\FSM_sequential_r_core_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F03300000000AA00"
    )
        port map (
      I0 => rx_mic_TVALID,
      I1 => r_tlast_marker_counter_reg_n_0,
      I2 => r_tlast_received_reg_n_0,
      I3 => r_core_state(0),
      I4 => r_core_state(1),
      I5 => r_core_state(2),
      O => \FSM_sequential_r_core_state[1]_i_3_n_0\
    );
\FSM_sequential_r_core_state[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[13]\,
      I1 => \r_packet_size_reg_n_0_[14]\,
      I2 => \r_packet_size_reg_n_0_[15]\,
      O => \FSM_sequential_r_core_state[2]_i_10_n_0\
    );
\FSM_sequential_r_core_state[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg_n_0_[7]\,
      I1 => \r_num_cycles_without_valid_reg_n_0_[8]\,
      I2 => \r_num_cycles_without_valid_reg_n_0_[9]\,
      I3 => \r_num_cycles_without_valid_reg_n_0_[12]\,
      O => \FSM_sequential_r_core_state[2]_i_11_n_0\
    );
\FSM_sequential_r_core_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => r_core_state(1),
      I1 => tx_fifo_TREADY,
      I2 => r_dest_addr(2),
      I3 => r_core_state(2),
      O => \FSM_sequential_r_core_state[2]_i_3_n_0\
    );
\FSM_sequential_r_core_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001FF33FF"
    )
        port map (
      I0 => \FSM_sequential_r_core_state[2]_i_8_n_0\,
      I1 => \r_packet_size_reg_n_0_[6]\,
      I2 => \r_packet_size_reg_n_0_[4]\,
      I3 => \r_packet_size_reg_n_0_[7]\,
      I4 => \r_packet_size_reg_n_0_[5]\,
      I5 => \FSM_sequential_r_core_state[2]_i_9_n_0\,
      O => \FSM_sequential_r_core_state[2]_i_4_n_0\
    );
\FSM_sequential_r_core_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \FSM_sequential_r_core_state[2]_i_10_n_0\,
      I1 => \r_packet_size_reg_n_0_[11]\,
      I2 => \r_packet_size_reg_n_0_[12]\,
      I3 => r_core_state(1),
      I4 => \FSM_sequential_r_core_state[0]_i_3_n_0\,
      O => \FSM_sequential_r_core_state[2]_i_5_n_0\
    );
\FSM_sequential_r_core_state[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFFFF"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg_n_0_[2]\,
      I1 => \r_num_cycles_without_valid_reg_n_0_[4]\,
      I2 => \r_num_cycles_without_valid_reg_n_0_[3]\,
      I3 => \r_num_cycles_without_valid_reg_n_0_[5]\,
      I4 => \r_num_cycles_without_valid_reg_n_0_[6]\,
      O => \FSM_sequential_r_core_state[2]_i_6_n_0\
    );
\FSM_sequential_r_core_state[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg_n_0_[10]\,
      I1 => \r_num_cycles_without_valid_reg_n_0_[11]\,
      I2 => \FSM_sequential_r_core_state[2]_i_11_n_0\,
      I3 => \r_num_cycles_without_valid_reg_n_0_[14]\,
      I4 => \r_num_cycles_without_valid_reg_n_0_[13]\,
      I5 => \r_num_cycles_without_valid_reg_n_0_[15]\,
      O => \FSM_sequential_r_core_state[2]_i_7_n_0\
    );
\FSM_sequential_r_core_state[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888088"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[2]\,
      I1 => \r_packet_size_reg_n_0_[3]\,
      I2 => r_core_state(0),
      I3 => r_tlast_marker_counter_reg_n_0,
      I4 => \r_packet_size_reg_n_0_[1]\,
      O => \FSM_sequential_r_core_state[2]_i_8_n_0\
    );
\FSM_sequential_r_core_state[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[9]\,
      I1 => \r_packet_size_reg_n_0_[8]\,
      O => \FSM_sequential_r_core_state[2]_i_9_n_0\
    );
\FSM_sequential_r_core_state_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => i_clk,
      CE => '1',
      D => \FSM_sequential_r_core_state[0]_i_1_n_0\,
      Q => r_core_state(0),
      S => w_areset
    );
\FSM_sequential_r_core_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => \FSM_sequential_r_core_state[1]_i_1_n_0\,
      Q => r_core_state(1),
      R => w_areset
    );
\FSM_sequential_r_core_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => mem_n_25,
      Q => r_core_state(2),
      R => w_areset
    );
mem: entity work.canteloupe_frame_generator_cust_0_0_fifo_mem
     port map (
      D(7) => mem_n_1,
      D(6) => mem_n_2,
      D(5) => mem_n_3,
      D(4) => mem_n_4,
      D(3) => mem_n_5,
      D(2) => mem_n_6,
      D(1) => mem_n_7,
      D(0) => mem_n_8,
      E(0) => \^rx_mic_tready\,
      \FSM_sequential_r_core_state_reg[2]\ => \FSM_sequential_r_core_state[2]_i_3_n_0\,
      \FSM_sequential_r_core_state_reg[2]_0\ => \FSM_sequential_r_core_state[2]_i_4_n_0\,
      \FSM_sequential_r_core_state_reg[2]_1\(0) => \r_packet_size_reg_n_0_[10]\,
      \FSM_sequential_r_core_state_reg[2]_2\ => \FSM_sequential_r_core_state[2]_i_5_n_0\,
      \FSM_sequential_r_core_state_reg[2]_3\ => \FSM_sequential_r_core_state[2]_i_6_n_0\,
      \FSM_sequential_r_core_state_reg[2]_4\ => \FSM_sequential_r_core_state[2]_i_7_n_0\,
      O(3) => r_num_cycles_without_valid1_carry_n_4,
      O(2) => r_num_cycles_without_valid1_carry_n_5,
      O(1) => r_num_cycles_without_valid1_carry_n_6,
      O(0) => r_num_cycles_without_valid1_carry_n_7,
      Q(7) => \r_fifo_data_in_reg_n_0_[7]\,
      Q(6) => \r_fifo_data_in_reg_n_0_[6]\,
      Q(5) => \r_fifo_data_in_reg_n_0_[5]\,
      Q(4) => \r_fifo_data_in_reg_n_0_[4]\,
      Q(3) => \r_fifo_data_in_reg_n_0_[3]\,
      Q(2) => \r_fifo_data_in_reg_n_0_[2]\,
      Q(1) => \r_fifo_data_in_reg_n_0_[1]\,
      Q(0) => \r_fifo_data_in_reg_n_0_[0]\,
      i_aresetn => i_aresetn,
      i_clk => i_clk,
      mem_reg => r_fifo_write_enable_reg_n_0,
      r_core_state(2 downto 0) => r_core_state(2 downto 0),
      \r_num_cycles_without_valid_reg[0]\(0) => \r_num_cycles_without_valid_reg_n_0_[0]\,
      \r_num_cycles_without_valid_reg[12]\(3) => \r_num_cycles_without_valid1_carry__1_n_4\,
      \r_num_cycles_without_valid_reg[12]\(2) => \r_num_cycles_without_valid1_carry__1_n_5\,
      \r_num_cycles_without_valid_reg[12]\(1) => \r_num_cycles_without_valid1_carry__1_n_6\,
      \r_num_cycles_without_valid_reg[12]\(0) => \r_num_cycles_without_valid1_carry__1_n_7\,
      \r_num_cycles_without_valid_reg[15]\(15) => mem_n_9,
      \r_num_cycles_without_valid_reg[15]\(14) => mem_n_10,
      \r_num_cycles_without_valid_reg[15]\(13) => mem_n_11,
      \r_num_cycles_without_valid_reg[15]\(12) => mem_n_12,
      \r_num_cycles_without_valid_reg[15]\(11) => mem_n_13,
      \r_num_cycles_without_valid_reg[15]\(10) => mem_n_14,
      \r_num_cycles_without_valid_reg[15]\(9) => mem_n_15,
      \r_num_cycles_without_valid_reg[15]\(8) => mem_n_16,
      \r_num_cycles_without_valid_reg[15]\(7) => mem_n_17,
      \r_num_cycles_without_valid_reg[15]\(6) => mem_n_18,
      \r_num_cycles_without_valid_reg[15]\(5) => mem_n_19,
      \r_num_cycles_without_valid_reg[15]\(4) => mem_n_20,
      \r_num_cycles_without_valid_reg[15]\(3) => mem_n_21,
      \r_num_cycles_without_valid_reg[15]\(2) => mem_n_22,
      \r_num_cycles_without_valid_reg[15]\(1) => mem_n_23,
      \r_num_cycles_without_valid_reg[15]\(0) => mem_n_24,
      \r_num_cycles_without_valid_reg[15]_0\ => \r_num_cycles_without_valid[15]_i_2_n_0\,
      \r_num_cycles_without_valid_reg[15]_1\(2) => \r_num_cycles_without_valid1_carry__2_n_5\,
      \r_num_cycles_without_valid_reg[15]_1\(1) => \r_num_cycles_without_valid1_carry__2_n_6\,
      \r_num_cycles_without_valid_reg[15]_1\(0) => \r_num_cycles_without_valid1_carry__2_n_7\,
      \r_num_cycles_without_valid_reg[8]\(3) => \r_num_cycles_without_valid1_carry__0_n_4\,
      \r_num_cycles_without_valid_reg[8]\(2) => \r_num_cycles_without_valid1_carry__0_n_5\,
      \r_num_cycles_without_valid_reg[8]\(1) => \r_num_cycles_without_valid1_carry__0_n_6\,
      \r_num_cycles_without_valid_reg[8]\(0) => \r_num_cycles_without_valid1_carry__0_n_7\,
      \r_packet_size_reg[10]\ => mem_n_25,
      \r_tx_fifo_tdata_reg[0]\ => \r_tx_fifo_tdata[5]_i_2_n_0\,
      \r_tx_fifo_tdata_reg[0]_0\ => \r_tx_fifo_tdata[5]_i_4_n_0\,
      \r_tx_fifo_tdata_reg[0]_1\ => \r_tx_fifo_tdata[0]_i_2_n_0\,
      \r_tx_fifo_tdata_reg[1]\(1) => \r_src_addr_reg_n_0_[41]\,
      \r_tx_fifo_tdata_reg[1]\(0) => \r_src_addr_reg_n_0_[40]\,
      \r_tx_fifo_tdata_reg[1]_0\ => \r_tx_fifo_tdata[4]_i_4_n_0\,
      \r_tx_fifo_tdata_reg[1]_1\ => \r_tx_fifo_tdata[1]_i_2_n_0\,
      \r_tx_fifo_tdata_reg[2]\(0) => p_0_in(2),
      \r_tx_fifo_tdata_reg[2]_0\ => \r_tx_fifo_tdata[2]_i_2_n_0\,
      \r_tx_fifo_tdata_reg[3]\ => \r_tx_fifo_tdata[7]_i_5_n_0\,
      \r_tx_fifo_tdata_reg[3]_0\ => \r_tx_fifo_tdata[3]_i_2_n_0\,
      \r_tx_fifo_tdata_reg[3]_1\ => \r_tx_fifo_tdata[3]_i_3_n_0\,
      \r_tx_fifo_tdata_reg[4]\ => \r_tx_fifo_tdata[4]_i_2_n_0\,
      \r_tx_fifo_tdata_reg[4]_0\ => \r_tx_fifo_tdata[4]_i_3_n_0\,
      \r_tx_fifo_tdata_reg[5]\ => \r_tx_fifo_tdata[5]_i_3_n_0\,
      \r_tx_fifo_tdata_reg[7]\ => \r_tx_fifo_tdata[7]_i_4_n_0\,
      \r_tx_fifo_tdata_reg[7]_0\(3) => \r_byte_count_reg_n_0_[15]\,
      \r_tx_fifo_tdata_reg[7]_0\(2) => \r_byte_count_reg_n_0_[14]\,
      \r_tx_fifo_tdata_reg[7]_0\(1) => \r_byte_count_reg_n_0_[10]\,
      \r_tx_fifo_tdata_reg[7]_0\(0) => \r_byte_count_reg_n_0_[9]\,
      \read_address_int_reg[11]\ => \^r_tx_fifo_tlast_reg_0\,
      rx_mic_TVALID => rx_mic_TVALID,
      tx_fifo_TREADY => tx_fifo_TREADY,
      w_areset => w_areset
    );
\r_byte_count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_core_state(2),
      I1 => \r_packet_size_reg_n_0_[0]\,
      O => r_byte_count(0)
    );
\r_byte_count[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_byte_count_reg_n_0_[2]\,
      I1 => r_core_state(1),
      I2 => \r_packet_size_reg_n_0_[10]\,
      O => r_byte_count(10)
    );
\r_byte_count[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_byte_count_reg_n_0_[3]\,
      I1 => r_core_state(1),
      I2 => \r_packet_size_reg_n_0_[11]\,
      O => r_byte_count(11)
    );
\r_byte_count[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_byte_count_reg_n_0_[4]\,
      I1 => r_core_state(1),
      I2 => \r_packet_size_reg_n_0_[12]\,
      O => r_byte_count(12)
    );
\r_byte_count[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_byte_count_reg_n_0_[5]\,
      I1 => r_core_state(1),
      I2 => \r_packet_size_reg_n_0_[13]\,
      O => r_byte_count(13)
    );
\r_byte_count[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_byte_count_reg_n_0_[6]\,
      I1 => r_core_state(1),
      I2 => \r_packet_size_reg_n_0_[14]\,
      O => r_byte_count(14)
    );
\r_byte_count[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CB00C00"
    )
        port map (
      I0 => \r_tx_fifo_tdata[7]_i_4_n_0\,
      I1 => r_core_state(0),
      I2 => r_core_state(1),
      I3 => r_core_state(2),
      I4 => tx_fifo_TREADY,
      O => r_byte_count_0
    );
\r_byte_count[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_byte_count_reg_n_0_[7]\,
      I1 => r_core_state(1),
      I2 => \r_packet_size_reg_n_0_[15]\,
      O => r_byte_count(15)
    );
\r_byte_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_core_state(2),
      I1 => \r_packet_size_reg_n_0_[1]\,
      O => r_byte_count(1)
    );
\r_byte_count[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_core_state(2),
      I1 => \r_packet_size_reg_n_0_[2]\,
      O => r_byte_count(2)
    );
\r_byte_count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_core_state(2),
      I1 => \r_packet_size_reg_n_0_[3]\,
      O => r_byte_count(3)
    );
\r_byte_count[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_core_state(2),
      I1 => \r_packet_size_reg_n_0_[4]\,
      O => r_byte_count(4)
    );
\r_byte_count[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_core_state(2),
      I1 => \r_packet_size_reg_n_0_[5]\,
      O => r_byte_count(5)
    );
\r_byte_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_core_state(2),
      I1 => \r_packet_size_reg_n_0_[6]\,
      O => r_byte_count(6)
    );
\r_byte_count[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_core_state(2),
      I1 => \r_packet_size_reg_n_0_[7]\,
      O => r_byte_count(7)
    );
\r_byte_count[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_byte_count_reg_n_0_[0]\,
      I1 => r_core_state(1),
      I2 => \r_packet_size_reg_n_0_[8]\,
      O => r_byte_count(8)
    );
\r_byte_count[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_byte_count_reg_n_0_[1]\,
      I1 => r_core_state(1),
      I2 => \r_packet_size_reg_n_0_[9]\,
      O => r_byte_count(9)
    );
\r_byte_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_byte_count_0,
      D => r_byte_count(0),
      Q => \r_byte_count_reg_n_0_[0]\,
      R => w_areset
    );
\r_byte_count_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_byte_count_0,
      D => r_byte_count(10),
      Q => \r_byte_count_reg_n_0_[10]\,
      R => w_areset
    );
\r_byte_count_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_byte_count_0,
      D => r_byte_count(11),
      Q => \r_byte_count_reg_n_0_[11]\,
      R => w_areset
    );
\r_byte_count_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_byte_count_0,
      D => r_byte_count(12),
      Q => \r_byte_count_reg_n_0_[12]\,
      R => w_areset
    );
\r_byte_count_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_byte_count_0,
      D => r_byte_count(13),
      Q => \r_byte_count_reg_n_0_[13]\,
      R => w_areset
    );
\r_byte_count_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_byte_count_0,
      D => r_byte_count(14),
      Q => \r_byte_count_reg_n_0_[14]\,
      R => w_areset
    );
\r_byte_count_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_byte_count_0,
      D => r_byte_count(15),
      Q => \r_byte_count_reg_n_0_[15]\,
      R => w_areset
    );
\r_byte_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_byte_count_0,
      D => r_byte_count(1),
      Q => \r_byte_count_reg_n_0_[1]\,
      R => w_areset
    );
\r_byte_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_byte_count_0,
      D => r_byte_count(2),
      Q => \r_byte_count_reg_n_0_[2]\,
      R => w_areset
    );
\r_byte_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_byte_count_0,
      D => r_byte_count(3),
      Q => \r_byte_count_reg_n_0_[3]\,
      R => w_areset
    );
\r_byte_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_byte_count_0,
      D => r_byte_count(4),
      Q => \r_byte_count_reg_n_0_[4]\,
      R => w_areset
    );
\r_byte_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_byte_count_0,
      D => r_byte_count(5),
      Q => \r_byte_count_reg_n_0_[5]\,
      R => w_areset
    );
\r_byte_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_byte_count_0,
      D => r_byte_count(6),
      Q => \r_byte_count_reg_n_0_[6]\,
      R => w_areset
    );
\r_byte_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_byte_count_0,
      D => r_byte_count(7),
      Q => \r_byte_count_reg_n_0_[7]\,
      R => w_areset
    );
\r_byte_count_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_byte_count_0,
      D => r_byte_count(8),
      Q => \r_byte_count_reg_n_0_[8]\,
      R => w_areset
    );
\r_byte_count_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_byte_count_0,
      D => r_byte_count(9),
      Q => \r_byte_count_reg_n_0_[9]\,
      R => w_areset
    );
\r_dest_addr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in(0),
      I1 => r_dest_addr(2),
      O => r_dest_addr(26)
    );
\r_dest_addr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_dest_addr[2]_i_2_n_0\,
      I1 => r_core_state(0),
      O => r_dest_addr(2)
    );
\r_dest_addr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => p_0_in(2),
      I1 => r_dest_addr(42),
      I2 => p_0_in(0),
      I3 => r_dest_addr(10),
      I4 => r_dest_addr(34),
      I5 => r_dest_addr(40),
      O => \r_dest_addr[2]_i_2_n_0\
    );
\r_dest_addr[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3020"
    )
        port map (
      I0 => r_core_state(0),
      I1 => r_core_state(1),
      I2 => r_core_state(2),
      I3 => tx_fifo_TREADY,
      O => r_dest_addr_3
    );
\r_dest_addr_reg[26]\: unisim.vcomponents.FDSE
     port map (
      C => i_clk,
      CE => r_dest_addr_3,
      D => r_dest_addr(26),
      Q => r_dest_addr(34),
      S => w_areset
    );
\r_dest_addr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => i_clk,
      CE => r_dest_addr_3,
      D => r_dest_addr(2),
      Q => r_dest_addr(10),
      S => w_areset
    );
\r_dest_addr_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_dest_addr_3,
      D => r_dest_addr(10),
      Q => r_dest_addr(40),
      R => w_areset
    );
\r_dest_addr_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_dest_addr_3,
      D => r_dest_addr(34),
      Q => r_dest_addr(42),
      R => w_areset
    );
\r_dest_addr_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_dest_addr_3,
      D => r_dest_addr(40),
      Q => p_0_in(0),
      R => w_areset
    );
\r_dest_addr_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_dest_addr_3,
      D => r_dest_addr(42),
      Q => p_0_in(2),
      R => w_areset
    );
\r_fifo_data_in[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => rx_mic_TDATA(8),
      I1 => r_core_state(1),
      I2 => \r_rx_mic_tdata_ls_byte_reg_n_0_[0]\,
      I3 => r_core_state(0),
      O => \r_fifo_data_in[0]_i_1_n_0\
    );
\r_fifo_data_in[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => rx_mic_TDATA(9),
      I1 => r_core_state(1),
      I2 => \r_rx_mic_tdata_ls_byte_reg_n_0_[1]\,
      I3 => r_core_state(0),
      O => \r_fifo_data_in[1]_i_1_n_0\
    );
\r_fifo_data_in[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \r_rx_mic_tdata_ls_byte_reg_n_0_[2]\,
      I1 => r_core_state(0),
      I2 => r_tlast_marker_counter_reg_n_0,
      I3 => r_core_state(1),
      I4 => rx_mic_TDATA(10),
      O => r_fifo_data_in0_in(2)
    );
\r_fifo_data_in[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \r_rx_mic_tdata_ls_byte_reg_n_0_[3]\,
      I1 => r_core_state(0),
      I2 => r_tlast_marker_counter_reg_n_0,
      I3 => r_core_state(1),
      I4 => rx_mic_TDATA(11),
      O => r_fifo_data_in0_in(3)
    );
\r_fifo_data_in[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \r_rx_mic_tdata_ls_byte_reg_n_0_[4]\,
      I1 => r_core_state(0),
      I2 => r_tlast_marker_counter_reg_n_0,
      I3 => r_core_state(1),
      I4 => rx_mic_TDATA(12),
      O => r_fifo_data_in0_in(4)
    );
\r_fifo_data_in[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \r_rx_mic_tdata_ls_byte_reg_n_0_[5]\,
      I1 => r_core_state(0),
      I2 => r_tlast_marker_counter_reg_n_0,
      I3 => r_core_state(1),
      I4 => rx_mic_TDATA(13),
      O => r_fifo_data_in0_in(5)
    );
\r_fifo_data_in[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \r_rx_mic_tdata_ls_byte_reg_n_0_[6]\,
      I1 => r_core_state(0),
      I2 => r_tlast_marker_counter_reg_n_0,
      I3 => r_core_state(1),
      I4 => rx_mic_TDATA(14),
      O => r_fifo_data_in0_in(6)
    );
\r_fifo_data_in[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4A0"
    )
        port map (
      I0 => r_core_state(2),
      I1 => r_core_state(0),
      I2 => r_core_state(1),
      I3 => rx_mic_TVALID,
      O => r_fifo_data_in
    );
\r_fifo_data_in[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \r_rx_mic_tdata_ls_byte_reg_n_0_[7]\,
      I1 => r_core_state(0),
      I2 => r_tlast_marker_counter_reg_n_0,
      I3 => r_core_state(1),
      I4 => rx_mic_TDATA(15),
      O => r_fifo_data_in0_in(7)
    );
\r_fifo_data_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_fifo_data_in,
      D => \r_fifo_data_in[0]_i_1_n_0\,
      Q => \r_fifo_data_in_reg_n_0_[0]\,
      R => w_areset
    );
\r_fifo_data_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_fifo_data_in,
      D => \r_fifo_data_in[1]_i_1_n_0\,
      Q => \r_fifo_data_in_reg_n_0_[1]\,
      R => w_areset
    );
\r_fifo_data_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_fifo_data_in,
      D => r_fifo_data_in0_in(2),
      Q => \r_fifo_data_in_reg_n_0_[2]\,
      R => w_areset
    );
\r_fifo_data_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_fifo_data_in,
      D => r_fifo_data_in0_in(3),
      Q => \r_fifo_data_in_reg_n_0_[3]\,
      R => w_areset
    );
\r_fifo_data_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_fifo_data_in,
      D => r_fifo_data_in0_in(4),
      Q => \r_fifo_data_in_reg_n_0_[4]\,
      R => w_areset
    );
\r_fifo_data_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_fifo_data_in,
      D => r_fifo_data_in0_in(5),
      Q => \r_fifo_data_in_reg_n_0_[5]\,
      R => w_areset
    );
\r_fifo_data_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_fifo_data_in,
      D => r_fifo_data_in0_in(6),
      Q => \r_fifo_data_in_reg_n_0_[6]\,
      R => w_areset
    );
\r_fifo_data_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_fifo_data_in,
      D => r_fifo_data_in0_in(7),
      Q => \r_fifo_data_in_reg_n_0_[7]\,
      R => w_areset
    );
r_fifo_write_enable_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FA2EFA22"
    )
        port map (
      I0 => r_fifo_write_enable_reg_n_0,
      I1 => r_core_state(0),
      I2 => r_core_state(2),
      I3 => r_core_state(1),
      I4 => rx_mic_TVALID,
      O => r_fifo_write_enable_i_1_n_0
    );
r_fifo_write_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => r_fifo_write_enable_i_1_n_0,
      Q => r_fifo_write_enable_reg_n_0,
      R => w_areset
    );
r_num_cycles_without_valid1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_num_cycles_without_valid1_carry_n_0,
      CO(2) => r_num_cycles_without_valid1_carry_n_1,
      CO(1) => r_num_cycles_without_valid1_carry_n_2,
      CO(0) => r_num_cycles_without_valid1_carry_n_3,
      CYINIT => \r_num_cycles_without_valid_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => r_num_cycles_without_valid1_carry_n_4,
      O(2) => r_num_cycles_without_valid1_carry_n_5,
      O(1) => r_num_cycles_without_valid1_carry_n_6,
      O(0) => r_num_cycles_without_valid1_carry_n_7,
      S(3) => \r_num_cycles_without_valid_reg_n_0_[4]\,
      S(2) => \r_num_cycles_without_valid_reg_n_0_[3]\,
      S(1) => \r_num_cycles_without_valid_reg_n_0_[2]\,
      S(0) => \r_num_cycles_without_valid_reg_n_0_[1]\
    );
\r_num_cycles_without_valid1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_num_cycles_without_valid1_carry_n_0,
      CO(3) => \r_num_cycles_without_valid1_carry__0_n_0\,
      CO(2) => \r_num_cycles_without_valid1_carry__0_n_1\,
      CO(1) => \r_num_cycles_without_valid1_carry__0_n_2\,
      CO(0) => \r_num_cycles_without_valid1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_num_cycles_without_valid1_carry__0_n_4\,
      O(2) => \r_num_cycles_without_valid1_carry__0_n_5\,
      O(1) => \r_num_cycles_without_valid1_carry__0_n_6\,
      O(0) => \r_num_cycles_without_valid1_carry__0_n_7\,
      S(3) => \r_num_cycles_without_valid_reg_n_0_[8]\,
      S(2) => \r_num_cycles_without_valid_reg_n_0_[7]\,
      S(1) => \r_num_cycles_without_valid_reg_n_0_[6]\,
      S(0) => \r_num_cycles_without_valid_reg_n_0_[5]\
    );
\r_num_cycles_without_valid1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_num_cycles_without_valid1_carry__0_n_0\,
      CO(3) => \r_num_cycles_without_valid1_carry__1_n_0\,
      CO(2) => \r_num_cycles_without_valid1_carry__1_n_1\,
      CO(1) => \r_num_cycles_without_valid1_carry__1_n_2\,
      CO(0) => \r_num_cycles_without_valid1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_num_cycles_without_valid1_carry__1_n_4\,
      O(2) => \r_num_cycles_without_valid1_carry__1_n_5\,
      O(1) => \r_num_cycles_without_valid1_carry__1_n_6\,
      O(0) => \r_num_cycles_without_valid1_carry__1_n_7\,
      S(3) => \r_num_cycles_without_valid_reg_n_0_[12]\,
      S(2) => \r_num_cycles_without_valid_reg_n_0_[11]\,
      S(1) => \r_num_cycles_without_valid_reg_n_0_[10]\,
      S(0) => \r_num_cycles_without_valid_reg_n_0_[9]\
    );
\r_num_cycles_without_valid1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_num_cycles_without_valid1_carry__1_n_0\,
      CO(3 downto 2) => \NLW_r_num_cycles_without_valid1_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_num_cycles_without_valid1_carry__2_n_2\,
      CO(0) => \r_num_cycles_without_valid1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_r_num_cycles_without_valid1_carry__2_O_UNCONNECTED\(3),
      O(2) => \r_num_cycles_without_valid1_carry__2_n_5\,
      O(1) => \r_num_cycles_without_valid1_carry__2_n_6\,
      O(0) => \r_num_cycles_without_valid1_carry__2_n_7\,
      S(3) => '0',
      S(2) => \r_num_cycles_without_valid_reg_n_0_[15]\,
      S(1) => \r_num_cycles_without_valid_reg_n_0_[14]\,
      S(0) => \r_num_cycles_without_valid_reg_n_0_[13]\
    );
\r_num_cycles_without_valid[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \r_num_cycles_without_valid[15]_i_3_n_0\,
      I1 => \r_num_cycles_without_valid_reg_n_0_[2]\,
      I2 => \r_num_cycles_without_valid_reg_n_0_[0]\,
      I3 => \r_num_cycles_without_valid_reg_n_0_[7]\,
      I4 => \r_num_cycles_without_valid_reg_n_0_[4]\,
      I5 => \r_num_cycles_without_valid[15]_i_4_n_0\,
      O => \r_num_cycles_without_valid[15]_i_2_n_0\
    );
\r_num_cycles_without_valid[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg_n_0_[5]\,
      I1 => \r_num_cycles_without_valid_reg_n_0_[6]\,
      I2 => \r_num_cycles_without_valid_reg_n_0_[1]\,
      I3 => \r_num_cycles_without_valid_reg_n_0_[3]\,
      O => \r_num_cycles_without_valid[15]_i_3_n_0\
    );
\r_num_cycles_without_valid[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg_n_0_[10]\,
      I1 => \r_num_cycles_without_valid_reg_n_0_[9]\,
      I2 => \r_num_cycles_without_valid_reg_n_0_[11]\,
      I3 => \r_num_cycles_without_valid_reg_n_0_[8]\,
      I4 => \r_num_cycles_without_valid[15]_i_5_n_0\,
      O => \r_num_cycles_without_valid[15]_i_4_n_0\
    );
\r_num_cycles_without_valid[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \r_num_cycles_without_valid_reg_n_0_[13]\,
      I1 => \r_num_cycles_without_valid_reg_n_0_[14]\,
      I2 => \r_num_cycles_without_valid_reg_n_0_[12]\,
      I3 => \r_num_cycles_without_valid_reg_n_0_[15]\,
      O => \r_num_cycles_without_valid[15]_i_5_n_0\
    );
\r_num_cycles_without_valid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^rx_mic_tready\,
      D => mem_n_24,
      Q => \r_num_cycles_without_valid_reg_n_0_[0]\,
      R => w_areset
    );
\r_num_cycles_without_valid_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^rx_mic_tready\,
      D => mem_n_14,
      Q => \r_num_cycles_without_valid_reg_n_0_[10]\,
      R => w_areset
    );
\r_num_cycles_without_valid_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^rx_mic_tready\,
      D => mem_n_13,
      Q => \r_num_cycles_without_valid_reg_n_0_[11]\,
      R => w_areset
    );
\r_num_cycles_without_valid_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^rx_mic_tready\,
      D => mem_n_12,
      Q => \r_num_cycles_without_valid_reg_n_0_[12]\,
      R => w_areset
    );
\r_num_cycles_without_valid_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^rx_mic_tready\,
      D => mem_n_11,
      Q => \r_num_cycles_without_valid_reg_n_0_[13]\,
      R => w_areset
    );
\r_num_cycles_without_valid_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^rx_mic_tready\,
      D => mem_n_10,
      Q => \r_num_cycles_without_valid_reg_n_0_[14]\,
      R => w_areset
    );
\r_num_cycles_without_valid_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^rx_mic_tready\,
      D => mem_n_9,
      Q => \r_num_cycles_without_valid_reg_n_0_[15]\,
      R => w_areset
    );
\r_num_cycles_without_valid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^rx_mic_tready\,
      D => mem_n_23,
      Q => \r_num_cycles_without_valid_reg_n_0_[1]\,
      R => w_areset
    );
\r_num_cycles_without_valid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^rx_mic_tready\,
      D => mem_n_22,
      Q => \r_num_cycles_without_valid_reg_n_0_[2]\,
      R => w_areset
    );
\r_num_cycles_without_valid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^rx_mic_tready\,
      D => mem_n_21,
      Q => \r_num_cycles_without_valid_reg_n_0_[3]\,
      R => w_areset
    );
\r_num_cycles_without_valid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^rx_mic_tready\,
      D => mem_n_20,
      Q => \r_num_cycles_without_valid_reg_n_0_[4]\,
      R => w_areset
    );
\r_num_cycles_without_valid_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^rx_mic_tready\,
      D => mem_n_19,
      Q => \r_num_cycles_without_valid_reg_n_0_[5]\,
      R => w_areset
    );
\r_num_cycles_without_valid_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^rx_mic_tready\,
      D => mem_n_18,
      Q => \r_num_cycles_without_valid_reg_n_0_[6]\,
      R => w_areset
    );
\r_num_cycles_without_valid_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^rx_mic_tready\,
      D => mem_n_17,
      Q => \r_num_cycles_without_valid_reg_n_0_[7]\,
      R => w_areset
    );
\r_num_cycles_without_valid_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^rx_mic_tready\,
      D => mem_n_16,
      Q => \r_num_cycles_without_valid_reg_n_0_[8]\,
      R => w_areset
    );
\r_num_cycles_without_valid_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \^rx_mic_tready\,
      D => mem_n_15,
      Q => \r_num_cycles_without_valid_reg_n_0_[9]\,
      R => w_areset
    );
r_packet_size0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_packet_size0_carry_n_0,
      CO(2) => r_packet_size0_carry_n_1,
      CO(1) => r_packet_size0_carry_n_2,
      CO(0) => r_packet_size0_carry_n_3,
      CYINIT => \r_packet_size_reg_n_0_[0]\,
      DI(3) => \r_packet_size_reg_n_0_[4]\,
      DI(2) => \r_packet_size_reg_n_0_[3]\,
      DI(1) => \r_packet_size_reg_n_0_[2]\,
      DI(0) => \r_packet_size_reg_n_0_[1]\,
      O(3 downto 0) => data0(4 downto 1),
      S(3) => r_packet_size0_carry_i_1_n_0,
      S(2) => r_packet_size0_carry_i_2_n_0,
      S(1) => r_packet_size0_carry_i_3_n_0,
      S(0) => r_packet_size0_carry_i_4_n_0
    );
\r_packet_size0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_packet_size0_carry_n_0,
      CO(3) => \r_packet_size0_carry__0_n_0\,
      CO(2) => \r_packet_size0_carry__0_n_1\,
      CO(1) => \r_packet_size0_carry__0_n_2\,
      CO(0) => \r_packet_size0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \r_packet_size_reg_n_0_[8]\,
      DI(2) => \r_packet_size_reg_n_0_[7]\,
      DI(1) => \r_packet_size_reg_n_0_[6]\,
      DI(0) => \r_packet_size_reg_n_0_[5]\,
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \r_packet_size0_carry__0_i_1_n_0\,
      S(2) => \r_packet_size0_carry__0_i_2_n_0\,
      S(1) => \r_packet_size0_carry__0_i_3_n_0\,
      S(0) => \r_packet_size0_carry__0_i_4_n_0\
    );
\r_packet_size0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[8]\,
      O => \r_packet_size0_carry__0_i_1_n_0\
    );
\r_packet_size0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[7]\,
      O => \r_packet_size0_carry__0_i_2_n_0\
    );
\r_packet_size0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[6]\,
      O => \r_packet_size0_carry__0_i_3_n_0\
    );
\r_packet_size0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[5]\,
      O => \r_packet_size0_carry__0_i_4_n_0\
    );
\r_packet_size0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_packet_size0_carry__0_n_0\,
      CO(3) => \r_packet_size0_carry__1_n_0\,
      CO(2) => \r_packet_size0_carry__1_n_1\,
      CO(1) => \r_packet_size0_carry__1_n_2\,
      CO(0) => \r_packet_size0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \r_packet_size_reg_n_0_[12]\,
      DI(2) => \r_packet_size_reg_n_0_[11]\,
      DI(1) => \r_packet_size_reg_n_0_[10]\,
      DI(0) => \r_packet_size_reg_n_0_[9]\,
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \r_packet_size0_carry__1_i_1_n_0\,
      S(2) => \r_packet_size0_carry__1_i_2_n_0\,
      S(1) => \r_packet_size0_carry__1_i_3_n_0\,
      S(0) => \r_packet_size0_carry__1_i_4_n_0\
    );
\r_packet_size0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[12]\,
      O => \r_packet_size0_carry__1_i_1_n_0\
    );
\r_packet_size0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[11]\,
      O => \r_packet_size0_carry__1_i_2_n_0\
    );
\r_packet_size0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[10]\,
      O => \r_packet_size0_carry__1_i_3_n_0\
    );
\r_packet_size0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[9]\,
      O => \r_packet_size0_carry__1_i_4_n_0\
    );
\r_packet_size0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_packet_size0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_r_packet_size0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_packet_size0_carry__2_n_2\,
      CO(0) => \r_packet_size0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \r_packet_size_reg_n_0_[14]\,
      DI(0) => \r_packet_size_reg_n_0_[13]\,
      O(3) => \NLW_r_packet_size0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(15 downto 13),
      S(3) => '0',
      S(2) => \r_packet_size0_carry__2_i_1_n_0\,
      S(1) => \r_packet_size0_carry__2_i_2_n_0\,
      S(0) => \r_packet_size0_carry__2_i_3_n_0\
    );
\r_packet_size0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[15]\,
      O => \r_packet_size0_carry__2_i_1_n_0\
    );
\r_packet_size0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[14]\,
      O => \r_packet_size0_carry__2_i_2_n_0\
    );
\r_packet_size0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[13]\,
      O => \r_packet_size0_carry__2_i_3_n_0\
    );
r_packet_size0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[4]\,
      O => r_packet_size0_carry_i_1_n_0
    );
r_packet_size0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[3]\,
      O => r_packet_size0_carry_i_2_n_0
    );
r_packet_size0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[2]\,
      O => r_packet_size0_carry_i_3_n_0
    );
r_packet_size0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[1]\,
      O => r_packet_size0_carry_i_4_n_0
    );
\r_packet_size[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[0]\,
      I1 => \r_packet_size[15]_i_3_n_0\,
      I2 => r_core_state(0),
      I3 => r_core_state(2),
      O => \r_packet_size[0]_i_1_n_0\
    );
\r_packet_size[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => data0(10),
      I1 => \r_packet_size[15]_i_3_n_0\,
      I2 => r_core_state(0),
      I3 => r_core_state(2),
      I4 => in26(10),
      O => r_packet_size(10)
    );
\r_packet_size[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => data0(11),
      I1 => \r_packet_size[15]_i_3_n_0\,
      I2 => r_core_state(0),
      I3 => r_core_state(2),
      I4 => in26(11),
      O => r_packet_size(11)
    );
\r_packet_size[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => data0(12),
      I1 => \r_packet_size[15]_i_3_n_0\,
      I2 => r_core_state(0),
      I3 => r_core_state(2),
      I4 => in26(12),
      O => r_packet_size(12)
    );
\r_packet_size[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => data0(13),
      I1 => \r_packet_size[15]_i_3_n_0\,
      I2 => r_core_state(0),
      I3 => r_core_state(2),
      I4 => in26(13),
      O => r_packet_size(13)
    );
\r_packet_size[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => data0(14),
      I1 => \r_packet_size[15]_i_3_n_0\,
      I2 => r_core_state(0),
      I3 => r_core_state(2),
      I4 => in26(14),
      O => r_packet_size(14)
    );
\r_packet_size[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE33EE03EE30EE00"
    )
        port map (
      I0 => \FSM_sequential_r_core_state[1]_i_2_n_0\,
      I1 => r_core_state(2),
      I2 => r_core_state(0),
      I3 => r_core_state(1),
      I4 => rx_mic_TVALID,
      I5 => tx_fifo_TREADY,
      O => r_packet_size_1
    );
\r_packet_size[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => data0(15),
      I1 => \r_packet_size[15]_i_3_n_0\,
      I2 => r_core_state(0),
      I3 => r_core_state(2),
      I4 => in26(15),
      O => r_packet_size(15)
    );
\r_packet_size[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => r_tx_fifo_tlast_i_2_n_0,
      I1 => r_tx_fifo_tlast_i_3_n_0,
      I2 => r_core_state(1),
      I3 => \r_packet_size_reg_n_0_[0]\,
      O => \r_packet_size[15]_i_3_n_0\
    );
\r_packet_size[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => data0(1),
      I1 => \r_packet_size[15]_i_3_n_0\,
      I2 => r_core_state(0),
      I3 => r_core_state(2),
      I4 => in26(1),
      O => r_packet_size(1)
    );
\r_packet_size[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => data0(2),
      I1 => \r_packet_size[15]_i_3_n_0\,
      I2 => r_core_state(0),
      I3 => r_core_state(2),
      I4 => in26(2),
      O => r_packet_size(2)
    );
\r_packet_size[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => data0(3),
      I1 => \r_packet_size[15]_i_3_n_0\,
      I2 => r_core_state(0),
      I3 => r_core_state(2),
      I4 => in26(3),
      O => r_packet_size(3)
    );
\r_packet_size[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => data0(4),
      I1 => \r_packet_size[15]_i_3_n_0\,
      I2 => r_core_state(0),
      I3 => r_core_state(2),
      I4 => in26(4),
      O => r_packet_size(4)
    );
\r_packet_size[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => data0(5),
      I1 => \r_packet_size[15]_i_3_n_0\,
      I2 => r_core_state(0),
      I3 => r_core_state(2),
      I4 => in26(5),
      O => r_packet_size(5)
    );
\r_packet_size[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => data0(6),
      I1 => \r_packet_size[15]_i_3_n_0\,
      I2 => r_core_state(0),
      I3 => r_core_state(2),
      I4 => in26(6),
      O => r_packet_size(6)
    );
\r_packet_size[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => data0(7),
      I1 => \r_packet_size[15]_i_3_n_0\,
      I2 => r_core_state(0),
      I3 => r_core_state(2),
      I4 => in26(7),
      O => r_packet_size(7)
    );
\r_packet_size[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => data0(8),
      I1 => \r_packet_size[15]_i_3_n_0\,
      I2 => r_core_state(0),
      I3 => r_core_state(2),
      I4 => in26(8),
      O => r_packet_size(8)
    );
\r_packet_size[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF80008"
    )
        port map (
      I0 => data0(9),
      I1 => \r_packet_size[15]_i_3_n_0\,
      I2 => r_core_state(0),
      I3 => r_core_state(2),
      I4 => in26(9),
      O => r_packet_size(9)
    );
\r_packet_size_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_packet_size_1,
      D => \r_packet_size[0]_i_1_n_0\,
      Q => \r_packet_size_reg_n_0_[0]\,
      R => w_areset
    );
\r_packet_size_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_packet_size_1,
      D => r_packet_size(10),
      Q => \r_packet_size_reg_n_0_[10]\,
      R => w_areset
    );
\r_packet_size_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_packet_size_1,
      D => r_packet_size(11),
      Q => \r_packet_size_reg_n_0_[11]\,
      R => w_areset
    );
\r_packet_size_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_packet_size_1,
      D => r_packet_size(12),
      Q => \r_packet_size_reg_n_0_[12]\,
      R => w_areset
    );
\r_packet_size_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_packet_size_reg[8]_i_2_n_0\,
      CO(3) => \r_packet_size_reg[12]_i_2_n_0\,
      CO(2) => \r_packet_size_reg[12]_i_2_n_1\,
      CO(1) => \r_packet_size_reg[12]_i_2_n_2\,
      CO(0) => \r_packet_size_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in26(12 downto 9),
      S(3) => \r_packet_size_reg_n_0_[12]\,
      S(2) => \r_packet_size_reg_n_0_[11]\,
      S(1) => \r_packet_size_reg_n_0_[10]\,
      S(0) => \r_packet_size_reg_n_0_[9]\
    );
\r_packet_size_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_packet_size_1,
      D => r_packet_size(13),
      Q => \r_packet_size_reg_n_0_[13]\,
      R => w_areset
    );
\r_packet_size_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_packet_size_1,
      D => r_packet_size(14),
      Q => \r_packet_size_reg_n_0_[14]\,
      R => w_areset
    );
\r_packet_size_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_packet_size_1,
      D => r_packet_size(15),
      Q => \r_packet_size_reg_n_0_[15]\,
      R => w_areset
    );
\r_packet_size_reg[15]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_packet_size_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_r_packet_size_reg[15]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_packet_size_reg[15]_i_4_n_2\,
      CO(0) => \r_packet_size_reg[15]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_r_packet_size_reg[15]_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => in26(15 downto 13),
      S(3) => '0',
      S(2) => \r_packet_size_reg_n_0_[15]\,
      S(1) => \r_packet_size_reg_n_0_[14]\,
      S(0) => \r_packet_size_reg_n_0_[13]\
    );
\r_packet_size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_packet_size_1,
      D => r_packet_size(1),
      Q => \r_packet_size_reg_n_0_[1]\,
      R => w_areset
    );
\r_packet_size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_packet_size_1,
      D => r_packet_size(2),
      Q => \r_packet_size_reg_n_0_[2]\,
      R => w_areset
    );
\r_packet_size_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_packet_size_1,
      D => r_packet_size(3),
      Q => \r_packet_size_reg_n_0_[3]\,
      R => w_areset
    );
\r_packet_size_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_packet_size_1,
      D => r_packet_size(4),
      Q => \r_packet_size_reg_n_0_[4]\,
      R => w_areset
    );
\r_packet_size_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_packet_size_reg[4]_i_2_n_0\,
      CO(2) => \r_packet_size_reg[4]_i_2_n_1\,
      CO(1) => \r_packet_size_reg[4]_i_2_n_2\,
      CO(0) => \r_packet_size_reg[4]_i_2_n_3\,
      CYINIT => \r_packet_size_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in26(4 downto 1),
      S(3) => \r_packet_size_reg_n_0_[4]\,
      S(2) => \r_packet_size_reg_n_0_[3]\,
      S(1) => \r_packet_size_reg_n_0_[2]\,
      S(0) => \r_packet_size_reg_n_0_[1]\
    );
\r_packet_size_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_packet_size_1,
      D => r_packet_size(5),
      Q => \r_packet_size_reg_n_0_[5]\,
      R => w_areset
    );
\r_packet_size_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_packet_size_1,
      D => r_packet_size(6),
      Q => \r_packet_size_reg_n_0_[6]\,
      R => w_areset
    );
\r_packet_size_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_packet_size_1,
      D => r_packet_size(7),
      Q => \r_packet_size_reg_n_0_[7]\,
      R => w_areset
    );
\r_packet_size_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_packet_size_1,
      D => r_packet_size(8),
      Q => \r_packet_size_reg_n_0_[8]\,
      R => w_areset
    );
\r_packet_size_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_packet_size_reg[4]_i_2_n_0\,
      CO(3) => \r_packet_size_reg[8]_i_2_n_0\,
      CO(2) => \r_packet_size_reg[8]_i_2_n_1\,
      CO(1) => \r_packet_size_reg[8]_i_2_n_2\,
      CO(0) => \r_packet_size_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in26(8 downto 5),
      S(3) => \r_packet_size_reg_n_0_[8]\,
      S(2) => \r_packet_size_reg_n_0_[7]\,
      S(1) => \r_packet_size_reg_n_0_[6]\,
      S(0) => \r_packet_size_reg_n_0_[5]\
    );
\r_packet_size_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_packet_size_1,
      D => r_packet_size(9),
      Q => \r_packet_size_reg_n_0_[9]\,
      R => w_areset
    );
\r_rx_mic_tdata_ls_byte[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_mic_TDATA(0),
      I1 => r_core_state(2),
      O => r_rx_mic_tdata_ls_byte(0)
    );
\r_rx_mic_tdata_ls_byte[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_mic_TDATA(1),
      I1 => r_core_state(2),
      O => r_rx_mic_tdata_ls_byte(1)
    );
\r_rx_mic_tdata_ls_byte[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_mic_TDATA(2),
      I1 => r_core_state(2),
      O => r_rx_mic_tdata_ls_byte(2)
    );
\r_rx_mic_tdata_ls_byte[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_mic_TDATA(3),
      I1 => r_core_state(2),
      O => r_rx_mic_tdata_ls_byte(3)
    );
\r_rx_mic_tdata_ls_byte[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_mic_TDATA(4),
      I1 => r_core_state(2),
      O => r_rx_mic_tdata_ls_byte(4)
    );
\r_rx_mic_tdata_ls_byte[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_mic_TDATA(5),
      I1 => r_core_state(2),
      O => r_rx_mic_tdata_ls_byte(5)
    );
\r_rx_mic_tdata_ls_byte[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_mic_TDATA(6),
      I1 => r_core_state(2),
      O => r_rx_mic_tdata_ls_byte(6)
    );
\r_rx_mic_tdata_ls_byte[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A400"
    )
        port map (
      I0 => r_core_state(2),
      I1 => rx_mic_TVALID,
      I2 => r_core_state(1),
      I3 => r_core_state(0),
      O => \r_rx_mic_tdata_ls_byte[7]_i_1_n_0\
    );
\r_rx_mic_tdata_ls_byte[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_mic_TDATA(7),
      I1 => r_core_state(2),
      O => r_rx_mic_tdata_ls_byte(7)
    );
\r_rx_mic_tdata_ls_byte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_rx_mic_tdata_ls_byte[7]_i_1_n_0\,
      D => r_rx_mic_tdata_ls_byte(0),
      Q => \r_rx_mic_tdata_ls_byte_reg_n_0_[0]\,
      R => w_areset
    );
\r_rx_mic_tdata_ls_byte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_rx_mic_tdata_ls_byte[7]_i_1_n_0\,
      D => r_rx_mic_tdata_ls_byte(1),
      Q => \r_rx_mic_tdata_ls_byte_reg_n_0_[1]\,
      R => w_areset
    );
\r_rx_mic_tdata_ls_byte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_rx_mic_tdata_ls_byte[7]_i_1_n_0\,
      D => r_rx_mic_tdata_ls_byte(2),
      Q => \r_rx_mic_tdata_ls_byte_reg_n_0_[2]\,
      R => w_areset
    );
\r_rx_mic_tdata_ls_byte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_rx_mic_tdata_ls_byte[7]_i_1_n_0\,
      D => r_rx_mic_tdata_ls_byte(3),
      Q => \r_rx_mic_tdata_ls_byte_reg_n_0_[3]\,
      R => w_areset
    );
\r_rx_mic_tdata_ls_byte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_rx_mic_tdata_ls_byte[7]_i_1_n_0\,
      D => r_rx_mic_tdata_ls_byte(4),
      Q => \r_rx_mic_tdata_ls_byte_reg_n_0_[4]\,
      R => w_areset
    );
\r_rx_mic_tdata_ls_byte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_rx_mic_tdata_ls_byte[7]_i_1_n_0\,
      D => r_rx_mic_tdata_ls_byte(5),
      Q => \r_rx_mic_tdata_ls_byte_reg_n_0_[5]\,
      R => w_areset
    );
\r_rx_mic_tdata_ls_byte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_rx_mic_tdata_ls_byte[7]_i_1_n_0\,
      D => r_rx_mic_tdata_ls_byte(6),
      Q => \r_rx_mic_tdata_ls_byte_reg_n_0_[6]\,
      R => w_areset
    );
\r_rx_mic_tdata_ls_byte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_rx_mic_tdata_ls_byte[7]_i_1_n_0\,
      D => r_rx_mic_tdata_ls_byte(7),
      Q => \r_rx_mic_tdata_ls_byte_reg_n_0_[7]\,
      R => w_areset
    );
\r_src_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_tx_fifo_tdata[7]_i_4_n_0\,
      I1 => r_core_state(2),
      O => \r_src_addr[1]_i_1_n_0\
    );
\r_src_addr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_core_state(0),
      I1 => \r_tx_fifo_tdata[7]_i_4_n_0\,
      O => \r_src_addr[24]_i_1_n_0\
    );
\r_src_addr[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => r_src_addr(25),
      I1 => \r_tx_fifo_tdata[7]_i_4_n_0\,
      I2 => r_core_state(0),
      O => r_src_addr(28)
    );
\r_src_addr[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \r_src_addr_reg_n_0_[25]\,
      I1 => \r_tx_fifo_tdata[7]_i_4_n_0\,
      I2 => r_core_state(0),
      O => r_src_addr(33)
    );
\r_src_addr[44]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20002C0020002000"
    )
        port map (
      I0 => r_core_state(0),
      I1 => r_core_state(2),
      I2 => r_core_state(1),
      I3 => tx_fifo_TREADY,
      I4 => p_0_in(0),
      I5 => r_dest_addr(2),
      O => r_src_addr_2
    );
\r_src_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_src_addr_2,
      D => r_src_addr(17),
      Q => r_src_addr(25),
      R => w_areset
    );
\r_src_addr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => i_clk,
      CE => r_src_addr_2,
      D => \r_src_addr[1]_i_1_n_0\,
      Q => r_src_addr(9),
      S => w_areset
    );
\r_src_addr_reg[24]\: unisim.vcomponents.FDSE
     port map (
      C => i_clk,
      CE => r_src_addr_2,
      D => \r_src_addr[24]_i_1_n_0\,
      Q => r_src_addr(32),
      S => w_areset
    );
\r_src_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_src_addr_2,
      D => r_src_addr(25),
      Q => \r_src_addr_reg_n_0_[25]\,
      R => w_areset
    );
\r_src_addr_reg[28]\: unisim.vcomponents.FDSE
     port map (
      C => i_clk,
      CE => r_src_addr_2,
      D => r_src_addr(28),
      Q => r_src_addr(36),
      S => w_areset
    );
\r_src_addr_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_src_addr_2,
      D => r_src_addr(32),
      Q => r_src_addr(40),
      R => w_areset
    );
\r_src_addr_reg[33]\: unisim.vcomponents.FDSE
     port map (
      C => i_clk,
      CE => r_src_addr_2,
      D => r_src_addr(33),
      Q => r_src_addr(41),
      S => w_areset
    );
\r_src_addr_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_src_addr_2,
      D => r_src_addr(36),
      Q => r_src_addr(44),
      R => w_areset
    );
\r_src_addr_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_src_addr_2,
      D => r_src_addr(40),
      Q => \r_src_addr_reg_n_0_[40]\,
      R => w_areset
    );
\r_src_addr_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_src_addr_2,
      D => r_src_addr(41),
      Q => \r_src_addr_reg_n_0_[41]\,
      R => w_areset
    );
\r_src_addr_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_src_addr_2,
      D => r_src_addr(44),
      Q => \r_src_addr_reg_n_0_[44]\,
      R => w_areset
    );
\r_src_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_src_addr_2,
      D => r_src_addr(9),
      Q => r_src_addr(17),
      R => w_areset
    );
r_tlast_marker_counter_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => r_core_state(0),
      I1 => r_core_state(1),
      I2 => r_core_state(2),
      I3 => r_tlast_marker_counter_reg_n_0,
      O => r_tlast_marker_counter_i_1_n_0
    );
r_tlast_marker_counter_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => r_tlast_marker_counter_i_1_n_0,
      Q => r_tlast_marker_counter_reg_n_0,
      R => w_areset
    );
r_tlast_received_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rx_mic_TLAST,
      I1 => r_core_state(2),
      O => r_tlast_received_i_1_n_0
    );
r_tlast_received_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => \r_rx_mic_tdata_ls_byte[7]_i_1_n_0\,
      D => r_tlast_received_i_1_n_0,
      Q => r_tlast_received_reg_n_0,
      R => w_areset
    );
\r_tx_fifo_tdata[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \r_byte_count_reg_n_0_[8]\,
      I1 => \r_src_addr_reg_n_0_[40]\,
      I2 => r_core_state(0),
      I3 => \r_tx_fifo_tdata[7]_i_4_n_0\,
      O => \r_tx_fifo_tdata[0]_i_2_n_0\
    );
\r_tx_fifo_tdata[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => r_dest_addr(40),
      I1 => \r_tx_fifo_tdata[2]_i_2_n_0\,
      I2 => \r_src_addr_reg_n_0_[41]\,
      O => \r_tx_fifo_tdata[1]_i_2_n_0\
    );
\r_tx_fifo_tdata[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFD5"
    )
        port map (
      I0 => \r_dest_addr[2]_i_2_n_0\,
      I1 => r_core_state(0),
      I2 => r_core_state(2),
      I3 => r_core_state(1),
      O => \r_tx_fifo_tdata[2]_i_2_n_0\
    );
\r_tx_fifo_tdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEFFFEEEFEAAFE"
    )
        port map (
      I0 => \r_tx_fifo_tdata[7]_i_8_n_0\,
      I1 => \r_byte_count_reg_n_0_[11]\,
      I2 => \r_tx_fifo_tdata[4]_i_4_n_0\,
      I3 => r_core_state(0),
      I4 => \r_tx_fifo_tdata[7]_i_4_n_0\,
      I5 => r_src_addr(40),
      O => \r_tx_fifo_tdata[3]_i_2_n_0\
    );
\r_tx_fifo_tdata[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A88"
    )
        port map (
      I0 => r_core_state(2),
      I1 => r_dest_addr(40),
      I2 => \r_tx_fifo_tdata[2]_i_2_n_0\,
      I3 => r_src_addr(40),
      O => \r_tx_fifo_tdata[3]_i_3_n_0\
    );
\r_tx_fifo_tdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEFFFEEEFEAAFE"
    )
        port map (
      I0 => \r_tx_fifo_tdata[7]_i_8_n_0\,
      I1 => \r_byte_count_reg_n_0_[12]\,
      I2 => \r_tx_fifo_tdata[4]_i_4_n_0\,
      I3 => r_core_state(0),
      I4 => \r_tx_fifo_tdata[7]_i_4_n_0\,
      I5 => \r_src_addr_reg_n_0_[44]\,
      O => \r_tx_fifo_tdata[4]_i_2_n_0\
    );
\r_tx_fifo_tdata[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => r_core_state(2),
      I1 => \r_src_addr_reg_n_0_[44]\,
      I2 => \r_tx_fifo_tdata[2]_i_2_n_0\,
      I3 => p_0_in(0),
      O => \r_tx_fifo_tdata[4]_i_3_n_0\
    );
\r_tx_fifo_tdata[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \r_tx_fifo_tdata[7]_i_9_n_0\,
      I1 => \r_tx_fifo_tdata[7]_i_10_n_0\,
      I2 => \r_tx_fifo_tdata[7]_i_11_n_0\,
      I3 => \r_tx_fifo_tdata[7]_i_12_n_0\,
      O => \r_tx_fifo_tdata[4]_i_4_n_0\
    );
\r_tx_fifo_tdata[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => r_core_state(2),
      I1 => \r_src_addr_reg_n_0_[40]\,
      I2 => \r_tx_fifo_tdata[2]_i_2_n_0\,
      I3 => p_0_in(0),
      O => \r_tx_fifo_tdata[5]_i_2_n_0\
    );
\r_tx_fifo_tdata[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \r_byte_count_reg_n_0_[13]\,
      I1 => \r_src_addr_reg_n_0_[40]\,
      I2 => r_core_state(0),
      I3 => \r_tx_fifo_tdata[7]_i_4_n_0\,
      O => \r_tx_fifo_tdata[5]_i_3_n_0\
    );
\r_tx_fifo_tdata[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \r_tx_fifo_tdata[7]_i_5_n_0\,
      I1 => \r_src_addr_reg_n_0_[40]\,
      I2 => r_core_state(0),
      O => \r_tx_fifo_tdata[5]_i_4_n_0\
    );
\r_tx_fifo_tdata[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \r_byte_count_reg_n_0_[2]\,
      I1 => \r_byte_count_reg_n_0_[1]\,
      I2 => \r_byte_count_reg_n_0_[14]\,
      I3 => \r_byte_count_reg_n_0_[15]\,
      O => \r_tx_fifo_tdata[7]_i_10_n_0\
    );
\r_tx_fifo_tdata[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \r_byte_count_reg_n_0_[7]\,
      I1 => \r_byte_count_reg_n_0_[4]\,
      I2 => \r_byte_count_reg_n_0_[3]\,
      I3 => \r_byte_count_reg_n_0_[0]\,
      O => \r_tx_fifo_tdata[7]_i_11_n_0\
    );
\r_tx_fifo_tdata[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \r_byte_count_reg_n_0_[11]\,
      I1 => \r_byte_count_reg_n_0_[8]\,
      I2 => \r_byte_count_reg_n_0_[13]\,
      I3 => \r_byte_count_reg_n_0_[12]\,
      O => \r_tx_fifo_tdata[7]_i_12_n_0\
    );
\r_tx_fifo_tdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0AE2"
    )
        port map (
      I0 => tx_fifo_TREADY,
      I1 => r_core_state(0),
      I2 => r_core_state(2),
      I3 => r_core_state(1),
      O => r_tx_fifo_tdata
    );
\r_tx_fifo_tdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => r_src_addr(17),
      I1 => \r_src_addr_reg_n_0_[40]\,
      I2 => r_src_addr(32),
      I3 => \r_src_addr_reg_n_0_[41]\,
      I4 => \r_tx_fifo_tdata[7]_i_6_n_0\,
      I5 => \r_tx_fifo_tdata[7]_i_7_n_0\,
      O => \r_tx_fifo_tdata[7]_i_4_n_0\
    );
\r_tx_fifo_tdata[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAABA"
    )
        port map (
      I0 => \r_tx_fifo_tdata[7]_i_8_n_0\,
      I1 => \r_tx_fifo_tdata[7]_i_9_n_0\,
      I2 => \r_tx_fifo_tdata[7]_i_10_n_0\,
      I3 => \r_tx_fifo_tdata[7]_i_11_n_0\,
      I4 => \r_tx_fifo_tdata[7]_i_12_n_0\,
      I5 => r_core_state(0),
      O => \r_tx_fifo_tdata[7]_i_5_n_0\
    );
\r_tx_fifo_tdata[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_src_addr(25),
      I1 => r_src_addr(36),
      I2 => r_src_addr(41),
      I3 => \r_src_addr_reg_n_0_[25]\,
      O => \r_tx_fifo_tdata[7]_i_6_n_0\
    );
\r_tx_fifo_tdata[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \r_src_addr_reg_n_0_[44]\,
      I1 => r_src_addr(40),
      I2 => r_src_addr(44),
      I3 => r_src_addr(9),
      O => \r_tx_fifo_tdata[7]_i_7_n_0\
    );
\r_tx_fifo_tdata[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => r_core_state(1),
      I1 => r_core_state(2),
      I2 => r_core_state(0),
      O => \r_tx_fifo_tdata[7]_i_8_n_0\
    );
\r_tx_fifo_tdata[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \r_byte_count_reg_n_0_[6]\,
      I1 => \r_byte_count_reg_n_0_[5]\,
      I2 => \r_byte_count_reg_n_0_[10]\,
      I3 => \r_byte_count_reg_n_0_[9]\,
      O => \r_tx_fifo_tdata[7]_i_9_n_0\
    );
\r_tx_fifo_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_tx_fifo_tdata,
      D => mem_n_8,
      Q => tx_fifo_TDATA(0),
      R => w_areset
    );
\r_tx_fifo_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_tx_fifo_tdata,
      D => mem_n_7,
      Q => tx_fifo_TDATA(1),
      R => w_areset
    );
\r_tx_fifo_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_tx_fifo_tdata,
      D => mem_n_6,
      Q => tx_fifo_TDATA(2),
      R => w_areset
    );
\r_tx_fifo_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_tx_fifo_tdata,
      D => mem_n_5,
      Q => tx_fifo_TDATA(3),
      R => w_areset
    );
\r_tx_fifo_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_tx_fifo_tdata,
      D => mem_n_4,
      Q => tx_fifo_TDATA(4),
      R => w_areset
    );
\r_tx_fifo_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_tx_fifo_tdata,
      D => mem_n_3,
      Q => tx_fifo_TDATA(5),
      R => w_areset
    );
\r_tx_fifo_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_tx_fifo_tdata,
      D => mem_n_2,
      Q => tx_fifo_TDATA(6),
      R => w_areset
    );
\r_tx_fifo_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => r_tx_fifo_tdata,
      D => mem_n_1,
      Q => tx_fifo_TDATA(7),
      R => w_areset
    );
r_tx_fifo_tlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0800"
    )
        port map (
      I0 => r_tx_fifo_tlast_i_2_n_0,
      I1 => \r_packet_size_reg_n_0_[0]\,
      I2 => r_tx_fifo_tlast_i_3_n_0,
      I3 => r_tx_fifo_tlast,
      I4 => \^r_tx_fifo_tlast_reg_0\,
      O => r_tx_fifo_tlast_i_1_n_0
    );
r_tx_fifo_tlast_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => r_tx_fifo_tlast_i_5_n_0,
      I1 => \r_packet_size_reg_n_0_[15]\,
      I2 => \r_packet_size_reg_n_0_[14]\,
      I3 => \r_packet_size_reg_n_0_[13]\,
      O => r_tx_fifo_tlast_i_2_n_0
    );
r_tx_fifo_tlast_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[4]\,
      I1 => \r_packet_size_reg_n_0_[7]\,
      I2 => \r_packet_size_reg_n_0_[5]\,
      I3 => \r_packet_size_reg_n_0_[6]\,
      I4 => \r_packet_size_reg_n_0_[2]\,
      I5 => \r_packet_size_reg_n_0_[3]\,
      O => r_tx_fifo_tlast_i_3_n_0
    );
r_tx_fifo_tlast_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => r_core_state(2),
      I1 => r_core_state(1),
      I2 => r_core_state(0),
      I3 => tx_fifo_TREADY,
      O => r_tx_fifo_tlast
    );
r_tx_fifo_tlast_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \r_packet_size_reg_n_0_[12]\,
      I1 => \r_packet_size_reg_n_0_[11]\,
      I2 => \r_packet_size_reg_n_0_[1]\,
      I3 => \r_packet_size_reg_n_0_[10]\,
      I4 => \r_packet_size_reg_n_0_[8]\,
      I5 => \r_packet_size_reg_n_0_[9]\,
      O => r_tx_fifo_tlast_i_5_n_0
    );
r_tx_fifo_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => i_clk,
      CE => '1',
      D => r_tx_fifo_tlast_i_1_n_0,
      Q => \^r_tx_fifo_tlast_reg_0\,
      R => w_areset
    );
rx_mic_TREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => r_core_state(2),
      I1 => r_core_state(0),
      I2 => r_core_state(1),
      O => \^rx_mic_tready\
    );
tx_fifo_TVALID_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => r_core_state(0),
      I1 => r_core_state(2),
      I2 => r_core_state(1),
      O => tx_fifo_TVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity canteloupe_frame_generator_cust_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of canteloupe_frame_generator_cust_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of canteloupe_frame_generator_cust_0_0 : entity is "canteloupe_frame_generator_cust_0_0,frame_generator_custom,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of canteloupe_frame_generator_cust_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of canteloupe_frame_generator_cust_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of canteloupe_frame_generator_cust_0_0 : entity is "frame_generator_custom,Vivado 2018.3.1";
end canteloupe_frame_generator_cust_0_0;

architecture STRUCTURE of canteloupe_frame_generator_cust_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_aresetn : signal is "xilinx.com:signal:reset:1.0 i_aresetn RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_aresetn : signal is "XIL_INTERFACENAME i_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute X_INTERFACE_PARAMETER of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_aresetn, ASSOCIATED_BUSIF rx_mic:tx_fifo, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rx_mic_TLAST : signal is "xilinx.com:interface:axis:1.0 rx_mic TLAST";
  attribute X_INTERFACE_PARAMETER of rx_mic_TLAST : signal is "XIL_INTERFACENAME rx_mic, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rx_mic_TREADY : signal is "xilinx.com:interface:axis:1.0 rx_mic TREADY";
  attribute X_INTERFACE_INFO of rx_mic_TVALID : signal is "xilinx.com:interface:axis:1.0 rx_mic TVALID";
  attribute X_INTERFACE_INFO of tx_fifo_TLAST : signal is "xilinx.com:interface:axis:1.0 tx_fifo TLAST";
  attribute X_INTERFACE_PARAMETER of tx_fifo_TLAST : signal is "XIL_INTERFACENAME tx_fifo, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tx_fifo_TREADY : signal is "xilinx.com:interface:axis:1.0 tx_fifo TREADY";
  attribute X_INTERFACE_INFO of tx_fifo_TVALID : signal is "xilinx.com:interface:axis:1.0 tx_fifo TVALID";
  attribute X_INTERFACE_INFO of rx_mic_TDATA : signal is "xilinx.com:interface:axis:1.0 rx_mic TDATA";
  attribute X_INTERFACE_INFO of tx_fifo_TDATA : signal is "xilinx.com:interface:axis:1.0 tx_fifo TDATA";
begin
inst: entity work.canteloupe_frame_generator_cust_0_0_frame_generator_custom
     port map (
      i_aresetn => i_aresetn,
      i_clk => i_clk,
      r_tx_fifo_tlast_reg_0 => tx_fifo_TLAST,
      rx_mic_TDATA(15 downto 0) => rx_mic_TDATA(15 downto 0),
      rx_mic_TLAST => rx_mic_TLAST,
      rx_mic_TREADY => rx_mic_TREADY,
      rx_mic_TVALID => rx_mic_TVALID,
      tx_fifo_TDATA(7 downto 0) => tx_fifo_TDATA(7 downto 0),
      tx_fifo_TREADY => tx_fifo_TREADY,
      tx_fifo_TVALID => tx_fifo_TVALID
    );
end STRUCTURE;
