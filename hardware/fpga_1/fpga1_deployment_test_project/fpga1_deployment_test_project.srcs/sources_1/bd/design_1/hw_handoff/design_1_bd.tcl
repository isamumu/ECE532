
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
   set_property BOARD_PART digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set sys_clock [ create_bd_port -dir I -type clk sys_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
   CONFIG.PHASE {0.000} \
 ] $sys_clock

  # Create instance: aresetn, and set properties
  set aresetn [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 aresetn ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {151.636} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {20.000} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.USE_BOARD_FLOW {true} \
   CONFIG.USE_LOCKED {false} \
 ] $clk_wiz_0

  # Create instance: expected_output, and set properties
  set expected_output [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 expected_output ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0b111001000000000000000111111111110000110000000000000001111111111100000111111100110000010000010000} \
   CONFIG.CONST_WIDTH {96} \
 ] $expected_output

  # Create instance: fpga1_deployment_rec_0, and set properties
  set fpga1_deployment_rec_0 [ create_bd_cell -type ip -vlnv user.org:user:fpga1_deployment_receiving_block:1.0 fpga1_deployment_rec_0 ]
  set_property -dict [ list \
   CONFIG.AXIS_DATA_WIDTH {16} \
   CONFIG.NUM_BITS_PER_TRANSFER {16} \
   CONFIG.NUM_TRANSFERS {6} \
 ] $fpga1_deployment_rec_0

  # Create instance: fpga1_deployment_sou_0, and set properties
  set fpga1_deployment_sou_0 [ create_bd_cell -type ip -vlnv user.org:user:fpga1_deployment_source_block:1.0 fpga1_deployment_sou_0 ]
  set_property -dict [ list \
   CONFIG.AXIS_DATA_WIDTH {24} \
   CONFIG.NUM_BITS_PER_TRANSFER {17} \
   CONFIG.NUM_TRANSFERS {64} \
 ] $fpga1_deployment_sou_0

  # Create instance: input_packet, and set properties
  set input_packet [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 input_packet ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0b00010000000000000000011111100000000000111110000000000001111010000000000011110000000000000111011000000000001110100000000000011100100000000000111000000000000001101110000000000011011000000000000110101000000000001101000000000000011001100000000000110010000000000001100010000000000011000000000000000101111000000000001011100000000000010110100000000000101100000000000001010110000000000010101000000000000101001000000000001010000000000000010011100000000000100110000000000001001010000000000010010000000000000100011000000000001000100000000000010000100000000000100000000000000000111110000000000001111000000000000011101000000000000111000000000000001101100000000000011010000000000000110010000000000001100000000000000010111000000000000101100000000000001010100000000000010100000000000000100110000000000001001000000000000010001000000000000100000000000000000111100000000000001110000000000000011010000000000000110000000000000001011000000000000010100000000000000100100000000000001000000000000000001110000000000000011000000000000000101000000000000001000000000000000001100000000000000010000000000000000010000000} \
   CONFIG.CONST_WIDTH {1088} \
 ] $input_packet

  # Create instance: quantizer_0, and set properties
  set quantizer_0 [ create_bd_cell -type ip -vlnv user.org:user:quantizer:1.4 quantizer_0 ]

  # Create instance: run_length_encoder_0, and set properties
  set run_length_encoder_0 [ create_bd_cell -type ip -vlnv user.org:user:run_length_encoder:1.0 run_length_encoder_0 ]

  # Create instance: system_ila_0, and set properties
  set system_ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_0 ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {2} \
   CONFIG.C_NUM_MONITOR_SLOTS {6} \
   CONFIG.C_SLOT {5} \
   CONFIG.C_SLOT_0_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_1_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_2_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_3_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_4_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_5_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
 ] $system_ila_0

  # Create instance: two_dimension_dct_0, and set properties
  set two_dimension_dct_0 [ create_bd_cell -type ip -vlnv user.org:user:two_dimension_dct:1.1 two_dimension_dct_0 ]

  # Create instance: vio_0, and set properties
  set vio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 vio_0 ]
  set_property -dict [ list \
   CONFIG.C_EN_PROBE_IN_ACTIVITY {0} \
   CONFIG.C_NUM_PROBE_IN {0} \
 ] $vio_0

  # Create instance: zig_zag_0, and set properties
  set zig_zag_0 [ create_bd_cell -type ip -vlnv user.org:user:zig_zag:1.0 zig_zag_0 ]

  # Create interface connections
