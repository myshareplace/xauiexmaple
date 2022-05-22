onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xaui_v12_3_6 -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.xaui_0

do {wave.do}

view wave
view structure
view signals

do {xaui_0.udo}

run -all

quit -force
