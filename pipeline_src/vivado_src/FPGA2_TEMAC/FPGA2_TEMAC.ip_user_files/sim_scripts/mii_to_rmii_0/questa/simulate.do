onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mii_to_rmii_0_opt

do {wave.do}

view wave
view structure
view signals

do {mii_to_rmii_0.udo}

run -all

quit -force
