#*****************************************************************************************
# Vivado (TM) v2018.3 (64-bit)
#
# vhdl-modules.tcl: Tcl script for re-creating project 'vhdl-modules'
#
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
#
# This file contains the Vivado Tcl commands for re-creating the project to the state*
# when this script was generated. In order to re-create the project, please source this
# file in the Vivado Tcl Shell.
#
# * Note that the runs in the created project will be configured the same way as the
#   original project, however they will not be launched automatically. To regenerate the
#   run results please launch the synthesis/implementation runs as needed.
#
#*****************************************************************************************
# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir [file dirname [info script]]

# Use origin directory path location variable, if specified in the tcl shell
if { [info exists ::origin_dir_loc] } {
  set origin_dir $::origin_dir_loc
}

# Set the project name
set _xil_proj_name_ "vhdl-modules"

# Use project name variable, if specified in the tcl shell
if { [info exists ::user_project_name] } {
  set _xil_proj_name_ $::user_project_name
}

variable script_file
set script_file "vhdl-modules.tcl"

# Help information for this script
proc print_help {} {
  variable script_file
  puts "\nDescription:"
  puts "Recreate a Vivado project from this script. The created project will be"
  puts "functionally equivalent to the original project for which this script was"
  puts "generated. The script contains commands for creating a project, filesets,"
  puts "runs, adding/importing sources and setting properties on various objects.\n"
  puts "Syntax:"
  puts "$script_file"
  puts "$script_file -tclargs \[--origin_dir <path>\]"
  puts "$script_file -tclargs \[--project_name <name>\]"
  puts "$script_file -tclargs \[--help\]\n"
  puts "Usage:"
  puts "Name                   Description"
  puts "-------------------------------------------------------------------------"
  puts "\[--origin_dir <path>\]  Determine source file paths wrt this path. Default"
  puts "                       origin_dir path value is \".\", otherwise, the value"
  puts "                       that was set with the \"-paths_relative_to\" switch"
  puts "                       when this script was generated.\n"
  puts "\[--project_name <name>\] Create project with the specified name. Default"
  puts "                       name is the name of the project from where this"
  puts "                       script was generated.\n"
  puts "\[--help\]               Print help information for this script"
  puts "-------------------------------------------------------------------------\n"
  exit 0
}

if { $::argc > 0 } {
  for {set i 0} {$i < $::argc} {incr i} {
    set option [string trim [lindex $::argv $i]]
    switch -regexp -- $option {
      "--origin_dir"   { incr i; set origin_dir [lindex $::argv $i] }
      "--project_name" { incr i; set _xil_proj_name_ [lindex $::argv $i] }
      "--help"         { print_help }
      default {
        if { [regexp {^-} $option] } {
          puts "ERROR: Unknown option '$option' specified, please type '$script_file -tclargs --help' for usage info.\n"
          return 1
        }
      }
    }
  }
}

# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "$origin_dir/vivado_project"]"

# Create project
create_project ${_xil_proj_name_} $origin_dir/vivado_project -part xc7a100tcsg324-1 -quiet -force

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [current_project]
set_property -name "default_lib" -value "xil_defaultlib" -objects $obj
set_property -name "enable_vhdl_2008" -value "1" -objects $obj
set_property -name "ip_cache_permissions" -value "read write" -objects $obj
set_property -name "ip_output_repo" -value "$proj_dir/${_xil_proj_name_}.cache/ip" -objects $obj
set_property -name "mem.enable_memory_map_generation" -value "1" -objects $obj
set_property -name "part" -value "xc7a100tcsg324-1" -objects $obj
set_property -name "sim.central_dir" -value "$proj_dir/${_xil_proj_name_}.ip_user_files" -objects $obj
set_property -name "sim.ip.auto_export_scripts" -value "1" -objects $obj
set_property -name "simulator_language" -value "Mixed" -objects $obj
set_property -name "target_language" -value "VHDL" -objects $obj
set_property -name "webtalk.activehdl_export_sim" -value "1" -objects $obj
set_property -name "webtalk.ies_export_sim" -value "1" -objects $obj
set_property -name "webtalk.modelsim_export_sim" -value "1" -objects $obj
set_property -name "webtalk.questa_export_sim" -value "1" -objects $obj
set_property -name "webtalk.riviera_export_sim" -value "1" -objects $obj
set_property -name "webtalk.vcs_export_sim" -value "1" -objects $obj
set_property -name "webtalk.xsim_export_sim" -value "1" -objects $obj
set_property -name "webtalk.xsim_launch_sim" -value "3" -objects $obj
set_property -name "xpm_libraries" -value "XPM_CDC XPM_MEMORY" -objects $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set IP repository paths
set obj [get_filesets sources_1]
set_property "ip_repo_paths" "[file normalize "$origin_dir/src/ip_repo"]" $obj

