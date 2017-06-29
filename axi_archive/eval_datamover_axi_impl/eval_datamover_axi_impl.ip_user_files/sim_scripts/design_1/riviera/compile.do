vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/blk_mem_gen_v8_3_5
vlib riviera/axi_bram_ctrl_v4_0_10
vlib riviera/xbip_utils_v3_0_7
vlib riviera/c_reg_fd_v12_0_3
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_pipe_v3_0_3
vlib riviera/xbip_dsp48_addsub_v3_0_3
vlib riviera/xbip_addsub_v3_0_3
vlib riviera/c_addsub_v12_0_10
vlib riviera/c_gate_bit_v12_0_3
vlib riviera/xbip_counter_v3_0_3
vlib riviera/c_counter_binary_v12_0_10
vlib riviera/util_reduced_logic_v2_0
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_10
vlib riviera/util_vector_logic_v2_0

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap blk_mem_gen_v8_3_5 riviera/blk_mem_gen_v8_3_5
vmap axi_bram_ctrl_v4_0_10 riviera/axi_bram_ctrl_v4_0_10
vmap xbip_utils_v3_0_7 riviera/xbip_utils_v3_0_7
vmap c_reg_fd_v12_0_3 riviera/c_reg_fd_v12_0_3
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_pipe_v3_0_3 riviera/xbip_pipe_v3_0_3
vmap xbip_dsp48_addsub_v3_0_3 riviera/xbip_dsp48_addsub_v3_0_3
vmap xbip_addsub_v3_0_3 riviera/xbip_addsub_v3_0_3
vmap c_addsub_v12_0_10 riviera/c_addsub_v12_0_10
vmap c_gate_bit_v12_0_3 riviera/c_gate_bit_v12_0_3
vmap xbip_counter_v3_0_3 riviera/xbip_counter_v3_0_3
vmap c_counter_binary_v12_0_10 riviera/c_counter_binary_v12_0_10
vmap util_reduced_logic_v2_0 riviera/util_reduced_logic_v2_0
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 riviera/proc_sys_reset_v5_0_10
vmap util_vector_logic_v2_0 riviera/util_vector_logic_v2_0

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/100a" \
"/home/yosimoto/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/yosimoto/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/home/yosimoto/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/100a" \
"../../../bd/design_1/hdl/design_1.v" \
"../../../bd/design_1/ip/design_1_datamover_axi_wrap_0_0/sim/design_1_datamover_axi_wrap_0_0.v" \

vlog -work blk_mem_gen_v8_3_5  -v2k5 "+incdir+../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/100a" \
"../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/6273/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/100a" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \
"../../../bd/design_1/ipshared/e147/xlconstant.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_1_0/sim/design_1_xlconstant_1_0.v" \

vcom -work axi_bram_ctrl_v4_0_10 -93 \
"../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/91f5/hdl/axi_bram_ctrl_v4_0_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/100a" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_1_0/sim/design_1_blk_mem_gen_1_0.v" \
"../../../bd/design_1/ipshared/c49f/xlslice.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \

vcom -work xbip_utils_v3_0_7 -93 \
"../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/6fc3/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work c_reg_fd_v12_0_3 -93 \
"../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/e1e2/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/1e87/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_3 -93 \
"../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/7db8/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_3 -93 \
"../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/c9c4/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_3 -93 \
"../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/2957/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_10 -93 \
"../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/a394/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_3 -93 \
"../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/b6ab/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_3 -93 \
"../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/de69/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_10 -93 \
"../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/d6cf/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_c_counter_binary_0_0/sim/design_1_c_counter_binary_0_0.vhd" \

vcom -work util_reduced_logic_v2_0 -93 \
"../../../bd/design_1/ipshared/1320/hdl/util_reduced_logic.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_util_reduced_logic_0_0/sim/design_1_util_reduced_logic_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/100a" \
"../../../bd/design_1/ip/design_1_xlconstant_3_0/sim/design_1_xlconstant_3_0.v" \
"../../../bd/design_1/ipshared/2e37/xlconcat.v" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_4_0/sim/design_1_xlconstant_4_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_5_0/sim/design_1_xlconstant_5_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_2_0/sim/design_1_xlslice_2_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -93 \
"../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/100a" \
"../../../bd/design_1/ip/design_1_pulse_btn_0_0/sim/design_1_pulse_btn_0_0.v" \

vcom -work util_vector_logic_v2_0 -93 \
"../../../bd/design_1/ipshared/1d19/hdl/util_vector_logic.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.vhd" \
"../../../bd/design_1/ip/design_1_util_reduced_logic_1_0/sim/design_1_util_reduced_logic_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/100a" "+incdir+../../../../eval_datamover_axi_impl.srcs/sources_1/bd/design_1/ipshared/100a" \
"../../../bd/design_1/ip/design_1_xlconcat_1_0/sim/design_1_xlconcat_1_0.v" \
"../../../bd/design_1/ip/design_1_byte_mux_0_0/sim/design_1_byte_mux_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_1_1/sim/design_1_xlslice_1_1.v" \

vlog -work xil_defaultlib "glbl.v"

