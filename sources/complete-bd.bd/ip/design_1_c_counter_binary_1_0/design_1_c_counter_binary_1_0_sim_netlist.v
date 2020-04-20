// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Apr 20 19:37:06 2020
// Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/windows/repos/vhdl-modules/sources/complete-bd.bd/ip/design_1_c_counter_binary_1_0/design_1_c_counter_binary_1_0_sim_netlist.v
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
CarJdKkZmRNAZNwYgir6oMSPxaOU3aK8CzSlGfJnMjZmCrIVQsRxr9Sw8W+lE6pNnWsG8zv74/RH
Xdy57ynCCylJZehb6+VL8wrg1ZJmY4ufROmu89U3JsB2uKX98mraiH59Swpts2Uiwc58K71wy8fd
/n9CXJ/qdc/knO0uF1CRYa/K8aipqw1DdsABHlp3eRJamF/6+SmcJLQ5lRaGYUl40EQhROTzGhgq
V2Y7o7KT5imTb5E3MHDdzYzAYIK3wwEMctlG09tlVVFbscldXlG5kGO6jmzSKu94NTpegMfFlubf
ofoW0bSDiMzjl2/9EVcOAaiRHx4w0hC+kDydSg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zQzaq9R8US6zc62kwmVCGdooB4NlEVQA/os+1GZ7ISd7T8up3UkZ396y/vIwE1VFRK0x+bplKb2Q
Fnj4yXz2B8v1hH8Gp/ZI9NCv5j2bwgYeo9piZnkoWv8upIhXqhrMybdeJxWU3qbPJav+uECSNxy9
df6hZDz3yiJTGi24tdB6fWh2TZqr/koXaFUJTAwAmdROyofHuQ3K/2LRxFkFBQeLF+PZzSD4qKnz
OnKWwtHBSI5e3ETV2jYPLGIq2PoUm03Ht51etvbtdc+rV8eMr+BGEWo3T9WRmQOLZMv3BNptTWd2
v4nAjyTwrENBa7dsHmkwFT7Uk2ik4V/FESu0lA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17488)
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