# Rebuild user ip_repo's index before adding any source files
update_ip_catalog -rebuild

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Block_proc.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Loop_Border_proc.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Loop_Border_proc_borderbuf.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Loop_HConvH_proc6.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Loop_VConvH_proc.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Loop_VConvH_proc_linebuf_0.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/globals.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/checksum.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/conv2d.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/conv2d_5x5_224p.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/dummyModule.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/fifo_w32_d2_A.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/fifo_w32_d3_A.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/filter11x11_strm.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/filter11x11_strm_ent.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/kernel_5x5.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/multiplex.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/ram.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/shiftIn.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/start_for_Block_proc_U0.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/start_for_Loop_Border_proc_U0.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/start_for_Loop_VConvH_proc_U0.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/packaging.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/relu.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/shiftOut.vhd"] \
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Block_proc.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Loop_Border_proc.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Loop_Border_proc_borderbuf.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Loop_HConvH_proc6.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Loop_VConvH_proc.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Loop_VConvH_proc_linebuf_0.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/globals.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/checksum.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/conv2d.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/conv2d_5x5_224p.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/dummyModule.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/fifo_w32_d2_A.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/fifo_w32_d3_A.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/filter11x11_strm.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/filter11x11_strm_ent.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/kernel_5x5.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/multiplex.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/ram.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/shiftIn.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/start_for_Block_proc_U0.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/start_for_Loop_Border_proc_U0.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/start_for_Loop_VConvH_proc_U0.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/packaging.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/relu.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/shiftOut.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj


# Set 'sources_1' fileset file properties for local files
set file "src/Block_proc.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/Loop_Border_proc.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/Loop_Border_proc_borderbuf.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/Loop_HConvH_proc6.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/Loop_VConvH_proc.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/Loop_VConvH_proc_linebuf_0.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/globals.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/checksum.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/conv2d.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/conv2d_5x5_224p.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/dummyModule.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/fifo_w32_d2_A.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/fifo_w32_d3_A.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/filter11x11_strm.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/filter11x11_strm_ent.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/kernel_5x5.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/multiplex.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/ram.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/shiftIn.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/start_for_Block_proc_U0.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/start_for_Loop_Border_proc_U0.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/start_for_Loop_VConvH_proc_U0.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/packaging.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/shiftOut.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/neuron.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/mac.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/parallelize.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "src/relu.vhd"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj


# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property -name "top" -value "packaging" -objects $obj
set_property -name "top_arch" -value "Behavioral" -objects $obj
set_property -name "top_file" -value "$proj_dir/vhdl-modules.srcs/sources_1/imports/src/packaging.vhd" -objects $obj
set_property -name "top_lib" -value "xil_defaultlib" -objects $obj

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

# Empty (no sources present)

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]
set_property -name "target_part" -value "xc7a100tcsg324-1" -objects $obj

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
# Import local files from the original project
set files [list \
 [file normalize "${origin_dir}/src/testbench/packaging_tb.vhd"] \
 [file normalize "${origin_dir}/vivado_project/vhdl-modules.srcs/sources_1/imports/src/tb.vhd"] \
]
# set imported_files [import_files -fileset sim_1 $files]

# Set 'sim_1' fileset file properties for remote files
# None

