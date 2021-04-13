vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/mii_to_rmii_v2_0_20

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap mii_to_rmii_v2_0_20 riviera/mii_to_rmii_v2_0_20

vlog -work xil_defaultlib  -sv2k12 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work mii_to_rmii_v2_0_20 -93 \
"../../../ipstatic/hdl/mii_to_rmii_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../tri_mode_ethernet_mac_2_ex.srcs/sources_1/ip/mii_to_rmii_0/sim/mii_to_rmii_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

