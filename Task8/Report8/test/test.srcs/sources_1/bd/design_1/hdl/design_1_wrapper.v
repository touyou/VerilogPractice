//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
//Date        : Mon Jun 12 17:44:35 2017
//Host        : ispc2016 running 64-bit Ubuntu 14.04.5 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (led,
    reset,
    sys_clock);
  output [1:0]led;
  input reset;
  input sys_clock;

  wire [1:0]led;
  wire reset;
  wire sys_clock;

  design_1 design_1_i
       (.led(led),
        .reset(reset),
        .sys_clock(sys_clock));
endmodule
