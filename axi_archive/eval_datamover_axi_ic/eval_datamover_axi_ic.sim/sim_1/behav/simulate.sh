#!/bin/bash -f
xv_path="/home/yosimoto/Xilinx/Vivado/2016.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim design_1_wrapper_behav -key {Behavioral:sim_1:Functional:design_1_wrapper} -tclbatch design_1_wrapper.tcl -view /home/yosimoto/u-tokyo/hardware-lab/axi_archive/eval_datamover_axi/design_1_wrapper_behav.wcfg -log simulate.log
