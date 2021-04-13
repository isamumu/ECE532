# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CHECK_SPEED" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RESET_MAC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RUN_HALF_DUPLEX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "STARTUP" -parent ${Page_0}


}

proc update_PARAM_VALUE.CHECK_SPEED { PARAM_VALUE.CHECK_SPEED } {
	# Procedure called to update CHECK_SPEED when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHECK_SPEED { PARAM_VALUE.CHECK_SPEED } {
	# Procedure called to validate CHECK_SPEED
	return true
}

proc update_PARAM_VALUE.RESET_MAC { PARAM_VALUE.RESET_MAC } {
	# Procedure called to update RESET_MAC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RESET_MAC { PARAM_VALUE.RESET_MAC } {
	# Procedure called to validate RESET_MAC
	return true
}

proc update_PARAM_VALUE.RUN_HALF_DUPLEX { PARAM_VALUE.RUN_HALF_DUPLEX } {
	# Procedure called to update RUN_HALF_DUPLEX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RUN_HALF_DUPLEX { PARAM_VALUE.RUN_HALF_DUPLEX } {
	# Procedure called to validate RUN_HALF_DUPLEX
	return true
}

proc update_PARAM_VALUE.STARTUP { PARAM_VALUE.STARTUP } {
	# Procedure called to update STARTUP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.STARTUP { PARAM_VALUE.STARTUP } {
	# Procedure called to validate STARTUP
	return true
}


proc update_MODELPARAM_VALUE.RUN_HALF_DUPLEX { MODELPARAM_VALUE.RUN_HALF_DUPLEX PARAM_VALUE.RUN_HALF_DUPLEX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RUN_HALF_DUPLEX}] ${MODELPARAM_VALUE.RUN_HALF_DUPLEX}
}

proc update_MODELPARAM_VALUE.STARTUP { MODELPARAM_VALUE.STARTUP PARAM_VALUE.STARTUP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.STARTUP}] ${MODELPARAM_VALUE.STARTUP}
}

proc update_MODELPARAM_VALUE.RESET_MAC { MODELPARAM_VALUE.RESET_MAC PARAM_VALUE.RESET_MAC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RESET_MAC}] ${MODELPARAM_VALUE.RESET_MAC}
}

proc update_MODELPARAM_VALUE.CHECK_SPEED { MODELPARAM_VALUE.CHECK_SPEED PARAM_VALUE.CHECK_SPEED } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHECK_SPEED}] ${MODELPARAM_VALUE.CHECK_SPEED}
}

