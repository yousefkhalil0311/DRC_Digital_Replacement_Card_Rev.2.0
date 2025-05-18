
################################################################
# This is a generated script based on design: FFT_Test
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
set scripts_vivado_version 2023.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source FFT_Test_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# complex_signal_generator, Latch

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu3eg-sfvc784-1-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name FFT_Test

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:c_addsub:12.0\
xilinx.com:ip:mult_gen:12.0\
xilinx.com:ip:sim_clk_gen:1.0\
xilinx.com:ip:xfft:9.1\
xilinx.com:ip:xlconcat:2.1\
xilinx.com:ip:xlslice:1.0\
xilinx.com:ip:fifo_generator:13.2\
xilinx.com:ip:util_vector_logic:2.0\
xilinx.com:ip:xlconstant:1.1\
"

   set list_ips_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2011 -severity "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2012 -severity "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

##################################################################
# CHECK Modules
##################################################################
set bCheckModules 1
if { $bCheckModules == 1 } {
   set list_check_mods "\ 
complex_signal_generator\
Latch\
"

   set list_mods_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2020 -severity "INFO" "Checking if the following modules exist in the project's sources: $list_check_mods ."

   foreach mod_vlnv $list_check_mods {
      if { [can_resolve_reference $mod_vlnv] == 0 } {
         lappend list_mods_missing $mod_vlnv
      }
   }

   if { $list_mods_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2021 -severity "ERROR" "The following module(s) are not found in the project: $list_mods_missing" }
      common::send_gid_msg -ssname BD::TCL -id 2022 -severity "INFO" "Please add source files for the missing module(s) above."
      set bCheckIPsPassed 0
   }
}

