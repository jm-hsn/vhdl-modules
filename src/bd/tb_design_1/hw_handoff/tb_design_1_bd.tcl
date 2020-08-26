
################################################################
# This is a generated script based on design: tb_design_1
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
# source tb_design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# packaging

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name tb_design_1

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./src/bd

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
  set FIFO_READ_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_read_rtl:1.0 FIFO_READ_0 ]
  set FIFO_WRITE_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:fifo_write_rtl:1.0 FIFO_WRITE_0 ]

  # Create ports
  set clk_100MHz [ create_bd_port -dir I -type clk clk_100MHz ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {reset_rtl_0} \
   CONFIG.PHASE {0.0} \
 ] $clk_100MHz
  set errorCode_0 [ create_bd_port -dir O -from 3 -to 0 errorCode_0 ]
  set overflow_0 [ create_bd_port -dir O overflow_0 ]
  set overflow_1 [ create_bd_port -dir O overflow_1 ]
  set rd_data_count_0 [ create_bd_port -dir O -from 8 -to 0 rd_data_count_0 ]
  set reset_rtl_0 [ create_bd_port -dir I -type rst reset_rtl_0 ]
  set stateOut_0 [ create_bd_port -dir O -from 3 -to 0 stateOut_0 ]

  # Create instance: fifo_input, and set properties
  set fifo_input [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_input ]
  set_property -dict [ list \
   CONFIG.Almost_Empty_Flag {false} \
   CONFIG.Data_Count {false} \
   CONFIG.Data_Count_Width {6} \
   CONFIG.Empty_Threshold_Assert_Value {2} \
   CONFIG.Empty_Threshold_Assert_Value_rach {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wach {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {1022} \
   CONFIG.Empty_Threshold_Negate_Value {3} \
   CONFIG.Enable_Safety_Circuit {false} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Fifo_Implementation {Common_Clock_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {0} \
   CONFIG.Full_Threshold_Assert_Value {62} \
   CONFIG.Full_Threshold_Assert_Value_rach {1023} \
   CONFIG.Full_Threshold_Assert_Value_wach {1023} \
   CONFIG.Full_Threshold_Assert_Value_wrch {1023} \
   CONFIG.Full_Threshold_Negate_Value {61} \
   CONFIG.INTERFACE_TYPE {Native} \
   CONFIG.Input_Data_Width {32} \
   CONFIG.Input_Depth {64} \
   CONFIG.Output_Data_Width {32} \
   CONFIG.Output_Depth {64} \
   CONFIG.Overflow_Flag {true} \
   CONFIG.Performance_Options {Standard_FIFO} \
   CONFIG.Programmable_Empty_Type {No_Programmable_Empty_Threshold} \
   CONFIG.Programmable_Full_Type {No_Programmable_Full_Threshold} \
   CONFIG.Read_Data_Count {false} \
   CONFIG.Read_Data_Count_Width {6} \
   CONFIG.Reset_Pin {true} \
   CONFIG.Reset_Type {Synchronous_Reset} \
   CONFIG.Underflow_Flag {false} \
   CONFIG.Use_Dout_Reset {true} \
   CONFIG.Use_Embedded_Registers {false} \
   CONFIG.Use_Extra_Logic {false} \
   CONFIG.Valid_Flag {false} \
   CONFIG.Write_Data_Count {false} \
   CONFIG.Write_Data_Count_Width {6} \
 ] $fifo_input

  # Create instance: fifo_output, and set properties
  set fifo_output [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_output ]
  set_property -dict [ list \
   CONFIG.Almost_Empty_Flag {false} \
   CONFIG.Almost_Full_Flag {false} \
   CONFIG.Data_Count {false} \
   CONFIG.Data_Count_Width {9} \
   CONFIG.Empty_Threshold_Assert_Value {2} \
   CONFIG.Empty_Threshold_Assert_Value_rach {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wach {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {1022} \
   CONFIG.Empty_Threshold_Negate_Value {3} \
   CONFIG.Enable_Safety_Circuit {false} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Fifo_Implementation {Independent_Clocks_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value {509} \
   CONFIG.Full_Threshold_Assert_Value_rach {1023} \
   CONFIG.Full_Threshold_Assert_Value_wach {1023} \
   CONFIG.Full_Threshold_Assert_Value_wrch {1023} \
   CONFIG.Full_Threshold_Negate_Value {508} \
   CONFIG.INTERFACE_TYPE {Native} \
   CONFIG.Input_Data_Width {32} \
   CONFIG.Input_Depth {512} \
   CONFIG.Output_Data_Width {32} \
   CONFIG.Output_Depth {512} \
   CONFIG.Overflow_Flag {true} \
   CONFIG.Performance_Options {Standard_FIFO} \
   CONFIG.Programmable_Empty_Type {No_Programmable_Empty_Threshold} \
   CONFIG.Programmable_Full_Type {No_Programmable_Full_Threshold} \
   CONFIG.Read_Data_Count {true} \
   CONFIG.Read_Data_Count_Width {9} \
   CONFIG.Reset_Pin {true} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.Underflow_Flag {false} \
   CONFIG.Use_Dout_Reset {true} \
   CONFIG.Use_Embedded_Registers {false} \
   CONFIG.Use_Extra_Logic {false} \
   CONFIG.Valid_Flag {false} \
   CONFIG.Write_Data_Count {false} \
   CONFIG.Write_Data_Count_Width {9} \
 ] $fifo_output

  # Create instance: invert_reset_0, and set properties
  set invert_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 invert_reset_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $invert_reset_0

  # Create instance: packaging_0, and set properties
  set block_name packaging
  set block_cell_name packaging_0
  if { [catch {set packaging_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $packaging_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net FIFO_READ_0_1 [get_bd_intf_ports FIFO_READ_0] [get_bd_intf_pins fifo_output/FIFO_READ]
  connect_bd_intf_net -intf_net FIFO_WRITE_0 [get_bd_intf_ports FIFO_WRITE_0] [get_bd_intf_pins fifo_input/FIFO_WRITE]

  # Create port connections
  connect_bd_net -net clk_0_1 [get_bd_ports clk_100MHz] [get_bd_pins fifo_input/clk] [get_bd_pins fifo_output/rd_clk] [get_bd_pins fifo_output/wr_clk] [get_bd_pins packaging_0/clk]
  connect_bd_net -net fifo_input_dout [get_bd_pins fifo_input/dout] [get_bd_pins packaging_0/inputStream]
  connect_bd_net -net fifo_input_empty [get_bd_pins fifo_input/empty] [get_bd_pins packaging_0/inputEmpty]
  connect_bd_net -net fifo_input_overflow [get_bd_ports overflow_0] [get_bd_pins fifo_input/overflow]
  connect_bd_net -net fifo_output_full [get_bd_pins fifo_output/full] [get_bd_pins packaging_0/outputFull]
  connect_bd_net -net fifo_output_overflow [get_bd_ports overflow_1] [get_bd_pins fifo_output/overflow]
  connect_bd_net -net fifo_output_rd_data_count [get_bd_ports rd_data_count_0] [get_bd_pins fifo_output/rd_data_count]
  connect_bd_net -net invert_reset_0_Res [get_bd_pins fifo_input/srst] [get_bd_pins fifo_output/rst] [get_bd_pins invert_reset_0/Res]
  connect_bd_net -net packaging_0_errorCode [get_bd_ports errorCode_0] [get_bd_pins packaging_0/errorCode]
  connect_bd_net -net packaging_0_inpRdEn [get_bd_pins fifo_input/rd_en] [get_bd_pins packaging_0/inpRdEn]
  connect_bd_net -net packaging_0_outData [get_bd_pins fifo_output/din] [get_bd_pins packaging_0/outData]
  connect_bd_net -net packaging_0_outWrEn [get_bd_pins fifo_output/wr_en] [get_bd_pins packaging_0/outWrEn]
  connect_bd_net -net packaging_0_stateOut [get_bd_ports stateOut_0] [get_bd_pins packaging_0/stateOut]
  connect_bd_net -net rst_0_1 [get_bd_ports reset_rtl_0] [get_bd_pins invert_reset_0/Op1] [get_bd_pins packaging_0/rst]

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


