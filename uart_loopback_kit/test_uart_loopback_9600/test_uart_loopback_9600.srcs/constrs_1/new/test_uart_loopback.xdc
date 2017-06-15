set_property -dict {PACKAGE_PIN A9 IOSTANDARD LVCMOS33} [get_ports usb_uart_rxd]
set_property -dict {PACKAGE_PIN D10 IOSTANDARD LVCMOS33} [get_ports usb_uart_txd]


set_false_path -through [get_nets usb_uart_rxd_IBUF]
set_false_path -through [get_nets usb_uart_txd_OBUF]


set_false_path -through [get_nets usb_uart_txd]
set_false_path -through [get_nets usb_uart_txd]









create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/clk_wiz_0/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/uart_loopback_0/inst/u2/rxbuf[0]} {design_1_i/uart_loopback_0/inst/u2/rxbuf[1]} {design_1_i/uart_loopback_0/inst/u2/rxbuf[2]} {design_1_i/uart_loopback_0/inst/u2/rxbuf[3]} {design_1_i/uart_loopback_0/inst/u2/rxbuf[4]} {design_1_i/uart_loopback_0/inst/u2/rxbuf[5]} {design_1_i/uart_loopback_0/inst/u2/rxbuf[6]} {design_1_i/uart_loopback_0/inst/u2/rxbuf[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/uart_loopback_0/inst/u2/counter_reg[0]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[1]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[2]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[3]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[4]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[5]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[6]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[7]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[8]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[9]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[10]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[11]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[12]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[13]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[14]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[15]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[16]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[17]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[18]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[19]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[20]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[21]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[22]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[23]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[24]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[25]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[26]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[27]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[28]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[29]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[30]} {design_1_i/uart_loopback_0/inst/u2/counter_reg[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list design_1_i/uart_loopback_0/inst/u2/rxd]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list design_1_i/uart_loopback_0/inst/u2/status]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list design_1_i/uart_loopback_0/inst/u2/next]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list design_1_i/uart_loopback_0/inst/u2/watch]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_clk_out1]
