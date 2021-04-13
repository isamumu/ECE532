# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param tcl.collectionResultDisplayLimit 0
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.cache/wt [current_project]
set_property parent.project_path C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_address_swap.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_axi_lite_sm.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_axi_mux.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_axi_pat_check.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_axi_pat_gen.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_axi_pipe.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_basic_pat_gen.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_bram_tdp.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_clk_wiz.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_example_design_clocks.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_example_design_resets.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_fifo_block.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_reset_sync.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_rx_client_fifo.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_support.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_sync_block.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_ten_100_1g_eth_fifo.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_tx_client_fifo.v
  C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/imports/imports/tri_mode_ethernet_mac_2_example_design.v
}
read_ip -quiet C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]

read_ip -quiet C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/ip/tri_mode_ethernet_mac_2/tri_mode_ethernet_mac_2.xci
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/ip/tri_mode_ethernet_mac_2/synth/tri_mode_ethernet_mac_2_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/ip/tri_mode_ethernet_mac_2/synth/tri_mode_ethernet_mac_2.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/ip/tri_mode_ethernet_mac_2/synth/tri_mode_ethernet_mac_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/ip/tri_mode_ethernet_mac_2/synth/tri_mode_ethernet_mac_2_clocks.xdc]

read_ip -quiet C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/ip/vio_0/vio_0.xci
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/ip/vio_0/vio_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/ip/vio_0/vio_0_ooc.xdc]

read_ip -quiet C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/ip/mii_to_rmii_0/mii_to_rmii_0.xci
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/ip/mii_to_rmii_0/mii_to_rmii_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/sources_1/ip/mii_to_rmii_0/mii_to_rmii_0_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/constrs_1/imports/imports/tri_mode_ethernet_mac_2_example_design.xdc
set_property used_in_implementation false [get_files C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/constrs_1/imports/imports/tri_mode_ethernet_mac_2_example_design.xdc]

read_xdc C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/constrs_1/imports/imports/tri_mode_ethernet_mac_2_user_phytiming.xdc
set_property used_in_implementation false [get_files C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/constrs_1/imports/imports/tri_mode_ethernet_mac_2_user_phytiming.xdc]
set_property processing_order LATE [get_files C:/Users/poyisamu/FPGA2_TEMAC/FPGA2_TEMAC.srcs/constrs_1/imports/imports/tri_mode_ethernet_mac_2_user_phytiming.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top tri_mode_ethernet_mac_2_example_design -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef tri_mode_ethernet_mac_2_example_design.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file tri_mode_ethernet_mac_2_example_design_utilization_synth.rpt -pb tri_mode_ethernet_mac_2_example_design_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
