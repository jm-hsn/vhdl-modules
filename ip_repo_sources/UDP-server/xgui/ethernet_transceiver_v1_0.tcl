# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M_clk2_5mhz1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M_clk2_5mhz2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "N" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to update ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to validate ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.M_clk2_5mhz1 { PARAM_VALUE.M_clk2_5mhz1 } {
	# Procedure called to update M_clk2_5mhz1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_clk2_5mhz1 { PARAM_VALUE.M_clk2_5mhz1 } {
	# Procedure called to validate M_clk2_5mhz1
	return true
}

proc update_PARAM_VALUE.M_clk2_5mhz2 { PARAM_VALUE.M_clk2_5mhz2 } {
	# Procedure called to update M_clk2_5mhz2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_clk2_5mhz2 { PARAM_VALUE.M_clk2_5mhz2 } {
	# Procedure called to validate M_clk2_5mhz2
	return true
}

proc update_PARAM_VALUE.N { PARAM_VALUE.N } {
	# Procedure called to update N when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N { PARAM_VALUE.N } {
	# Procedure called to validate N
	return true
}


proc update_MODELPARAM_VALUE.M_clk2_5mhz1 { MODELPARAM_VALUE.M_clk2_5mhz1 PARAM_VALUE.M_clk2_5mhz1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_clk2_5mhz1}] ${MODELPARAM_VALUE.M_clk2_5mhz1}
}

proc update_MODELPARAM_VALUE.M_clk2_5mhz2 { MODELPARAM_VALUE.M_clk2_5mhz2 PARAM_VALUE.M_clk2_5mhz2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_clk2_5mhz2}] ${MODELPARAM_VALUE.M_clk2_5mhz2}
}

proc update_MODELPARAM_VALUE.N { MODELPARAM_VALUE.N PARAM_VALUE.N } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N}] ${MODELPARAM_VALUE.N}
}

proc update_MODELPARAM_VALUE.ADDR_WIDTH { MODELPARAM_VALUE.ADDR_WIDTH PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_WIDTH}] ${MODELPARAM_VALUE.ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

