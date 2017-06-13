// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Mon Jun 12 17:45:06 2017
// Host        : ispc2016 running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_c_shift_ram_1_0 -prefix
//               design_1_c_shift_ram_1_0_ design_1_c_shift_ram_0_0_stub.v
// Design      : design_1_c_shift_ram_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_shift_ram_v12_0_10,Vivado 2016.4" *)
module design_1_c_shift_ram_1_0(D, CLK, Q)
/* synthesis syn_black_box black_box_pad_pin="D[31:0],CLK,Q[31:0]" */;
  input [31:0]D;
  input CLK;
  output [31:0]Q;
endmodule
