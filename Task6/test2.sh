#! /bin/zsh

. /opt/Xilinx/Vivado/2016.4/settings64.sh
export XILINXD_LICENSE_FILE=2101@recdev.cp.is.s.u-tokyo.ac.jp
xvlog --sv test_divider_p2.sv dividerp2.sv
xelab -debug typical test_divider_p2 -s test_divider_p2.sim
xsim --runall test_divider_p2.sim
