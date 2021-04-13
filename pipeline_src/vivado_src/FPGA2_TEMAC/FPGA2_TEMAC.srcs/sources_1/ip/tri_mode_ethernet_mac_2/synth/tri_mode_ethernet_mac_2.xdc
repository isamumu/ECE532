
# PART is artix7 xc7a100tcsg324

############################################################
# Clock Period Constraints                                 #
############################################################

############################################################
# RX Clock period Constraints (per instance)               #
############################################################
# Receiver clock period constraints: please do not relax
create_clock -period 40 [get_ports mii_rx_clk]

############################################################
# MII TX Clock period Constraints (per instance)               #
############################################################
create_clock -period 40 [get_ports mii_tx_clk]

############################################################
# External MII Constraints                                #
############################################################

############################################################
# Physical Interface Constraints
############################################################
# MII Transmitter/Receiver Constraints:  place flip-flops in IOB
set_property IOB TRUE [get_cells {mii_interface/mii_txd*reg[*]}]
set_property IOB TRUE [get_cells {mii_interface/mii_tx_e*reg}]
set_property IOB TRUE [get_cells {mii_interface/rx*_to_mac*reg}]
set_property IOB TRUE [get_cells {mii_interface/rx*_to_mac*reg[*]}]


#
####
#######
##########
#############
#################
#BLOCK CONSTRAINTS



#
####
#######
##########
#############
#################
#CORE CONSTRAINTS



############################################################
# Crossing of Clock Domain Constraints: please do not edit #
############################################################

# control signal is synced separately so we want a max delay to ensure the signal has settled by the time the control signal has passed through the synch
set_max_delay -from [get_cells {tri_mode_ethernet_mac_2_core/flow/rx_pause/pause*to_tx_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_2_core/flow/tx_pause/count_set*reg}] 32 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_2_core/flow/rx_pause/pause*to_tx_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_2_core/flow/tx_pause/pause_count*reg[*]}] 32 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_2_core/flow/rx_pause/pause_req_to_tx_int_reg}] -to [get_cells {tri_mode_ethernet_mac_2_core/flow/tx_pause/sync_good_rx/data_sync_reg0}] 6 -datapath_only

# false path due to synced control path
set_max_delay -from [get_cells {tri_mode_ethernet_mac_2_core/*statistics_counters/rd_data_ref_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_2_core/*statistics_counters/ip2bus_data_reg[*]}] 6 -datapath_only
# CDC from the Tx and Rx statistics to the statistic counter logic
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_2_core/*statistics_counters/general_statisic_control[*].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_2_core/*statistics_counters/frame_size_bin_control1[*].frame_size_stats1/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_2_core/*statistics_counters/frame_size_bin_control2[*].frame_size_stats2/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_2_core/*statistics_counters/*/accumulator_gray_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_2_core/*statistics_counters/*/accum_gray_resync[*].sync_accum_gray_i/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_2_core/*statistics_counters/response_toggle_reg}] -to [get_cells {tri_mode_ethernet_mac_2_core/*statistics_counters/sync_response/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_2_core/*statistics_counters/request_toggle_reg}] -to [get_cells {tri_mode_ethernet_mac_2_core/*statistics_counters/sync_request/data_sync_reg0}] 6 -datapath_only


############################################################
# Ignore paths to resync flops
############################################################
set_false_path -to [get_pins -filter {REF_PIN_NAME =~ PRE} -of [get_cells -hier -regexp {.*\/async_rst.*}]]
set_false_path -to [get_pins -filter {REF_PIN_NAME =~ CLR} -of [get_cells -hier -regexp {.*\/async_rst.*}]]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_2_core/addr_filter_top/addr_regs.promiscuous_mode_reg_reg}] -to [get_cells {tri_mode_ethernet_mac_2_core/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_2_core/addr_filter_top/addr_regs.filter_enable_reg_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_2_core/addr_filter_top/address_filter_inst/address_filters[*].sync_enable/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_2_core/*managen/conf/update_pause_ad_int_reg}] -to [get_cells {tri_mode_ethernet_mac_2_core/addr_filter_top/address_filter_inst/sync_update/data_sync_reg0}] 6 -datapath_only

# set a false path for the clock path from the address filter dist rams
# the paths we care about timing are either the write interface OR the read interface
# this path is from the write to the read which should be ignored
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *tri_mode_ethernet_mac_2_core/addr_filter_top/address_filter_inst/*/DP}] -to  [get_cells -hierarchical -filter {NAME =~ *tri_mode_ethernet_mac_2_core/addr_filter_top/address_filter_inst/*addr*/bit_match*reg[*]}]

# the mdio interface is clocked from the axi clock but the clock is so slow is can be considered to be data
# the data related outputs are output on the falling edge of the MDC output so both can simply be considered to be multicycle paths
set_multicycle_path 10 -setup -from [get_cells {tri_mode_ethernet_mac_2_core/*managen/mdio_enabled.miim_clk_int_reg}  ] -throu [get_ports mdc]
set_multicycle_path 9 -hold -from   [get_cells {tri_mode_ethernet_mac_2_core/*managen/mdio_enabled.miim_clk_int_reg}  ] -throu [get_ports mdc]
set_multicycle_path 10 -setup -from [get_cells {tri_mode_ethernet_mac_2_core/*managen/mdio_enabled.phy/enable_reg_reg}] -throu [get_ports mdc]
set_multicycle_path 9 -hold -from   [get_cells {tri_mode_ethernet_mac_2_core/*managen/mdio_enabled.phy/enable_reg_reg}] -throu [get_ports mdc]
set_multicycle_path 10 -setup -from [get_cells {tri_mode_ethernet_mac_2_core/*managen/mdio_enabled.phy/mdio*reg}      ] -throu [get_ports mdio]
set_multicycle_path 9 -hold -from   [get_cells {tri_mode_ethernet_mac_2_core/*managen/mdio_enabled.phy/mdio*reg}      ] -throu [get_ports mdio]
# mdio has timing implications but slow interface so relaxed
set_false_path  -to [get_cells -hier -filter {NAME =~ *managen/mdio_enabled.phy/mdio_in_reg1_reg}]



