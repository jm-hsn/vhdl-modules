// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Apr 20 19:37:03 2020
// Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/windows/repos/vhdl-modules/sources/complete-bd.bd/ip/design_1_negate_0_0/design_1_negate_0_0_sim_netlist.v
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
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
fBFQ2ypgRl2mGbn/MmfdmtDDuied3cB/mmwfj00qyWLkDJH97PoFpuD9AEyZLSyPWn7hVxvxfedA
ssIj9/mkAx7jq1XdFKTPc6SGrEczSh9eW4VwBoJadrLX7kacQP1eFcbF9oAuUWmtgIYfJ+UNshJL
NQnobL/sBiYqsXxxGeW/D91mNtvNHurkprAhYeK7D2bkz5em1B0v3aNkS7JwJbfHK8h+2ILwjN0R
CRxEcf+w0OXOq6BZLkyMIELIX6YONBHmIYTIi0UZrAdq0p8lc4YPBNglrpz2HerXdFQ9whmojD9i
72jYwsuEHM6ftZp+tTDCs5CSOldCUsvqO/cmwg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HRSjXDJOpkYSaiV1qq31eTa1ImXyESlXNmoigoCRYoKMFTL1KuzVu3XMdRkw7SSiEe7y/rThHpy2
qjIJG+IkaQc2Mi0IT3+PaSfVVSCurYIyVdAC7D2tV7QPtJPygzcLf1mLIQs2Zjl3W6qsrs+1rJI1
q5fblLZI5gWKzAf0i7syDieh+B77rl1m36fAdRyvy/qqAYnLlN3ku2V58xe8XYjg7HWhjyj2Usaz
KZz/N2VZ+dmKGLKSZpuqwZDP1uuw3C2cAhs1ZBrcp14cnQc1S8pKm7zEJU23OnPUm/rRRZRe+v6h
jHst58RfjQlcH258g34fvwOJWq/bOe+cnhfV7w==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3760)
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
