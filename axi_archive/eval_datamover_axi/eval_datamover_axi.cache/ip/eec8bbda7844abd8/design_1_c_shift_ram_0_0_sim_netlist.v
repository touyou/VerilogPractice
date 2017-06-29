// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Wed May 31 11:57:49 2017
// Host        : hodaka running 64-bit Debian GNU/Linux 8.8 (jessie)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_shift_ram_0_0_sim_netlist.v
// Design      : design_1_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_shift_ram_0_0,c_shift_ram_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_10,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_10 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_10
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_10_viv i_synth
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
cHaLHqFUMyTVEy7IR/K+YLxmupvGTPBbDO5Aw/FQ/ZZyYiitGYzyFIMP/vpypi2jsGPIHFcCebS+
NBoOdXYkrG/riw9RRQ3YviqnI50Ypn2zDXMjYtW1meM32sSMQVZTal4ee8buF+BRmcXR0dKsOROy
kCTa16VKPYl3T3SMpACbTpk0nvb0t0c/GlzXSR8PVAIjVzpOlchizPQqzkSAes0xyWYNWm26OzqV
1AEy991Y6owkh+WPUsuluFQGn5CipUyOTuMIiJaQSujT+RQPUQ0ktAR1CsL1KjzHAsGkHtlJrD3c
6O5cwmZdGUTUOBAf0DoN5JCv7J+0fKo4uAe+Cg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
yBTEijmcU4vPTNW1iZFU6d+4hzwmyZvU2NcNcCPGvh5V5b/817ZlwblYDagdyPtCojtT9raQQVoC
dfAneJ/bLc0zDhB+wPl0BvJDdiX+AmY6SdQ3kM/FfKUpzhws2fQ6JDqGGThM0XJqIhE9ciTO6aB3
g5pRYyckFsHZGUnh+DTXGceGSicWtiztuWk9NeaYOobdxDJpQb8lFPyFCr+kArnItfZeyxcHBisK
AMwZxlgVkdLPEy02deQrGYuGJavfgINdgeBv1rskqFfEW4IlH2wca5g0JiUlJ6EKkj0zaHiHTVD4
tFPESluWfOJ+17dE4lWFGxdfyrFFOzItckXgtw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4144)
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
