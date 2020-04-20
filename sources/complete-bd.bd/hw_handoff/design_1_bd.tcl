
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
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./sources/complete-bd.bd

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

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
  set anodes_0 [ create_bd_port -dir O -from 0 -to 7 anodes_0 ]
  set cathodes_0 [ create_bd_port -dir O -from 0 -to 7 cathodes_0 ]
  set clk_100MHz [ create_bd_port -dir I -type clk clk_100MHz ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
 ] $clk_100MHz
  set eth_crsdv_0 [ create_bd_port -dir IO eth_crsdv_0 ]
  set eth_mdc_0 [ create_bd_port -dir O eth_mdc_0 ]
  set eth_mdio_0 [ create_bd_port -dir IO eth_mdio_0 ]
  set eth_refclk_0 [ create_bd_port -dir O eth_refclk_0 ]
  set eth_rstn_0 [ create_bd_port -dir IO -type rst eth_rstn_0 ]
  set eth_rxd_0 [ create_bd_port -dir IO -from 1 -to 0 eth_rxd_0 ]
  set eth_rxerr_0 [ create_bd_port -dir IO eth_rxerr_0 ]
  set eth_txd_0 [ create_bd_port -dir IO -from 1 -to 0 eth_txd_0 ]
  set eth_txen_0 [ create_bd_port -dir IO eth_txen_0 ]
  set led16_b_0 [ create_bd_port -dir O led16_b_0 ]
  set led16_g_0 [ create_bd_port -dir O led16_g_0 ]
  set led16_r_0 [ create_bd_port -dir O led16_r_0 ]
  set led17_b_0 [ create_bd_port -dir O led17_b_0 ]
  set led17_g_0 [ create_bd_port -dir O led17_g_0 ]
  set led17_r_0 [ create_bd_port -dir O led17_r_0 ]
  set led_0 [ create_bd_port -dir O -from 15 -to 0 led_0 ]
  set reset_rtl_0 [ create_bd_port -dir I -type rst reset_rtl_0 ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset_rtl_0
  set sw_0 [ create_bd_port -dir I -from 4 -to 0 sw_0 ]

  # Create instance: c_counter_binary_0, and set properties
  set c_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 c_counter_binary_0 ]
  set_property -dict [ list \
   CONFIG.CE {true} \
   CONFIG.Fb_Latency_Configuration {Automatic} \
   CONFIG.Final_Count_Value {270F} \
   CONFIG.Latency_Configuration {Automatic} \
   CONFIG.Restrict_Count {true} \
   CONFIG.SCLR {true} \
 ] $c_counter_binary_0

  # Create instance: c_counter_binary_1, and set properties
  set c_counter_binary_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 c_counter_binary_1 ]
  set_property -dict [ list \
   CONFIG.CE {true} \
   CONFIG.Fb_Latency_Configuration {Automatic} \
   CONFIG.Final_Count_Value {270F} \
   CONFIG.Latency_Configuration {Automatic} \
   CONFIG.Restrict_Count {true} \
   CONFIG.SCLR {true} \
 ] $c_counter_binary_1

  # Create instance: ethernet_transceiver2_0, and set properties
  set ethernet_transceiver2_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:ethernet_transceiver2:1.0 ethernet_transceiver2_0 ]

  # Create instance: fifo_input, and set properties
  set fifo_input [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_input ]
  set_property -dict [ list \
   CONFIG.Almost_Empty_Flag {false} \
   CONFIG.Data_Count {false} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Fifo_Implementation {Common_Clock_Distributed_RAM} \
   CONFIG.INTERFACE_TYPE {Native} \
   CONFIG.Input_Data_Width {32} \
   CONFIG.Input_Depth {64} \
   CONFIG.Overflow_Flag {true} \
   CONFIG.Performance_Options {Standard_FIFO} \
   CONFIG.Programmable_Empty_Type {No_Programmable_Empty_Threshold} \
   CONFIG.Programmable_Full_Type {No_Programmable_Full_Threshold} \
   CONFIG.Reset_Pin {true} \
   CONFIG.Reset_Type {Synchronous_Reset} \
   CONFIG.Underflow_Flag {false} \
   CONFIG.Use_Dout_Reset {true} \
   CONFIG.Valid_Flag {false} \
 ] $fifo_input

  # Create instance: fifo_output, and set properties
  set fifo_output [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_output ]
  set_property -dict [ list \
   CONFIG.Almost_Empty_Flag {false} \
   CONFIG.Almost_Full_Flag {false} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.INTERFACE_TYPE {Native} \
   CONFIG.Input_Data_Width {32} \
   CONFIG.Input_Depth {512} \
   CONFIG.Overflow_Flag {true} \
   CONFIG.Performance_Options {Standard_FIFO} \
   CONFIG.Programmable_Empty_Type {No_Programmable_Empty_Threshold} \
   CONFIG.Programmable_Full_Type {No_Programmable_Full_Threshold} \
   CONFIG.Read_Data_Count {true} \
   CONFIG.Read_Data_Count_Width {9} \
   CONFIG.Reset_Pin {true} \
   CONFIG.Underflow_Flag {false} \
   CONFIG.Use_Dout_Reset {true} \
   CONFIG.Valid_Flag {false} \
   CONFIG.Write_Data_Count {false} \
 ] $fifo_output

  # Create instance: negate_0, and set properties
  set negate_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_addsub:12.0 negate_0 ]
  set_property -dict [ list \
   CONFIG.A_Type {Unsigned} \
   CONFIG.A_Width {1} \
   CONFIG.Add_Mode {Add} \
   CONFIG.B_Constant {true} \
   CONFIG.B_Type {Unsigned} \
   CONFIG.B_Value {1} \
   CONFIG.B_Width {1} \
   CONFIG.CE {false} \
   CONFIG.Latency {1} \
   CONFIG.Latency_Configuration {Automatic} \
   CONFIG.Out_Width {1} \
 ] $negate_0

  # Create instance: packaging_1, and set properties
  set packaging_1 [ create_bd_cell -type ip -vlnv user.org:user:packaging:3.0 packaging_1 ]

  # Create instance: segment_0, and set properties
  set segment_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:segment:1.0 segment_0 ]

  # Create instance: xlconcat_4, and set properties
  set xlconcat_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_4 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {4} \
   CONFIG.IN1_WIDTH {4} \
   CONFIG.IN2_WIDTH {8} \
   CONFIG.IN3_WIDTH {2} \
   CONFIG.IN4_WIDTH {5} \
   CONFIG.NUM_PORTS {3} \
 ] $xlconcat_4

  # Create instance: xlconcat_5, and set properties
  set xlconcat_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_5 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {9} \
   CONFIG.IN1_WIDTH {7} \
   CONFIG.IN2_WIDTH {8} \
   CONFIG.IN3_WIDTH {2} \
   CONFIG.IN4_WIDTH {5} \
   CONFIG.NUM_PORTS {2} \
 ] $xlconcat_5

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {16} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {7} \
 ] $xlconstant_1

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {8} \
 ] $xlslice_0

  # Create interface connections
  connect_bd_intf_net -intf_net ethernet_transceiver2_0_fifo_read [get_bd_intf_pins ethernet_transceiver2_0/fifo_read] [get_bd_intf_pins fifo_output/FIFO_READ]
  connect_bd_intf_net -intf_net ethernet_transceiver2_0_fifo_write [get_bd_intf_pins ethernet_transceiver2_0/fifo_write] [get_bd_intf_pins fifo_input/FIFO_WRITE]
  connect_bd_intf_net -intf_net packaging_1_fifo_read [get_bd_intf_pins fifo_input/FIFO_READ] [get_bd_intf_pins packaging_1/fifo_read]
  connect_bd_intf_net -intf_net packaging_1_fifo_write [get_bd_intf_pins fifo_output/FIFO_WRITE] [get_bd_intf_pins packaging_1/fifo_write]

  # Create port connections
  connect_bd_net -net Net [get_bd_ports eth_rxd_0] [get_bd_pins ethernet_transceiver2_0/eth_rxd]
  connect_bd_net -net Net1 [get_bd_ports eth_txd_0] [get_bd_pins ethernet_transceiver2_0/eth_txd]
  connect_bd_net -net Net2 [get_bd_ports eth_crsdv_0] [get_bd_pins ethernet_transceiver2_0/eth_crsdv]
  connect_bd_net -net Net3 [get_bd_ports eth_txen_0] [get_bd_pins ethernet_transceiver2_0/eth_txen]
  connect_bd_net -net Net4 [get_bd_ports eth_rxerr_0] [get_bd_pins ethernet_transceiver2_0/eth_rxerr]
  connect_bd_net -net Net5 [get_bd_ports eth_mdio_0] [get_bd_pins ethernet_transceiver2_0/eth_mdio]
  connect_bd_net -net Net6 [get_bd_ports eth_rstn_0] [get_bd_pins ethernet_transceiver2_0/eth_rstn]
  connect_bd_net -net c_counter_binary_0_Q [get_bd_pins c_counter_binary_0/Q] [get_bd_pins segment_0/num2]
  connect_bd_net -net c_counter_binary_1_Q [get_bd_pins c_counter_binary_1/Q] [get_bd_pins segment_0/num1]
  connect_bd_net -net clk_wiz_clk_out1 [get_bd_ports clk_100MHz] [get_bd_pins c_counter_binary_0/CLK] [get_bd_pins c_counter_binary_1/CLK] [get_bd_pins ethernet_transceiver2_0/clk100mhz] [get_bd_pins fifo_input/clk] [get_bd_pins fifo_output/wr_clk] [get_bd_pins negate_0/CLK] [get_bd_pins packaging_1/clk] [get_bd_pins segment_0/clk]
  connect_bd_net -net ethernet_transceiver2_0_eth_mdc [get_bd_ports eth_mdc_0] [get_bd_pins ethernet_transceiver2_0/eth_mdc]
  connect_bd_net -net ethernet_transceiver2_0_eth_refclk [get_bd_ports eth_refclk_0] [get_bd_pins ethernet_transceiver2_0/eth_refclk] [get_bd_pins fifo_output/rd_clk]
  connect_bd_net -net ethernet_transceiver2_0_led16_b [get_bd_ports led16_b_0] [get_bd_pins ethernet_transceiver2_0/led16_b]
  connect_bd_net -net ethernet_transceiver2_0_led16_g [get_bd_ports led16_g_0] [get_bd_pins ethernet_transceiver2_0/led16_g]
  connect_bd_net -net ethernet_transceiver2_0_led16_r [get_bd_ports led16_r_0] [get_bd_pins ethernet_transceiver2_0/led16_r]
  connect_bd_net -net ethernet_transceiver2_0_led17_b [get_bd_ports led17_b_0] [get_bd_pins ethernet_transceiver2_0/led17_b]
  connect_bd_net -net ethernet_transceiver2_0_led17_g [get_bd_ports led17_g_0] [get_bd_pins ethernet_transceiver2_0/led17_g]
  connect_bd_net -net ethernet_transceiver2_0_led17_r [get_bd_ports led17_r_0] [get_bd_pins ethernet_transceiver2_0/led17_r]
  connect_bd_net -net fifo_input_overflow [get_bd_pins c_counter_binary_1/CE] [get_bd_pins fifo_input/overflow]
  connect_bd_net -net fifo_output_overflow [get_bd_pins c_counter_binary_0/CE] [get_bd_pins fifo_output/overflow]
  connect_bd_net -net fifo_output_rd_data_count [get_bd_pins fifo_output/rd_data_count] [get_bd_pins xlconcat_5/In0]
  connect_bd_net -net packaging_1_errorCode [get_bd_pins packaging_1/errorCode] [get_bd_pins xlconcat_4/In0]
  connect_bd_net -net packaging_1_stateOut [get_bd_pins packaging_1/stateOut] [get_bd_pins xlconcat_4/In1]
  connect_bd_net -net rst_clk_wiz_100M_peripheral_aresetn [get_bd_ports reset_rtl_0] [get_bd_pins ethernet_transceiver2_0/btn_reset] [get_bd_pins negate_0/A] [get_bd_pins packaging_1/rst]
  connect_bd_net -net segment_0_anodes [get_bd_ports anodes_0] [get_bd_pins segment_0/anodes]
  connect_bd_net -net segment_0_cathodes [get_bd_ports cathodes_0] [get_bd_pins segment_0/cathodes]
  connect_bd_net -net sw_0_1 [get_bd_ports sw_0] [get_bd_pins ethernet_transceiver2_0/ip]
  connect_bd_net -net xlconcat_4_dout [get_bd_ports led_0] [get_bd_pins xlconcat_4/dout]
  connect_bd_net -net xlconcat_5_dout [get_bd_pins ethernet_transceiver2_0/fifo_read_length] [get_bd_pins xlconcat_5/dout] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins ethernet_transceiver2_0/udp_packet_checksum] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins xlconcat_5/In1] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins xlconcat_4/In2] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins c_counter_binary_0/SCLR] [get_bd_pins c_counter_binary_1/SCLR] [get_bd_pins fifo_input/srst] [get_bd_pins fifo_output/rst] [get_bd_pins negate_0/S]

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


