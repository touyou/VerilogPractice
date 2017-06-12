// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Mon Jun 12 17:45:09 2017
// Host        : ispc2016 running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/tansei/Desktop/hardware_kadai/verilog/Task8/test/test.srcs/sources_1/bd/design_1/ip/design_1_fadd_0_0/design_1_fadd_0_0_stub.v
// Design      : design_1_fadd_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fadd,Vivado 2016.4" *)
module design_1_fadd_0_0(x1, x2, y, ovf)
/* synthesis syn_black_box black_box_pad_pin="x1[31:0],x2[31:0],y[31:0],ovf" */;
  input [31:0]x1;
  input [31:0]x2;
  output [31:0]y;
  output ovf;
endmodule
