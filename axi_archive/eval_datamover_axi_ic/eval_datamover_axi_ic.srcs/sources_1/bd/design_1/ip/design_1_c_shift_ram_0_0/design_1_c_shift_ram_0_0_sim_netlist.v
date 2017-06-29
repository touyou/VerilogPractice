// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Wed May 31 11:57:50 2017
// Host        : hodaka running 64-bit Debian GNU/Linux 8.8 (jessie)
// Command     : write_verilog -force -mode funcsim
//               /home/yosimoto/u-tokyo/hardware-lab/eval_datamover_axi/eval_datamover_axi.srcs/sources_1/bd/design_1/ip/design_1_c_shift_ram_0_0/design_1_c_shift_ram_0_0_sim_netlist.v
// Design      : design_1_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_shift_ram_0_0,c_shift_ram_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_10,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module design_1_c_shift_ram_0_0
   (D,
    CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [0:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_shift_ram_0_0_c_shift_ram_v12_0_10 U0
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
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_c_shift_ram_0_0_c_shift_ram_v12_0_10
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

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_shift_ram_0_0_c_shift_ram_v12_0_10_viv i_synth
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
fYit4SHNdVyP14M9nl26LwpnQ3xZE9gi/3NMt46kH5LH9UsLnFeAVyRnFllaRbG9Cg2N2vr8Kqiq
UH8UppD1mQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
G4pBH6ChSlU630Tj6TzeyVkN+DVpvEUu0ps/xSFmqRkYOHCpLvSzPW+r7d0gLd4BhP01dk7Ezvnc
M/6PCmj0E7HuY+v/nAbeKN+VE62de8VCic7mn1Jf9ohRZAxVp9ggTFKzj3gEEjOd7Nhuc+f+hQm0
t3kMtbZgDMW09j6AoC8=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
b4T4egOaM8IWzC3hFxNoplEqtNLagYbyK5reEU/CdU1B3fmAOLDe2hLFFvlqNnyG0EzLfUd5iS3X
/W0H0mI1iFQ7EQN7UJdYEKXTsfq2xYMJ1TICQgXAt1J7xxX0FekKXh3paO/leHQoaKcj0MnafhvZ
MOaQF7QHV/1+E4KlUBU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xpIB0Na7t0hrd40J+UkdOD1M4Vv3iPoRXgDGVOaW4t+qrZeArWVfgxSjIyxN8abwEMB+/EmTAh8g
rvMIYFrv13kFTkpg/jBMJ4auH7zaw5A90L0AlD0IS79YEdi5YOLPQYXV2X/mngJMVFye5EsjHjhg
spls9LDvuXh6Dkqvfv+TrLGDRcoNWn7lA82Kj9PxXJj5ZS0KMgMrtgp3HjyTGQOVnO9etzzCQpWj
Br96y8BYgQo1gQSlN61x6ODT9jFPZ5YCQPCB2/u9sYnYNS1vGqlf8blFOfCciCdAR59yc/IhHgXL
D9CRSNPJi7TsUYO6aqhXALU7fE+WYgWns/JTRg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JbP0vfNfz/7Jp7tycchrfQcspKtnTx8bi0iK0UYAcXq2mWnzFrZ2MVGqciIFORLhl3d9dlHCyzJI
uybpj0ywodiQ1M9xXcu9Ltwl3HJT4Z6Lqk2I1jjkNQN51L83XDASJwpkl9P5LCzPHKsSvidtEkP6
2As8n2ey+kgkYN5j7TMN3P2++RSuwJrBPNw/Mcc9NJlxSWOYsEeQb8CBatGGySGo5fkT4VxIsWpn
sctgKtspjWrJiTth+XmkwcWnNdy9y3q//nkolcXp1p6ksJj6dF/ApWIrcX8mKymNA2eDbPSVAv4C
FYoC6D9ABIBe7BJJdTiz8FZTY0FHBB6RgRfM5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sQ7fH/BwSCF9sFDnDJHk7B6+VTIPQEIu4Gd+Pt1xLzt0RsEmaQ18y9APmI63PjaALbNyG8+QlDmE
hcQPjDcOAD+HCE67xNrNQrnXunlihoajY74ArpZ3NlXNoLemweS1gO8/cOAN5Vib04L20Gub5vUh
Gm45Jx6tCM0u01WSQOY58Ypi8+hlBQ/6ftDknrGCfPKCtJ4RobeG7d36hmzs13OJFi/Vld1mGAiG
cfVHI9DyQiM8MaK95i7JeGE+1gva/8RZMO/wOsOhNDuUQ0Xfj2aLxM/U82+8kg4KwRQHueraAXq5
UBfmQxzoyV8Cdt82VWYzQhsl+K0ahntPDe4bMQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
Y9Wb3i1hW4197LstbqHC40y+HygAWNQIx/yvpa32uD+FBwUNt87eXlTN7yH7P3frVeJLzM3gpNMb
uj7dKE12iZ6DQGfR3VzkUgKGO5Gb5al4TkbJRi1GHkdrq2QiCCdE0H0idgx9nH2xUdxZyWJuDESx
2mAPSgCOVvVPCOLJDcDop7cjr90gKfeC11b5GwPblwfAk2eRLMhCjwk2GtJLAhsvMeg+V+34yF0I
yEWeUQB38qU1mONrMdvygKQfls40Ix6k04aai2eLXw0ni0jeCulKnDZslvaESXnMceDlK6eQgrWw
HG0TFORBBX43xmXEs/D+DPTG4VXHssSWAdv9rA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
RALa5KWca9yZtZcEwMZbS7KyyRUrPuk772bcuZDygVVC6alQVHk4HtUOV6YyRBMVMc2ymnhnykNo
2UsmcWQA3cjklcQQqo9MrEakIxHOIJ8SOYqWQJZxhbfInNTEfvfLJGTlw8ShkYuIVLnD0FQMEROW
mmP+maYyyxnUbGy7cGLxU98detrjkX5luWetAa/Szq9tSua00SpChx5c0YRo4y1GL0XkuITlbU26
AwwyIv0QqejXrJUlCWOAI2QsPKx3xEkDHqvRjpbWMARpcibLnJpB98PQPden0O2decclCAgGnY7C
7tLgL7G3f0yxmtTZc9YpB7HLX/5S3DKOtFc88w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4208)
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
