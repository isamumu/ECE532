
>
Refreshing IP repositories
234*coregenZ19-234h px� 
e
 Loaded user IP repository '%s'.
1135*coregen2

w:/ip_repo2default:defaultZ19-1700h px� 
p
 Loaded user IP repository '%s'.
1135*coregen2)
w:/TEMAC_FPGA1_no_xdc2default:defaultZ19-1700h px� 
�
"Loaded Vivado IP repository '%s'.
1332*coregen28
$C:/DESL/Xilinx/Vivado/2018.3/data/ip2default:defaultZ19-2313h px� 
�
jDuplicate IP found for '%s'. The one found in IP location '%s' will take precedence over the same IP in %s1161*coregen2F
2user.org:user:fpga1_deployment_receiving_block:1.02default:default2?
+w:/ip_repo/fpga1_deployment_receiving_block2default:default2Q
=location w:/ip_repo/ip_repo/fpga1_deployment_receiving_block
2default:defaultZ19-1663h px� 
�
jDuplicate IP found for '%s'. The one found in IP location '%s' will take precedence over the same IP in %s1161*coregen21
user.org:user:path_switch:1.02default:default2-
w:/ip_repo/ip_path_switch2default:default2?
+location w:/ip_repo/ip_repo/ip_path_switch
2default:defaultZ19-1663h px� 
�
jDuplicate IP found for '%s'. The one found in IP location '%s' will take precedence over the same IP in %s1161*coregen2/
user.org:user:transpose:1.02default:default23
w:/ip_repo/ip_repo/ip_transpose2default:default25
!location w:/ip_repo/ip_transpose
2default:defaultZ19-1663h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2'
update_ip_catalog: 2default:default2
00:00:032default:default2
00:00:062default:default2
359.3592default:default2
36.4382default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
add_files: 2default:default2
00:00:102default:default2
00:00:112default:default2
484.4182default:default2
125.0592default:defaultZ17-268h px� 
�
Command: %s
53*	vivadotcl2O
;synth_design -top canteloupe_wrapper -part xc7a100tcsg324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 
�
%s*synth2�
xStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 588.961 ; gain = 104.543
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2&
canteloupe_wrapper2default:default2
 2default:default2s
]C:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/hdl/canteloupe_wrapper.v2default:default2
122default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

canteloupe2default:default2
 2default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
132default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys20
canteloupe_axi_fifo_mm_s_0_02default:default2
 2default:default2�
}C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_axi_fifo_mm_s_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
canteloupe_axi_fifo_mm_s_0_02default:default2
 2default:default2
12default:default2
12default:default2�
}C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_axi_fifo_mm_s_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2#
axi_fifo_mm_s_02default:default20
canteloupe_axi_fifo_mm_s_0_02default:default2
302default:default2
262default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
3052default:default8@Z8-350h px� 
�
synthesizing module '%s'%s4497*oasys2/
canteloupe_axi_uartlite_0_02default:default2
 2default:default2�
|C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_axi_uartlite_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
canteloupe_axi_uartlite_0_02default:default2
 2default:default2
22default:default2
12default:default2�
|C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_axi_uartlite_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2*
canteloupe_clk_wiz_1_02default:default2
 2default:default2�
wC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_clk_wiz_1_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
canteloupe_clk_wiz_1_02default:default2
 2default:default2
32default:default2
12default:default2�
wC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_clk_wiz_1_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys27
#canteloupe_frame_generator_cust_0_02default:default2
 2default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_frame_generator_cust_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys27
#canteloupe_frame_generator_cust_0_02default:default2
 2default:default2
42default:default2
12default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_frame_generator_cust_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2&
canteloupe_mdm_1_02default:default2
 2default:default2�
sC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_mdm_1_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
canteloupe_mdm_1_02default:default2
 2default:default2
52default:default2
12default:default2�
sC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_mdm_1_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2-
canteloupe_microblaze_0_02default:default2
 2default:default2�
zC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_microblaze_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
canteloupe_microblaze_0_02default:default2
 2default:default2
62default:default2
12default:default2�
zC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_microblaze_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2 
microblaze_02default:default2-
canteloupe_microblaze_0_02default:default2
712default:default2
642default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
3872default:default8@Z8-350h px� 
�
synthesizing module '%s'%s4497*oasys26
"canteloupe_microblaze_0_axi_intc_02default:default2
 2default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_microblaze_0_axi_intc_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
"canteloupe_microblaze_0_axi_intc_02default:default2
 2default:default2
72default:default2
12default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_microblaze_0_axi_intc_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys28
$canteloupe_microblaze_0_axi_periph_02default:default2
 2default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
8082default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2,
m00_couplers_imp_1FM5A1E2default:default2
 2default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
