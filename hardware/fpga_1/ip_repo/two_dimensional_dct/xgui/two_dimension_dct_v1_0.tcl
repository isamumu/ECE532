# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXIS_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BLOCK_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SCALE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VALUE_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXIS_DATA_WIDTH { PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to update AXIS_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_DATA_WIDTH { PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to validate AXIS_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.BLOCK_SIZE { PARAM_VALUE.BLOCK_SIZE } {
	# Procedure called to update BLOCK_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BLOCK_SIZE { PARAM_VALUE.BLOCK_SIZE } {
	# Procedure called to validate BLOCK_SIZE
	return true
}

proc update_PARAM_VALUE.SCALE { PARAM_VALUE.SCALE } {
	# Procedure called to update SCALE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SCALE { PARAM_VALUE.SCALE } {
	# Procedure called to validate SCALE
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

proc update_MODELPARAM_VALUE.SCALE { MODELPARAM_VALUE.SCALE PARAM_VALUE.SCALE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SCALE}] ${MODELPARAM_VALUE.SCALE}
}

proc update_MODELPARAM_VALUE.AXIS_DATA_WIDTH { MODELPARAM_VALUE.AXIS_DATA_WIDTH PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_DATA_WIDTH}] ${MODELPARAM_VALUE.AXIS_DATA_WIDTH}
}

