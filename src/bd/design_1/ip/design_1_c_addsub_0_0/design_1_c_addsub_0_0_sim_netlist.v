// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu May 28 20:45:55 2020
// Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/windows/repos/vhdl-modules/src/bd/design_1/ip/design_1_c_addsub_0_0/design_1_c_addsub_0_0_sim_netlist.v
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
ddyERbNgpY5v2/jYhhWNUrq6MuhIbSUs6xQKsaYrMuaMVcmkH+LnMKdigjuKPBFJSvd64BQhFget
IkESReZ1ZjYFUo6u3xMSpYwToORfsKQC+BdIi85QLerhX91Ed8oCCYxBmDxXU9AZ2RQgm1wtQwyk
bhMqsU7VuhG8Zbg9Ss6Tji0VmtIe58crvjaj5V8aE46AID1ZvssbUEnAi8+Qe7wUyiEPzB4YpNI+
1d1sGWHAH9aTiMD7sqJGovyi8qcX4pfxD12urU/tviIajkUJP0RHUGQdy8MuH68bxjZKLTy3U8EZ
x9D1Ep2YBHRT4HOQCRXfQHaBt8mmn/5cJlVjSQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qv+uizeHjw34LxODFqFdDs1XUaTpIFh8SaEHVEc8+BjTEgwRhv9Ek9a42xmfI7/FWhbkmixcW5uG
cNmPx/vSOfZRxRI4f1DrHXBIVyaov4hlp8OeuYccT9UhBeWZ7HwUjtjKUspOPgH926Et+cB4jWU3
wzeZs3puwrrmxNXqVTWIWOUH59DtcQqOvm8Fz3XroFWN/EUrUNLGcW57S75dqaHZTDADOzLkJYBf
xXBten82x2kHrcc4zZyDiDSbXSUmsZrmDjYmIHWZJ+TT8bux9ypYk4qtSpc+KKoZtplVoyKRUonF
cfdE1a95P0f3qVDbnadn4BD4BxklxRh+P1XcTg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3776)
`pragma protect data_block
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
rGekbQwXyLLfgYJcLio=
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