if { $bCheckIPsPassed != 1 } {
  common::send_gid_msg -ssname BD::TCL -id 2023 -severity "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

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
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set REAL_DATA [ create_bd_port -dir O -from 15 -to 0 REAL_DATA ]
  set dout_0 [ create_bd_port -dir O -from 31 -to 0 dout_0 ]
  set Read_En [ create_bd_port -dir O -from 0 -to 0 Read_En ]
  set wr_en [ create_bd_port -dir O wr_en ]
  set full [ create_bd_port -dir O full ]
  set PREFIFO [ create_bd_port -dir O -from 31 -to 0 -type data PREFIFO ]
  set empty [ create_bd_port -dir O empty ]
  set rd_clk_0 [ create_bd_port -dir I -type clk rd_clk_0 ]
  set MSB31 [ create_bd_port -dir O -from 30 -to 0 MSB31 ]
  set TLAST [ create_bd_port -dir O -from 0 -to 0 TLAST ]

  # Create instance: c_addsub_0, and set properties
  set c_addsub_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_addsub:12.0 c_addsub_0 ]
  set_property -dict [list \
    CONFIG.A_Type {Signed} \
    CONFIG.A_Width {32} \
    CONFIG.B_Type {Signed} \
    CONFIG.B_Value {00000000000000000000000000000000} \
    CONFIG.B_Width {32} \
    CONFIG.CE {false} \
    CONFIG.Latency {1} \
    CONFIG.Out_Width {32} \
  ] $c_addsub_0


  # Create instance: complex_signal_gener_0, and set properties
  set block_name complex_signal_generator
  set block_cell_name complex_signal_gener_0
  if { [catch {set complex_signal_gener_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $complex_signal_gener_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [list \
    CONFIG.FFT_Size {2048} \
    CONFIG.FUNC_TYPE {1} \
  ] $complex_signal_gener_0


  # Create instance: mult_gen_0, and set properties
  set mult_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 mult_gen_0 ]
  set_property -dict [list \
    CONFIG.PortAType {Signed} \
    CONFIG.PortAWidth {16} \
    CONFIG.PortBType {Signed} \
    CONFIG.PortBWidth {16} \
  ] $mult_gen_0


  # Create instance: mult_gen_1, and set properties
  set mult_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 mult_gen_1 ]
  set_property -dict [list \
    CONFIG.PortAType {Signed} \
    CONFIG.PortAWidth {16} \
    CONFIG.PortBType {Signed} \
    CONFIG.PortBWidth {16} \
  ] $mult_gen_1


  # Create instance: sim_clk_gen_0, and set properties
  set sim_clk_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:sim_clk_gen:1.0 sim_clk_gen_0 ]

  # Create instance: xfft_0, and set properties
  set xfft_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xfft:9.1 xfft_0 ]
  set_property -dict [list \
    CONFIG.channels {1} \
    CONFIG.implementation_options {automatically_select} \
    CONFIG.input_width {16} \
    CONFIG.number_of_stages_using_block_ram_for_data_and_phase_factors {4} \
    CONFIG.output_ordering {natural_order} \
    CONFIG.phase_factor_width {16} \
    CONFIG.scaling_options {scaled} \
    CONFIG.target_clock_frequency {100} \
    CONFIG.target_data_throughput {100} \
    CONFIG.transform_length {2048} \
  ] $xfft_0


  # Create instance: xlconcat_5, and set properties
  set xlconcat_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_5 ]
  set_property -dict [list \
    CONFIG.IN0_WIDTH {16} \
    CONFIG.IN1_WIDTH {16} \
  ] $xlconcat_5


  # Create instance: xlslice_12, and set properties
  set xlslice_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_12 ]
  set_property -dict [list \
    CONFIG.DIN_FROM {31} \
    CONFIG.DIN_TO {16} \
  ] $xlslice_12


  # Create instance: xlslice_13, and set properties
  set xlslice_13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_13 ]
  set_property -dict [list \
    CONFIG.DIN_FROM {15} \
    CONFIG.DIN_TO {0} \
  ] $xlslice_13


  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [list \
    CONFIG.Enable_ECC {false} \
    CONFIG.Fifo_Implementation {Independent_Clocks_Builtin_FIFO} \
    CONFIG.Input_Data_Width {32} \
    CONFIG.Input_Depth {4096} \
    CONFIG.Performance_Options {Standard_FIFO} \
    CONFIG.Read_Clock_Frequency {10} \
    CONFIG.Write_Clock_Frequency {100} \
    CONFIG.asymmetric_port_width {false} \
    CONFIG.enable_low_latency {false} \
  ] $fifo_generator_0


  # Create instance: util_vector_logic_5, and set properties
  set util_vector_logic_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_5 ]
  set_property -dict [list \
    CONFIG.C_OPERATION {not} \
    CONFIG.C_SIZE {1} \
  ] $util_vector_logic_5


  # Create instance: Latch_0, and set properties
  set block_name Latch
  set block_cell_name Latch_0
  if { [catch {set Latch_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Latch_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [list \
    CONFIG.IN0_WIDTH {1} \
    CONFIG.IN1_WIDTH {31} \
  ] $xlconcat_0


  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [list \
    CONFIG.DIN_FROM {31} \
    CONFIG.DIN_TO {1} \
  ] $xlslice_0


  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [list \
    CONFIG.DIN_FROM {31} \
    CONFIG.DIN_TO {1} \
  ] $xlslice_1


  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [list \
    CONFIG.DIN_FROM {0} \
    CONFIG.DIN_TO {0} \
  ] $xlslice_2


  # Create port connections
  connect_bd_net -net Latch_0_output [get_bd_pins Latch_0/Dout] [get_bd_pins fifo_generator_0/wr_en] [get_bd_pins util_vector_logic_5/Op1] [get_bd_ports wr_en]
  connect_bd_net -net Net27 [get_bd_pins xfft_0/m_axis_data_tdata] [get_bd_pins xlslice_12/Din] [get_bd_pins xlslice_13/Din]
  connect_bd_net -net Net28 [get_bd_pins xlslice_12/Dout] [get_bd_pins mult_gen_0/A] [get_bd_pins mult_gen_0/B]
  connect_bd_net -net Net29 [get_bd_pins xlslice_13/Dout] [get_bd_pins mult_gen_1/A] [get_bd_pins mult_gen_1/B]
  connect_bd_net -net c_addsub_0_S [get_bd_pins c_addsub_0/S] [get_bd_ports PREFIFO] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net complex_signal_gener_0_imagery_out [get_bd_pins complex_signal_gener_0/imagery_out] [get_bd_pins xlconcat_5/In0]
  connect_bd_net -net complex_signal_gener_0_real_out [get_bd_pins complex_signal_gener_0/real_out] [get_bd_pins xlconcat_5/In1] [get_bd_ports REAL_DATA]
  connect_bd_net -net complex_signal_gener_0_tlast [get_bd_pins complex_signal_gener_0/tlast] [get_bd_pins xfft_0/s_axis_data_tlast]
  connect_bd_net -net complex_signal_gener_0_tvalid [get_bd_pins complex_signal_gener_0/tvalid] [get_bd_pins xfft_0/s_axis_data_tvalid]
  connect_bd_net -net fifo_generator_0_dout [get_bd_pins fifo_generator_0/dout] [get_bd_ports dout_0] [get_bd_pins xlslice_1/Din] [get_bd_pins xlslice_2/Din]
  connect_bd_net -net fifo_generator_0_empty [get_bd_pins fifo_generator_0/empty] [get_bd_pins Latch_0/set] [get_bd_ports empty]
  connect_bd_net -net fifo_generator_0_full [get_bd_pins fifo_generator_0/full] [get_bd_pins Latch_0/rset] [get_bd_ports full]
  connect_bd_net -net mult_gen_0_P [get_bd_pins mult_gen_0/P] [get_bd_pins c_addsub_0/B]
  connect_bd_net -net mult_gen_1_P [get_bd_pins mult_gen_1/P] [get_bd_pins c_addsub_0/A]
  connect_bd_net -net rd_clk_0_1 [get_bd_ports rd_clk_0] [get_bd_pins fifo_generator_0/rd_clk]
  connect_bd_net -net sim_clk_gen_0_clk [get_bd_pins sim_clk_gen_0/clk] [get_bd_pins complex_signal_gener_0/clk] [get_bd_pins xfft_0/aclk] [get_bd_pins mult_gen_0/CLK] [get_bd_pins mult_gen_1/CLK] [get_bd_pins c_addsub_0/CLK] [get_bd_pins Latch_0/clkin] [get_bd_pins fifo_generator_0/wr_clk]
  connect_bd_net -net sim_clk_gen_0_sync_rst [get_bd_pins sim_clk_gen_0/sync_rst] [get_bd_pins complex_signal_gener_0/reset]
  connect_bd_net -net util_vector_logic_5_Res [get_bd_pins util_vector_logic_5/Res] [get_bd_pins fifo_generator_0/rd_en] [get_bd_ports Read_En]
  connect_bd_net -net xfft_0_m_axis_data_tlast [get_bd_pins xfft_0/m_axis_data_tlast] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins xlconcat_0/dout] [get_bd_pins fifo_generator_0/din]
  connect_bd_net -net xlconcat_5_dout [get_bd_pins xlconcat_5/dout] [get_bd_pins xfft_0/s_axis_data_tdata]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins xlconstant_0/dout] [get_bd_pins xfft_0/m_axis_data_tready]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins xlslice_0/Dout] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins xlslice_1/Dout] [get_bd_ports MSB31]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins xlslice_2/Dout] [get_bd_ports TLAST]

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


