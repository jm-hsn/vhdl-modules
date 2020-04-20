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
D/UHgltqMaofbFXIDfSDITauovc=
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
