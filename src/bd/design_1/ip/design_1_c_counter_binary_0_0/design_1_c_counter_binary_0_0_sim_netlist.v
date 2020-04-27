// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Apr 15 19:34:23 2020
// Host        : DESKTOP-L9P0FU6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/johan/mlfpga/fifo/fifo.srcs/sources_1/bd/design_1/ip/design_1_c_counter_binary_0_0/design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3" *) 
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
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
SYeMJDfG7YNSowYNs8NE1tvMyXGuzKshcBjYmCRJ6u+BzegSWSS57qVQ5htuUUNWzump+vH0QGVn
HB9tTsS7TTgLxiFNvKPKH1rigEF3iSm6IuBhMZFYSZ5206Te2wDFsq+zYGs5CfMmBnJiZf2mvFFr
ZO0dqwiuA9CAggj8eDi98bRp3Tpg0SG8guawkawHT1rcDSj+a6Nn3T3hvewVPuqjPku9vYg86azG
O0g03hKDnMCcabTXMNo6uh4FCN9devb5Aqjflf42Ae6g6JBagqb0ekS/Qvtjlrw/e6WboJTXhC64
R6DZyMJRfojUbYt4TLhunkOxwSUTnBgW4eUP2A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KnUgut10APkE005un75ntaQqZdXcUbqXtXQ3Wy2TetWKR5slh/9AmK6kFyVw7aEWNojSGFn6u1ui
MusJJSviGZJu4yhrKyNPtYWVWOxf3MkjdNQ6Jvl5YsLd9/Ec9q1YwfPqw5H8T8pp26yXv3GsNP5Z
HPeaCKdVA0tQCfhp77HXltlsnkcFLVWA/9IRz4yz6W9bwx4xDwRMlPoBjgJQzf4LItZM3cSNcn/H
6fGviwaOt+QaAFIq22W1Dg3iqPzCRtb5ZASgy5VhmOac/9gHOCrYbFEMvyLtARtkGN5DR1haKDD/
tuYBfUkQx6gAR2gTUqNquoqeJghppI5tk1ssDA==

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
