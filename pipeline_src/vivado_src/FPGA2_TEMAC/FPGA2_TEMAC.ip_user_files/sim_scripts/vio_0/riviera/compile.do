vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../tri_mode_ethernet_mac_2_ex.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../tri_mode_ethernet_mac_2_ex.srcs/sources_1/ip/vio_0/hdl" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../tri_mode_ethernet_mac_2_ex.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../tri_mode_ethernet_mac_2_ex.srcs/sources_1/ip/vio_0/hdl" \
"../../../../tri_mode_ethernet_mac_2_ex.srcs/sources_1/ip/vio_0/sim/vio_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

