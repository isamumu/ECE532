vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/mii_to_rmii_v2_0_20

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap mii_to_rmii_v2_0_20 modelsim_lib/msim/mii_to_rmii_v2_0_20

vlog -work xil_defaultlib -64 -incr -sv \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work mii_to_rmii_v2_0_20 -64 -93 \
"../../../ipstatic/hdl/mii_to_rmii_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../tri_mode_ethernet_mac_2_ex.srcs/sources_1/ip/mii_to_rmii_0/sim/mii_to_rmii_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

