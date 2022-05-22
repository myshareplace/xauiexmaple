onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+xaui_0 -L xaui_v12_3_6 -L xil_defaultlib -L secureip -O5 xil_defaultlib.xaui_0

do {wave.do}

view wave
view structure

do {xaui_0.udo}

run -all

endsim

quit -force
