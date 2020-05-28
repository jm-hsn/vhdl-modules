// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu May 28 20:45:54 2020
// Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_c_counter_binary_0_0 -prefix
//               design_1_c_counter_binary_0_0_ design_1_c_counter_binary_0_1_sim_netlist.v
// Design      : design_1_c_counter_binary_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_1,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3" *) 
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
hpk9rvZh2+tWn1MqtGOhzFPRYJmhX7jbA9y9NwHy9D6/od6j5fL5k3nhtVyB96pld6G58OTjkrlE
W8POT13W9J9u6pQ+435g2c46/7xpMBlLhLce4V74LTHKdQVlSJH4+gZbKvMZlvc35FUAH299Il2G
jiTtDvNnrvGTbkguje+Z7M/fcOsjvaU0VMFwV67i5QW6rpX9SgeUujkX2yJqP5bxs0Wfgrtn3A8g
8i38FUrez8846oSOtAK3jsicQvIPkAnZfe0piM2M1m3FQI5mAnDd7rX8Y+J8U4mTj+sUboCXswIY
eOs5h09GXMnw+nxDweKxHmCcs2S5RtnE8jYHaA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jr0XbSaqS3QzO7OBT9LL/Vo13/vGA317px1EwSECRoPINatduLpWMebyQO/6ScjvCBKcF+CDjYLp
/Bl3PTpQ0pZFiLYlYeNK/uxrX0iVuBd2DHgEXnwzEaH8bPBJ/rJFN4wpWDQu0ZKJ8+ER3Eimu5ue
ILZOgEBbyaVsrYWoAzCLsi8nEwLMNNHWf0YN9PwSuNEt/y4aSW6Z8UgFSWsydgTrjfsK6ZdTCe70
8ST5OOnJEvXzsDUL8zEI2L8c1wu9hnrw5zh/GR57rjwYnboF8pZfpQTVwYzWsm1agDnhxQro55sU
8ihkMSte6XaX5A2tAWq+lOSRvy+MWUzVqyNomw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 17392)
`pragma protect data_block
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
RF7BTxWT3vByDAZaefmtbVER5LI=
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
