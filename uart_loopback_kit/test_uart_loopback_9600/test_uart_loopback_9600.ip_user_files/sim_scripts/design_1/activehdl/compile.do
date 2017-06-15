vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../test_uart_loopback_9600.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../test_uart_loopback_9600.srcs/sources_1/bd/design_1/ipshared/100a" \
"/home/yosimoto/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/home/yosimoto/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../test_uart_loopback_9600.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../test_uart_loopback_9600.srcs/sources_1/bd/design_1/ipshared/100a" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
"../../../bd/design_1/hdl/design_1.v" \
"../../../bd/design_1/ip/design_1_uart_loopback_0_0/sim/design_1_uart_loopback_0_0.v" \

vlog -work xil_defaultlib "glbl.v"

