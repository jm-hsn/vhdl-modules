// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Apr 15 19:34:22 2020
// Host        : DESKTOP-L9P0FU6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_counter_binary_0_1 -prefix
//               design_1_c_counter_binary_0_1_ design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3" *) 
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
M85jiw1ww+FfEiB1az3yUbMiP03qCyfAn/MP0l1zIEinIKfb++UVqSP7b09Ao8N6V5e/wS16rIyA
8OCBNajoaeEhvVsCgDgFL72NBMOzQGkX6xmjECO9Hipshf/G8X17zIi3KnoivEf2oJw7i5w5TqhP
+p00zVSN/orAuYuDaq35ZfoKGE9YeMnjQ+kvXUXyUCK/qS1gAvjvFgrnBUeGcY+qmAAsiIJ0ZjUw
p1ogMcJBtWcE1b2ioY/Mzb3fWf4jkWa9CXpXti73PWDiVWSleZ80ZCpw3Tuen8xIKDw0lBAfpXCY
cNebuiLWQASk6t6EUxD4cl/4pV3+ac0yW0/g2Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zpW1Ml4vV/CKScrn235xvKBrb+HOgUIYVWsmeQftRYnpeGyVJsv/U7uuf6hKJE8chYNxCzJB52BM
C7uqLZESeqe8zCqGOjp7vGe82N87hbRqH5QPngpO39wUUjSzqgB9s2siDpibgbPyrS2N9QO2zUzF
VeQ+zI0Z1Cg+CmDBdUp3V3NChqVUn79wnIEsls+1A2DMt0OuDNbMgwRROnggKSvUEXDJcr3gtF58
yFcvJCp51LIGqY6AbkhKl25eor1XV0IwKmZJMx4YiBlkXjL760tqYMYGeSPUnzqm86PNNaVmFQrl
9Qwd3cyYavoS4jnj2xLCZxCBEwCOIGGXPWAIBg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17392)
`pragma protect data_block
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
yWL4OwQe2j/l7KgnVx+7kL9uZ0w=
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
