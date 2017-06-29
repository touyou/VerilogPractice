//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
//Date        : Mon Jun 26 16:58:01 2017
//Host        : hodaka running 64-bit Debian GNU/Linux 8.8 (jessie)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (led,
    ledtrig);
  output [7:0]led;
  output ledtrig;

  wire [7:0]led;
  wire ledtrig;

  design_1 design_1_i
       (.led(led),
        .ledtrig(ledtrig));
endmodule