# Set 'sim_1' fileset file properties for local files
set file "src/tb.vhd"
set file_obj [get_files -of_objects [get_filesets sim_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/vivado_project/vhdl-modules.srcs/sources_1/imports/src/tb.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sim_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj


# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property -name "top" -value "tb_module" -objects $obj
set_property -name "top_auto_set" -value "0" -objects $obj
set_property -name "top_lib" -value "xil_defaultlib" -objects $obj

# Set 'utils_1' fileset object
set obj [get_filesets utils_1]
# Empty (no sources present)

# Set 'utils_1' fileset properties
set obj [get_filesets utils_1]


# Adding sources referenced in BDs, if not already added
if { [get_files Block_proc.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Block_proc.vhd
}
if { [get_files Loop_Border_proc.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Loop_Border_proc.vhd
}
if { [get_files Loop_Border_proc_borderbuf.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Loop_Border_proc_borderbuf.vhd
}
if { [get_files Loop_HConvH_proc6.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Loop_HConvH_proc6.vhd
}
if { [get_files Loop_VConvH_proc.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Loop_VConvH_proc.vhd
}
if { [get_files Loop_VConvH_proc_linebuf_0.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/Loop_VConvH_proc_linebuf_0.vhd
}
if { [get_files globals.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/globals.vhd
}
if { [get_files checksum.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/checksum.vhd
}
if { [get_files conv2d.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/conv2d.vhd
}
if { [get_files conv2d_5x5_224p.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/conv2d_5x5_224p.vhd
}
if { [get_files dummyModule.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/dummyModule.vhd
}
if { [get_files fifo_w32_d2_A.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/fifo_w32_d2_A.vhd
}
if { [get_files fifo_w32_d3_A.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/fifo_w32_d3_A.vhd
}
if { [get_files filter11x11_strm.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/filter11x11_strm.vhd
}
if { [get_files filter11x11_strm_ent.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/filter11x11_strm_ent.vhd
}
if { [get_files kernel_5x5.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/kernel_5x5.vhd
}
if { [get_files multiplex.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/multiplex.vhd
}
if { [get_files ram.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/ram.vhd
}
if { [get_files shiftIn.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/shiftIn.vhd
}
if { [get_files start_for_Block_proc_U0.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/start_for_Block_proc_U0.vhd
}
if { [get_files start_for_Loop_Border_proc_U0.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/start_for_Loop_Border_proc_U0.vhd
}
if { [get_files start_for_Loop_VConvH_proc_U0.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/start_for_Loop_VConvH_proc_U0.vhd
}
if { [get_files packaging.vhd] == "" } {
  import_files -quiet -fileset sources_1 /home/windows/repos/vhdl-modules/vivado_project/vhdl-modules.srcs/sources_1/imports/src/packaging.vhd
}


# Proc to create BD design_1
proc cr_bd_design_1 { parentCell } {
# The design that will be created by this Tcl proc contains the following 
# module references:
# packaging



  # CHANGE DESIGN NAME HERE
  set design_name design_1

  common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

  create_bd_design $design_name

  set bCheckIPsPassed 1
  ##################################################################
  # CHECK IPs
  ##################################################################
  set bCheckIPs 1
  if { $bCheckIPs == 1 } {
     set list_check_ips "\ 
  xilinx.com:ip:c_counter_binary:12.0\
  xilinx.com:user:ethernet_transceiver2:1.0\
  xilinx.com:ip:fifo_generator:13.2\
  xilinx.com:ip:c_addsub:12.0\
  xilinx.com:user:segment:1.0\
  xilinx.com:ip:xlconcat:2.1\
  xilinx.com:ip:xlconstant:1.1\
  xilinx.com:ip:xlslice:1.0\
  "

   set list_ips_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

  }

  ##################################################################
  # CHECK Modules
  ##################################################################
  set bCheckModules 1
  if { $bCheckModules == 1 } {
     set list_check_mods "\ 
  packaging\
  "

   set list_mods_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following modules exist in the project's sources: $list_check_mods ."

   foreach mod_vlnv $list_check_mods {
      if { [can_resolve_reference $mod_vlnv] == 0 } {
         lappend list_mods_missing $mod_vlnv
      }
   }

   if { $list_mods_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following module(s) are not found in the project: $list_mods_missing" }
      common::send_msg_id "BD_TCL-008" "INFO" "Please add source files for the missing module(s) above."
      set bCheckIPsPassed 0
   }
}

  if { $bCheckIPsPassed != 1 } {
    common::send_msg_id "BD_TCL-1003" "WARNING" "Will not continue with creation of design due to the error(s) above."
    return 3
  }

  variable script_folder

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
   CONFIG.Fb_Latency {2} \
   CONFIG.Fb_Latency_Configuration {Automatic} \
   CONFIG.Final_Count_Value {270F} \
   CONFIG.Latency_Configuration {Automatic} \
   CONFIG.Restrict_Count {true} \
   CONFIG.SCLR {true} \
   CONFIG.SSET {false} \
 ] $c_counter_binary_0

  # Create instance: c_counter_binary_1, and set properties
  set c_counter_binary_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 c_counter_binary_1 ]
  set_property -dict [ list \
   CONFIG.CE {true} \
   CONFIG.Fb_Latency {2} \
   CONFIG.Fb_Latency_Configuration {Automatic} \
   CONFIG.Final_Count_Value {270F} \
   CONFIG.Latency_Configuration {Automatic} \
   CONFIG.Restrict_Count {true} \
   CONFIG.SCLR {true} \
   CONFIG.SSET {false} \
 ] $c_counter_binary_1

  # Create instance: ethernet_transceiver2_0, and set properties
  set ethernet_transceiver2_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:ethernet_transceiver2:1.0 ethernet_transceiver2_0 ]

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
  connect_bd_net -net clk_wiz_clk_out1 [get_bd_ports clk_100MHz] [get_bd_pins c_counter_binary_0/CLK] [get_bd_pins c_counter_binary_1/CLK] [get_bd_pins ethernet_transceiver2_0/clk100mhz] [get_bd_pins fifo_input/clk] [get_bd_pins fifo_output/wr_clk] [get_bd_pins negate_0/CLK] [get_bd_pins packaging_0/clk] [get_bd_pins segment_0/clk]
  connect_bd_net -net ethernet_transceiver2_0_eth_mdc [get_bd_ports eth_mdc_0] [get_bd_pins ethernet_transceiver2_0/eth_mdc]
  connect_bd_net -net ethernet_transceiver2_0_eth_refclk [get_bd_ports eth_refclk_0] [get_bd_pins ethernet_transceiver2_0/eth_refclk] [get_bd_pins fifo_output/rd_clk]
  connect_bd_net -net ethernet_transceiver2_0_led16_b [get_bd_ports led16_b_0] [get_bd_pins ethernet_transceiver2_0/led16_b]
  connect_bd_net -net ethernet_transceiver2_0_led16_g [get_bd_ports led16_g_0] [get_bd_pins ethernet_transceiver2_0/led16_g]
  connect_bd_net -net ethernet_transceiver2_0_led16_r [get_bd_ports led16_r_0] [get_bd_pins ethernet_transceiver2_0/led16_r]
  connect_bd_net -net ethernet_transceiver2_0_led17_b [get_bd_ports led17_b_0] [get_bd_pins ethernet_transceiver2_0/led17_b]
  connect_bd_net -net ethernet_transceiver2_0_led17_g [get_bd_ports led17_g_0] [get_bd_pins ethernet_transceiver2_0/led17_g]
  connect_bd_net -net ethernet_transceiver2_0_led17_r [get_bd_ports led17_r_0] [get_bd_pins ethernet_transceiver2_0/led17_r]
  connect_bd_net -net fifo_input_dout [get_bd_pins fifo_input/dout] [get_bd_pins packaging_0/inputStream]
  connect_bd_net -net fifo_input_empty [get_bd_pins fifo_input/empty] [get_bd_pins packaging_0/inputEmpty]
  connect_bd_net -net fifo_input_overflow [get_bd_pins c_counter_binary_1/CE] [get_bd_pins fifo_input/overflow]
  connect_bd_net -net fifo_output_full [get_bd_pins fifo_output/full] [get_bd_pins packaging_0/outputFull]
  connect_bd_net -net fifo_output_overflow [get_bd_pins c_counter_binary_0/CE] [get_bd_pins fifo_output/overflow]
  connect_bd_net -net fifo_output_rd_data_count [get_bd_pins fifo_output/rd_data_count] [get_bd_pins xlconcat_5/In0]
  connect_bd_net -net packaging_0_errorCode [get_bd_pins packaging_0/errorCode] [get_bd_pins xlconcat_4/In0]
  connect_bd_net -net packaging_0_inpRdEn [get_bd_pins fifo_input/rd_en] [get_bd_pins packaging_0/inpRdEn]
  connect_bd_net -net packaging_0_outData [get_bd_pins fifo_output/din] [get_bd_pins packaging_0/outData]
  connect_bd_net -net packaging_0_outWrEn [get_bd_pins fifo_output/wr_en] [get_bd_pins packaging_0/outWrEn]
  connect_bd_net -net packaging_0_stateOut [get_bd_pins packaging_0/stateOut] [get_bd_pins xlconcat_4/In1]
  connect_bd_net -net rst_clk_wiz_100M_peripheral_aresetn [get_bd_ports reset_rtl_0] [get_bd_pins ethernet_transceiver2_0/btn_reset] [get_bd_pins negate_0/A] [get_bd_pins packaging_0/rst]
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

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   "ExpandedHierarchyInLayout":"",
   "guistr":"# # String gsaved with Nlview 6.8.11  2018-08-07 bk=1.4403 VDI=40 GEI=35 GUI=JA:9.0 TLS
#  -string -flagsOSRD
preplace port led17_r_0 -pg 1 -y 710 -defaultsOSRD
preplace port eth_txen_0 -pg 1 -y 90 -defaultsOSRD
preplace port led17_g_0 -pg 1 -y 680 -defaultsOSRD
preplace port eth_rxerr_0 -pg 1 -y 120 -defaultsOSRD
preplace port led16_r_0 -pg 1 -y 620 -defaultsOSRD
preplace port led17_b_0 -pg 1 -y 650 -defaultsOSRD
preplace port clk_100MHz -pg 1 -y 260 -defaultsOSRD
preplace port eth_rstn_0 -pg 1 -y 240 -defaultsOSRD
preplace port led16_b_0 -pg 1 -y 560 -defaultsOSRD
preplace port eth_mdc_0 -pg 1 -y 180 -defaultsOSRD
preplace port led16_g_0 -pg 1 -y 590 -defaultsOSRD
preplace port eth_refclk_0 -pg 1 -y 530 -defaultsOSRD
preplace port eth_mdio_0 -pg 1 -y 210 -defaultsOSRD
preplace port reset_rtl_0 -pg 1 -y 720 -defaultsOSRD
preplace port eth_crsdv_0 -pg 1 -y 60 -defaultsOSRD
preplace portBus anodes_0 -pg 1 -y 330 -defaultsOSRD
preplace portBus cathodes_0 -pg 1 -y 360 -defaultsOSRD
preplace portBus eth_txd_0 -pg 1 -y 30 -defaultsOSRD
preplace portBus led_0 -pg 1 -y 820 -defaultsOSRD
preplace portBus sw_0 -pg 1 -y 380 -defaultsOSRD
preplace portBus eth_rxd_0 -pg 1 -y 0 -defaultsOSRD
preplace inst fifo_input -pg 1 -lvl 4 -y 220 -defaultsOSRD
preplace inst xlslice_0 -pg 1 -lvl 5 -y 880 -defaultsOSRD
preplace inst packaging_0 -pg 1 -lvl 3 -y 620 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 2 -y 320 -defaultsOSRD
preplace inst xlconstant_1 -pg 1 -lvl 1 -y 660 -defaultsOSRD
preplace inst fifo_output -pg 1 -lvl 4 -y 570 -defaultsOSRD
preplace inst ethernet_transceiver2_0 -pg 1 -lvl 3 -y 280 -defaultsOSRD
preplace inst c_counter_binary_0 -pg 1 -lvl 5 -y 470 -defaultsOSRD
preplace inst c_counter_binary_1 -pg 1 -lvl 5 -y 330 -defaultsOSRD
preplace inst xlconcat_4 -pg 1 -lvl 6 -y 820 -defaultsOSRD
preplace inst segment_0 -pg 1 -lvl 6 -y 350 -defaultsOSRD
preplace inst negate_0 -pg 1 -lvl 3 -y 790 -defaultsOSRD
preplace inst xlconcat_5 -pg 1 -lvl 2 -y 650 -defaultsOSRD
preplace netloc ethernet_transceiver2_0_fifo_read 1 3 1 1000
preplace netloc packaging_0_errorCode 1 3 3 950J 800 NJ 800 N
preplace netloc xlconstant_1_dout 1 1 1 NJ
preplace netloc ethernet_transceiver2_0_led16_b 1 3 4 980J 20 NJ 20 NJ 20 2220J
preplace netloc Net4 1 3 4 1060J 340 1560J 120 NJ 120 NJ
preplace netloc xlslice_1_Dout 1 3 2 1070 400 1640
preplace netloc Net5 1 3 4 1050J 350 1580J 210 NJ 210 NJ
preplace netloc packaging_0_outData 1 3 1 980
preplace netloc c_counter_binary_1_Q 1 5 1 N
preplace netloc Net6 1 3 4 1040J 360 1600J 240 NJ 240 NJ
preplace netloc fifo_input_dout 1 2 2 530 30 950J
preplace netloc ethernet_transceiver2_0_led16_r 1 3 4 1020J 370 1630J 250 NJ 250 2160J
preplace netloc xlconcat_5_dout 1 2 3 510 880 NJ 880 NJ
preplace netloc sw_0_1 1 0 3 -70J 250 NJ 250 490J
preplace netloc ethernet_transceiver2_0_eth_refclk 1 3 4 990 700 NJ 700 1890J 530 NJ
preplace netloc ethernet_transceiver2_0_led16_g 1 3 4 1010J 40 NJ 40 NJ 40 2210J
preplace netloc ethernet_transceiver2_0_fifo_write 1 3 1 1060
preplace netloc packaging_0_inpRdEn 1 3 1 950
preplace netloc xlconstant_0_dout 1 2 1 480J
preplace netloc segment_0_anodes 1 6 1 2200J
preplace netloc ethernet_transceiver2_0_led17_b 1 3 4 960J 380 1590J 220 NJ 220 2170J
preplace netloc c_counter_binary_0_Q 1 5 1 1880
preplace netloc segment_0_cathodes 1 6 1 NJ
preplace netloc fifo_output_overflow 1 4 1 1650
preplace netloc ethernet_transceiver2_0_eth_mdc 1 3 4 1050J 100 NJ 100 NJ 100 2190J
preplace netloc packaging_0_stateOut 1 3 3 930J 820 NJ 820 N
preplace netloc fifo_input_empty 1 2 2 520 10 1070J
preplace netloc fifo_output_rd_data_count 1 1 4 190 720 NJ 720 NJ 720 1610
preplace netloc fifo_output_full 1 2 2 530 860 1080
preplace netloc packaging_0_outWrEn 1 3 1 930
preplace netloc ethernet_transceiver2_0_led17_r 1 3 4 1030J 50 NJ 50 NJ 50 2180J
preplace netloc Net1 1 3 4 960J 30 NJ 30 NJ 30 NJ
preplace netloc Net 1 3 4 970J 60 NJ 60 NJ 60 2190J
preplace netloc xlconcat_4_dout 1 6 1 NJ
preplace netloc fifo_input_overflow 1 4 1 1570
preplace netloc Net2 1 3 4 990J 70 NJ 70 NJ 70 2200J
preplace netloc xlslice_0_Dout 1 5 1 1880J
preplace netloc rst_clk_wiz_100M_peripheral_aresetn 1 0 3 NJ 720 180J 730 500
preplace netloc ethernet_transceiver2_0_led17_g 1 3 4 NJ 390 1620J 230 NJ 230 2150J
preplace netloc clk_wiz_clk_out1 1 0 6 NJ 260 NJ 260 470 20 940 80 1610 200 1890
preplace netloc Net3 1 3 4 1020J 90 NJ 90 NJ 90 NJ
levelinfo -pg 1 -90 100 360 730 1360 1770 2020 2240 -top -100 -bot 1140
"
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
common::send_msg_id "BD_TCL-1000" "WARNING" "This Tcl script was generated from a block design that has not been validated. It is possible that design <$design_name> may result in errors during validation."

  close_bd_design $design_name 
}
# End of cr_bd_design_1()
cr_bd_design_1 ""
set_property REGISTERED_WITH_MANAGER "1" [get_files design_1.bd ] 
set_property SYNTH_CHECKPOINT_MODE "Hierarchical" [get_files design_1.bd ] 


# Create wrapper file for design_1.bd
make_wrapper -files [get_files design_1.bd] -import -top

# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
    create_run -name synth_1 -part xc7a100tcsg324-1 -flow {Vivado Synthesis 2018} -strategy "Vivado Synthesis Defaults" -report_strategy {No Reports} -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2018" [get_runs synth_1]
}
set obj [get_runs synth_1]
set_property set_report_strategy_name 1 $obj
set_property report_strategy {Vivado Synthesis Default Reports} $obj
set_property set_report_strategy_name 0 $obj
# Create 'synth_1_synth_report_utilization_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs synth_1] synth_1_synth_report_utilization_0] "" ] } {
  create_report_config -report_name synth_1_synth_report_utilization_0 -report_type report_utilization:1.0 -steps synth_design -runs synth_1
}
set obj [get_report_configs -of_objects [get_runs synth_1] synth_1_synth_report_utilization_0]
if { $obj != "" } {
set_property -name "display_name" -value "synth_1_synth_report_utilization_0" -objects $obj

}
set obj [get_runs synth_1]
set_property -name "part" -value "xc7a100tcsg324-1" -objects $obj
set_property -name "strategy" -value "Vivado Synthesis Defaults" -objects $obj

# set the current synth run
current_run -synthesis [get_runs synth_1]

# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
    create_run -name impl_1 -part xc7a100tcsg324-1 -flow {Vivado Implementation 2018} -strategy "Vivado Implementation Defaults" -report_strategy {No Reports} -constrset constrs_1 -parent_run synth_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
  set_property flow "Vivado Implementation 2018" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property set_report_strategy_name 1 $obj
set_property report_strategy {Vivado Implementation Default Reports} $obj
set_property set_report_strategy_name 0 $obj
# Create 'impl_1_init_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_init_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_init_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps init_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_init_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "display_name" -value "impl_1_init_report_timing_summary_0" -objects $obj

}
# Create 'impl_1_opt_report_drc_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_drc_0] "" ] } {
  create_report_config -report_name impl_1_opt_report_drc_0 -report_type report_drc:1.0 -steps opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_drc_0]
if { $obj != "" } {
set_property -name "display_name" -value "impl_1_opt_report_drc_0" -objects $obj

}
# Create 'impl_1_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "display_name" -value "impl_1_opt_report_timing_summary_0" -objects $obj

}
# Create 'impl_1_power_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_power_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_power_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps power_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_power_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "display_name" -value "impl_1_power_opt_report_timing_summary_0" -objects $obj

}
# Create 'impl_1_place_report_io_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_io_0] "" ] } {
  create_report_config -report_name impl_1_place_report_io_0 -report_type report_io:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_io_0]
if { $obj != "" } {
set_property -name "display_name" -value "impl_1_place_report_io_0" -objects $obj

}
# Create 'impl_1_place_report_utilization_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_utilization_0] "" ] } {
  create_report_config -report_name impl_1_place_report_utilization_0 -report_type report_utilization:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_utilization_0]
if { $obj != "" } {
set_property -name "display_name" -value "impl_1_place_report_utilization_0" -objects $obj

}
# Create 'impl_1_place_report_control_sets_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_control_sets_0] "" ] } {
  create_report_config -report_name impl_1_place_report_control_sets_0 -report_type report_control_sets:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_control_sets_0]
if { $obj != "" } {
set_property -name "display_name" -value "impl_1_place_report_control_sets_0" -objects $obj

}
# Create 'impl_1_place_report_incremental_reuse_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_0] "" ] } {
  create_report_config -report_name impl_1_place_report_incremental_reuse_0 -report_type report_incremental_reuse:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "display_name" -value "impl_1_place_report_incremental_reuse_0" -objects $obj

}
# Create 'impl_1_place_report_incremental_reuse_1' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_1] "" ] } {
  create_report_config -report_name impl_1_place_report_incremental_reuse_1 -report_type report_incremental_reuse:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_1]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "display_name" -value "impl_1_place_report_incremental_reuse_1" -objects $obj

}
# Create 'impl_1_place_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_place_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "display_name" -value "impl_1_place_report_timing_summary_0" -objects $obj

}
# Create 'impl_1_post_place_power_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_post_place_power_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_post_place_power_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps post_place_power_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_post_place_power_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "display_name" -value "impl_1_post_place_power_opt_report_timing_summary_0" -objects $obj

}
# Create 'impl_1_phys_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_phys_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_phys_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps phys_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_phys_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "display_name" -value "impl_1_phys_opt_report_timing_summary_0" -objects $obj

}
# Create 'impl_1_route_report_drc_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_drc_0] "" ] } {
  create_report_config -report_name impl_1_route_report_drc_0 -report_type report_drc:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_drc_0]
if { $obj != "" } {
set_property -name "display_name" -value "impl_1_route_report_drc_0" -objects $obj

}
# Create 'impl_1_route_report_methodology_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_methodology_0] "" ] } {
  create_report_config -report_name impl_1_route_report_methodology_0 -report_type report_methodology:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_methodology_0]
if { $obj != "" } {
set_property -name "display_name" -value "impl_1_route_report_methodology_0" -objects $obj

}
# Create 'impl_1_route_report_power_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_power_0] "" ] } {
  create_report_config -report_name impl_1_route_report_power_0 -report_type report_power:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_power_0]
if { $obj != "" } {
set_property -name "display_name" -value "impl_1_route_report_power_0" -objects $obj

}
# Create 'impl_1_route_report_route_status_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_route_status_0] "" ] } {
  create_report_config -report_name impl_1_route_report_route_status_0 -report_type report_route_status:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_route_status_0]
if { $obj != "" } {
set_property -name "display_name" -value "impl_1_route_report_route_status_0" -objects $obj

}
# Create 'impl_1_route_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_route_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_timing_summary_0]
if { $obj != "" } {
set_property -name "display_name" -value "impl_1_route_report_timing_summary_0" -objects $obj

}
# Create 'impl_1_route_report_incremental_reuse_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_incremental_reuse_0] "" ] } {
  create_report_config -report_name impl_1_route_report_incremental_reuse_0 -report_type report_incremental_reuse:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_incremental_reuse_0]
if { $obj != "" } {
set_property -name "display_name" -value "impl_1_route_report_incremental_reuse_0" -objects $obj

}
# Create 'impl_1_route_report_clock_utilization_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_clock_utilization_0] "" ] } {
  create_report_config -report_name impl_1_route_report_clock_utilization_0 -report_type report_clock_utilization:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_clock_utilization_0]