connect_bd_intf_net -intf_net fpga1_deployment_rec_0_o_result_axis [get_bd_intf_pins fpga1_deployment_rec_0/o_result_axis] [get_bd_intf_pins system_ila_0/SLOT_5_AXIS]
  connect_bd_intf_net -intf_net fpga1_deployment_sou_0_o_test_axis [get_bd_intf_pins fpga1_deployment_sou_0/o_test_axis] [get_bd_intf_pins two_dimension_dct_0/i_axis]
connect_bd_intf_net -intf_net [get_bd_intf_nets fpga1_deployment_sou_0_o_test_axis] [get_bd_intf_pins system_ila_0/SLOT_0_AXIS] [get_bd_intf_pins two_dimension_dct_0/i_axis]
  connect_bd_intf_net -intf_net one_dimension_dct_0_o_axis [get_bd_intf_pins fpga1_deployment_rec_0/i_test_axis] [get_bd_intf_pins run_length_encoder_0/o_axis]
connect_bd_intf_net -intf_net [get_bd_intf_nets one_dimension_dct_0_o_axis] [get_bd_intf_pins fpga1_deployment_rec_0/i_test_axis] [get_bd_intf_pins system_ila_0/SLOT_4_AXIS]
  connect_bd_intf_net -intf_net quantizer_0_o_axis [get_bd_intf_pins quantizer_0/o_axis] [get_bd_intf_pins zig_zag_0/i_axis]
connect_bd_intf_net -intf_net [get_bd_intf_nets quantizer_0_o_axis] [get_bd_intf_pins system_ila_0/SLOT_2_AXIS] [get_bd_intf_pins zig_zag_0/i_axis]
  connect_bd_intf_net -intf_net two_dimension_dct_0_o_axis [get_bd_intf_pins quantizer_0/i_axis] [get_bd_intf_pins two_dimension_dct_0/o_axis]
connect_bd_intf_net -intf_net [get_bd_intf_nets two_dimension_dct_0_o_axis] [get_bd_intf_pins quantizer_0/i_axis] [get_bd_intf_pins system_ila_0/SLOT_1_AXIS]
  connect_bd_intf_net -intf_net zig_zag_0_o_axis [get_bd_intf_pins run_length_encoder_0/i_axis] [get_bd_intf_pins zig_zag_0/o_axis]
connect_bd_intf_net -intf_net [get_bd_intf_nets zig_zag_0_o_axis] [get_bd_intf_pins run_length_encoder_0/i_axis] [get_bd_intf_pins system_ila_0/SLOT_3_AXIS]

  # Create port connections
  connect_bd_net -net aresetn_dout [get_bd_pins aresetn/dout] [get_bd_pins clk_wiz_0/resetn] [get_bd_pins fpga1_deployment_rec_0/i_aresetn] [get_bd_pins fpga1_deployment_sou_0/i_aresetn] [get_bd_pins quantizer_0/i_aresetn] [get_bd_pins run_length_encoder_0/i_aresetn] [get_bd_pins system_ila_0/resetn] [get_bd_pins two_dimension_dct_0/i_aresetn] [get_bd_pins zig_zag_0/i_aresetn]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins fpga1_deployment_rec_0/i_clk] [get_bd_pins fpga1_deployment_sou_0/i_clk] [get_bd_pins quantizer_0/i_clk] [get_bd_pins run_length_encoder_0/i_clk] [get_bd_pins system_ila_0/clk] [get_bd_pins two_dimension_dct_0/i_clk] [get_bd_pins zig_zag_0/i_clk]
  connect_bd_net -net expected_output_dout [get_bd_pins expected_output/dout] [get_bd_pins fpga1_deployment_rec_0/i_expected_packet]
  connect_bd_net -net input_packet_dout [get_bd_pins fpga1_deployment_sou_0/i_packet_to_send] [get_bd_pins input_packet/dout]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins vio_0/clk]
  connect_bd_net -net vio_0_probe_out0 [get_bd_pins fpga1_deployment_sou_0/i_enable] [get_bd_pins vio_0/probe_out0]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


