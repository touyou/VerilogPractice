//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
//Date        : Mon Jun 12 17:44:35 2017
//Host        : ispc2016 running 64-bit Ubuntu 14.04.5 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (led,
    reset,
    sys_clock);
  output [1:0]led;
  input reset;
  input sys_clock;

  wire [31:0]c_shift_ram_0_Q;
  wire [31:0]c_shift_ram_1_Q;
  wire [0:0]c_shift_ram_2_Q;
  wire clk_wiz_0_clk_out1;
  wire fadd_0_ovf;
  wire [31:0]fadd_0_y;
  wire reset_1;
  wire sys_clock_1;
  wire util_reduced_logic_0_Res;
  wire util_reduced_logic_1_Res;
  wire [1:0]xlconcat_0_dout;

  assign led[1:0] = xlconcat_0_dout;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  design_1_c_shift_ram_0_0 c_shift_ram_0
       (.CLK(clk_wiz_0_clk_out1),
        .D(c_shift_ram_0_Q),
        .Q(c_shift_ram_0_Q));
  design_1_c_shift_ram_1_0 c_shift_ram_1
       (.CLK(clk_wiz_0_clk_out1),
        .D(fadd_0_y),
        .Q(c_shift_ram_1_Q));
  design_1_c_shift_ram_2_0 c_shift_ram_2
       (.CLK(clk_wiz_0_clk_out1),
        .D(fadd_0_ovf),
        .Q(c_shift_ram_2_Q));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .resetn(reset_1));
  design_1_fadd_0_0 fadd_0
       (.ovf(fadd_0_ovf),
        .x1(c_shift_ram_0_Q),
        .x2(c_shift_ram_0_Q),
        .y(fadd_0_y));
  design_1_util_reduced_logic_0_0 util_reduced_logic_0
       (.Op1(c_shift_ram_1_Q),
        .Res(util_reduced_logic_0_Res));
  design_1_util_reduced_logic_1_0 util_reduced_logic_1
       (.Op1(c_shift_ram_2_Q),
        .Res(util_reduced_logic_1_Res));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(util_reduced_logic_0_Res),
        .In1(util_reduced_logic_1_Res),
        .dout(xlconcat_0_dout));
endmodule