if { $obj != "" } {
set_property -name "display_name" -value "impl_1_route_report_clock_utilization_0" -objects $obj

}
# Create 'impl_1_route_report_bus_skew_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_bus_skew_0] "" ] } {
  create_report_config -report_name impl_1_route_report_bus_skew_0 -report_type report_bus_skew:1.1 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_bus_skew_0]
if { $obj != "" } {
set_property -name "display_name" -value "impl_1_route_report_bus_skew_0" -objects $obj

}
# Create 'impl_1_post_route_phys_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_post_route_phys_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps post_route_phys_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "display_name" -value "impl_1_post_route_phys_opt_report_timing_summary_0" -objects $obj

}
# Create 'impl_1_post_route_phys_opt_report_bus_skew_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_bus_skew_0] "" ] } {
  create_report_config -report_name impl_1_post_route_phys_opt_report_bus_skew_0 -report_type report_bus_skew:1.1 -steps post_route_phys_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_bus_skew_0]
if { $obj != "" } {
set_property -name "display_name" -value "impl_1_post_route_phys_opt_report_bus_skew_0" -objects $obj

}
set obj [get_runs impl_1]
set_property -name "part" -value "xc7a100tcsg324-1" -objects $obj
set_property -name "strategy" -value "Vivado Implementation Defaults" -objects $obj
set_property -name "steps.write_bitstream.args.readback_file" -value "0" -objects $obj
set_property -name "steps.write_bitstream.args.verbose" -value "0" -objects $obj

