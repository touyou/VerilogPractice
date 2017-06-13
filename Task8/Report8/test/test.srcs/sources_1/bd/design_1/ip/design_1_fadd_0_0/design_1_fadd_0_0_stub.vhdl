-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Mon Jun 12 17:45:09 2017
-- Host        : ispc2016 running 64-bit Ubuntu 14.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/tansei/Desktop/hardware_kadai/verilog/Task8/test/test.srcs/sources_1/bd/design_1/ip/design_1_fadd_0_0/design_1_fadd_0_0_stub.vhdl
-- Design      : design_1_fadd_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_fadd_0_0 is
  Port ( 
    x1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    x2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    y : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ovf : out STD_LOGIC
  );

end design_1_fadd_0_0;

architecture stub of design_1_fadd_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "x1[31:0],x2[31:0],y[31:0],ovf";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fadd,Vivado 2016.4";
begin
end;
