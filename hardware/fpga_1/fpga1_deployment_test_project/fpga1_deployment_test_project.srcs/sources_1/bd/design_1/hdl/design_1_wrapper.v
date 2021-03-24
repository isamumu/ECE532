//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Mon Mar 22 20:50:22 2021
//Host        : jhai-Lenovo-ideapad-520 running 64-bit Ubuntu 20.04.2 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (sys_clock);
  input sys_clock;

  wire sys_clock;

  design_1 design_1_i
       (.sys_clock(sys_clock));
endmodule
