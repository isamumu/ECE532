# Transmitter clock period constraints: please do not relax
# set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports sys_clock]
# create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports sys_clock]

#create_clock -name clk_in_p -period 5.000 [get_ports clk_in_p]
#set_input_jitter clk_in_p 0.050

set_property -dict {PACKAGE_PIN C9 IOSTANDARD LVCMOS33} [get_ports mdc_0]
set_property -dict {PACKAGE_PIN A9 IOSTANDARD LVCMOS33} [get_ports mdio_0]
#set_property -dict { PACKAGE_PIN B3    IOSTANDARD LVCMOS33 } [get_ports { ETH_RSTN }]; #IO_L10P_T1_AD15P_35 Sch=eth_rstn
set_property -dict {PACKAGE_PIN D9 IOSTANDARD LVCMOS33} [get_ports phy2rmii_crs_dv_0]
set_property -dict {PACKAGE_PIN C10 IOSTANDARD LVCMOS33} [get_ports phy2rmii_rx_er_0]
set_property -dict {PACKAGE_PIN C11 IOSTANDARD LVCMOS33} [get_ports {phy2rmii_rxd_0[0]}]
set_property -dict {PACKAGE_PIN D10 IOSTANDARD LVCMOS33} [get_ports {phy2rmii_rxd_0[1]}]
set_property -dict {PACKAGE_PIN B9 IOSTANDARD LVCMOS33} [get_ports rmii2phy_tx_en_0]
set_property -dict {PACKAGE_PIN A10 IOSTANDARD LVCMOS33} [get_ports {rmii2phy_txd_0[0]}]
set_property -dict {PACKAGE_PIN A8 IOSTANDARD LVCMOS33} [get_ports {rmii2phy_txd_0[1]}]
set_property -dict {PACKAGE_PIN D5 IOSTANDARD LVCMOS33} [get_ports refclk_0]
#set_property -dict { PACKAGE_PIN B8    IOSTANDARD LVCMOS33 } [get_ports { ETH_INTN }]; #IO_L12P_T1_MRCC_16 Sch=eth_intn

