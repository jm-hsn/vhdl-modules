// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Apr 20 19:37:04 2020
// Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_counter_binary_0_0 -prefix
//               design_1_c_counter_binary_0_0_ design_1_c_counter_binary_1_0_sim_netlist.v
// Design      : design_1_c_counter_binary_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_1_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_c_counter_binary_0_0
   (CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_100MHz, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 16}" *) output [15:0]Q;

  wire CE;
  wire CLK;
  wire [15:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "10011100001111" *) 
  (* C_FB_LATENCY = "2" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "1" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_12 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "10011100001111" *) (* C_FB_LATENCY = "2" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "16" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_c_counter_binary_0_0_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [15:0]L;
  output THRESH0;
  output [15:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [15:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "10011100001111" *) 
  (* C_FB_LATENCY = "2" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "1" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ZBY06y5BSEA3vwLtCYy6nxOZv3rYFFgZv5ABjBaqtaItkwdtQfFvZBIMhBOgu0+1i4DhnUz7pdYr
Y88DaxXmyw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Q91nMYZhjxb8KT0ODrW+miquus8bIV0xJDXXyQLu4mbE2ZGK0HYqPk6xE96lKrNSpNViHea0rEyX
J3Qsb1QJLBM/4rnfg8PNzn8acqAN22JgnqyTntYQVpk0fARej5ldkyKbsCPgkFDFJQnDbUHBIcF2
clV1QCjE7A3SvN91cV0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fpeDNxCbq4trL0iAEhu+gbl4Rix2OTBKp+3DlpwRVRrJB8M79X6xv2dY4g29GTJWY/qcPCM3xauG
RxLbIsN70w9DSrpdJ31jxXSOp/N0b21smrkPYOGR9al1eBkfjYMFWbiVzWEKHK/6z705awwEunRN
qhtuKyDzs9JphrMi08O8ld4FYuGNYbtDOUXkizCIgaOdAfQTq0yCDea9z6uJ5sQUPwqrjRIroSnJ
mW8XvC4+hFTtIH4kcsR/hWe9eHVCVq7yIdgTrHznDz5I4c7+A0ZUoahnR5dHirQC2z7KKzrCldej
93tdxPQksB7VjPElshg8WP1MGrwn+7hvSijdSw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
No6agU7QCIBdcP4teTJDlwXV+g3qBzu8V5gqFUsql+qUP2ZRyYvAPscmGZyPnHh9xvIYYFmXqCE7
RRM/BcEtyrJ9GJvahRcE/doL0n1EHIOASw/MZnFHkf6gtqWvN+SIv29/H/UyUfhuDXqJBGjBGBRs
+/RValRovCLF1SU7AdbCQbWKJbpj9JDmu7gpnhPbkiKkLcd0L7j/KcvlPBvHLG2JvHXct9Oyye9y
FJ190Nne/diMvLsfTBKIzRzQiV/kj3aSYxw4yzuKLbdVZ9eZYqFHwhjBXrVIvIAq9zy3Z0JajEGH
8Eg7Z1uVL2BNbnB2qP4/6a3wYkq6RDa/mFw99g==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Au9tuW8YCiySVmtwoSZ2LqBsVMwu9uzGBs0i03rtA+ohnDzpS7/saWzSdnxtvJsmHKLPTnuG8etw
O+1iKknogGQAhYN8j4DK0/PmelqEJy8N5vwkQ/o6l1cfVFLfqvAMRbZ7lkPzco2SCT7/KjEJHW7i
5gy7tqPxnW7QwYv2vH65EVqe0p2tQ2kCHVUvvPaAZbeDzA1LHleCahBpWEI3g5wztTT869s7a4yn
1IeWyD5NV38NHHcwqubPZ09C1Vm5NLAHW7sEnM3is9mRkFnCh/x4Fb6Ecuu4bJYFhgmNzCCKgYK9
PEdkW2OgY7EzDM7ocQQuoE0+aHQvw9lRdJm00Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
n8+Js6UruWrTa5ioc59l4AeAloQ6ZDwzPNPXUOknQWFRecrzd2eOQ2KSf6tv5Oxix315yAoI88kJ
L1R7xZeU1dj4QCJCinzjHZXGEfUurXJVEcq84ofioKIpCyBd7YnxOq469vjhUCYiTJvMARwPVvDY
U+jspt29lk+k5/XFur0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HvScITgcbiG4YgkXwlLAPuMki7p9oPIAapsMuPCpK/tVnY9llE0MvUk/POKYiMFRuKgzht1jfNyM
pX8Qwv3/+iDiBgwTwibzi053ET+OglbpoF/MDrRErGx8VRvmBKwxnlefbxg6dCEzjNwYuFpDkHVT
YZySWRuz7hA0uzRJwLLkvg9LoVoAsjHpp+GqlpSqfuVaV3IJzpIboKGmFv2qLj7Z3k2aE4HhZfXc
HclRJsWxw/CA2DK86EGTnPC71xJNT7pgY1DSHCglqFwF35L0FfZes57Wpz5Ka6YR9dKPNCocMfXO
DZKOoy0+Zz/G4HOrhtHGxgzfEtHjRq0ZthhxDQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DD9WOHaQvYFI8h5wYFu74x8smNiYCOTHemVwtspYaW6vxh42vLa4vI8JwVJ9/Ld+OuTE58ihI+iB
sLTbFaAMS0D08ArqsEs0CdlxFyqxo34honEfeZ7Yt37zSAmHxtkgZfAiPVxdOGvYnztCV1jL9qvA
22feaDnIMZPCfnKR2Fz+OENmfBZMElHTNsqPT8osI500Q0KuMzTzOtxR0QOVDBKd4fr+HD5vDn0M
dGjdajGSYvscjdSw2jhg814zAuwIiWKZaRPfaSAdPHU3+3/kN4PYd8yYFj/8WRKmc5ac0AGaaJRg
UzWSRHwb0XzpzWylZwh8BfBuudm2Jp+rb/p5mA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K9eUn827qLneubvHUnCGQtdCVMY/6wmTG0g3PqIFDbdjUC3L24a+NNbfGPHfFWtXEU/hCEOY/H+X
JIyNA1h/wujSTNvLZE5iCq6DLjJ/E+va0G4JSwmhAPMnUoLteqqremBeciy7Wi3wQcDPqRxSmkNt
k/yx89IM/LW3EVeU0JRL+X/hPRTE+z38Pau9pF4DZ+WN5MgWaSjE6dOpS2ABCNYot473MGOE5IV+
GI5iT94V5RALtYMwvmbbzl3cB/a+Jb+CEz+U2mVJhW3P0ZIHrJIr1RLmBKeHH4Vevbp9ioibtX5u
PkFEvgmcDsVHUP2Xtv4E12iSWeRffvtODQlmug==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17392)
`pragma protect data_block
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
s0c7TH29leiZoYjwqA3YBrJWpbU=
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
