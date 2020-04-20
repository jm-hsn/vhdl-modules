// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Apr 20 19:37:01 2020
// Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_negate_0_0 -prefix
//               design_1_negate_0_0_ design_1_negate_0_0_sim_netlist.v
// Design      : design_1_negate_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_negate_0_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_negate_0_0
   (A,
    CLK,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef, POLARITY ACTIVE_LOW" *) input [0:0]A;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_100MHz, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}" *) output [0:0]S;

  wire [0:0]A;
  wire CLK;
  wire [0:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "1" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "1" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "1" *) 
  (* c_b_width = "1" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_negate_0_0_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(1'b0),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "1" *) 
(* C_A_WIDTH = "1" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "1" *) (* C_B_TYPE = "1" *) (* C_B_VALUE = "1" *) 
(* C_B_WIDTH = "1" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_negate_0_0_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [0:0]A;
  input [0:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [0:0]S;

  wire \<const0> ;
  wire [0:0]A;
  wire CLK;
  wire [0:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_a_type = "1" *) 
  (* c_a_width = "1" *) 
  (* c_add_mode = "0" *) 
  (* c_b_constant = "1" *) 
  (* c_b_type = "1" *) 
  (* c_b_value = "1" *) 
  (* c_b_width = "1" *) 
  (* c_bypass_low = "0" *) 
  (* c_has_bypass = "0" *) 
  (* c_has_c_in = "0" *) 
  (* c_has_c_out = "0" *) 
  (* c_latency = "1" *) 
  (* c_out_width = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_negate_0_0_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(1'b0),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
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
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K0+lG7l3GInfI1PhPCgYrNnBxK55ZEmrpWp3Bn9dsmODX6ioh+C6sv7mSilxfAJQyCHsFdFIefrg
dbDGsss9Tk7tyig+J9Hye+SQ9kX0ZKeykHy5uh9DILl2bXa35YF8IKu6GyUV/h7FbaOXiBKnELG2
Fr+FKTHO6TBg19zLQxOfJFlYy9+eeBr37nxaHwS6wokw422HQRRZd8DHXAdElg0D29ttgjB7i1dr
vBRfgEjnYOr3iUZ/LiVY+vB/J9XHmjBuIH0YKMlOq1Z4lpYvEgKlCZQaW+sx6jCboyypsKJuYD4E
EduxfZ+UZudcJA9q4qbhh/diBBHTgJUuF3WqJA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yEY/xU58qYraOuZJJjYjuFK5WFuiYsNpjlqyDuDGzEvENC4n9fEgXEatqoK0RnKMfX0hNSC+LfMx
h71RPT5983B857zusTua1YQjMcTnUq2hTLfoyXp4fgmZaxEQBBNq0AXoTMmxMB5dMzhS0LE4mi5H
7UYWD1c4XFIyjDqFqMKY8rQS9gOCxnNnM1aDs3jX/HgQHqb8PbW4T60nZIQ+amHUkwOwzxPWOdoN
CSNzzhQ21btD86b9LNQ2NSTGGegTf+IOEq+yQjyLfX0ofmtpAJGLTqVdGDgHNWOY9AkWsF2s9i1K
BfbDhRyy8mV+aWMIkEoVCdVSCTZAusl4gNJPrQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3696)
`pragma protect data_block
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
y7VsILuMgYCgFywL/Ya64XVoToLKgstRsCR3
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
