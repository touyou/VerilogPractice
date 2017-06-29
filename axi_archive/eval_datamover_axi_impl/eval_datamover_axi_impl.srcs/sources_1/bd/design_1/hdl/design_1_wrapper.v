//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
//Date        : Mon Jun 26 17:00:00 2017
//Host        : hodaka running 64-bit Debian GNU/Linux 8.8 (jessie)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (btn0,
    btn1,
    btn23,
    led,
    ledcyc,
    ledtrig,
    reset,
    sw,
    sys_clock);
  input btn0;
  input btn1;
  input [1:0]btn23;
  output [7:0]led;
  output [0:0]ledcyc;
  output [0:0]ledtrig;
  input reset;
  input [3:0]sw;
  input sys_clock;

  wire btn0;
  wire btn1;
  wire [1:0]btn23;
  wire [7:0]led;
  wire [0:0]ledcyc;
  wire [0:0]ledtrig;
  wire reset;
  wire [3:0]sw;
  wire sys_clock;

  design_1 design_1_i
       (.btn0(btn0),
        .btn1(btn1),
        .btn23(btn23),
        .led(led),
        .ledcyc(ledcyc),
        .ledtrig(ledtrig),
        .reset(reset),
        .sw(sw),
        .sys_clock(sys_clock));
endmodule
