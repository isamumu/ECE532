# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXIS_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_BITS_PER_TRANSFER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_TRANSFERS" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXIS_DATA_WIDTH { PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to update AXIS_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_DATA_WIDTH { PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to validate AXIS_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.NUM_BITS_PER_TRANSFER { PARAM_VALUE.NUM_BITS_PER_TRANSFER } {
	# Procedure called to update NUM_BITS_PER_TRANSFER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_BITS_PER_TRANSFER { PARAM_VALUE.NUM_BITS_PER_TRANSFER } {
	# Procedure called to validate NUM_BITS_PER_TRANSFER
	return true
}

proc update_PARAM_VALUE.NUM_TRANSFERS { PARAM_VALUE.NUM_TRANSFERS } {
	# Procedure called to update NUM_TRANSFERS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_TRANSFERS { PARAM_VALUE.NUM_TRANSFERS } {
	# Procedure called to validate NUM_TRANSFERS
	return true
}


proc update_MODELPARAM_VALUE.AXIS_DATA_WIDTH { MODELPARAM_VALUE.AXIS_DATA_WIDTH PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_DATA_WIDTH}] ${MODELPARAM_VALUE.AXIS_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.NUM_TRANSFERS { MODELPARAM_VALUE.NUM_TRANSFERS PARAM_VALUE.NUM_TRANSFERS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_TRANSFERS}] ${MODELPARAM_VALUE.NUM_TRANSFERS}
}

proc update_MODELPARAM_VALUE.NUM_BITS_PER_TRANSFER { MODELPARAM_VALUE.NUM_BITS_PER_TRANSFER PARAM_VALUE.NUM_BITS_PER_TRANSFER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_BITS_PER_TRANSFER}] ${MODELPARAM_VALUE.NUM_BITS_PER_TRANSFER}
}

