vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/blk_mem_gen_v8_3_5
vlib msim/xbip_utils_v3_0_7
vlib msim/c_reg_fd_v12_0_3
vlib msim/c_mux_bit_v12_0_3
vlib msim/c_shift_ram_v12_0_10
vlib msim/axi_protocol_checker_v1_1_12
vlib msim/axi_bram_ctrl_v4_0_10
vlib msim/xbip_dsp48_wrapper_v3_0_4
vlib msim/xbip_pipe_v3_0_3
vlib msim/xbip_dsp48_addsub_v3_0_3
vlib msim/xbip_addsub_v3_0_3
vlib msim/c_addsub_v12_0_10
vlib msim/c_gate_bit_v12_0_3
vlib msim/xbip_counter_v3_0_3
vlib msim/c_counter_binary_v12_0_10
vlib msim/util_reduced_logic_v2_0
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_11
vlib msim/fifo_generator_v13_1_3
vlib msim/axi_data_fifo_v2_1_10
vlib msim/axi_crossbar_v2_1_12

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap blk_mem_gen_v8_3_5 msim/blk_mem_gen_v8_3_5
vmap xbip_utils_v3_0_7 msim/xbip_utils_v3_0_7
vmap c_reg_fd_v12_0_3 msim/c_reg_fd_v12_0_3
vmap c_mux_bit_v12_0_3 msim/c_mux_bit_v12_0_3
vmap c_shift_ram_v12_0_10 msim/c_shift_ram_v12_0_10
vmap axi_protocol_checker_v1_1_12 msim/axi_protocol_checker_v1_1_12
vmap axi_bram_ctrl_v4_0_10 msim/axi_bram_ctrl_v4_0_10
vmap xbip_dsp48_wrapper_v3_0_4 msim/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_3 msim/xbip_pipe_v3_0_3
vmap xbip_dsp48_addsub_v3_0_3 msim/xbip_dsp48_addsub_v3_0_3
vmap xbip_addsub_v3_0_3 msim/xbip_addsub_v3_0_3
vmap c_addsub_v12_0_10 msim/c_addsub_v12_0_10
vmap c_gate_bit_v12_0_3 msim/c_gate_bit_v12_0_3
vmap xbip_counter_v3_0_3 msim/xbip_counter_v3_0_3
vmap c_counter_binary_v12_0_10 msim/c_counter_binary_v12_0_10
vmap util_reduced_logic_v2_0 msim/util_reduced_logic_v2_0
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_11 msim/axi_register_slice_v2_1_11
vmap fifo_generator_v13_1_3 msim/fifo_generator_v13_1_3
vmap axi_data_fifo_v2_1_10 msim/axi_data_fifo_v2_1_10
vmap axi_crossbar_v2_1_12 msim/axi_crossbar_v2_1_12

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"/home/yosimoto/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/yosimoto/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/home/yosimoto/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/hdl/design_1.v" \
"../../../bd/design_1/ip/design_1_datamover_axi_wrap_0_0/sim/design_1_datamover_axi_wrap_0_0.v" \

vlog -work blk_mem_gen_v8_3_5 -64 -incr "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vcom -work xbip_utils_v3_0_7 -64 -93 \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/6fc3/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_3 -64 -93 \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/e1e2/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work c_mux_bit_v12_0_3 -64 -93 \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/f2d7/hdl/c_mux_bit_v12_0_vh_rfs.vhd" \

vcom -work c_shift_ram_v12_0_10 -64 -93 \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/5ac0/hdl/c_shift_ram_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_c_shift_ram_0_0/sim/design_1_c_shift_ram_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ipshared/e147/xlconstant.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \
"../../../bd/design_1/ipshared/68f7/hdl/sim_clk_gen.v" \
"../../../bd/design_1/ip/design_1_sim_clk_gen_0_0/sim/design_1_sim_clk_gen_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_2_0/sim/design_1_xlconstant_2_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_c_shift_ram_0_1/sim/design_1_c_shift_ram_0_1.vhd" \

vlog -work axi_protocol_checker_v1_1_12 -64 -incr "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/40a5/hdl/axi_protocol_checker_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_axi_protocol_checker_0_0/sim/design_1_axi_protocol_checker_0_0.v" \

vcom -work axi_bram_ctrl_v4_0_10 -64 -93 \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/91f5/hdl/axi_bram_ctrl_v4_0_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_1_0/sim/design_1_blk_mem_gen_1_0.v" \
"../../../bd/design_1/ipshared/c49f/xlslice.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -64 -93 \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/1e87/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_3 -64 -93 \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7db8/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_3 -64 -93 \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/c9c4/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_3 -64 -93 \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/2957/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_10 -64 -93 \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/a394/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_3 -64 -93 \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/b6ab/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_3 -64 -93 \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/de69/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_10 -64 -93 \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/d6cf/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_c_counter_binary_0_0/sim/design_1_c_counter_binary_0_0.vhd" \

vcom -work util_reduced_logic_v2_0 -64 -93 \
"../../../bd/design_1/ipshared/1320/hdl/util_reduced_logic.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_util_reduced_logic_0_0/sim/design_1_util_reduced_logic_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_xlconstant_3_0/sim/design_1_xlconstant_3_0.v" \
"../../../bd/design_1/ipshared/2e37/xlconcat.v" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_1_0/sim/design_1_xlslice_1_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_4_0/sim/design_1_xlconstant_4_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_5_0/sim/design_1_xlconstant_5_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_11 -64 -incr "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/0b6b/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_3 -64 -incr "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/564d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_3 -64 -93 \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_3 -64 -incr "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/564d/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_10 -64 -incr "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/39ba/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_12 -64 -incr "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/896d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_1_0/sim/design_1_axi_bram_ctrl_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../eval_datamover_axi_ic.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_1_bram_0/sim/design_1_axi_bram_ctrl_1_bram_0.v" \

vlog -work xil_defaultlib "glbl.v"

