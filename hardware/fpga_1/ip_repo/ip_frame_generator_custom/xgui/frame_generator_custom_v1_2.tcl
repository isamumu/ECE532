# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "INPUT_VALUE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FIFO_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DEST_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SRC_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "VALID_THRESHOLD" -parent ${Page_0}


}

proc update_PARAM_VALUE.DEST_ADDR { PARAM_VALUE.DEST_ADDR } {
	# Procedure called to update DEST_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEST_ADDR { PARAM_VALUE.DEST_ADDR } {
	# Procedure called to validate DEST_ADDR
	return true
}

proc update_PARAM_VALUE.FIFO_WIDTH { PARAM_VALUE.FIFO_WIDTH } {
	# Procedure called to update FIFO_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIFO_WIDTH { PARAM_VALUE.FIFO_WIDTH } {
	# Procedure called to validate FIFO_WIDTH
	return true
}

proc update_PARAM_VALUE.INPUT_AXIS_DATA_WIDTH { PARAM_VALUE.INPUT_AXIS_DATA_WIDTH } {
	# Procedure called to update INPUT_AXIS_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INPUT_AXIS_DATA_WIDTH { PARAM_VALUE.INPUT_AXIS_DATA_WIDTH } {
	# Procedure called to validate INPUT_AXIS_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.INPUT_VALUE_WIDTH { PARAM_VALUE.INPUT_VALUE_WIDTH } {
	# Procedure called to update INPUT_VALUE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INPUT_VALUE_WIDTH { PARAM_VALUE.INPUT_VALUE_WIDTH } {
	# Procedure called to validate INPUT_VALUE_WIDTH
	return true
}

proc update_PARAM_VALUE.MAX_SIZE { PARAM_VALUE.MAX_SIZE } {
	# Procedure called to update MAX_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_SIZE { PARAM_VALUE.MAX_SIZE } {
	# Procedure called to validate MAX_SIZE
	return true
}

proc update_PARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH { PARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH } {
	# Procedure called to update OUTPUT_AXIS_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH { PARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH } {
	# Procedure called to validate OUTPUT_AXIS_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.SRC_ADDR { PARAM_VALUE.SRC_ADDR } {
	# Procedure called to update SRC_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SRC_ADDR { PARAM_VALUE.SRC_ADDR } {
	# Procedure called to validate SRC_ADDR
	return true
}

proc update_PARAM_VALUE.VALID_THRESHOLD { PARAM_VALUE.VALID_THRESHOLD } {
	# Procedure called to update VALID_THRESHOLD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VALID_THRESHOLD { PARAM_VALUE.VALID_THRESHOLD } {
	# Procedure called to validate VALID_THRESHOLD
	return true
}


proc update_MODELPARAM_VALUE.INPUT_VALUE_WIDTH { MODELPARAM_VALUE.INPUT_VALUE_WIDTH PARAM_VALUE.INPUT_VALUE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INPUT_VALUE_WIDTH}] ${MODELPARAM_VALUE.INPUT_VALUE_WIDTH}
}

proc update_MODELPARAM_VALUE.INPUT_AXIS_DATA_WIDTH { MODELPARAM_VALUE.INPUT_AXIS_DATA_WIDTH PARAM_VALUE.INPUT_AXIS_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INPUT_AXIS_DATA_WIDTH}] ${MODELPARAM_VALUE.INPUT_AXIS_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.FIFO_WIDTH { MODELPARAM_VALUE.FIFO_WIDTH PARAM_VALUE.FIFO_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIFO_WIDTH}] ${MODELPARAM_VALUE.FIFO_WIDTH}
}

proc update_MODELPARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH { MODELPARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH PARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH}] ${MODELPARAM_VALUE.OUTPUT_AXIS_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.VALID_THRESHOLD { MODELPARAM_VALUE.VALID_THRESHOLD PARAM_VALUE.VALID_THRESHOLD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VALID_THRESHOLD}] ${MODELPARAM_VALUE.VALID_THRESHOLD}
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

