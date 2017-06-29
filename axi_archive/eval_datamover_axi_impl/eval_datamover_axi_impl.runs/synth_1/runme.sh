#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/yosimoto/Xilinx/SDK/2016.4/bin:/home/yosimoto/Xilinx/Vivado/2016.4/ids_lite/ISE/bin/lin64:/home/yosimoto/Xilinx/Vivado/2016.4/bin
else
  PATH=/home/yosimoto/Xilinx/SDK/2016.4/bin:/home/yosimoto/Xilinx/Vivado/2016.4/ids_lite/ISE/bin/lin64:/home/yosimoto/Xilinx/Vivado/2016.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/yosimoto/Xilinx/Vivado/2016.4/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/yosimoto/Xilinx/Vivado/2016.4/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/yosimoto/u-tokyo/hardware-lab/axi_archive/eval_datamover_axi_impl/eval_datamover_axi_impl.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log design_1_wrapper.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source design_1_wrapper.tcl
