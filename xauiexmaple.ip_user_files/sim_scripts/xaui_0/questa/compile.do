vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xaui_v12_3_6
vlib questa_lib/msim/xil_defaultlib

vmap xaui_v12_3_6 questa_lib/msim/xaui_v12_3_6
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xaui_v12_3_6 -64 -93 \
"../../../ipstatic/hdl/xaui_v12_3_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../xauiexmaple.srcs/sources_1/ip/xaui_0/synth/xaui_0_reset_counter.vhd" \
"../../../../xauiexmaple.srcs/sources_1/ip/xaui_0/synth/xaui_0_ff_synchronizer.vhd" \
"../../../../xauiexmaple.srcs/sources_1/ip/xaui_0/synth/xaui_0_gt_wrapper_tx_sync_manual_block.vhd" \
"../../../../xauiexmaple.srcs/sources_1/ip/xaui_0/synth/xaui_0_gt_wrapper_tx_sync_manual_sync_pulse.vhd" \
"../../../../xauiexmaple.srcs/sources_1/ip/xaui_0/synth/xaui_0_gt_wrapper_tx_sync_manual.vhd" \
"../../../../xauiexmaple.srcs/sources_1/ip/xaui_0/synth/xaui_0_gt_wrapper_gt.vhd" \
"../../../../xauiexmaple.srcs/sources_1/ip/xaui_0/synth/xaui_0_gt_wrapper.vhd" \
"../../../../xauiexmaple.srcs/sources_1/ip/xaui_0/synth/xaui_0_cl_clocking.vhd" \
"../../../../xauiexmaple.srcs/sources_1/ip/xaui_0/synth/xaui_0_cl_resets.vhd" \
"../../../../xauiexmaple.srcs/sources_1/ip/xaui_0/synth/xaui_0_block.vhd" \
"../../../../xauiexmaple.srcs/sources_1/ip/xaui_0/synth/xaui_0_support.vhd" \
"../../../../xauiexmaple.srcs/sources_1/ip/xaui_0/synth/xaui_0_support_clocking.vhd" \
"../../../../xauiexmaple.srcs/sources_1/ip/xaui_0/synth/xaui_0.vhd" \

