set_property SRC_FILE_INFO {cfile:c:/Users/zhouyuf5/tri_mode_ethernet_mac_4_ex/tri_mode_ethernet_mac_4_ex.srcs/sources_1/ip/tri_mode_ethernet_mac_4/synth/tri_mode_ethernet_mac_4.xdc rfile:../../tri_mode_ethernet_mac_4_ex/tri_mode_ethernet_mac_4_ex.srcs/sources_1/ip/tri_mode_ethernet_mac_4/synth/tri_mode_ethernet_mac_4.xdc id:1 order:EARLY scoped_inst:trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/zhouyuf5/tri_mode_ethernet_mac_4_ex/imports/tri_mode_ethernet_mac_4_example_design.xdc rfile:../../tri_mode_ethernet_mac_4_ex/imports/tri_mode_ethernet_mac_4_example_design.xdc id:2} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/zhouyuf5/tri_mode_ethernet_mac_4_ex/imports/tri_mode_ethernet_mac_4_user_phytiming.xdc rfile:../../tri_mode_ethernet_mac_4_ex/imports/tri_mode_ethernet_mac_4_user_phytiming.xdc id:3 order:LATE} [current_design]
set_property SRC_FILE_INFO {cfile:c:/Users/zhouyuf5/tri_mode_ethernet_mac_4_ex/tri_mode_ethernet_mac_4_ex.srcs/sources_1/ip/tri_mode_ethernet_mac_4/synth/tri_mode_ethernet_mac_4_clocks.xdc rfile:../../tri_mode_ethernet_mac_4_ex/tri_mode_ethernet_mac_4_ex.srcs/sources_1/ip/tri_mode_ethernet_mac_4/synth/tri_mode_ethernet_mac_4_clocks.xdc id:4 order:LATE scoped_inst:trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/inst} [current_design]
current_instance trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/inst
set_property src_info {type:SCOPED_XDC file:1 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_4_core/flow/rx_pause/pause*to_tx_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_4_core/flow/tx_pause/count_set*reg}] 32 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_4_core/flow/rx_pause/pause*to_tx_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_4_core/flow/tx_pause/pause_count*reg[*]}] 32 -datapath_only
set_property src_info {type:SCOPED_XDC file:1 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_4_core/flow/rx_pause/pause_req_to_tx_int_reg}] -to [get_cells {tri_mode_ethernet_mac_4_core/flow/tx_pause/sync_good_rx/data_sync_reg0}] 6 -datapath_only
current_instance
set_property src_info {type:XDC file:2 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_rxd[3]]
set_property src_info {type:XDC file:2 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_rxd[2]]
set_property src_info {type:XDC file:2 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_rxd[1]]
set_property src_info {type:XDC file:2 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_rxd[0]]
set_property src_info {type:XDC file:2 line:49 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_txd[3]]
set_property src_info {type:XDC file:2 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_txd[2]]
set_property src_info {type:XDC file:2 line:51 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_txd[1]]
set_property src_info {type:XDC file:2 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_txd[0]]
set_property src_info {type:XDC file:2 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_tx_en]
set_property src_info {type:XDC file:2 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_tx_er]
set_property src_info {type:XDC file:2 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_rx_dv]
set_property src_info {type:XDC file:2 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_rx_er]
set_property src_info {type:XDC file:2 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_rx_clk]
set_property src_info {type:XDC file:2 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_tx_clk]
set_property src_info {type:XDC file:2 line:85 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_in_p 0.050
set_property src_info {type:XDC file:2 line:108 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_ports update_speed] 4 -datapath_only
set_property src_info {type:XDC file:2 line:144 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells tx_stats_toggle_reg] -to [get_cells tx_stats_sync/data_sync_reg0] 6 -datapath_only
set_property src_info {type:XDC file:2 line:145 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells rx_stats_toggle_reg] -to [get_cells rx_stats_sync/data_sync_reg0] 6 -datapath_only
set_property src_info {type:XDC file:2 line:162 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *rx_fifo_i/rd_addr_reg[*]}]                         -to [get_cells -hier -filter {name =~ *fifo*wr_rd_addr_reg[*]}] 3.2 -datapath_only
set_property src_info {type:XDC file:2 line:163 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *rx_fifo_i/wr_store_frame_tog_reg}]                 -to [get_cells -hier -filter {name =~ *fifo_i/resync_wr_store_frame_tog/data_sync_reg0}] 3.2 -datapath_only
set_property src_info {type:XDC file:2 line:164 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *rx_fifo_i/update_addr_tog_reg}]                    -to [get_cells -hier -filter {name =~ *rx_fifo_i/sync_rd_addr_tog/data_sync_reg0}] 3.2 -datapath_only
set_property src_info {type:XDC file:2 line:165 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_addr_txfer_reg[*]}]                   -to [get_cells -hier -filter {name =~ *fifo*wr_rd_addr_reg[*]}] 3.2 -datapath_only
set_property src_info {type:XDC file:2 line:166 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/wr_frame_in_fifo_reg}]                   -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_wr_frame_in_fifo/data_sync_reg0}] 3.2 -datapath_only
set_property src_info {type:XDC file:2 line:167 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/wr_frames_in_fifo_reg}]                  -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_wr_frames_in_fifo/data_sync_reg0}] 3.2 -datapath_only
set_property src_info {type:XDC file:2 line:168 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/frame_in_fifo_valid_tog_reg}]            -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_fif_valid_tog/data_sync_reg0}] 3.2 -datapath_only
set_property src_info {type:XDC file:2 line:169 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_txfer_tog_reg}]                       -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_rd_txfer_tog/data_sync_reg0}] 3.2 -datapath_only
set_property src_info {type:XDC file:2 line:170 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_tran_frame_tog_reg}]                  -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_rd_tran_frame_tog/data_sync_reg0}] 3.2 -datapath_only
set_property src_info {type:XDC file:2 line:172 export:INPUT save:INPUT read:READ} [current_design]
set_power_opt -exclude_cells [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ *.bram.* }]
set_property src_info {type:XDC file:3 line:2 export:INPUT save:INPUT read:READ} [current_design]
set rx_clk_var [get_clocks -of [get_ports mii_rx_clk]]
current_instance trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/inst
set_property src_info {type:SCOPED_XDC file:4 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay -clock [get_clocks -of_objects [get_pins trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/inst/mii_rx_clk]] -max 30            [get_ports {mii_rxd[*] mii_rx_er mii_rx_dv}]
set_property src_info {type:SCOPED_XDC file:4 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay -clock [get_clocks -of_objects [get_pins trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/inst/mii_rx_clk]] -min 10 -add_delay [get_ports {mii_rxd[*] mii_rx_er mii_rx_dv}]
