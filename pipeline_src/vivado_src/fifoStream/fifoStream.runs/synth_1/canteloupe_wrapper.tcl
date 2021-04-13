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
set_property webtalk.parent_dir C:/Users/poyisamu/fifoStream/fifoStream.cache/wt [current_project]
set_property parent.project_path C:/Users/poyisamu/fifoStream/fifoStream.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_repo_paths {
  w:/ip_repo
  w:/TEMAC_FPGA1_no_xdc
} [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/poyisamu/fifoStream/fifoStream.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/hdl/canteloupe_wrapper.v
add_files C:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/canteloupe.bd
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_microblaze_0_0/canteloupe_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_microblaze_0_0/canteloupe_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_microblaze_0_0/canteloupe_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_dlmb_v10_0/canteloupe_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_dlmb_v10_0/canteloupe_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_ilmb_v10_0/canteloupe_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_ilmb_v10_0/canteloupe_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_dlmb_bram_if_cntlr_0/canteloupe_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_ilmb_bram_if_cntlr_0/canteloupe_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_lmb_bram_0/canteloupe_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_xbar_0/canteloupe_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_microblaze_0_axi_intc_0/canteloupe_microblaze_0_axi_intc_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_microblaze_0_axi_intc_0/canteloupe_microblaze_0_axi_intc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_microblaze_0_axi_intc_0/canteloupe_microblaze_0_axi_intc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_mdm_1_0/canteloupe_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_mdm_1_0/canteloupe_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_clk_wiz_1_0/canteloupe_clk_wiz_1_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_clk_wiz_1_0/canteloupe_clk_wiz_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_clk_wiz_1_0/canteloupe_clk_wiz_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_rst_clk_wiz_1_100M_0/canteloupe_rst_clk_wiz_1_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_rst_clk_wiz_1_100M_0/canteloupe_rst_clk_wiz_1_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_rst_clk_wiz_1_100M_0/canteloupe_rst_clk_wiz_1_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_axi_uartlite_0_0/canteloupe_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_axi_uartlite_0_0/canteloupe_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_axi_uartlite_0_0/canteloupe_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_mig_7series_0_0/canteloupe_mig_7series_0_0/user_design/constraints/canteloupe_mig_7series_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_mig_7series_0_0/canteloupe_mig_7series_0_0/user_design/constraints/canteloupe_mig_7series_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_mig_7series_0_0/canteloupe_mig_7series_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_rst_mig_7series_0_81M_0/canteloupe_rst_mig_7series_0_81M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_rst_mig_7series_0_81M_0/canteloupe_rst_mig_7series_0_81M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_rst_mig_7series_0_81M_0/canteloupe_rst_mig_7series_0_81M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_axi_fifo_mm_s_0_0/canteloupe_axi_fifo_mm_s_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_system_ila_0_0/canteloupe_system_ila_0_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila_impl.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_system_ila_0_0/bd_0/ip/ip_0/ila_v6_2/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_system_ila_0_0/bd_0/ip/ip_0/bd_d3f9_ila_lib_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_system_ila_0_0/bd_0/bd_d3f9_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_tri_mode_ethernet_ma_1_0/src/tri_mode_ethernet_mac_2/synth/tri_mode_ethernet_mac_2_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_tri_mode_ethernet_ma_1_0/src/tri_mode_ethernet_mac_2/synth/tri_mode_ethernet_mac_2.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_tri_mode_ethernet_ma_1_0/src/tri_mode_ethernet_mac_2/synth/tri_mode_ethernet_mac_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_tri_mode_ethernet_ma_1_0/src/tri_mode_ethernet_mac_2/synth/tri_mode_ethernet_mac_2_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_tri_mode_ethernet_ma_1_0/src/vio_0/vio_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_tri_mode_ethernet_ma_1_0/src/mii_to_rmii_0/mii_to_rmii_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_tri_mode_ethernet_ma_1_0/src/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_tri_mode_ethernet_ma_1_0/src/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_tri_mode_ethernet_ma_1_0/src/clk_wiz_0/clk_wiz_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_mii_to_rmii_0_0/canteloupe_mii_to_rmii_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_mii_to_rmii_0_0/canteloupe_mii_to_rmii_0_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_us_0/canteloupe_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_us_0/canteloupe_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_us_0/canteloupe_auto_us_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_us_1/canteloupe_auto_us_1_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_us_1/canteloupe_auto_us_1_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_us_1/canteloupe_auto_us_1_ooc.xdc]
set_property used_in_synthesis false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_ds_0/canteloupe_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_ds_0/canteloupe_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_ds_0/canteloupe_auto_ds_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_ds_1/canteloupe_auto_ds_1_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_ds_1/canteloupe_auto_ds_1_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_ds_1/canteloupe_auto_ds_1_ooc.xdc]
set_property used_in_synthesis false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_cc_0/canteloupe_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_cc_0/canteloupe_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_cc_0/canteloupe_auto_cc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_pc_0/canteloupe_auto_pc_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_ds_2/canteloupe_auto_ds_2_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_ds_2/canteloupe_auto_ds_2_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_ds_2/canteloupe_auto_ds_2_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/canteloupe_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc
set_property used_in_implementation false [get_files C:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc]

read_xdc C:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/constraints.xdc
set_property used_in_implementation false [get_files C:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/constraints.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top canteloupe_wrapper -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef canteloupe_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file canteloupe_wrapper_utilization_synth.rpt -pb canteloupe_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]