# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "VALUE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "COUNTER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_VALUES_PER_TRANSFER" -parent ${Page_0}


}

proc update_PARAM_VALUE.BLOCK_SIZE { PARAM_VALUE.BLOCK_SIZE } {
	# Procedure called to update BLOCK_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BLOCK_SIZE { PARAM_VALUE.BLOCK_SIZE } {
	# Procedure called to validate BLOCK_SIZE
	return true
}

proc update_PARAM_VALUE.COUNTER_WIDTH { PARAM_VALUE.COUNTER_WIDTH } {
	# Procedure called to update COUNTER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COUNTER_WIDTH { PARAM_VALUE.COUNTER_WIDTH } {
	# Procedure called to validate COUNTER_WIDTH
	return true
}

proc update_PARAM_VALUE.INPUT_AXIS_DATA_WIDTH { PARAM_VALUE.INPUT_AXIS_DATA_WIDTH } {
	# Procedure called to update INPUT_AXIS_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INPUT_AXIS_DATA_WIDTH { PARAM_VALUE.INPUT_AXIS_DATA_WIDTH } {
	# Procedure called to validate INPUT_AXIS_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.NUM_VALUES_PER_TRANSFER { PARAM_VALUE.NUM_VALUES_PER_TRANSFER } {
	# Procedure called to update NUM_VALUES_PER_TRANSFER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_VALUES_PER_TRANSFER { PARAM_VALUE.NUM_VALUES_PER_TRANSFER } {
	# Procedure called to validate NUM_VALUES_PER_TRANSFER
	return true
}

proc update_PARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH { PARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH } {
	# Procedure called to update OUTPUT_AXIS_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH { PARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH } {
	# Procedure called to validate OUTPUT_AXIS_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.TRANSFER_WIDTH { PARAM_VALUE.TRANSFER_WIDTH } {
	# Procedure called to update TRANSFER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TRANSFER_WIDTH { PARAM_VALUE.TRANSFER_WIDTH } {
	# Procedure called to validate TRANSFER_WIDTH
	return true
}

proc update_PARAM_VALUE.VALUE_WIDTH { PARAM_VALUE.VALUE_WIDTH } {
	# Procedure called to update VALUE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VALUE_WIDTH { PARAM_VALUE.VALUE_WIDTH } {
	# Procedure called to validate VALUE_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.BLOCK_SIZE { MODELPARAM_VALUE.BLOCK_SIZE PARAM_VALUE.BLOCK_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BLOCK_SIZE}] ${MODELPARAM_VALUE.BLOCK_SIZE}
}

proc update_MODELPARAM_VALUE.VALUE_WIDTH { MODELPARAM_VALUE.VALUE_WIDTH PARAM_VALUE.VALUE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VALUE_WIDTH}] ${MODELPARAM_VALUE.VALUE_WIDTH}
}

proc update_MODELPARAM_VALUE.COUNTER_WIDTH { MODELPARAM_VALUE.COUNTER_WIDTH PARAM_VALUE.COUNTER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COUNTER_WIDTH}] ${MODELPARAM_VALUE.COUNTER_WIDTH}
}

proc update_MODELPARAM_VALUE.NUM_VALUES_PER_TRANSFER { MODELPARAM_VALUE.NUM_VALUES_PER_TRANSFER PARAM_VALUE.NUM_VALUES_PER_TRANSFER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_VALUES_PER_TRANSFER}] ${MODELPARAM_VALUE.NUM_VALUES_PER_TRANSFER}
}

proc update_MODELPARAM_VALUE.TRANSFER_WIDTH { MODELPARAM_VALUE.TRANSFER_WIDTH PARAM_VALUE.TRANSFER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TRANSFER_WIDTH}] ${MODELPARAM_VALUE.TRANSFER_WIDTH}
}

proc update_MODELPARAM_VALUE.INPUT_AXIS_DATA_WIDTH { MODELPARAM_VALUE.INPUT_AXIS_DATA_WIDTH PARAM_VALUE.INPUT_AXIS_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INPUT_AXIS_DATA_WIDTH}] ${MODELPARAM_VALUE.INPUT_AXIS_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH { MODELPARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH PARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH}] ${MODELPARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH}
}

