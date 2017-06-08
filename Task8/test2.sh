#! /bin/zsh

. /opt/Xilinx/Vivado/2016.4/settings64.sh
export XILINXD_LICENSE_FILE=2101@recdev.cp.is.s.u-tokyo.ac.jp
xvlog --sv test2.sv fadd.sv
xelab -debug typical test_faddone -s test_faddone.sim
xsim -gui test_faddone.sim