# set the current impl run
current_run -implementation [get_runs impl_1]

# Change current directory to project folder
cd [file dirname [info script]]

puts "INFO: Project created:${_xil_proj_name_}"
# Create 'drc_1' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "drc_1" ] ] ""]} {
create_dashboard_gadget -name {drc_1} -type drc
}
set obj [get_dashboard_gadgets [ list "drc_1" ] ]
set_property -name "reports" -value "impl_1#impl_1_route_report_drc_0" -objects $obj

# Create 'methodology_1' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "methodology_1" ] ] ""]} {
create_dashboard_gadget -name {methodology_1} -type methodology
}
set obj [get_dashboard_gadgets [ list "methodology_1" ] ]
set_property -name "reports" -value "impl_1#impl_1_route_report_methodology_0" -objects $obj

# Create 'power_1' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "power_1" ] ] ""]} {
create_dashboard_gadget -name {power_1} -type power
}
set obj [get_dashboard_gadgets [ list "power_1" ] ]
set_property -name "reports" -value "impl_1#impl_1_route_report_power_0" -objects $obj

# Create 'timing_1' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "timing_1" ] ] ""]} {
create_dashboard_gadget -name {timing_1} -type timing
}
set obj [get_dashboard_gadgets [ list "timing_1" ] ]
set_property -name "reports" -value "impl_1#impl_1_route_report_timing_summary_0" -objects $obj

# Create 'utilization_1' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "utilization_1" ] ] ""]} {
create_dashboard_gadget -name {utilization_1} -type utilization
}
set obj [get_dashboard_gadgets [ list "utilization_1" ] ]
set_property -name "reports" -value "synth_1#synth_1_synth_report_utilization_0" -objects $obj
set_property -name "run.step" -value "synth_design" -objects $obj
set_property -name "run.type" -value "synthesis" -objects $obj

# Create 'utilization_2' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "utilization_2" ] ] ""]} {
create_dashboard_gadget -name {utilization_2} -type utilization
}
set obj [get_dashboard_gadgets [ list "utilization_2" ] ]
set_property -name "reports" -value "impl_1#impl_1_place_report_utilization_0" -objects $obj

move_dashboard_gadget -name {utilization_1} -row 0 -col 0
move_dashboard_gadget -name {power_1} -row 1 -col 0
move_dashboard_gadget -name {drc_1} -row 2 -col 0
move_dashboard_gadget -name {timing_1} -row 0 -col 1
move_dashboard_gadget -name {utilization_2} -row 1 -col 1
move_dashboard_gadget -name {methodology_1} -row 2 -col 1
