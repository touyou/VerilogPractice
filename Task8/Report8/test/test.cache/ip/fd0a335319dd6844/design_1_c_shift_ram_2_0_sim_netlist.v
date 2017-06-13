// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
// Date        : Mon Jun 12 17:46:01 2017
// Host        : ispc2016 running 64-bit Ubuntu 14.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_shift_ram_2_0_sim_netlist.v
// Design      : design_1_c_shift_ram_2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_shift_ram_2_0,c_shift_ram_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_10,Vivado 2016.4" *) 
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
(* C_DEPTH = "16" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
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
FSge1Yf2PN/Bgi4E4tO/KVG8UKjmzdRPL1HYNcPrch+wdaDuALGn4Z1DxPRUPaHZd+UJaTvrbjVS
+AuJuCxD+uAEvZTt5aec9NorNFW/biG47EqDzl4NZmASABt+XQ/WCsuQCmqTneknS3PUBPY2iSLY
EqV67VfgDsHVfM4wK3cM7QfRIMZo0P181W/0MIK7D93z7J4Ppwfgw/tObZy4wTn1nEoHxQR7d37/
J1aesOe6jI3F1SBaizNjn4Jxro8UWkmk20DM38x5FVbSYUCNxDIN96vDDgUnjks5MHDqb87IMq0r
z9gy2N7vXn8Ca4NS1/dh0zdc5ZNvO8usmLXx1w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP05_001", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
Spgb7bshPwtaewnKcGiS54STc9peVUvqsMsW5nzwrOwqdoWUUNL/jUlHd0udRrWytjWp9AfKrIg6
cdJa6vIVtudp3GvEo0a5AwSVoG4EreLA3cQ9joI+fO+f5AbdwW5kNiBmlQ1T5ehLDy8OQaHOc29x
q4KOIFcxLmAYP7aM+W8p/k1X9B7Q1RL+kKg2LJRmmlsCwCXTCKKANpzIH5mmfqNaScijtZDeKBrz
roFHwpTZTlfMJWkjn8mPNqsa5qNSw8ztV6EP6Y5LLN9Vi8IdAWmq8psrdBxPYybICsyUWPj6XKAc
awUCDtQ9/R+TyBtzuVK/5BO11rvCEmHaJ7z7pQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4496)
`pragma protect data_block
G0WMmEiHxuwOlBMJPVZ5dgpaPBX+jsxOC2GD23VwebwIvWlM26ORxakpMbuF8xKQLFDiVCZT3PMV
dDyDw2WxB59LNwujuOxJKsUbPovsW7rKrZLPsXN8beyQ/tLaVlqwfhFAPVE31Dkr1Aa4mlgOnD0z
toU533Yy3MgHsCbY0Fgu0dsG3mQrFwHSY+53T1LkUAPoPlfD4PdLGtjJImSd8Tva0i/vpi8gkEQG
Fet7DpL2c7C9ExLz/ks0jlO8mW/J4egXt0ez53B5zjUaSAus83C4V96kZgTt1n5YWzlsGe6dXNKo
rFuIUcwuSLLEvxktGgjiX+G54Px+D2M/xe67cGSTcCk9lYyGHb40dDLlB03QmaFOXKv4K4hmgDlj
hAwytkEqxkepFdz/Ojtg10iAxLdfXMWH2xjifoVy9rMp9R8yOar1axdRY0dnQ4+e6562U1rS7kQ3
Q5ObLn5KYctnv17BKvyvMzPuscYkmEVizRMseMTJxRwM0dZWzbSHxB5TqxUHJX6cszffze+9P4Yr
7+K/LjMXSXx+mEsm3fi5hGXafeC+JL4NDCjN8ekP2qMgzKlvNBZ1W8+/JNO9zsPi/pPt7DLP5O+e
Jdni4rxBwZZlWmXrbXbTI0vqAOEK7A9pU3rAYyCv++zhlJvvjghHN7kb7+4ME94d3NHivVU5HhUZ
IPmsCeoCEqR31JQA1I6SfvxoyEbXovMc8J5/e1m6FGTB+PNFLZ6JvpicFhT4XqmT3ZITC4epgWcx
5R6sBc9fZLarvuJ5FcP9mPBrXugPh8rIfM7NV6FlZrV3iVTOcmp/lxIl28rvd6vPfB5DMjInjF5Q
x3yMYHFQrlcoGZDYirZlVsOjJAOfvaeEzg0ZdNkTULUvncQOxr/S+HHeOcHRdUyYdCxr5Vshv/uo
Gy4UijpRC1PiVf/56kLRDk2rv+vtXJ8EXQ2weyquLXNV++UaVeoCaNizwd1cXSDEzp7jCZTbyfS5
NQ8PFzQY50gg5qtDUDTa58ZcIOq7F7HmoeNx7QzDJetGVdEjpfve6hTn3D/fExqUODkpas4+zo+8
aw9yPuHkNPaUc0qQVRZNQ64CkJevd2CpfUn24fpYjVmL/0vhvy+iJhgpRCbtWDx7shG7GifRdVfM
fehlpru8ZnusPnKnKEjY/nG9z225rMseF2Qt9vx5pKQUxAeGwuCQkCfBzWlByWsujyBvZU8gG+0A
0HgtT/giCNIoHOcx4N964GMD164aytXnw5yyVJzTFQ8kHnDX8LfzK9/bztkzNdPERAF85SIvLGxO
g284S1QRDyFlPd62X9iBi/haQW/MnAVJyaSTrqQ8K1lPg9k4plG0OmO2rVIL8d0RrZX201gHNjgY
SPvchOMGUckMLqdufZ1HgLZH81GoSSY8QVeqkXeD1n/J1wI4nfiAHLyzigowY/1wEthoQI3KGDym
rncYWgYAxE2fedhiMVpTL1rH2BR9+I4gx1+18asw4JCuvI0ZCUEPSIxEdzfNiywsIIr8TVvxhz9U
vTO+zV3Qq918D73N4TWL6oRWXiqJm7ciGVlY0TlEsDOfk4l3m/QFb6cKMi8gQQ3GgljoNAx4LV9H
j5R4EDsUXvwqwTJodjgWqLaGAxkF3zOOMzNFrMRXT5+gUFwxyo8lcd380jE2COpw9fkivEvH7q+C
AYikWjHk6huIHQLURnJVSx2dLbyF+/DQf37t4GTe7BBxRJFYkFlwtpQJaNR1RHNv6u9wM5Y5JeMW
JIxk5HeYkjeYia2Dfw40+qCTpZg0X27kWhDR7sf9tCma65fZLw7220MHr93+G3UJ0HKGdg9FjDZT
zD6UHfVM0LvojdGXE2OL8SSp0D2K2A8fGMnjGPvjTiUE3irLN4o9Xc6p36JpdFsiXgdwEjdHM+I8
wtojF9oHBkKfW6EGrIHZwymXC9BBeQGj6daMyz1LQobREP0d/N8CjnsYVTpE/IYW7BuP4lbxaAbE
zPcNZl+LuPnZMolZQ+G0N7lOsSOnsxE8WSXE2hXW5/TvKHoFVianST/Lr+obBg/OmDHkWA6uzMNh
MrX8OczC/ZlcCZeckNnBfh12yOQlq0/hUwH2Tu7E/VkAD3sclQrP16mD943zEggXDXoCTMwThyUK
46maukzREOiJ6Dql3vqYF6AQEn9xDX1UjknwRX+LLkXmFF0I+aMCjcG/wP/Iin2PDzZKcuEAJsY6
9j73txXTPlJ865CXz3+27DgxdlEYLmEZCsHNkzN+5o1JuFxRtJql2hitygFCEgkzCyJJHqEVJ9bO
eBkLwdxjLKCaEcuP5yfuAAMXHD8D9mGrkYFQqxTv5sBfR2pUF3Kui0MBNeTxCgZn6j2VY+fbh6WF
xGgh2vfI2foDNcGErKmlpTia5av+luyPE55K6EYuOzClkhCQX1UJRZJPp7b5Jmnp+Za7D4/DW0Wd
7CoAz7KZ6Ot9BrbmLOcKtAWoYFfKK+U8pFMoSLvOzpPVGD0CFGP8YgpeS+KMPEZ+RmmdVq8wZZ2V
sy94/RLTUkGKOKtJHK59swRH/qQeWulmql3bSbV6ZDySi2+kmQ7WtveT4ha1zmT64eWVxGT9XM7H
lhPxFe29qzRBGEvJVoumhgepEaM59r33u9DnpyQKV484h9SzFLZgztBFFgxmDdMGo40jXwRHHsbY
fGkeBm8ZP+UGc8pCMu0xuck51SpLqCN6Ge00d7pCGoA3mKpxfOkR/tFvi5qsOpzna3Aqoc7OO3LH
jbDN+9sHI98N+y9NCfayDOH8u4bKxxudMRNkA06LuXMa1FTLg3Gn4I84TY1auTk7Wtri0LIxk2Yk
vogzoyrKyaCAq1cZrYg2k+GkoRwlT2iUD1wtKbrhVtGuUllhhem8qMwQ2bY4M6v2tu3KV834HDVQ
2sk+UOcModzPaLOpKXcCgtt4zET7cwiSlBNRJnAQRrKtJKqZe6VEz1ih6DBuqcMZ44RY0CucXilG
XOTBFDR+ORO31x4iQD3GGut3TKY8jjEbjiLg512G2J3ryYv4+r1fyzJc5GkoR11lypfwyxDtjEu2
TjDipUrtLT0GFx/JpaD/azDqLeSJgBFAD+hbv94cgwi3moIRV8lOlgtsFg8FHmea5IEh67lkzc86
TaL4Qo1z9yGe4Ckh4YWxSUoiWMm+7P6rpl/xG0daUflLFR9eoh2OgcB9HlAK/Ksmci5Y6Hvo8P3X
hgYQ13KTorYZ58rqvr4hIH+G7zlaOrwScOJWZllfC4+Kvh9as+wpge0YGMgcB2HrqwE+B4eyvB25
GmhQHy9dB9R6303taOYCbeCFtJrbpqxsMQ6IEtbw3gGETSaFVu4ZO7yV0iXemYorKD/wua0a4wiQ
Hw8e+YWahk9kyI9wUA1lXsiyWU6JFWrnifvJpYZoOV2nImEkwKxkGKsTBYb/oAsr29h7O8KLk7Bn
N1HnsFF5Cebm4huzecbWtd//e9pnnU59AWyb1aoWlxiKN2CZ995c6Yuu6ym+V7mNPQK28b4rfLs7
QpIdQwceJ99ByTSy76Nd//V7VicK9rkIw4UNI3H+0QmGoNreSm5R+DlfLfnsgSWPNWxNRgzz4WRF
EEzoKkZ//CklxyMCDQ0rZ9RqA7lyM5mXDieKR/1l6MVwYS8+kBhB7rvnt7yR9KL6ECPxuZFzKYur
yR7g7O6EI71EIAv0WUiEh6rhERjBSV+xqjOcAYKvc8SQqFnfXlfIIGT8K0o6l/eP+w+y8WBeEGmM
zwziXqTM1DSGXifUGmlzlVfKHn1LJiIRmVvJ+n/b6Z2/9PB5MlMxsv6r6M/KWA0rV37Ak4vPP80k
DjATxe5Eq7fPIj0hlOA1RFLGwM2ybZkAgSHtSmgSjsWzpYjMJd6pw1+r6dg9o6Eiz70cKtPbOZ2P
NpJczUqtIP+qWbVocfGce/PV74h3pc8V0nPx1Cx0srOCLGstbmalLjuJJF+JC2zDatjufZUn+RqV
vv46Qj7fWqQHNU4VNQwz1nWNg1fQ9crQmCfxEQGbGcEIXKdDqmlYw7oaUJvKT4EVb5Hw0H962GZj
c74GhifliN8xc9snd2bEa4RghXYh9oCCJw1fxEHtp+s/09gBltLN63xdkxJe96TUawjkoIF+l/zR
VxiN1BhPSufdl9Q+tmlgnGb0QPX/j0agb699UqkPcc2KIZodAjVmmFbfTD1caFwFdk5q3kfggr1Q
Ohxv19GME3IyD54WVe6Vefy/YdUcQta6CVkHGq5QTTuoqNh5CNCfCSh95YBMJS1l9xKi25W0tRkV
+4h8y87to2UWiPpZs3XEYBUtU0bsSEaWjrTTiiyzEeeIuAXR/lgxca52XQDyGBkIfverASyFTVbo
jzk61uPqYkcgWJFyBQJHyXgaKTz5ETdyIqnYOGIs6qWkPO3v7IY/thZdbaWdoaU/bExYwbCIMhne
mYzpg92Inm9mS68Vm3YENhWIQzzmOdXI0OPnYQD/+uWWDTLtXCHft8VKq7ZDAeUu15I8Z5L0W3A4
59vRkl9MVQalPp73JYbKCbrfzJQgF/clGEoC6ZIau9ef2hdf7//njS70HHlML6hTs5r514nwDNeB
HQBykn3V2ADSQg5em3kku6Uj1zflKhDTtpTO9QqdVh46bCorqNPptGsplfo70f448mLUudm12Qro
wnbOCAKR8Og9a1BzPM1uKr2b777UHoXG4RN7YTYweFIVIFd8Q0qjmL2GfCboYSwL0hgfaxNium/p
s7CXI/WQBZwskyjlFmgZflNKkJPOynAOg6Mxdx9fMOo5Kj0Cx8lraH1UcJPm02vmPcneUY9WR7vD
iWSIPibhJjWmHxGNU/cejr8jIoY4X7q8alZicdm064QTGhkSWAZ+sW9golboAXUUWUBH7wkY2HLu
t1hy8/iZOCe7B93n4jZhz78mpjHluCybmI9dHG4LpfR50oL6K0/0nEUd4w++XqJS8iaO4Tr/B5YL
82Lvlrj8ewOQtB/1/dYZ2nkVRkYvZ0hFAWieH3LZgc04GWo5eaLhN2jYavC+e1Ecthh+rCCiA4at
Kgt04oHu6Uxghs5f5pMKN2yMxfYVIcQsJlv5IycUTL0XQa4JSnB7QGHhKRCgOeB4dguBYLgEuPUP
Yvt9ijlYlfhh/DS6HSpXsaukDuz2nyqxMRsGAhqB3CYy7Vm4t4OwV2O57T/8Njo3GpgkEXxLPmIA
tFgiAZTHnIuiIU4V3kK7KC1+h5qjISMzDlXKpsDYI5vug+tDNJW6LJSLtblHbWd2WFrcQpYvZDmH
JvbCBtXbFHJEjhdsoqtHLvCbAknClXx6rxBzs2QeyF5TBC7VOKGmlbuhuEzfb4ZittesQZtFI1GJ
aIqtqr88LzDg+VwtIXy7gaGfgl4JvnCR8cM2+bFGSR799GggDeJ+mDsRtnpZvZ2ng+43zoBSWIvv
PNsoA/QjLpkW5vgX75AbXI6G1Vqss3nuYr1+wDLrtFeZKKrlx+58hjtjBqlNq0PtrdbGNCCCEIsn
TYJFk6sFfVP3V6Yr7uT7Nq/2GoY+k2SfMJ5PYNAQuCLmSzmACLcu80EYZxGQWGl9tQ3jRjhlk+oe
ZWpMvi2BSFXUmUL8OtlJsaPIeVwEo+ZayrRzr11Id5W/LJViv83ZFo9IC96YgfQ1IdqlxIbJNO9P
/dkx74B6whEn4cDPmOVwU3LK+JSxHWeUwxtPQ3uATNQ3GF4J/MSipAqYIG894anqB+NQve3Dtx8X
yA57rr2A7azJT/NwZGT/LZ2d5P/pgXAPxE72IEwbi8Vgl5SMT1E8T56+HM/EOJkERCaLH5AcbYhe
MY2nVDvFgVM0OO0RLM2X4rSHMS8UFqgaV9xRXOoLy+b2k399Byj5ytBZ2kMrDNZvmB67k+NBRlPA
e+hocc7/keeQUhErxfPVe6QzHsBeWf7BXXOyu1duxp9TutIIt9thRqlLatOlVaInBD5+rixrarnR
6BytxKrCmW/UbqJw3zbaZ1lw2Ej671R+YYoilfRaO/6vv10vS9/s/e4ouDwLJcH0Dac=
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
