// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Apr 20 19:37:04 2020
// Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_counter_binary_1_0 -prefix
//               design_1_c_counter_binary_1_0_ design_1_c_counter_binary_1_0_sim_netlist.v
// Design      : design_1_c_counter_binary_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_1_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_c_counter_binary_1_0
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
  design_1_c_counter_binary_1_0_c_counter_binary_v12_0_12 U0
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
module design_1_c_counter_binary_1_0_c_counter_binary_v12_0_12
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
  design_1_c_counter_binary_1_0_c_counter_binary_v12_0_12_viv i_synth
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
CCnh/IR5pF5CCKTyuT8L5xUZYzY=
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
