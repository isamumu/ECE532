vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xbip_utils_v3_0_9
vlib modelsim_lib/msim/xbip_pipe_v3_0_5
vlib modelsim_lib/msim/xbip_bram18k_v3_0_5
vlib modelsim_lib/msim/mult_gen_v12_0_14
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/tri_mode_ethernet_mac_v9_0_13

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap xbip_utils_v3_0_9 modelsim_lib/msim/xbip_utils_v3_0_9
vmap xbip_pipe_v3_0_5 modelsim_lib/msim/xbip_pipe_v3_0_5
vmap xbip_bram18k_v3_0_5 modelsim_lib/msim/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 modelsim_lib/msim/mult_gen_v12_0_14
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap tri_mode_ethernet_mac_v9_0_13 modelsim_lib/msim/tri_mode_ethernet_mac_v9_0_13

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../tri_mode_ethernet_mac_2_ex.srcs/sources_1/ip/tri_mode_ethernet_mac_2/header_files" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_9 -64 -93 \
"../../../ipstatic/ipshared/0da8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -64 -93 \
"../../../ipstatic/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -64 -93 \
"../../../ipstatic/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -64 -93 \
"../../../ipstatic/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../ipstatic/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vlog -work tri_mode_ethernet_mac_v9_0_13 -64 -incr "+incdir+../../../../tri_mode_ethernet_mac_2_ex.srcs/sources_1/ip/tri_mode_ethernet_mac_2/header_files" \
"../../../ipstatic/ipshared/84d8/hdl/tri_mode_ethernet_mac_v9_0_rfs.v" \

vcom -work tri_mode_ethernet_mac_v9_0_13 -64 -93 \
"../../../ipstatic/ipshared/84d8/hdl/tri_mode_ethernet_mac_v9_0_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../tri_mode_ethernet_mac_2_ex.srcs/sources_1/ip/tri_mode_ethernet_mac_2/synth/tri_mode_ethernet_mac_2_axi4_lite_ipif_top.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../tri_mode_ethernet_mac_2_ex.srcs/sources_1/ip/tri_mode_ethernet_mac_2/header_files" \
"../../../../tri_mode_ethernet_mac_2_ex.srcs/sources_1/ip/tri_mode_ethernet_mac_2/synth/tri_mode_ethernet_mac_2_axi4_lite_ipif_wrapper.v" \
"../../../../tri_mode_ethernet_mac_2_ex.srcs/sources_1/ip/tri_mode_ethernet_mac_2/synth/physical/tri_mode_ethernet_mac_2_mii_if.v" \
"../../../../tri_mode_ethernet_mac_2_ex.srcs/sources_1/ip/tri_mode_ethernet_mac_2/synth/statistics/tri_mode_ethernet_mac_2_vector_decode.v" \
"../../../../tri_mode_ethernet_mac_2_ex.srcs/sources_1/ip/tri_mode_ethernet_mac_2/synth/tri_mode_ethernet_mac_2_block.v" \
"../../../../tri_mode_ethernet_mac_2_ex.srcs/sources_1/ip/tri_mode_ethernet_mac_2/synth/tri_mode_ethernet_mac_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