17012default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2(
canteloupe_auto_ds_02default:default2
 2default:default2�
uC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_auto_ds_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
canteloupe_auto_ds_02default:default2
 2default:default2
82default:default2
12default:default2�
uC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_auto_ds_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
auto_ds2default:default2(
canteloupe_auto_ds_02default:default2
402default:default2
382default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
18602default:default8@Z8-350h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m00_couplers_imp_1FM5A1E2default:default2
 2default:default2
92default:default2
12default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
17012default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
m01_couplers_imp_1PZAEL02default:default2
 2default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
19012default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2(
canteloupe_auto_ds_12default:default2
 2default:default2�
uC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_auto_ds_1_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
canteloupe_auto_ds_12default:default2
 2default:default2
102default:default2
12default:default2�
uC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_auto_ds_1_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
auto_ds2default:default2(
canteloupe_auto_ds_12default:default2
402default:default2
382default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
20602default:default8@Z8-350h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
m01_couplers_imp_1PZAEL02default:default2
 2default:default2
112default:default2
12default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
19012default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
m02_couplers_imp_VAJQFY2default:default2
 2default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
21012default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2(
canteloupe_auto_cc_02default:default2
 2default:default2�
uC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_auto_cc_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
canteloupe_auto_cc_02default:default2
 2default:default2
122default:default2
12default:default2�
uC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_auto_cc_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
canteloupe_auto_pc_02default:default2
 2default:default2�
uC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_auto_pc_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
canteloupe_auto_pc_02default:default2
 2default:default2
132default:default2
12default:default2�
uC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_auto_pc_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
auto_pc2default:default2(
canteloupe_auto_pc_02default:default2
562default:default2
542default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
23902default:default8@Z8-350h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m02_couplers_imp_VAJQFY2default:default2
 2default:default2
142default:default2
12default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
21012default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2+
m03_couplers_imp_60LCD42default:default2
 2default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
24472default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2(
canteloupe_auto_ds_22default:default2
 2default:default2�
uC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_auto_ds_2_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
canteloupe_auto_ds_22default:default2
 2default:default2
152default:default2
12default:default2�
uC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_auto_ds_2_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
auto_ds2default:default2(
canteloupe_auto_ds_22default:default2
402default:default2
382default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
26062default:default8@Z8-350h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
m03_couplers_imp_60LCD42default:default2
 2default:default2
162default:default2
12default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
24472default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
s00_couplers_imp_1O071EB2default:default2
 2default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
28812default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2(
canteloupe_auto_us_02default:default2
 2default:default2�
uC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_auto_us_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
canteloupe_auto_us_02default:default2
 2default:default2
172default:default2
12default:default2�
uC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_auto_us_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
s00_couplers_imp_1O071EB2default:default2
 2default:default2
182default:default2
12default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
28812default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
s01_couplers_imp_1GHA8B92default:default2
 2default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
30912default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2(
canteloupe_auto_us_12default:default2
 2default:default2�
uC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_auto_us_1_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
canteloupe_auto_us_12default:default2
 2default:default2
192default:default2
12default:default2�
uC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_auto_us_1_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
s01_couplers_imp_1GHA8B92default:default2
 2default:default2
202default:default2
12default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
30912default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2%
canteloupe_xbar_02default:default2
 2default:default2�
rC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_xbar_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
canteloupe_xbar_02default:default2
 2default:default2
212default:default2
12default:default2�
rC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_xbar_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12default:default2!
s_axi_awready2default:default2
22default:default2%
canteloupe_xbar_02default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
16862default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
22default:default2
s_axi_bresp2default:default2
42default:default2%
canteloupe_xbar_02default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
16892default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12default:default2 
s_axi_bvalid2default:default2
22default:default2%
canteloupe_xbar_02default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
16902default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12default:default2 
s_axi_wready2default:default2
22default:default2%
canteloupe_xbar_02default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
16962default:default8@Z8-689h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$canteloupe_microblaze_0_axi_periph_02default:default2
 2default:default2
222default:default2
12default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
8082default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys29
%microblaze_0_local_memory_imp_13VZ7DK2default:default2
 2default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
26472default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys23
canteloupe_dlmb_bram_if_cntlr_02default:default2
 2default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_dlmb_bram_if_cntlr_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
canteloupe_dlmb_bram_if_cntlr_02default:default2
 2default:default2
232default:default2
12default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_dlmb_bram_if_cntlr_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
canteloupe_dlmb_v10_02default:default2
 2default:default2�
vC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_dlmb_v10_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
canteloupe_dlmb_v10_02default:default2
 2default:default2
242default:default2
12default:default2�
vC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_dlmb_v10_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
dlmb_v102default:default2)
canteloupe_dlmb_v10_02default:default2
252default:default2
242default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
27932default:default8@Z8-350h px� 
�
synthesizing module '%s'%s4497*oasys23
canteloupe_ilmb_bram_if_cntlr_02default:default2
 2default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_ilmb_bram_if_cntlr_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
canteloupe_ilmb_bram_if_cntlr_02default:default2
 2default:default2
252default:default2
12default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_ilmb_bram_if_cntlr_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2)
canteloupe_ilmb_v10_02default:default2
 2default:default2�
vC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_ilmb_v10_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
canteloupe_ilmb_v10_02default:default2
 2default:default2
262default:default2
12default:default2�
vC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_ilmb_v10_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
ilmb_v102default:default2)
canteloupe_ilmb_v10_02default:default2
252default:default2
242default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
28392default:default8@Z8-350h px� 
�
synthesizing module '%s'%s4497*oasys2)
canteloupe_lmb_bram_02default:default2
 2default:default2�
vC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_lmb_bram_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
canteloupe_lmb_bram_02default:default2
 2default:default2
272default:default2
12default:default2�
vC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_lmb_bram_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
lmb_bram2default:default2)
canteloupe_lmb_bram_02default:default2
162default:default2
142default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
28642default:default8@Z8-350h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys29
%microblaze_0_local_memory_imp_13VZ7DK2default:default2
 2default:default2
282default:default2
12default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
26472default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys26
"canteloupe_microblaze_0_xlconcat_02default:default2
 2default:default2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_microblaze_0_xlconcat_0/synth/canteloupe_microblaze_0_xlconcat_0.v2default:default2
582default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
 2default:default2�
mc:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v2default:default2
142default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter IN0_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter IN1_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter IN2_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter IN3_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter IN4_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter IN5_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter IN6_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter IN7_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter IN8_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter IN9_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN10_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN11_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN12_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN13_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN14_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN15_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN16_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN17_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN18_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN19_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN20_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN21_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN22_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN23_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN24_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN25_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN26_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN27_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN28_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN29_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN30_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter IN31_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter dout_width bound to: 1 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter NUM_PORTS bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
 2default:default2
292default:default2
12default:default2�
mc:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v2default:default2
142default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
"canteloupe_microblaze_0_xlconcat_02default:default2
 2default:default2
302default:default2
12default:default2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_microblaze_0_xlconcat_0/synth/canteloupe_microblaze_0_xlconcat_0.v2default:default2
582default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2.
canteloupe_mig_7series_0_02default:default2
 2default:default2�
{C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_mig_7series_0_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
canteloupe_mig_7series_0_02default:default2
 2default:default2
312default:default2
12default:default2�
{C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_mig_7series_0_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2!
mig_7series_02default:default2.
canteloupe_mig_7series_0_02default:default2
662default:default2
552default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
6292default:default8@Z8-350h px� 
�
synthesizing module '%s'%s4497*oasys2.
canteloupe_mii_to_rmii_0_02default:default2
 2default:default2�
{C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_mii_to_rmii_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2.
canteloupe_mii_to_rmii_0_02default:default2
 2default:default2
322default:default2
12default:default2�
{C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_mii_to_rmii_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2!
mii_to_rmii_02default:default2.
canteloupe_mii_to_rmii_0_02default:default2
172default:default2
152default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
6852default:default8@Z8-350h px� 
�
synthesizing module '%s'%s4497*oasys2,
canteloupe_quantizer_0_02default:default2
 2default:default2�
yC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_quantizer_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
canteloupe_quantizer_0_02default:default2
 2default:default2
332default:default2
12default:default2�
yC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_quantizer_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys23
canteloupe_rst_clk_wiz_1_100M_02default:default2
 2default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_rst_clk_wiz_1_100M_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys23
canteloupe_rst_clk_wiz_1_100M_02default:default2
 2default:default2
342default:default2
12default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_rst_clk_wiz_1_100M_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2&
rst_clk_wiz_1_100M2default:default23
canteloupe_rst_clk_wiz_1_100M_02default:default2
102default:default2
82default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
7122default:default8@Z8-350h px� 
�
synthesizing module '%s'%s4497*oasys26
"canteloupe_rst_mig_7series_0_81M_02default:default2
 2default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_rst_mig_7series_0_81M_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
"canteloupe_rst_mig_7series_0_81M_02default:default2
 2default:default2
352default:default2
12default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_rst_mig_7series_0_81M_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2)
rst_mig_7series_0_81M2default:default26
"canteloupe_rst_mig_7series_0_81M_02default:default2
102default:default2
62default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
7212default:default8@Z8-350h px� 
�
synthesizing module '%s'%s4497*oasys25
!canteloupe_run_length_encoder_0_02default:default2
 2default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_run_length_encoder_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!canteloupe_run_length_encoder_0_02default:default2
 2default:default2
362default:default2
12default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_run_length_encoder_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
7392default:default8@Z8-4446h px� 
�
synthesizing module '%s'%s4497*oasys2-
canteloupe_system_ila_0_02default:default2
 2default:default2�
zC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_system_ila_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
canteloupe_system_ila_0_02default:default2
 2default:default2
372default:default2
12default:default2�
zC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_system_ila_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys27
#canteloupe_tri_mode_ethernet_ma_1_02default:default2
 2default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_tri_mode_ethernet_ma_1_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys27
#canteloupe_tri_mode_ethernet_ma_1_02default:default2
 2default:default2
382default:default2
12default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_tri_mode_ethernet_ma_1_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2*
tri_mode_ethernet_ma_12default:default27
#canteloupe_tri_mode_ethernet_ma_1_02default:default2
222default:default2
192default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
7622default:default8@Z8-350h px� 
�
synthesizing module '%s'%s4497*oasys24
 canteloupe_two_dimension_dct_0_02default:default2
 2default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_two_dimension_dct_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
 canteloupe_two_dimension_dct_0_02default:default2
 2default:default2
392default:default2
12default:default2�
�C:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_two_dimension_dct_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2-
canteloupe_xlconstant_0_02default:default2
 2default:default2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_xlconstant_0_0/synth/canteloupe_xlconstant_0_0.v2default:default2
572default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys20
xlconstant_v1_1_5_xlconstant2default:default2
 2default:default2�
oc:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v2default:default2
232default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter CONST_VAL bound to: 0 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter CONST_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
xlconstant_v1_1_5_xlconstant2default:default2
 2default:default2
402default:default2
12default:default2�
oc:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
canteloupe_xlconstant_0_02default:default2
 2default:default2
412default:default2
12default:default2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_xlconstant_0_0/synth/canteloupe_xlconstant_0_0.v2default:default2
572default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2*
canteloupe_zig_zag_0_02default:default2
 2default:default2�
wC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_zig_zag_0_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
canteloupe_zig_zag_0_02default:default2
 2default:default2
422default:default2
12default:default2�
wC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/.Xil/Vivado-5392-BA3145WS01/realtime/canteloupe_zig_zag_0_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

canteloupe2default:default2
 2default:default2
432default:default2
12default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
132default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
canteloupe_wrapper2default:default2
 2default:default2
442default:default2
12default:default2s
]C:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/hdl/canteloupe_wrapper.v2default:default2
122default:default8@Z8-6155h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In1[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In2[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In3[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In4[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In5[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In6[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In7[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In8[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In9[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In10[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In11[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In12[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In13[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In14[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In15[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In16[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In17[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In18[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In19[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In20[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In21[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In22[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In23[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In24[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In25[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In26[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In27[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In28[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In29[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In30[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
xlconcat_v2_1_1_xlconcat2default:default2
In31[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
s01_couplers_imp_1GHA8B92default:default2
M_ACLK2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
s01_couplers_imp_1GHA8B92default:default2
	M_ARESETN2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
s00_couplers_imp_1O071EB2default:default2
M_ACLK2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
s00_couplers_imp_1O071EB2default:default2
	M_ARESETN2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2+
m03_couplers_imp_60LCD42default:default2
M_ACLK2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2+
m03_couplers_imp_60LCD42default:default2
	M_ARESETN2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2+
m02_couplers_imp_VAJQFY2default:default2$
S_AXI_araddr[31]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2+
m02_couplers_imp_VAJQFY2default:default2$
S_AXI_araddr[30]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2+
m02_couplers_imp_VAJQFY2default:default2$
S_AXI_araddr[29]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2+
m02_couplers_imp_VAJQFY2default:default2$
S_AXI_araddr[28]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2+
m02_couplers_imp_VAJQFY2default:default2$
S_AXI_araddr[27]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2+
m02_couplers_imp_VAJQFY2default:default2$
S_AXI_awaddr[31]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2+
m02_couplers_imp_VAJQFY2default:default2$
S_AXI_awaddr[30]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2+
m02_couplers_imp_VAJQFY2default:default2$
S_AXI_awaddr[29]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2+
m02_couplers_imp_VAJQFY2default:default2$
S_AXI_awaddr[28]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2+
m02_couplers_imp_VAJQFY2default:default2$
S_AXI_awaddr[27]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
m01_couplers_imp_1PZAEL02default:default2
M_ACLK2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
m01_couplers_imp_1PZAEL02default:default2
	M_ARESETN2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
m00_couplers_imp_1FM5A1E2default:default2
M_ACLK2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2,
m00_couplers_imp_1FM5A1E2default:default2
	M_ARESETN2default:defaultZ8-3331h px� 
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 646.398 ; gain = 161.980
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 646.398 ; gain = 161.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 646.398 ; gain = 161.980
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_microblaze_0_0/canteloupe_microblaze_0_0/canteloupe_microblaze_0_0_in_context.xdc2default:default2/
canteloupe_i/microblaze_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_microblaze_0_0/canteloupe_microblaze_0_0/canteloupe_microblaze_0_0_in_context.xdc2default:default2/
canteloupe_i/microblaze_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_dlmb_v10_0/canteloupe_dlmb_v10_0/canteloupe_ilmb_v10_0_in_context.xdc2default:default2E
/canteloupe_i/microblaze_0_local_memory/dlmb_v10	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_dlmb_v10_0/canteloupe_dlmb_v10_0/canteloupe_ilmb_v10_0_in_context.xdc2default:default2E
/canteloupe_i/microblaze_0_local_memory/dlmb_v10	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_ilmb_v10_0/canteloupe_ilmb_v10_0/canteloupe_ilmb_v10_0_in_context.xdc2default:default2E
/canteloupe_i/microblaze_0_local_memory/ilmb_v10	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_ilmb_v10_0/canteloupe_ilmb_v10_0/canteloupe_ilmb_v10_0_in_context.xdc2default:default2E
/canteloupe_i/microblaze_0_local_memory/ilmb_v10	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_dlmb_bram_if_cntlr_0/canteloupe_dlmb_bram_if_cntlr_0/canteloupe_dlmb_bram_if_cntlr_0_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_local_memory/dlmb_bram_if_cntlr	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_dlmb_bram_if_cntlr_0/canteloupe_dlmb_bram_if_cntlr_0/canteloupe_dlmb_bram_if_cntlr_0_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_local_memory/dlmb_bram_if_cntlr	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_ilmb_bram_if_cntlr_0/canteloupe_ilmb_bram_if_cntlr_0/canteloupe_dlmb_bram_if_cntlr_0_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_local_memory/ilmb_bram_if_cntlr	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_ilmb_bram_if_cntlr_0/canteloupe_ilmb_bram_if_cntlr_0/canteloupe_dlmb_bram_if_cntlr_0_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_local_memory/ilmb_bram_if_cntlr	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_lmb_bram_0/canteloupe_lmb_bram_0/canteloupe_lmb_bram_0_in_context.xdc2default:default2E
/canteloupe_i/microblaze_0_local_memory/lmb_bram	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_lmb_bram_0/canteloupe_lmb_bram_0/canteloupe_lmb_bram_0_in_context.xdc2default:default2E
/canteloupe_i/microblaze_0_local_memory/lmb_bram	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_xbar_0/canteloupe_xbar_0/canteloupe_xbar_0_in_context.xdc2default:default2?
)canteloupe_i/microblaze_0_axi_periph/xbar	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_xbar_0/canteloupe_xbar_0/canteloupe_xbar_0_in_context.xdc2default:default2?
)canteloupe_i/microblaze_0_axi_periph/xbar	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_microblaze_0_axi_intc_0/canteloupe_microblaze_0_axi_intc_0/canteloupe_microblaze_0_axi_intc_0_in_context.xdc2default:default28
"canteloupe_i/microblaze_0_axi_intc	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_microblaze_0_axi_intc_0/canteloupe_microblaze_0_axi_intc_0/canteloupe_microblaze_0_axi_intc_0_in_context.xdc2default:default28
"canteloupe_i/microblaze_0_axi_intc	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_mdm_1_0/canteloupe_mdm_1_0/canteloupe_mdm_1_0_in_context.xdc2default:default2(
canteloupe_i/mdm_1	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_mdm_1_0/canteloupe_mdm_1_0/canteloupe_mdm_1_0_in_context.xdc2default:default2(
canteloupe_i/mdm_1	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_clk_wiz_1_0/canteloupe_clk_wiz_1_0/canteloupe_clk_wiz_1_0_in_context.xdc2default:default2,
canteloupe_i/clk_wiz_1	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_clk_wiz_1_0/canteloupe_clk_wiz_1_0/canteloupe_clk_wiz_1_0_in_context.xdc2default:default2,
canteloupe_i/clk_wiz_1	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_rst_clk_wiz_1_100M_0/canteloupe_rst_clk_wiz_1_100M_0/canteloupe_rst_clk_wiz_1_100M_0_in_context.xdc2default:default25
canteloupe_i/rst_clk_wiz_1_100M	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_rst_clk_wiz_1_100M_0/canteloupe_rst_clk_wiz_1_100M_0/canteloupe_rst_clk_wiz_1_100M_0_in_context.xdc2default:default25
canteloupe_i/rst_clk_wiz_1_100M	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_axi_uartlite_0_0/canteloupe_axi_uartlite_0_0/canteloupe_axi_uartlite_0_0_in_context.xdc2default:default21
canteloupe_i/axi_uartlite_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_axi_uartlite_0_0/canteloupe_axi_uartlite_0_0/canteloupe_axi_uartlite_0_0_in_context.xdc2default:default21
canteloupe_i/axi_uartlite_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_mig_7series_0_0/canteloupe_mig_7series_0_0/canteloupe_mig_7series_0_0_in_context.xdc2default:default20
canteloupe_i/mig_7series_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_mig_7series_0_0/canteloupe_mig_7series_0_0/canteloupe_mig_7series_0_0_in_context.xdc2default:default20
canteloupe_i/mig_7series_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_rst_mig_7series_0_81M_0/canteloupe_rst_mig_7series_0_81M_0/canteloupe_rst_mig_7series_0_81M_0_in_context.xdc2default:default28
"canteloupe_i/rst_mig_7series_0_81M	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_rst_mig_7series_0_81M_0/canteloupe_rst_mig_7series_0_81M_0/canteloupe_rst_mig_7series_0_81M_0_in_context.xdc2default:default28
"canteloupe_i/rst_mig_7series_0_81M	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_axi_fifo_mm_s_0_0/canteloupe_axi_fifo_mm_s_0_0/canteloupe_axi_fifo_mm_s_0_0_in_context.xdc2default:default22
canteloupe_i/axi_fifo_mm_s_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_axi_fifo_mm_s_0_0/canteloupe_axi_fifo_mm_s_0_0/canteloupe_axi_fifo_mm_s_0_0_in_context.xdc2default:default22
canteloupe_i/axi_fifo_mm_s_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_system_ila_0_0/canteloupe_system_ila_0_0/canteloupe_system_ila_0_0_in_context.xdc2default:default2/
canteloupe_i/system_ila_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_system_ila_0_0/canteloupe_system_ila_0_0/canteloupe_system_ila_0_0_in_context.xdc2default:default2/
canteloupe_i/system_ila_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_two_dimension_dct_0_0/canteloupe_two_dimension_dct_0_0/canteloupe_two_dimension_dct_0_0_in_context.xdc2default:default26
 canteloupe_i/two_dimension_dct_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_two_dimension_dct_0_0/canteloupe_two_dimension_dct_0_0/canteloupe_two_dimension_dct_0_0_in_context.xdc2default:default26
 canteloupe_i/two_dimension_dct_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_quantizer_0_0/canteloupe_quantizer_0_0/canteloupe_quantizer_0_0_in_context.xdc2default:default2.
canteloupe_i/quantizer_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_quantizer_0_0/canteloupe_quantizer_0_0/canteloupe_quantizer_0_0_in_context.xdc2default:default2.
canteloupe_i/quantizer_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_zig_zag_0_0/canteloupe_zig_zag_0_0/canteloupe_zig_zag_0_0_in_context.xdc2default:default2,
canteloupe_i/zig_zag_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_zig_zag_0_0/canteloupe_zig_zag_0_0/canteloupe_zig_zag_0_0_in_context.xdc2default:default2,
canteloupe_i/zig_zag_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_run_length_encoder_0_0/canteloupe_run_length_encoder_0_0/canteloupe_run_length_encoder_0_0_in_context.xdc2default:default27
!canteloupe_i/run_length_encoder_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_run_length_encoder_0_0/canteloupe_run_length_encoder_0_0/canteloupe_run_length_encoder_0_0_in_context.xdc2default:default27
!canteloupe_i/run_length_encoder_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_frame_generator_cust_0_0/canteloupe_frame_generator_cust_0_0/canteloupe_frame_generator_cust_0_0_in_context.xdc2default:default29
#canteloupe_i/frame_generator_cust_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_frame_generator_cust_0_0/canteloupe_frame_generator_cust_0_0/canteloupe_frame_generator_cust_0_0_in_context.xdc2default:default29
#canteloupe_i/frame_generator_cust_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_tri_mode_ethernet_ma_1_0/canteloupe_tri_mode_ethernet_ma_1_0/canteloupe_tri_mode_ethernet_ma_1_0_in_context.xdc2default:default29
#canteloupe_i/tri_mode_ethernet_ma_1	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_tri_mode_ethernet_ma_1_0/canteloupe_tri_mode_ethernet_ma_1_0/canteloupe_tri_mode_ethernet_ma_1_0_in_context.xdc2default:default29
#canteloupe_i/tri_mode_ethernet_ma_1	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_mii_to_rmii_0_0/canteloupe_mii_to_rmii_0_0/canteloupe_mii_to_rmii_0_0_in_context.xdc2default:default20
canteloupe_i/mii_to_rmii_0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_mii_to_rmii_0_0/canteloupe_mii_to_rmii_0_0/canteloupe_mii_to_rmii_0_0_in_context.xdc2default:default20
canteloupe_i/mii_to_rmii_0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_us_0/canteloupe_auto_us_0/canteloupe_auto_us_0_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_axi_periph/s00_couplers/auto_us	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_us_0/canteloupe_auto_us_0/canteloupe_auto_us_0_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_axi_periph/s00_couplers/auto_us	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_us_1/canteloupe_auto_us_1/canteloupe_auto_us_1_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_axi_periph/s01_couplers/auto_us	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_us_1/canteloupe_auto_us_1/canteloupe_auto_us_1_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_axi_periph/s01_couplers/auto_us	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_ds_0/canteloupe_auto_ds_0/canteloupe_auto_ds_1_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_axi_periph/m00_couplers/auto_ds	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_ds_0/canteloupe_auto_ds_0/canteloupe_auto_ds_1_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_axi_periph/m00_couplers/auto_ds	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_ds_1/canteloupe_auto_ds_1/canteloupe_auto_ds_1_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_axi_periph/m01_couplers/auto_ds	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_ds_1/canteloupe_auto_ds_1/canteloupe_auto_ds_1_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_axi_periph/m01_couplers/auto_ds	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_cc_0/canteloupe_auto_cc_0/canteloupe_auto_cc_0_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_axi_periph/m02_couplers/auto_cc	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_cc_0/canteloupe_auto_cc_0/canteloupe_auto_cc_0_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_axi_periph/m02_couplers/auto_cc	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_pc_0/canteloupe_auto_pc_0/canteloupe_auto_pc_0_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_axi_periph/m02_couplers/auto_pc	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_pc_0/canteloupe_auto_pc_0/canteloupe_auto_pc_0_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_axi_periph/m02_couplers/auto_pc	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_ds_2/canteloupe_auto_ds_2/canteloupe_auto_ds_1_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_axi_periph/m03_couplers/auto_ds	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/ip/canteloupe_auto_ds_2/canteloupe_auto_ds_2/canteloupe_auto_ds_1_in_context.xdc2default:default2O
9canteloupe_i/microblaze_0_axi_periph/m03_couplers/auto_ds	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default8Z20-179h px� 
�
No nets matched '%s'.
507*	planAhead2*
rmii2phy_txd_0_OBUF[0]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
12default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2*
rmii2phy_txd_0_OBUF[1]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
22default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2)
rmii2phy_tx_en_0_OBUF2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
32default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2G
3canteloupe_i/frame_generator_cust_0/rx_mic_TDATA[0]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
112default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2G
3canteloupe_i/frame_generator_cust_0/rx_mic_TDATA[6]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
122default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2G
3canteloupe_i/frame_generator_cust_0/rx_mic_TDATA[7]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
132default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2G
3canteloupe_i/frame_generator_cust_0/rx_mic_TDATA[9]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
142default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2H
4canteloupe_i/frame_generator_cust_0/rx_mic_TDATA[11]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
152default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2H
4canteloupe_i/frame_generator_cust_0/rx_mic_TDATA[13]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
162default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2G
3canteloupe_i/frame_generator_cust_0/rx_mic_TDATA[4]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
172default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2H
4canteloupe_i/frame_generator_cust_0/rx_mic_TDATA[15]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
182default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2G
3canteloupe_i/frame_generator_cust_0/rx_mic_TDATA[1]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
192default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2G
3canteloupe_i/frame_generator_cust_0/rx_mic_TDATA[3]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
202default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2G
3canteloupe_i/frame_generator_cust_0/rx_mic_TDATA[5]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
212default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2H
4canteloupe_i/frame_generator_cust_0/rx_mic_TDATA[10]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
222default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2G
3canteloupe_i/frame_generator_cust_0/rx_mic_TDATA[2]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
232default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2G
3canteloupe_i/frame_generator_cust_0/rx_mic_TDATA[8]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
242default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2H
4canteloupe_i/frame_generator_cust_0/rx_mic_TDATA[12]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
252default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2H
4canteloupe_i/frame_generator_cust_0/rx_mic_TDATA[14]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
262default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2H
4canteloupe_i/frame_generator_cust_0/tx_fifo_TDATA[0]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
272default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2H
4canteloupe_i/frame_generator_cust_0/tx_fifo_TDATA[1]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
282default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2H
4canteloupe_i/frame_generator_cust_0/tx_fifo_TDATA[2]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
292default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2H
4canteloupe_i/frame_generator_cust_0/tx_fifo_TDATA[3]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
302default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2H
4canteloupe_i/frame_generator_cust_0/tx_fifo_TDATA[4]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
312default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2H
4canteloupe_i/frame_generator_cust_0/tx_fifo_TDATA[5]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
322default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2H
4canteloupe_i/frame_generator_cust_0/tx_fifo_TDATA[6]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
332default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2H
4canteloupe_i/frame_generator_cust_0/tx_fifo_TDATA[7]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
342default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2D
0canteloupe_i/frame_generator_cust_0/rx_mic_TLAST2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
352default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2E
1canteloupe_i/frame_generator_cust_0/tx_fifo_TLAST2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
362default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2E
1canteloupe_i/frame_generator_cust_0/rx_mic_TREADY2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
372default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2E
1canteloupe_i/frame_generator_cust_0/rx_mic_TVALID2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
382default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2F
2canteloupe_i/frame_generator_cust_0/tx_fifo_TREADY2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
392default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2F
2canteloupe_i/frame_generator_cust_0/tx_fifo_TVALID2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
402default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2H
4canteloupe_i/frame_generator_cust_0/inst/mem/fifo_we2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
412default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2H
4canteloupe_i/frame_generator_cust_0/inst/mem/mem_reg2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
422default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2J
6canteloupe_i/tri_mode_ethernet_ma_1/tx_axis_fifo_tlast2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
432default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2K
7canteloupe_i/tri_mode_ethernet_ma_1/tx_axis_fifo_tready2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
442default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2K
7canteloupe_i/tri_mode_ethernet_ma_1/tx_axis_fifo_tvalid2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
452default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2M
9canteloupe_i/tri_mode_ethernet_ma_1/tx_axis_fifo_tdata[0]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
462default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2M
9canteloupe_i/tri_mode_ethernet_ma_1/tx_axis_fifo_tdata[1]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
472default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2M
9canteloupe_i/tri_mode_ethernet_ma_1/tx_axis_fifo_tdata[2]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
482default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2M
9canteloupe_i/tri_mode_ethernet_ma_1/tx_axis_fifo_tdata[3]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
492default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2M
9canteloupe_i/tri_mode_ethernet_ma_1/tx_axis_fifo_tdata[4]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
502default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2M
9canteloupe_i/tri_mode_ethernet_ma_1/tx_axis_fifo_tdata[5]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
512default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2M
9canteloupe_i/tri_mode_ethernet_ma_1/tx_axis_fifo_tdata[6]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
522default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2M
9canteloupe_i/tri_mode_ethernet_ma_1/tx_axis_fifo_tdata[7]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
532default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2X
Dcanteloupe_i/tri_mode_ethernet_ma_1/inst/mii_to_rmii/mac2rmii_txd[0]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
542default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2X
Dcanteloupe_i/tri_mode_ethernet_ma_1/inst/mii_to_rmii/mac2rmii_txd[1]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
552default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2X
Dcanteloupe_i/tri_mode_ethernet_ma_1/inst/mii_to_rmii/mac2rmii_txd[2]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
562default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2X
Dcanteloupe_i/tri_mode_ethernet_ma_1/inst/mii_to_rmii/mac2rmii_txd[3]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
572default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2W
Ccanteloupe_i/tri_mode_ethernet_ma_1/inst/mii_to_rmii/mac2rmii_tx_en2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
582default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2W
Ccanteloupe_i/tri_mode_ethernet_ma_1/inst/mii_to_rmii/mac2rmii_tx_er2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
592default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2d
Pcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_fifo_tdata[0]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
602default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2d
Pcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_fifo_tdata[1]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
612default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2d
Pcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_fifo_tdata[2]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
622default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2d
Pcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_fifo_tdata[3]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
632default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2d
Pcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_fifo_tdata[4]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
642default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2d
Pcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_fifo_tdata[5]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
652default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2d
Pcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_fifo_tdata[6]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
662default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2d
Pcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_fifo_tdata[7]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
672default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2c
Ocanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_mac_tdata[0]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
682default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2c
Ocanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_mac_tdata[1]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
692default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2c
Ocanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_mac_tdata[2]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
702default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2c
Ocanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_mac_tdata[3]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
712default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2c
Ocanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_mac_tdata[4]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
722default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2c
Ocanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_mac_tdata[5]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
732default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2c
Ocanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_mac_tdata[6]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
742default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2c
Ocanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_mac_tdata[7]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
752default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2a
Mcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_fifo_tlast2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
762default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2b
Ncanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_fifo_tready2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
772default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2b
Ncanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_fifo_tvalid2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
782default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2`
Lcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_mac_tlast2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
792default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2a
Mcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_mac_tready2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
802default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2a
Mcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/tx_axis_mac_tvalid2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
812default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2j
Vcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/trimac_sup_block/mii_txd[0]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
822default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2j
Vcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/trimac_sup_block/mii_txd[1]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
832default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2j
Vcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/trimac_sup_block/mii_txd[2]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
842default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2j
Vcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/trimac_sup_block/mii_txd[3]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
852default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2i
Ucanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/trimac_sup_block/mii_tx_en2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
862default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2i
Ucanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/trimac_sup_block/mii_tx_er2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
872default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2F
2canteloupe_i/tri_mode_ethernet_ma_1/inst/mii_tx_en2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
882default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2F
2canteloupe_i/tri_mode_ethernet_ma_1/inst/mii_tx_er2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
892default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2G
3canteloupe_i/tri_mode_ethernet_ma_1/inst/mii_txd[0]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
902default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2G
3canteloupe_i/tri_mode_ethernet_ma_1/inst/mii_txd[1]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
912default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2G
3canteloupe_i/tri_mode_ethernet_ma_1/inst/mii_txd[2]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
922default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2G
3canteloupe_i/tri_mode_ethernet_ma_1/inst/mii_txd[3]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
932default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2|
hcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/user_side_FIFO/tx_fifo_i/tx_ramgen_i/a_din[0]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
1152default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2|
hcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/user_side_FIFO/tx_fifo_i/tx_ramgen_i/a_din[2]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
1162default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2|
hcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/user_side_FIFO/tx_fifo_i/tx_ramgen_i/a_din[3]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
1172default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2|
hcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/user_side_FIFO/tx_fifo_i/tx_ramgen_i/a_din[6]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
1182default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2|
hcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/user_side_FIFO/tx_fifo_i/tx_ramgen_i/a_din[1]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
1192default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2|
hcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/user_side_FIFO/tx_fifo_i/tx_ramgen_i/a_din[4]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
1202default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2|
hcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/user_side_FIFO/tx_fifo_i/tx_ramgen_i/a_din[5]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
1212default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2|
hcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/user_side_FIFO/tx_fifo_i/tx_ramgen_i/a_din[7]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
1222default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2|
hcanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/user_side_FIFO/tx_fifo_i/tx_ramgen_i/a_din[8]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
1232default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2}
icanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/user_side_FIFO/tx_fifo_i/tx_ramgen_i/b_dout[3]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
1242default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2}
icanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/user_side_FIFO/tx_fifo_i/tx_ramgen_i/b_dout[4]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
1252default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2}
icanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/user_side_FIFO/tx_fifo_i/tx_ramgen_i/b_dout[5]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
1262default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2}
icanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/user_side_FIFO/tx_fifo_i/tx_ramgen_i/b_dout[0]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
1272default:default8@Z12-507h px�
�
No nets matched '%s'.
507*	planAhead2}
icanteloupe_i/tri_mode_ethernet_ma_1/inst/trimac_fifo_block/user_side_FIFO/tx_fifo_i/tx_ramgen_i/b_dout[1]2default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
1282default:default8@Z12-507h px�
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2!
Vivado 12-5072default:default2
1002default:default2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default2
1282default:default8@Z17-14h px�
�
Finished Parsing XDC File [%s]
178*designutils2Z
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default8Z20-178h px� 
�
�One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2X
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default28
$.Xil/canteloupe_wrapper_propImpl.xdc2default:defaultZ1-498h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2X
DC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/debug.xdc2default:default28
$.Xil/canteloupe_wrapper_propImpl.xdc2default:defaultZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2`
JC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/constraints.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2`
JC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/constraints.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2^
JC:/Users/poyisamu/fifoStream/fifoStream.srcs/constrs_1/new/constraints.xdc2default:default28
$.Xil/canteloupe_wrapper_propImpl.xdc2default:defaultZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2Y
CC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2Y
CC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
974.1172default:default2
0.0002default:defaultZ17-268h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
974.1172default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
974.1172default:default2
0.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0182default:default2
974.1172default:default2
0.0002default:defaultZ17-268h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2C
/canteloupe_i/microblaze_0_local_memory/lmb_bram2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 974.117 ; gain = 489.699
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 974.117 ; gain = 489.699
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 974.117 ; gain = 489.699
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2*
frame_generator_cust_02default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
3632default:default8@Z8-6071h px� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2*
tri_mode_ethernet_ma_12default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
7622default:default8@Z8-6071h px� 
�
fMark debug on the nets applies keep_hierarchy on instance '%s'. This will prevent further optimization4399*oasys2!
mii_to_rmii_02default:default2m
WC:/Users/poyisamu/fifoStream/fifoStream.srcs/sources_1/bd/canteloupe/synth/canteloupe.v2default:default2
6852default:default8@Z8-6071h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 974.117 ; gain = 489.699
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
!design %s has unconnected port %s3331*oasys28
$canteloupe_microblaze_0_axi_periph_02default:default2
M00_ACLK2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys28
$canteloupe_microblaze_0_axi_periph_02default:default2
M00_ARESETN2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys28
$canteloupe_microblaze_0_axi_periph_02default:default2
M01_ACLK2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys28
$canteloupe_microblaze_0_axi_periph_02default:default2
M01_ARESETN2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys28
$canteloupe_microblaze_0_axi_periph_02default:default2
M03_ACLK2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys28
$canteloupe_microblaze_0_axi_periph_02default:default2
M03_ARESETN2default:defaultZ8-3331h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 974.117 ; gain = 489.699
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys2X
Dcanteloupe_i/microblaze_0_local_memory/dlmb_bram_if_cntlr/BRAM_Clk_A2default:default2a
Mcanteloupe_i/microblaze_0_local_memory/dlmb_bram_if_cntlr/bbstub_BRAM_Clk_A/O2default:defaultZ8-5578h px� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys2X
Dcanteloupe_i/microblaze_0_local_memory/ilmb_bram_if_cntlr/BRAM_Clk_A2default:default2a
Mcanteloupe_i/microblaze_0_local_memory/ilmb_bram_if_cntlr/bbstub_BRAM_Clk_A/O2default:defaultZ8-5578h px� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys20
canteloupe_i/mdm_1/Dbg_Clk_02default:default29
%canteloupe_i/mdm_1/bbstub_Dbg_Clk_0/O2default:defaultZ8-5578h px� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys23
canteloupe_i/mdm_1/Dbg_Update_02default:default2<
(canteloupe_i/mdm_1/bbstub_Dbg_Update_0/O2default:defaultZ8-5578h px� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys23
canteloupe_i/clk_wiz_1/clk_out12default:default2<
(canteloupe_i/clk_wiz_1/bbstub_clk_out1/O2default:defaultZ8-5578h px� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys23
canteloupe_i/clk_wiz_1/clk_out22default:default2<
(canteloupe_i/clk_wiz_1/bbstub_clk_out2/O2default:defaultZ8-5578h px� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys23
canteloupe_i/clk_wiz_1/clk_out32default:default2<
(canteloupe_i/clk_wiz_1/bbstub_clk_out3/O2default:defaultZ8-5578h px� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys23
canteloupe_i/clk_wiz_1/clk_out42default:default2<
(canteloupe_i/clk_wiz_1/bbstub_clk_out4/O2default:defaultZ8-5578h px� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys2<
(canteloupe_i/mig_7series_0/ui_addn_clk_02default:default2E
1canteloupe_i/mig_7series_0/bbstub_ui_addn_clk_0/O2default:defaultZ8-5578h px� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys2<
(canteloupe_i/mig_7series_0/ui_addn_clk_12default:default2E
1canteloupe_i/mig_7series_0/bbstub_ui_addn_clk_1/O2default:defaultZ8-5578h px� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys2<
(canteloupe_i/mig_7series_0/ui_addn_clk_22default:default2E
1canteloupe_i/mig_7series_0/bbstub_ui_addn_clk_2/O2default:defaultZ8-5578h px� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys2<
(canteloupe_i/mig_7series_0/ui_addn_clk_32default:default2E
1canteloupe_i/mig_7series_0/bbstub_ui_addn_clk_3/O2default:defaultZ8-5578h px� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys2<
(canteloupe_i/mig_7series_0/ui_addn_clk_42default:default2E
1canteloupe_i/mig_7series_0/bbstub_ui_addn_clk_4/O2default:defaultZ8-5578h px� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys25
!canteloupe_i/mig_7series_0/ui_clk2default:default2>
*canteloupe_i/mig_7series_0/bbstub_ui_clk/O2default:defaultZ8-5578h px� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys2B
.canteloupe_i/tri_mode_ethernet_ma_1/mii_rx_clk2default:default2G
3canteloupe_i/mii_to_rmii_0/bbstub_rmii2mac_rx_clk/O2default:defaultZ8-5578h px� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys2B
.canteloupe_i/tri_mode_ethernet_ma_1/mii_tx_clk2default:default2G
3canteloupe_i/mii_to_rmii_0/bbstub_rmii2mac_tx_clk/O2default:defaultZ8-5578h px� 
�
SMoved %s constraints on hierarchical pins to their respective driving/loading pins
4235*oasys2
162default:defaultZ8-5819h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 974.117 ; gain = 489.699
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Timing Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 974.117 ; gain = 489.699
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
{Finished Technology Mapping : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 981.828 ; gain = 497.410
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
uFinished IO Insertion : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 981.828 ; gain = 497.410
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 981.828 ; gain = 497.410
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:21 ; elapsed = 00:00:23 . Memory (MB): peak = 981.828 ; gain = 497.410
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 981.828 ; gain = 497.410
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 981.828 ; gain = 497.410
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 981.828 ; gain = 497.410
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
e
%s
*synth2M
9+------+------------------------------------+----------+
2default:defaulth p
x
� 
e
%s
*synth2M
9|      |BlackBox name                       |Instances |
2default:defaulth p
x
� 
e
%s
*synth2M
9+------+------------------------------------+----------+
2default:defaulth p
x
� 
e
%s
*synth2M
9|1     |canteloupe_xbar_0                   |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|2     |canteloupe_auto_ds_0                |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|3     |canteloupe_auto_ds_1                |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|4     |canteloupe_auto_cc_0                |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|5     |canteloupe_auto_pc_0                |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|6     |canteloupe_auto_ds_2                |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|7     |canteloupe_auto_us_0                |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|8     |canteloupe_auto_us_1                |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|9     |canteloupe_axi_fifo_mm_s_0_0        |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|10    |canteloupe_axi_uartlite_0_0         |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|11    |canteloupe_clk_wiz_1_0              |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|12    |canteloupe_frame_generator_cust_0_0 |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|13    |canteloupe_mdm_1_0                  |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|14    |canteloupe_microblaze_0_0           |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|15    |canteloupe_microblaze_0_axi_intc_0  |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|16    |canteloupe_mig_7series_0_0          |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|17    |canteloupe_mii_to_rmii_0_0          |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|18    |canteloupe_quantizer_0_0            |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|19    |canteloupe_rst_clk_wiz_1_100M_0     |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|20    |canteloupe_rst_mig_7series_0_81M_0  |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|21    |canteloupe_run_length_encoder_0_0   |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|22    |canteloupe_system_ila_0_0           |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|23    |canteloupe_tri_mode_ethernet_ma_1_0 |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|24    |canteloupe_two_dimension_dct_0_0    |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|25    |canteloupe_zig_zag_0_0              |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|26    |canteloupe_dlmb_bram_if_cntlr_0     |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|27    |canteloupe_dlmb_v10_0               |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|28    |canteloupe_ilmb_bram_if_cntlr_0     |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|29    |canteloupe_ilmb_v10_0               |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|30    |canteloupe_lmb_bram_0               |         1|
2default:defaulth p
x
� 
e
%s
*synth2M
9+------+------------------------------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
a
%s*synth2I
5+------+------------------------------------+------+
2default:defaulth px� 
a
%s*synth2I
5|      |Cell                                |Count |
2default:defaulth px� 
a
%s*synth2I
5+------+------------------------------------+------+
2default:defaulth px� 
a
%s*synth2I
5|1     |canteloupe_auto_cc_0                |     1|
2default:defaulth px� 
a
%s*synth2I
5|2     |canteloupe_auto_ds_0                |     1|
2default:defaulth px� 
a
%s*synth2I
5|3     |canteloupe_auto_ds_1                |     1|
2default:defaulth px� 
a
%s*synth2I
5|4     |canteloupe_auto_ds_2                |     1|
2default:defaulth px� 
a
%s*synth2I
5|5     |canteloupe_auto_pc_0                |     1|
2default:defaulth px� 
a
%s*synth2I
5|6     |canteloupe_auto_us_0                |     1|
2default:defaulth px� 
a
%s*synth2I
5|7     |canteloupe_auto_us_1                |     1|
2default:defaulth px� 
a
%s*synth2I
5|8     |canteloupe_axi_fifo_mm_s_0_0        |     1|
2default:defaulth px� 
a
%s*synth2I
5|9     |canteloupe_axi_uartlite_0_0         |     1|
2default:defaulth px� 
a
%s*synth2I
5|10    |canteloupe_clk_wiz_1_0              |     1|
2default:defaulth px� 
a
%s*synth2I
5|11    |canteloupe_dlmb_bram_if_cntlr_0     |     1|
2default:defaulth px� 
a
%s*synth2I
5|12    |canteloupe_dlmb_v10_0               |     1|
2default:defaulth px� 
a
%s*synth2I
5|13    |canteloupe_frame_generator_cust_0_0 |     1|
2default:defaulth px� 
a
%s*synth2I
5|14    |canteloupe_ilmb_bram_if_cntlr_0     |     1|
2default:defaulth px� 
a
%s*synth2I
5|15    |canteloupe_ilmb_v10_0               |     1|
2default:defaulth px� 
a
%s*synth2I
5|16    |canteloupe_lmb_bram_0               |     1|
2default:defaulth px� 
a
%s*synth2I
5|17    |canteloupe_mdm_1_0                  |     1|
2default:defaulth px� 
a
%s*synth2I
5|18    |canteloupe_microblaze_0_0           |     1|
2default:defaulth px� 
a
%s*synth2I
5|19    |canteloupe_microblaze_0_axi_intc_0  |     1|
2default:defaulth px� 
a
%s*synth2I
5|20    |canteloupe_mig_7series_0_0          |     1|
2default:defaulth px� 
a
%s*synth2I
5|21    |canteloupe_mii_to_rmii_0_0          |     1|
2default:defaulth px� 
a
%s*synth2I
5|22    |canteloupe_quantizer_0_0            |     1|
2default:defaulth px� 
a
%s*synth2I
5|23    |canteloupe_rst_clk_wiz_1_100M_0     |     1|
2default:defaulth px� 
a
%s*synth2I
5|24    |canteloupe_rst_mig_7series_0_81M_0  |     1|
2default:defaulth px� 
a
%s*synth2I
5|25    |canteloupe_run_length_encoder_0_0   |     1|
2default:defaulth px� 
a
%s*synth2I
5|26    |canteloupe_system_ila_0_0           |     1|
2default:defaulth px� 
a
%s*synth2I
5|27    |canteloupe_tri_mode_ethernet_ma_1_0 |     1|
2default:defaulth px� 
a
%s*synth2I
5|28    |canteloupe_two_dimension_dct_0_0    |     1|
2default:defaulth px� 
a
%s*synth2I
5|29    |canteloupe_xbar_0                   |     1|
2default:defaulth px� 
a
%s*synth2I
5|30    |canteloupe_zig_zag_0_0              |     1|
2default:defaulth px� 
a
%s*synth2I
5|31    |IBUF                                |     6|
2default:defaulth px� 
a
%s*synth2I
5|32    |OBUF                                |     5|
2default:defaulth px� 
a
%s*synth2I
5+------+------------------------------------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
�
%s
*synth2j
V+------+------------------------------+--------------------------------------+------+
2default:defaulth p
x
� 
�
%s
*synth2j
V|      |Instance                      |Module                                |Cells |
2default:defaulth p
x
� 
�
%s
*synth2j
V+------+------------------------------+--------------------------------------+------+
2default:defaulth p
x
� 
�
%s
*synth2j
V|1     |top                           |                                      |  3324|
2default:defaulth p
x
� 
�
%s
*synth2j
V|2     |  canteloupe_i                |canteloupe                            |  3313|
2default:defaulth p
x
� 
�
%s
*synth2j
V|3     |    microblaze_0_axi_periph   |canteloupe_microblaze_0_axi_periph_0  |  2020|
2default:defaulth p
x
� 
�
%s
*synth2j
V|4     |      m00_couplers            |m00_couplers_imp_1FM5A1E              |   184|
2default:defaulth p
x
� 
�
%s
*synth2j
V|5     |      m01_couplers            |m01_couplers_imp_1PZAEL0              |   184|
2default:defaulth p
x
� 
�
%s
*synth2j
V|6     |      m02_couplers            |m02_couplers_imp_VAJQFY               |   473|
2default:defaulth p
x
� 
�
%s
*synth2j
V|7     |      m03_couplers            |m03_couplers_imp_60LCD4               |   184|
2default:defaulth p
x
� 
�
%s
*synth2j
V|8     |      s00_couplers            |s00_couplers_imp_1O071EB              |   188|
2default:defaulth p
x
� 
�
%s
*synth2j
V|9     |      s01_couplers            |s01_couplers_imp_1GHA8B9              |    73|
2default:defaulth p
x
� 
�
%s
*synth2j
V|10    |    microblaze_0_xlconcat     |canteloupe_microblaze_0_xlconcat_0    |     0|
2default:defaulth p
x
� 
�
%s
*synth2j
V|11    |    xlconstant_0              |canteloupe_xlconstant_0_0             |     0|
2default:defaulth p
x
� 
�
%s
*synth2j
V|12    |    microblaze_0_local_memory |microblaze_0_local_memory_imp_13VZ7DK |   496|
2default:defaulth p
x
� 
�
%s
*synth2j
V+------+------------------------------+--------------------------------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 981.828 ; gain = 497.410
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 6 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:13 ; elapsed = 00:00:17 . Memory (MB): peak = 981.828 ; gain = 169.691
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 981.828 ; gain = 497.410
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
997.6642default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1242default:default2
1782default:default2
32default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:242default:default2
00:00:262default:default2
997.7112default:default2
513.2932default:defaultZ17-268h px� 
�
4The following parameters have non-default value.
%s
395*common24
 tcl.collectionResultDisplayLimit2default:defaultZ17-600h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
997.7112default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2_
KC:/Users/poyisamu/fifoStream/fifoStream.runs/synth_1/canteloupe_wrapper.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
zExecuting : report_utilization -file canteloupe_wrapper_utilization_synth.rpt -pb canteloupe_wrapper_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Mar 31 03:22:20 20212default:defaultZ17-206h px� 


End Record