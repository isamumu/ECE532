# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DEST_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ENABLE_VLAN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MIN_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SRC_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VLAN_ID" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VLAN_PRIORITY" -parent ${Page_0}


}

proc update_PARAM_VALUE.DEST_ADDR { PARAM_VALUE.DEST_ADDR } {
	# Procedure called to update DEST_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEST_ADDR { PARAM_VALUE.DEST_ADDR } {
	# Procedure called to validate DEST_ADDR
	return true
}

proc update_PARAM_VALUE.ENABLE_VLAN { PARAM_VALUE.ENABLE_VLAN } {
	# Procedure called to update ENABLE_VLAN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ENABLE_VLAN { PARAM_VALUE.ENABLE_VLAN } {
	# Procedure called to validate ENABLE_VLAN
	return true
}

proc update_PARAM_VALUE.MAX_SIZE { PARAM_VALUE.MAX_SIZE } {
	# Procedure called to update MAX_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_SIZE { PARAM_VALUE.MAX_SIZE } {
	# Procedure called to validate MAX_SIZE
	return true
}

proc update_PARAM_VALUE.MIN_SIZE { PARAM_VALUE.MIN_SIZE } {
	# Procedure called to update MIN_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MIN_SIZE { PARAM_VALUE.MIN_SIZE } {
	# Procedure called to validate MIN_SIZE
	return true
}

proc update_PARAM_VALUE.SRC_ADDR { PARAM_VALUE.SRC_ADDR } {
	# Procedure called to update SRC_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SRC_ADDR { PARAM_VALUE.SRC_ADDR } {
	# Procedure called to validate SRC_ADDR
	return true
}

proc update_PARAM_VALUE.VLAN_ID { PARAM_VALUE.VLAN_ID } {
	# Procedure called to update VLAN_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VLAN_ID { PARAM_VALUE.VLAN_ID } {
	# Procedure called to validate VLAN_ID
	return true
}

proc update_PARAM_VALUE.VLAN_PRIORITY { PARAM_VALUE.VLAN_PRIORITY } {
	# Procedure called to update VLAN_PRIORITY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VLAN_PRIORITY { PARAM_VALUE.VLAN_PRIORITY } {
	# Procedure called to validate VLAN_PRIORITY
	return true
}


proc update_MODELPARAM_VALUE.DEST_ADDR { MODELPARAM_VALUE.DEST_ADDR PARAM_VALUE.DEST_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEST_ADDR}] ${MODELPARAM_VALUE.DEST_ADDR}
}

proc update_MODELPARAM_VALUE.SRC_ADDR { MODELPARAM_VALUE.SRC_ADDR PARAM_VALUE.SRC_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SRC_ADDR}] ${MODELPARAM_VALUE.SRC_ADDR}
}

proc update_MODELPARAM_VALUE.MAX_SIZE { MODELPARAM_VALUE.MAX_SIZE PARAM_VALUE.MAX_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_SIZE}] ${MODELPARAM_VALUE.MAX_SIZE}
}

proc update_MODELPARAM_VALUE.MIN_SIZE { MODELPARAM_VALUE.MIN_SIZE PARAM_VALUE.MIN_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MIN_SIZE}] ${MODELPARAM_VALUE.MIN_SIZE}
}

proc update_MODELPARAM_VALUE.ENABLE_VLAN { MODELPARAM_VALUE.ENABLE_VLAN PARAM_VALUE.ENABLE_VLAN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ENABLE_VLAN}] ${MODELPARAM_VALUE.ENABLE_VLAN}
}

proc update_MODELPARAM_VALUE.VLAN_ID { MODELPARAM_VALUE.VLAN_ID PARAM_VALUE.VLAN_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VLAN_ID}] ${MODELPARAM_VALUE.VLAN_ID}
}

proc update_MODELPARAM_VALUE.VLAN_PRIORITY { MODELPARAM_VALUE.VLAN_PRIORITY PARAM_VALUE.VLAN_PRIORITY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VLAN_PRIORITY}] ${MODELPARAM_VALUE.VLAN_PRIORITY}
}

