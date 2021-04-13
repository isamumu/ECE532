
############################################################
# RX Clock period Constraints (per instance)               #
############################################################
# Receiver clock period constraints: please do not relax
set rx_clk [get_clocks -of [get_ports mii_rx_clk]]

############################################################
# Obtain input clocks from top level XDC                         #
############################################################
set ip_gtx_clk     [get_clocks -of_objects [get_ports gtx_clk]]

set ip_mii_tx_clk  [get_clocks -of_objects [get_ports mii_tx_clk]]

#
####
#######
##########
#############
#################
#BLOCK CONSTRAINTS


# Define data valid window with respect to the clock.
# The spec states that, worst case, the data is valid 10 ns before the clock edge.
# The worst case it to provide 10 ns hold time (a 20 ns window in total)
set_input_delay -clock $rx_clk -max 30            [get_ports {mii_rxd[*] mii_rx_er mii_rx_dv}]
set_input_delay -clock $rx_clk -min 10 -add_delay [get_ports {mii_rxd[*] mii_rx_er mii_rx_dv}]

############################################################
# Crossing of Clock Domain Constraints: please do not edit #
############################################################

# set a false path for the IPIF
set_max_delay -from [get_cells {axi4_lite_ipif/axi4_lite_ipif_top_wrapper/axi_lite_top/*/bus2ip_addr_i_reg[*]}] -to $ip_gtx_clk 6 -datapath_only

# set a false path for the static config registers
set_false_path -from [get_cells {tri_mode_ethernet_mac_2_core/*managen/conf/int_*reg[*]}] -to $ip_gtx_clk
set_false_path -from [get_cells {tri_mode_ethernet_mac_2_core/*managen/conf/int_*reg[*]}] -to $ip_mii_tx_clk
set_false_path -from [get_cells {tri_mode_ethernet_mac_2_core/*managen/conf/int_*reg[*]}] -to $rx_clk
set_false_path -from [get_cells {tri_mode_ethernet_mac_2_core/*managen/conf/int_*reg}] -to $ip_gtx_clk
set_false_path -from [get_cells {tri_mode_ethernet_mac_2_core/*managen/conf/int_*reg}] -to $ip_mii_tx_clk
set_false_path -from [get_cells {tri_mode_ethernet_mac_2_core/*managen/conf/int_*reg}] -to $rx_clk

