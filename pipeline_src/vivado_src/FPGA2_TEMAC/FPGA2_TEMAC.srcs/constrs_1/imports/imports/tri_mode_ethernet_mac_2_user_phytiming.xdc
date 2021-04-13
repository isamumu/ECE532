

## If the interface timing constraints cannot be met then these can be relaxed by adjusting the values in this
## xdc file which is set to be processed after all other xdc files
## this also allows for the IODELAY tap delay setting to be adjusted without needing to modify the xdc's
## provided with the core
## All commands in this file can be used directly in the tcl command window if the synthesized or implemented design is open.

# The MII interface requirement allows a 30ns setup and 10ns hold
#set_input_delay -clock $rx_clk_var -max 30            [get_ports {mii_rxd[*] mii_rx_er mii_rx_dv}]
#set_input_delay -clock $rx_clk_var -min 10 -add_delay [get_ports {mii_rxd[*] mii_rx_er mii_rx_dv}]

set_property MARK_DEBUG true [get_nets {mii_rxd[0]}]
set_property MARK_DEBUG true [get_nets {mii_rxd[1]}]
set_property MARK_DEBUG true [get_nets {mii_rxd[2]}]
set_property MARK_DEBUG true [get_nets {mii_rxd[3]}]
set_property MARK_DEBUG true [get_nets {mii_txd[0]}]
set_property MARK_DEBUG true [get_nets {mii_txd[1]}]
set_property MARK_DEBUG true [get_nets {mii_txd[2]}]
set_property MARK_DEBUG true [get_nets {mii_txd[3]}]
set_property MARK_DEBUG true [get_nets {trimac_fifo_block/rx_axis_mac_tdata[0]}]
set_property MARK_DEBUG true [get_nets {trimac_fifo_block/rx_axis_mac_tdata[1]}]
set_property MARK_DEBUG true [get_nets {trimac_fifo_block/rx_axis_mac_tdata[2]}]
set_property MARK_DEBUG true [get_nets {trimac_fifo_block/rx_axis_mac_tdata[3]}]
set_property MARK_DEBUG true [get_nets {trimac_fifo_block/rx_axis_mac_tdata[4]}]
set_property MARK_DEBUG true [get_nets {trimac_fifo_block/rx_axis_mac_tdata[5]}]
set_property MARK_DEBUG true [get_nets {trimac_fifo_block/rx_axis_mac_tdata[6]}]
set_property MARK_DEBUG true [get_nets {trimac_fifo_block/rx_axis_mac_tdata[7]}]
set_property MARK_DEBUG true [get_nets {trimac_fifo_block/tx_axis_mac_tdata[0]}]
set_property MARK_DEBUG true [get_nets {trimac_fifo_block/tx_axis_mac_tdata[1]}]
set_property MARK_DEBUG true [get_nets {trimac_fifo_block/tx_axis_mac_tdata[2]}]
set_property MARK_DEBUG true [get_nets {trimac_fifo_block/tx_axis_mac_tdata[3]}]
set_property MARK_DEBUG true [get_nets {trimac_fifo_block/tx_axis_mac_tdata[4]}]
set_property MARK_DEBUG true [get_nets {trimac_fifo_block/tx_axis_mac_tdata[5]}]
set_property MARK_DEBUG true [get_nets {trimac_fifo_block/tx_axis_mac_tdata[6]}]
set_property MARK_DEBUG true [get_nets {trimac_fifo_block/tx_axis_mac_tdata[7]}]


set_property MARK_DEBUG true [get_nets example_clocks/gtx_clk]
set_property MARK_DEBUG true [get_nets example_clocks/refclk]

set_property MARK_DEBUG true [get_nets {rmii2phy_txd_OBUF[0]}]
set_property MARK_DEBUG true [get_nets {rmii2phy_txd_OBUF[1]}]
set_property MARK_DEBUG true [get_nets rmii2phy_tx_en_OBUF]
set_property MARK_DEBUG true [get_nets {phy2rmii_rxd_IBUF[0]}]
set_property MARK_DEBUG true [get_nets {phy2rmii_rxd_IBUF[1]}]
set_property MARK_DEBUG true [get_nets phy2rmii_crs_dv_IBUF]
set_property MARK_DEBUG true [get_nets mii_tx_clk]
set_property MARK_DEBUG true [get_nets mii_rx_clk]
set_property MARK_DEBUG true [get_nets mii_rx_dv]
set_property MARK_DEBUG true [get_nets mii_tx_en]


set_property MARK_DEBUG true [get_nets refclk]
set_property MARK_DEBUG true [get_nets gtx_clk_bufg]
set_property MARK_DEBUG false [get_nets example_clocks/saxi_aclk]

set_property MARK_DEBUG true [get_nets s_axi_aclk]

set_property MARK_DEBUG true [get_nets chk_resetn]
set_property MARK_DEBUG true [get_nets glbl_rst_intn]
set_property MARK_DEBUG true [get_nets tx_fifo_resetn]
set_property MARK_DEBUG true [get_nets s_axi_resetn]
create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list example_clocks/inst/gtx_clk]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 4 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {mii_txd[0]} {mii_txd[1]} {mii_txd[2]} {mii_txd[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 2 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {phy2rmii_rxd_IBUF[0]} {phy2rmii_rxd_IBUF[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {trimac_fifo_block/tx_axis_mac_tdata[0]} {trimac_fifo_block/tx_axis_mac_tdata[1]} {trimac_fifo_block/tx_axis_mac_tdata[2]} {trimac_fifo_block/tx_axis_mac_tdata[3]} {trimac_fifo_block/tx_axis_mac_tdata[4]} {trimac_fifo_block/tx_axis_mac_tdata[5]} {trimac_fifo_block/tx_axis_mac_tdata[6]} {trimac_fifo_block/tx_axis_mac_tdata[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 2 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {rmii2phy_txd_OBUF[0]} {rmii2phy_txd_OBUF[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 8 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {trimac_fifo_block/rx_axis_mac_tdata[0]} {trimac_fifo_block/rx_axis_mac_tdata[1]} {trimac_fifo_block/rx_axis_mac_tdata[2]} {trimac_fifo_block/rx_axis_mac_tdata[3]} {trimac_fifo_block/rx_axis_mac_tdata[4]} {trimac_fifo_block/rx_axis_mac_tdata[5]} {trimac_fifo_block/rx_axis_mac_tdata[6]} {trimac_fifo_block/rx_axis_mac_tdata[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 4 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {mii_rxd[0]} {mii_rxd[1]} {mii_rxd[2]} {mii_rxd[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list chk_resetn]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list glbl_rst_intn]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list gtx_clk_bufg]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list mii_rx_clk]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list mii_rx_dv]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list mii_tx_clk]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list mii_tx_en]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list phy2rmii_crs_dv_IBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list example_clocks/refclk]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list rmii2phy_tx_en_OBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list s_axi_aclk]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list s_axi_resetn]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list tx_fifo_resetn]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets gtx_clk_bufg]
