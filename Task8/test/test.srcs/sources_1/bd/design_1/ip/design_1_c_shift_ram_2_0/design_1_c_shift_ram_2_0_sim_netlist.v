// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Mon Jun 12 17:46:01 2017
// Host        : ispc2016 running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/tansei/Desktop/hardware_kadai/verilog/Task8/test/test.srcs/sources_1/bd/design_1/ip/design_1_c_shift_ram_2_0/design_1_c_shift_ram_2_0_sim_netlist.v
// Design      : design_1_c_shift_ram_2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_shift_ram_2_0,c_shift_ram_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_10,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module design_1_c_shift_ram_2_0
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_shift_ram_2_0_c_shift_ram_v12_0_10 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b1),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "16" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_c_shift_ram_2_0_c_shift_ram_v12_0_10
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* c_addr_width = "4" *) 
  (* c_ainit_val = "0" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_has_ce = "0" *) 
  (* c_has_sclr = "0" *) 
  (* c_has_sinit = "0" *) 
  (* c_has_sset = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_sinit_val = "0" *) 
  (* c_sync_enable = "0" *) 
  (* c_sync_priority = "1" *) 
  (* c_verbosity = "0" *) 
  (* c_width = "1" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_shift_ram_2_0_c_shift_ram_v12_0_10_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(1'b0),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
CuDSt6hOt6o+1FcWOLaKXcAKLuRzAiPrs4u/ycMazNCtPcUi2wHT8kgCb5BIF+QT/ZsmgHVwN6nz
6TQmD2ioAA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
DcLyscyBhrkGH5AeqBBECnDnE2kiy1VjQ2+NETkxy5pQUVUV/pAhAhYJRn4ve+okcgfrJr5pzPyl
VipXedgw1+b/45JNK6+gjTi3WlVvxWRguc8B1EpxRXSqB54DPGV6CW18elwjfA66IRUpTD1/4jMY
bqnV7aXN60mXej1DCsM=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
iyY3zZ+oOlMyHtL5bPAdBQaFUHU5LRhlAoHOAzvXUccfBJka1LeBtCfWEhDqJCJye1+abiOS/+6y
a/nw0+WiowtncAXPAQ5L57K+fDMgQpE22scwY1eL/eohOJapZvf9DiGikVg5jzxMiu4bz5WhYPC9
Wlem9NbpD7nEGrX95kw=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fxuHnbtxDm6G7kc1tD4uHV/zKOgWptQ/Ug/Ot7dwyrUTcNwY5b1H9u8sk01LbVBFgaXgLAewJBbk
diLtoEd48m9iqGo5FOUn8ZItepQDkbbLjKgkqdvp2lJjcUoUXZWbj4pPqJoXnGV8ALXRj4JbDpXw
rYLcBN5DKi7APL59nxswJwddX2Lk7NnSKVv7WQ90eWCmN74Cjhx1LHcUeA+Ppy+e2KoJPHf7xsQy
EBa1+QFcAv2d+4UiXJYtdTom4YJLhBuucUgGGk8ZIh1KNKjy9bgZzJQxbpT1k3ismY/tK35SnwDw
O7eM+qZsY8lm8HgdM8KGaBzTsrc9x7XTTqd++g==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qt85o5o0II4Vdwcl8HptuArvhGiMcrgdywNvx+O6qlj1TQAB4TgUVCIUm/uRXny4iherzxfze/EP
cduxdQk+OvFX1mjjhOEYHk7g1JdsCVegTCE9BmWFopQkWQSjY2VRfT5xGys9dUWMUPUfwN5iHjnz
uRztjLmjNabpqksavQN7EEOxqWCxrqBi5KRQqtK/Fbha09X/7cvHY5pDredgZMRdFDQkzJacfvdO
36LK/9QkqpbwgW56WpjMNmTuKdUOT03fS+L+ZaMzUJ+mD9uBL5bg0QWm4G8VoCbxyP4HCbssgJ3j
YEWwQWWHAmp09U/CgwWv2MPnwViSryZOi9D90A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qIzI+R3QeIhDxNmhrRldpA2zuC+A0bapTx2G+y+/IcFAhcyFZx7kMhQs/Xb5p1qYo3ypqaTIhsdk
gNPtbqW6qo4A/fH5JfYV+dqUMgxkhPXCq3te4ZpLVNJIFweTv2XgX1UYBnkn1aZmcssY/y7lulfg
Q3ZUH0UUGX38+4dBZV/nyH2pljHSZJKb2Vg86OUoLOu+GUD4Hrvd+kCLwl4Ms5Ac8+UnZYuUlkND
TmKWofkdeM3RVsgmF2oQG6R4SfQJo46lVxDTryBuQAryLYk0t5uCLEcecJsXVlfSe7xIzWL3dNHs
XNHSkVSjE/XxEXu26LAnWjkrBvXNgOhjgYAT4Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
dxkt6nQUkoiUtfv4JK6cvFtDbdrdNmXNRwfisYOVZZhW8QFot3XMa8bCcHEFlNIz0rdEpDoa0pxB
MR+lD85pWI962HMB0FAPY7QuOx28suQOt6S2tob7g+hPO7Tewmzu1lSC+0tF46vNfclPpsr/wHPF
3VBeFyRD5Iv4cqn/N5T2JLFHzdyNv2Dyw83l1yRnVPI1pblb9qnj5nbdqPiAdPM+FhGwi8HiPV7l
4PiAq7L+uwRJMVYKianMzvzim1ys30HuXM4ovIBr/wpXuIVYkDx5Wp877a+IufgnMzBw7fg0UiyC
im1uo7nyuTFQ+Z6c4Ss5xV9Hve+mJbgo2MrRYw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
nEA4ZWswzZn4lmpjOTszHx0opU1sW9sGKx/yCO/ootFXoAIy4Jctj0f/2QG5P9nOC1e1kBx+RHdJ
QmhKdyiplOh3haGxFSuAuM7RH86/E1HXB0E/eD7cuccRWpocYe0zDtArRRxSOFfKwZjoVvHkT6yc
pyVMAlmdsfCqcSYn6bxTJ3N015pRnYQIIql7TtGY6Crc89KkW9Ve4waOryo+SJdmpTZDoE0bspAH
WWMgRFXyyPTsZSPHwNkaM5sxBAIq09NMafG520PsC6JT9FdVx9BfO8x7XYF9QKxntykLSKGY53Yp
TWpANQdzhfDL3/rBgOWOn52xfqi4zmnjYHttKw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4544)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
