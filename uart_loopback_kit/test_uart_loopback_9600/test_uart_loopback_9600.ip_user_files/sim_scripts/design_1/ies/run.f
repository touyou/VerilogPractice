-makelib ies/xil_defaultlib -sv \
  "/home/yosimoto/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies/xpm \
  "/home/yosimoto/Xilinx/Vivado/2016.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
  "../../../bd/design_1/hdl/design_1.v" \
  "../../../bd/design_1/ip/design_1_uart_loopback_0_0/sim/design_1_uart_loopback_0_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

