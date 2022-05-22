onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib xaui_0_opt

do {wave.do}

view wave
view structure
view signals

do {xaui_0.udo}

run -all

quit -force
