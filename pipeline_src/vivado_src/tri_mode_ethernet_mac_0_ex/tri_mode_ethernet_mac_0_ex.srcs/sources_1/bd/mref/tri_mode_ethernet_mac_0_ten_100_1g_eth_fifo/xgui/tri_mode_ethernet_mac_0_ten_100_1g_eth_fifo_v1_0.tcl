# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "FULL_DUPLEX_ONLY" -parent ${Page_0}


}

proc update_PARAM_VALUE.FULL_DUPLEX_ONLY { PARAM_VALUE.FULL_DUPLEX_ONLY } {
	# Procedure called to update FULL_DUPLEX_ONLY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FULL_DUPLEX_ONLY { PARAM_VALUE.FULL_DUPLEX_ONLY } {
	# Procedure called to validate FULL_DUPLEX_ONLY
	return true
}


proc update_MODELPARAM_VALUE.FULL_DUPLEX_ONLY { MODELPARAM_VALUE.FULL_DUPLEX_ONLY PARAM_VALUE.FULL_DUPLEX_ONLY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FULL_DUPLEX_ONLY}] ${MODELPARAM_VALUE.FULL_DUPLEX_ONLY}
}

