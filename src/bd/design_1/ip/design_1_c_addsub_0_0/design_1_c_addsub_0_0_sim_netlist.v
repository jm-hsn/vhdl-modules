// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Apr 15 19:21:29 2020
// Host        : DESKTOP-L9P0FU6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/johan/mlfpga/fifo/fifo.srcs/sources_1/bd/design_1/ip/design_1_c_addsub_0_0/design_1_c_addsub_0_0_sim_netlist.v
// Design      : design_1_c_addsub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_addsub_0_0,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_c_addsub_0_0
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
  design_1_c_addsub_0_0_c_addsub_v12_0_12 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module design_1_c_addsub_0_0_c_addsub_v12_0_12
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
  design_1_c_addsub_0_0_c_addsub_v12_0_12_viv xst_addsub
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
pm5jklIIvDNXM4sLBfAUj6tGPOaHwT4rbj5t9ISwcCeBX84NBvBg137m0S/3c/75cLm05FqjVij2
hoRD1qo/4V2KeGdgR9mJFPqiNlNej4niIISso6t2jzfqQf768PkOW7+Fg0A72vmCZxDB8Hjv9Rc9
Js0X03ZgM5EDIruAjRwWdzjIl4aerHSVdyJ/VyNYMKapk5qQb1XQ5EpkXmYiTS7oi+NO2RiDCdLe
HaXpcMvte2DFEFKNCN7+llgdh8YeHhbpCdo6uPNpaCFXTVpCDbdGAcI+gLKwsW2ox81toMdzyQ6M
sJQ2kCFKYvCQqyCdcL/cgXHOgfTfDlVNBIbXpg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fckNF7GY0Fn6eq2ZUV0WvCJ6EJYIGmaRSqJrFRAKTR76+e+dH4h/uwxsKvwM/FJm/lgzpm+mir5m
LfCnXSBUWOc8USx0EDVm1KEIgfWCMCFUn9IgzNzto8s1qyX1xfzQspjKg7LzMH7YeQ+tAoKXI7HT
bab/SCMEYOqiFfhb6u8axGXfSH9dzkzY6kwp7/lQpPs2az6LTWNK6DSeDalZZtSaWhZWHvZTAHvo
vJbXbpO5osT5pEtCZLcmj9lexPA5oUoj9c1R2Baa5uI6CbPq72HsaCNgC65aTL1iy7QPlWKuLH0U
tRyJL2ZWZB+BRTj2Ej1p7r5z6C797s5sOU/IJA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3776)
`pragma protect data_block
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
YK+fYdcz3/3VckFvuB4=
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
