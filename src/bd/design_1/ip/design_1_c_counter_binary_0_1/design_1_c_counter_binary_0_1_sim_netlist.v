// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu May 28 20:45:57 2020
// Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/windows/repos/vhdl-modules/src/bd/design_1/ip/design_1_c_counter_binary_0_1/design_1_c_counter_binary_0_1_sim_netlist.v
// Design      : design_1_c_counter_binary_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_1,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_c_counter_binary_0_1
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
  design_1_c_counter_binary_0_1_c_counter_binary_v12_0_12 U0
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
module design_1_c_counter_binary_0_1_c_counter_binary_v12_0_12
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
  design_1_c_counter_binary_0_1_c_counter_binary_v12_0_12_viv i_synth
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
pEbp3z4g7J+BzFo0TbYNaCamHczP2LB8vaQLzrlJBhgLrNytvwUTBsw+OkXoN47nIsyb57Y1y9Hw
qDiRCpjOaiXPfMRAN8LdYaiXmNDG3IrfyS9Q/atfjUG/N2hffweL3UQVtfEdxKLKlswYdbHtJj6V
3s66vkryrbvarbOqtngpzPfi3uzGcIlOghMmMTdzJwbWL4XTls0akWrT3DdsFUa9bFvD/4ZDa29F
wu6HZOOQ5pR+djbKruK24V75ZRE4LOP0osRXyr35Zv/A/o75FqnM0L+AoXBRrtBpkCgti6+4VZzJ
IwhzebaE6M46/vzeIUTrTmBAPwRP/fA/MrBsCg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nO7EVPmsJig4i6rup46v1q1BXyVT+3Oy7sLyu6u2oiLYUlePLdLJ12C7G/s90WrHe8adxSkodnfG
pv0JBCJbG0Ew370OQ7JarfechaxAP3Ae2gAw7DAaR9cbRqneW9DTgUs1GS5Ok2FDvMjP+sDAE1eA
ENTI/eZz/gOMqoovP5407c8hcN/+5mibxaMcK6W7ADBHK3++72iwZD1Vykrx08a3PRqLVBg5LmdB
R2/R1ae7G6i1vtOz05BdRMiFOIY3AFUBM/lTHPGokbwIYv9naEPdIRAlW2haxdJo/5k/wNrdnqUD
PUEA1UtFN+DyJ1h+k1ZevDnimAXkUimEGoYqpA==

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
