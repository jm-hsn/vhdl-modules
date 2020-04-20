-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Apr 20 19:37:02 2020
-- Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_negate_0_0 -prefix
--               design_1_negate_0_0_ design_1_negate_0_0_sim_netlist.vhdl
-- Design      : design_1_negate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
PkyhyBb59EPgq8kANKUgNUvJSxwVgcYTKLlfXroHeM6zPnPHm+ATuJPY2OmCojZnDY2A6SHiMUmx
ylnsx6jVAA==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
XgKClVpS+h3z22aTgNZepCZW5Yffl4m6nNLRjY88G0b6Og6dF7wA3of30X3Vr2BKX5GVSe+jeu6a
q3D7Qa0T3sEnO1qnWdbom/P31G6nS7/pQCPaLh+suxznQX2imRfhfTkmY1B9wExxZtZBbss2GPfs
EFGX8a+efiUiZLAKaSE=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
LYMHL9qwz9VPPAbHAyLFK1YM6t0YBJUbhdak6y3IQta7KscLfLakFo9QXv7rXKj3R5WEjx6Vg+9K
QUgoa/uCYy+n2t004DDpVeDamNuGIrJU3WXV9mo6tEi21Rm+kIG+CFgVuqLY9JSjwI3dhmEqYYtS
wC2GIO6hKaV0keq1ldvsRFBu71kLY+jczboTe6EddpUktWp3UM/RqnrSfHPMlZWhHp1k3YC0SDq9
gvcPn9DB3vIjXgn+xRbyzZOt/j+s8RfjF446i2RalkF5p/den9o/OMG5jmv4rZKHj9S1V3Z2UuL1
c2fxe26sNIvZ7tpz8RHVWRMloPfcPVakam2zhg==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
BACIRg239ZSAZHpsLobWk7IZyWSAM1rsaZq5LesIgnba07iijhvT5s8WIOIIgHZs1XEDKelSnU1J
+5cyEbU9WgPZsja6FQEw6J0GuN3L/1QyrvmNIJKsNXINx7R+xaY/n0uby2eFsFE9luplvdOyrCEw
eK82BghXwPdasTT1ZUgKiycyGYtNsp5ZaPIWXI9ezN9oHowcWp7Mn6v2jrdDl4lzJuoHgqRtkZvG
7GqevJFheGfXkRPuQGkNK2Pk6XN9woSB1a9C+FUsQBM5MlIE7zrBQAjONIQj/nd82Hlp1H4PRxBW
1mmFP7PskMeNR2hH5xwkvg4Q3IfYBlw8gdzneg==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
vUWbACu3JL9XeVH21XChN1bLnACIM0U/dLRQNf2LGaDFNW9CL0o3SY9pOtV226o71+9Eal6i7P4l
ht62RU2AHTweJsgWkXtQBI0/jHIw4/gxbBebNbqZM6m3qjEE5blPsuzJ1njoX2JWCJElO3p9FfRu
uHpC+4hYoccdFayGku3vk1gwz9lLJ4FcYG9mi1vLIY+tzs0o83THQ8dLrg50Rr/r2n0Xf4hxWe4U
tJ6iUOYBQUYjeOwNQOOxfjv5PKfLIgGA2WC8sJb2GFe9MkTDoMAo40nBLK0Y8+klDIJTyx079Bx0
wdRg2JxUF3+TGlXW98+2/iWy94H1CPEVRm18FQ==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
VX8rVAT0l4oniSvb1X0sblwaqcWh2XE0oCAZbC0SVv8fCy8dLmmtqBzFq3w2V/7nyMmJzWKNP/yV
0GW7ICEfrGaBejU3VpwaHA69xE56Y/8NSHGlZOhr390/5/UqELcFOknZEPJXMLpeKjUn2ijACn/u
O0myDIvGFiUyRGWWYKM=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
dlKAt52rb1rebbUvCxUw/pmWR03F+be3vApC1VuekYTvk7BFt7xopdHrqsvoU8rgaCBc2wuCudx5
nUcu7bKEyHKFc6bcbp6J84c2uG0ZckyqBn/OHRMbmq4Vbar8C3ERI2YmcbL0Q0fBLzMosVarF9eM
+c6VfE9hA5lx9qpwFJhgk5v/yx6kjgu+kEnG+xsdWrpKrj8LIxxh6gkrPOn+jQtKQSX3o7q35Rcv
W3vWLRYdH+pHsfJqCdT0wL4oBTLa7ozdsufX9l6UDgT4ECxLf7R1TtNj7XA1jaaefThL0F1AUCjF
5WuhMqBOotpDZUmvB91yVtbXLMm0r85tK9b/iA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
ZpEb0S/I/5V8DWCV08le9pggUU7lDJbR2MFsaNOLJADJXEth+L3+HXUyvy62Avm+H58dgvEAC4Ez
62Ntn0Kchp1ii0Jc9+nq5YxjoyHJo/6E4XFMpaDKD+ecVBtphcpBBPEJeYBl6fa2RuYvi8kinlUU
+y3/l748nrqmKnLK+ZpK8RGnMjmPOeIpXLph7lNPrKm5q33r2I+sMose5Udw5D/vLEISmc+lIwvo
dPPfCH5o0agbG0gnS54qtPtFpvO5/kfFKHdADfcvNFXF0FfOV1/hRQBpUwwEyT9l4PVE60rnzX1I
clq7OAbznGdIBB3aP/p5zm9DbN6rlRYGPl7d8w==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
2WcaIvpbzhSzm8VG2N9u4fZaRjGqMP6r+5BByAo65Hi9P4pknPW/881VhPhFzFRo62CPdbokf/xS
XxH9QUONsfeaf+qeroDiWYC5yDwvUXi4zTNxN2nuefXa8G/5eVThYLqxO8L2+mroRRWiKIvPeTdT
ZOVmK90xxyuSf3VrPmG1xuB1tuCF+0qTjjhgOdJY5TdH9X7e6CSbezowQgaCuPcjYTcw6t1ITH8M
bH6KryYVdZfVybchayI17OykJmyFpgZYhdXUcblWSMZdUAxDBXiyFeWydSFxCKbN67U61KEWfYgy
FbgBZtaxsncr+T3yIFqsYCwhC+kM2H8xRqwkHA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9392)
`protect data_block
P1qmCz/RzS1w/NsMd3UJHYGRtFhHpkPrVLRXkR+fhsIfMOkbjOt99AObJGbLMZ9WXSaJYU6rCLUT
QLuFKjB7kzi3pVFFRC1V5i0hleCWFfEjwvdt4KGtHSEtoeIhEgaRGXX6dLPpI0jxYM2JulODrV54
RGl9c/oHtlLCZtkhgAV9haPmgquFfGGkdhyW/CgoF7M7zGk9ceD9BipuE9ksrnhRTbhsPy98qCWU
MLNxDFXmY16zAW3ApU+zknLon277P4jimUpRrCmNawkI4qW72Shwwl4CWos/RMQ3+cROagcCyy3s
eIXpBsdArZYGcfA50ZsqtmUA5ltIxCEbVB6h/rPRjq7bUlFbTzdGt4cgyp+WP+cwoPwVXmJyq3Kk
8pQ+Iu0FHSjqhcLCZeRA8is0RE9DIh/NEr6XOk9vrnFylpPVcSHP35nrQsxvqjyCf+lUjEPnEzeC
J0/Ux0lumpvpOb34xaAF86Ilqef6VvpjyxlbfA6pbGGtw1Fynye/XJOt3P7D3HLJynAAVMDUvY+g
OPFVnOBXIzKr5RggLyBL+mKGMK6GUw9nVlwp3v4jaGUNe02t5d5G8ahDQ1SfapdDlM+lgfKEv2ZV
YZYwZfPzOWeqUCqn0MoEDwWhVgtqR37kweD0fe+TeAn4/G9BVmkf5RAYJHeVHihVo2+X//roFnAy
mzZX3oCgdbOUepCrdq+7dwAGxCuc9gKY/bv20HvXX2+X6GZu/jA3otFYU+4NvBHJAJoKwzBmxVEc
m6rTbcVGVwvOXZNdwUNol3l3tZtujztTZec9h0PjgImNCoUtFihH77KL41HFSZJTwOKjq5qtHh93
Iuk81uTomxg0hBJ8k/C2EaYVv3vRmunvIyK7FRKuCobxuFxXgiGmva1t05jFvgnW4YjucC0xBVop
M2sLzwqAxuFLs67yIL9WRiPaiLKcdB8S/4ub5BTk6WGgpOPS5+vAhOVvNRqEb74igatHugvReJpv
xj011hKXr/X1v454BMpjolfXRf9y1u57IIHfOZ2gPqU0k3mdXts/qRZACHkjx36OKmvcd4j1R4Lp
vaOn8DYokIIdw8gw84ckPmawWLe2yn19pO+JjRmlBymRazZbnSssSuRBYzQspktzNy/T623o/DGk
dnqsE1R08Dp1i1LwU5qW6NA2OXPUizYp0wniX9PHC1VpxajvJ19TnFBNrdKKkR+/PsQYLC8hG5fF
gdcl1YXMfBHIJtASWX9skwLTp324Bw14kfcbTE9mOGP1QGU7uacR7rNodL1XW1Viy5jq9bSNVRi0
a5el4VGijdw+QbTJ1/BW7m68Apf69yhrxE0LfFx9NU+1xRjNEAHp9TyZH3Sx20pMw+ij7SRfpXbp
246qNKadD9360ssDPq3cTdjnUp3/gLwheaoDllFrlzsyoJ2l5zsHa9BcT5SvP2977CQs+6TTRJ0u
yQfbX4gMj44oxORvooPAhNpwSX/9xJo7bjQjXeOoIiJOQV4nJjZEr/MQfESnl8WQYovqIYZdtfk9
nvhHoRf3gcwNuHryXg+k37CNCxIz9fHafJrDQ/JNQzohfpLzLmG3iZmwlr+ZOW4xNQUFxpnsoH3j
B8hBCLXDo4G4ch4En/wCMgWCjUppNafWjO2eJhlkK1EqwRTs0Q6km56NNI9gPZsMzsHb7x0zrQS2
iNvrGCiw1IMDsNUr2M5NAwZZsWecloJLzIjqyiaRsoEv7PD0aPaPdtqxBP1F9FZjTrETmyP56VFL
3P7qGNmqr0pNIsfI+lcLZ0bGqFVQRDnf9PePTDby2fAX4728GUaO4VvIi+VAg+XJrHuPoqCMFQAy
hQRQaMHrnjKQiCr+h8u3WM+A21/fRDoTx23EvtyK9pOKAGohlaMfxmKVD3WvVoCtH9a323G0PAgi
FJ0cEAHihYWAWYtPM8E9kbFXtIfFWUPn8DqaN547QSiD9/eWTb6gVt5Yj57zrMaPvhbss+QbKwzO
leapQzTtAizN9RASInVxqDac4MCuCmHCY7KLtvQc3Xibi0+Bs3n8/ax++POIIAYwLAdhU55nT9vV
OHt2eC03KvOlcRkX21xvVtIH4smJKyOh/Q6dcdCDFB6bot+j4lLpezTvTArgo4IPgwtdgBFgVkAh
TDf1GijrDDnwschhGaueh3BN1niGA8qODCPB70PJJwO1+9tdMpuxgbl9DQjrGiLEdGaCkx+1pFMU
f6Yy1APyjlcilajTz6hGidun+40qMdHj5XvRV207JL5aRxuGGduTQTmFYQiRiNVWhBLlFsxzev9B
l5JGmp4u+YOxyJs3KCwCCRDUWOufwIMM0D+VBOCDT/9hmC729BdtSbM/QQa901JN46RDyDt7NfZl
DeHl/uiHAhALEIHY1GHWNnTxoH3fAI477rPLW4Spd79zC2+pcttc9oBWV3tU4IJFw+SXrZc8UvIH
KJBQDC8RVraFB220t3jH7I2PhHVRQlPYUU3pyQ7tGDakDGH4xhx7+TE1naMZOLXIICFZDtc9G0Uq
g/bSsQweyTS32dyFci2feGnbEE+k01xnYOJUXNGR0Fl9SxK7n3x1XP3JWfMWf+jIkFpFabcvN78l
5rE5l/egurcyF/Q089WwIlB23PgLQPw+WCMLwEwz5TVH8MzodYHKNg/hEo6nCImVin1Q+bTju2ax
3NC+QiYVBEuwlQNDGwb+4pAkLPen6on3acGLZnwzekXn4hPI2sB7I66HQSAYl91HaYXYSkBtGzai
jcfthHdvYK16RMvfBbDa+cUPr/QJaaYG9l+p0eQsrRfW4DhXmQkMtDmPQqgSGjnLH6HN5ejlilZE
SgNDBqlDOBIP0HAyEa7sCEV313b6LqprE+xnmpSmPN22xQVMjaju1ppMc+VD0c2Y+XEkDhefaw7N
aJ4o0ACVpmN0HbMqX1QdfD8z5jRqxcUmKYt7MBL5pzdc0Vjyt84zkO4W2UdvNlJgT2PJiGxOUAeA
zUz6h5nrPKGRww7Kd2S1D531cyB0xc4LqQtuy1qavBFn2vcLzyjH1S9Orv+TjPtzwlzLclaHRedU
hbUUOcLZnexUWxo4nBsH4axksVV/Mj+EfLozRPvyUQGY2fD83zf7Og0MQTC0WSMTrl/XaVNhZD+B
E3GFH3VeXaoHjUhoJQPpMKvkr+qD38GwSqQ8HJMBYXAnHbgFCNYqQdJ/QBHSVIMG3e+5La6UKic+
Kt/mVznVqQ+7VhFm0m5bty0Xq7eDpJ2rK2kAYXt/waxsauOpEVEOTZo0WWsX54YTHnUzcRbtOxwJ
JqnJyQ0GUVUb4MhmbSxMfeeWaBJ+eZoPZYYqep9cI3q9dxhzM0MgnpMSnHKToQsikaEyA0mFSYhJ
p3VCs87rbm00rkAIWid5HqCr3qyTZd/sR+OKE+oJuo0owvuv+xgH4kufDYrmzdTnVZCnsdz+IYgK
sCm/PEt/gWw5SJ43k8e0whZCOlE+C17dz+w4p0c52GxONLtn5pFo9tnHhigxka9AYQQDYdEF/TD5
5j3TRGBfXU10dlnej4RWByBgD/EmIJta31kLzc+1cZFNrbs3vOo1fuq9DVp7i9YilV0syCN36DS7
MVFmYrkQskWFBRpxxtdGt7LsDO7ZdfAnTLAqGCCIiHn4NOdL8e1/O6x0rW/FL6ovDrwzL8Sr+HtV
cJgvJ2AROs4eB6KCgsMKExWsa88OYvElMJskbHVjicPFWYKd3VXxgrPM+FNXBLbPHRK+TvFJk3q6
5PS9mArJJXj25OzAVMpctaYBVsQDce0lDk73YhFSDxoG0+M8E3EA+0c843FjflEokctr3Htf25UR
aZS9PntrcrVqgfHg2S+ujDCUKABt6/lHAWgZV4h94Wjni5oxI/fIGHyliOBqF0nkCbIh62WU5BEm
aerpei5OSt7U/kvSAFXROp48OZZmRL5V2cnDbubwdGj1rUzyS9Teu/l0V9N70ekz5fIjXO+8tbKR
9AfqQGwDXsnN+WRpqZGRaXdna61XRPO9KmmuhHCnHJbR0moWpFwebMrVdA7cuRnAMaaR+Y42eRUk
9UiXQt6Yfr3SiYfP1PDVtMocicvGvbNycjv+uynSnGw2JVprXPvKM1F955JPNAHJhuI790KPU2KV
0CbtUPO+CHUMSIGti388fVDPqScCx3RpkF/akxI7Hl+4NVQWKtA9iJWVYC6P/HuugSyl6h+rDxyX
b17fHdFMk4fVjSbPPGQH59kjjqBRgcqVPbNfFqlBER8nY99AT9wl2FCddlHGg4q2Lb4Pvaay/HKo
wXxAdusxq8b3l7Gz7jqmJp9u8gXmhjeC2BE1KkAjCFwDkEevO4IuPXNgsk+GxOMcjrN5RaV3y/ln
kXFhyxXwt0X03RsF4NuhlEnE0aFodYOq23rs8yb2NtkcoVN96gzmYnZvFvFoVXRs/pEVuYRf3au4
4FIMSbODlDJI3bD4p2myRl0JcZyAz9v3NN00PHRvB0iZJxWYX9/W2cirZFfCpByj/EmgIGJpMY9U
rQLC8zHFiALZ8xXb9rlmlog4prRG/CgWOzq9lVGdVzi65OB5So3ph6vHHvPkctOUC1VApebuaHEb
Auv1XCvp1pKdEznBjfNd3i9XL4bY2yxILXdflD0pvJhq944bg6djRZIecE3aqgJEK6NV2n0L37u8
nlZqbHDyUDaIqNwxwIBku2L3Za8DsSPECVdE/WAGGD6ix9M/g+HqyIgN+6xYbR3YK9bji/ubIQWx
kIyR4ns/CA25mjVt+UoHCRrGBLpljSvDNv/WFcDK338uWFgMrv/1noMZlxr4t413OyUry1NGiKzA
Svkg4jLPGLiqMeBnrCV7OK50US/h2SnVovIpEowG6l4DTlNCuSyekeuQsYuqUHt09yGv6asBXgpE
syZKFnmJNCRayREU5dY7hOH3+3dGS3W+JRS49wt+96GnkQhqOJ/KMuE2XYKfWu0BvsgPPld8AHf6
51YjmRU9scFd/0fME4rB1pUMuCFq0O5O1LfqpihXsCfTuof3F+BhWPmOGabdQvwTmN8hq8YGY/KF
vdo0ottDRKOmdBfWJ+rUzvoX+SXZ88T38mLCHnKsUU6zV36k7FCvob39Vw/x2CaQ1/qHL2r4KN/G
WSAlcXefX5aSCcrEG8chYXD4if7BBusYug3MJ0toxWMibxU99Ay63DW48/W9gn/PiboJ8PTe3/mo
GPPVK1p5Xv+h1a5gzVYn0C9Qn+tpFDGjFA5B+D7i4Ka7MwOyB2bXJJu3lERLdJOqBFod56DtzEth
pr3V2+4BUkEAVD+E03q2GS6FhqXmjnNNsUnHjfrP0gem+naDfwXaoQV+iV3WeURTUrvpsVa+hgYL
VBLbch+GRmX0cVupRQMtgEJSSFUyqQzwiUEKDb4MM/uQNGTWWYfY9nu7o0oOj4njmVBuOOkP0PSz
AjyfBeG4MYQb2ojk76ODwE0Ezl8bSZ/jfqJqOSuAhO1g+JSLsn1YO3GBz7Q9wLjZnp66nS88r8TP
g6fD03K+KWJpyzU3sGJCdWPL90MawQY0FNyUP37g7sXIjOyRvNQeRsYRdNdrwFQRFx4167ZF7UMD
Sv64iKZlDegrT6b5/IogzPDlQT98mBRjpc2y26Ww8UfmYUBoONuGH780Ib4xlP1TsFkt0GMytTRE
KnyDYhVAaRfnoiwOAqGJPv600eAYOjfP1/ShVhIxebx/a8ig7+Tgg+pG7XmVMKt0RM3qLaEEntp8
jpiclamkQ38YKDnWOjrXOdXI3ZQPzf+ErySThHGD2n/MDg0ZHgeqTBht1n16yqD5NYjhseG+vzaM
EG2jBHfpnhGISyWq+ix5+7IpWYYG5/r/inr7/EBYlt/97J4IX7FqJ+my5v42ahYFCNWBlDMzdU4z
3Ue911VC4MPA1WIhsasj365mJi7YkzS1FcfY56hOyl6F7mHdABOUw8fwDyxM/eK0QSJwHc0LAUIT
eZLI/hM0GIHVLVJPHmjTpBakyWcUN1Fuq+VWU+kdy5FktPdm9Hu+TJsxIGKWjG6gXope4mHyoRBe
jJV/r/dyD22h1U+xLIWCOKoJng4KkmiiqvtrLy73PoCMM+F7Qz/D1pFGoP39MEXm9WuUBw5Mbydb
LnXZA2Zbzfkmm4FYYpd3PXgAuFDJhKcndqtrU29VZ6M+diz3kC62V3yyF/Evk4NxH6AL4Cyu/rIH
DWa2uhBn9gwyT45WhQO4YZC30HlegttSjiLvbIQOkWwCvn/xq7c26yU4QdKkXQj6eg9mV+a4PbuR
MsphrljTTatwLYxBjw+uqmdENQUJmKOiG7VbC7ejCcCaUr+ol8me3QrLbsUzXlxqBfdpE0Hyabxn
8AACQeN7FMfcuj2Pbj6zjT01846xVy4n92T3Ko2S6heP/1oxkEE7c+3ZTfxpg8jnbUcZgenMJCiA
28lLkzo2AJVG8eopyEK5+Jkl/7I3N0OIUpmGpPqxO7GAQySES0EG5aDmBNKrAAuvhR350UwBSTlB
BDNv5Mz2byB52hnc5lEfdLrv06CXrrDFX5/YGEqbw8TwpCBIhLMyq6VOCk1HTBSMNMzFd9yRUmpz
FhDRhWeq1XiD5BK8GdVKqc1GaIS/UnFmLnc7aSbJ/m6UhRj2wWsz984YzaQ+GzaIU0iudtQT9DZi
WyK98N2npcWdXfGx/rMPl2tvE2Iv+Rr14VnbW8TaNiEocFzVGJIGmcMWvAaqGuK1HY4MF1ES8ZsA
jgW6T/quOcjJ8SqWCOsNE5lubK1B0t1otK92d1jm/xw+R10hCQhBLbOWkpChxZZJtZSBehOLNHSV
brbnQadKKEZUJhEfpMITJuaNFsFYLO/WqlEdIgxSPHCnHsFFLBqqWn1hujiDaqcOUG6ZRstBWf3e
fxM41y6SHv67CynhP2T2JKd2J+vK+pGxnRFIIPFXDQMUXWEd9trJw6xtNXVa7N709G2af5JBq6Un
9wJMElfOtA/bwGEHdYIBP+uEoMgZcM2cEwWeCzfYsfEyjRKmakVZq4q9Ky6SzSMLCkOFJXYP5DHR
AVl9zHSlUflfhvmBDk2sKqVs6TljiTYo/GJpBdT789BYlowIGpZwv8mJMM7TIT71I0xjhwNee0Bp
8hhIPekEcy4USxJwiY39UvMrkubiv/0aTYPkhU+VdkqIYYHpCNh+ZOmeD0xVmalkazRlG1hEyRP7
QrSHcI3vTt3H/byeWzyKasqVLtvkyXUyaOaM6C+WgIkdTCx4McK9LY+J76IJxZp2QwZpVzY9u5l3
H2cMi5dJrDgFl0zDY31qP/6Xvk99jkV+lX6iaikgjHEOpnSiAg2KHu8f1fcNcEcy4ohWKIwAG4EI
P5S30jyLyM/ndAfA6XbvAhTohmxRay1jpf1BIvwkRiW/QKytu6P8J4NlDK2Uif1YcbDtUISqB+mg
RBdXM9QCUaV6a0zBOm6gR1y0arXAa/TWFP+u6yTa9HCp4Mc3UJjvJh6QNUcDklZr0ZwVqH5NZ96D
7pM6Ml9TomK+d46LhvN55MT2770jhkJ4PgUWjjpMuWdh35V0gkmbX0bwClpKMhqvpHtyLgwGmGYx
jctBNhObSTHwgQagGh9rav7ZzquPtp1xRAmve6UA4icNK/dLThWZwFswEJwSvE0BWn3u1wTwrzdk
ntvnDIf5JrEcKJbbJv3/ThfAk5en7H0kZBPYn5LoNzx4OXdmOxGWlmikJrbkUtW1TSpHpltTnncY
j/U+1yhuq+UgYWlcI2EWqLcWLNjvr+KTGxQVCxnMshAIkryuPzrXjyD1ATY/eJajAVIjUs+Tusuk
hCIe67XylCKinZU+zrDibV1RQsIVMgmWalZ68tuM9xrDHEV/39dR45krO+BwE/FZN3Jr0DcU6Ufz
15TGrdyQ2gxpySomDuQxQ5hBmmeKwiWr+JRcTx+orqr5eInHNZ0UQ596FTiVuTmS9yHI3QhPYL1w
1k6yFK+UHTQxK7D8gwA7qWPfFpqftR4ZkoGvGrt9hu/xitCPwEzB7gIr+lbqDxNsxTA7nH6OObv1
FZgse37mMASSjLP127M5pLYhRP/DtOfF522imvaOIZUjqqJ1lftAW29WIxaXn0N2Yqs4kpVi462L
whlat6/aZlsJ9AA47LFVeOm6HzGRiQsE6m0lgKG4b2yzW9Am6YjhL8LzjCcvbZLFe6GFUhLqTA5/
/NNa+Lu/Qpq3cx0B0EJCKlUoIOicRzKfQEiluxP85wDFdxBT/KWwLkPXsPC8gPy/B/NJemyfMnvE
E3ZQHwOEtqftWNZq7kd+uzisYq+/F3FRoY9L7Yp+pPoAVowhz8c1mR6koBwXBtyvAonEExd2wcFk
7pNEiXcGULtReqUtjiAJeytHeXwnYr/qImziuGojJEP9HSHKM2FqBg2Cr8th8dgrvcj2aD9I6xWf
zHr7XltBKPOObnhsnEVS0aVguBVBCdxg8auo0X30bXzCtEFDtxiAoenp7q2egfIbxwIKuw5kflUc
vVi7rJ4Z+eGe6imVafIteXKKPTHf7V8yDBt+Ies7d/ow/KjN/e548R1myuB0RPf073ijkzr+UJ0e
3RiWspdpvkCmYo0Glc5gpwri83723p+YBf0nrqz8sW0VwnUmNzH5lRBq0WQ8oqVbER93heyhutY3
aM3dC2PqobSmWk+j7hC61BUusr+0s2q21eVWbAKKzNq0vXrjCBkHhp0eUqEU+NqTembuIhD3WFpB
yA99iirkx6bBrgsTzBc72q9+sqM+mrMLcsrNh4EluFwkTneaBHsOVneIompe1aWDEzcMEcibyAKV
BqiM85zOS2KPpulmKabIT0e8jQ77VjWBdQZ1XuD7wa5bwLFhVZikp9iRUHbNcop5wAeb30vZtuFL
XyThXrTR9xq887AHhtok7mQ8gwjkuvzx9aSNHBLIzdowy2v95unPIDre2fU0NPyA2VSi4UzF5Akc
to2CtkHpCCTwDiom3ij5Ps1AeV5p8Upipxgun8fpPgpECeNzGsG/T2sR8iHMrGea2l27tLIS4YpC
yj6pGUxS15ytruudoNL8iqZmXCLLX0YxGAkFkziBlVOkudu3tAri2EXwh9eJK7gYNVZyc7iq3wrJ
Bb+S1ClzBj+8+VtzT7Ox2rjqWm4WC0l5D0r/5qerij7yGbBk9cVIFmLbQzJ6YRj6NnQKHkZ1XssC
jbehrnvRukUgjisld5ssNyPA1+dV3Rzr7pI77yQCdZGxANkEIrYz/GGUK+Z6s1Yeq24lNSfLCiXK
1IrveID6TBzVdI5D85DYEAJNSKe3vq7BK7pXEwA4ab/jC5mTn74XWX9u8mpzpDjHD0+f5dvpVRsQ
I8bIVm97NG3aJn9fEXPXj/lGTr97yfjNFk7v+uPT6rpJ4O25pvrrLunAJ84EDFxty/n9pFDhlzez
LXMsK2L28YzlCH6ZM78RXJP4IQq82ZobyIp1rmvGdQ4z4he8g2cBxlUmx1QMsKDmV9yYYMuKW56D
peOs5Jvz7/db85Yhsl3fyGsu0aeAjkvtHWqsxd/F5YyTLNfBRWZard5lxKiHTdOu6oUw+H+aglLh
smgB7X9WaR2T4WQfobPSOUdNKhy/2SpdOqnS1rQpNsy7SUQVyeyfd+9vfDXaTQHsqi//9b99kgj0
YBCq3O1bRYSptMNIr8bqFLiH3dDwUjmseKojen6McG9QE4pIQa0Q4J0ZgQ/wwh1i79N/lw88Che4
GH4GDBj4vanZTUbFMmyi8usu5TgZxbcJ16fHq8nkd3Dmrwbe9jiJ/amigc4eAnYJqdMu8UtZI2VB
6KrPLAnKQakk7CKBoeQnBdp02L4GxRcgAtbT85NH/xfbwt6FfZTnWYkBD/KkCOMmBi4W3RSaTjwg
qqBezJLG/XKSnQ80kDeNgkiOtyzxb1YFBu8XYsoWBBDyjm2i75pncbND55GgADs0w+vTALEMRDW1
weg2im6b3b2/B2NbWHJQ6X44YtS7Lo2FwgH0v2//ocm1Z1raI/xnZZ55dioeh19XMOVGHdMRZ6AC
kUP2pUcaPzb54xZd0Qt62vRQ2fARvBTo4w+TJhYRGb1zB05/NX18B6QKStfARd8425bPqgvQL25K
yP0pAqdc01/joJEjApanXr6OzDVIJr5/YnO9w3oAXSNusARnn+V30Qy5dNcvuC2BLjm3BlpV8Oyy
wyvJomh3LSBtiVCz22/N3+/fUqUVU8GUbR+Jcsw19mBygquYCkJBz9kih5Kvi/MpDk6NR0ZrLn/x
+zN7vou/qKSlTG7JDmrGqvKKYIlxNH7aM12nBvvdjlHkYgJI5xChMiuikUAymu4RsAydvowPtlub
ygu9NWfmoa66zMC94ErrxvzJxmdEnRbwuw0Lpc71CdptHkVowrIhL2WvkqH38a2eCgqv3u9BBnes
F0FaiHyA7ugwMwwvcnYBToriJCKJqXPRhlidyKVv4dRsCon7vPw8dlRA9zCoFhKEYnHcx0f2JpXs
ezefH4aaDMb13qNvpUO4LQ5WdNlkoNv90LHOGRcGJuEhHVb0c3Uq3Dj35ZImyO3XNUxMGSyx/i2n
kSJ74CJAznfnVCXGq5F2mzsVSE78mAmC2A7nzHuYNQkuBLayoREnIQsFfjceiyDGBv+p2J4k+yN5
RXgD2GYAFmVYnraRvN4VkPeEk8n+jIvOPDqXRbJZIzhvcUawzjCZU22qr7AT71erPX6NNuxVN3z3
DyANelA+q7RcdsP9AnN8c6JgIJcc3Vaxxyi1o6bGQLkAwgVUi0NCONfId7pdcBz0/pZDJ5GNkma3
d2T0mj2UpO3hFu0+uo48WhmEjP3+wcGLpQFnpnVRKtNY2ts3rdCQgPhRRdsBIMdsTO6TOfixYCuf
xWDEJ7Jf9FkxTHgHmNyyM255wgNR42tPHSUYOh48weWO7OdtzfhhYvymB7sWrhkH1mfv1ct29eXQ
rsWEuHPgwTXtGsCik0M9lFgFAbTsEJAClJRjs/SKA0hFljKLPlnQ2msjg/rvqfgxWw+3YTxHFKbU
cCE1X8FyTDnepkkuKBLm9O5+Vo8nkKm9VnD5cxgZ6M1tRcNeP9o+8jcwYgMF2r/agqXFfALDIftp
pdF0f3juqJUXC594k86s/qtr3BAQbQN4z3/wNnhFB/wANSZCtZsIGeHJWCZ1+70lhZmBlPXUs48u
w0A5cMl9OzQPC8wo7PY=
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_negate_0_0_c_addsub_v12_0_12 is
  port (
    A : in STD_LOGIC_VECTOR ( 0 to 0 );
    B : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    ADD : in STD_LOGIC;
    C_IN : in STD_LOGIC;
    CE : in STD_LOGIC;
    BYPASS : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    C_OUT : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_ADD_MODE : integer;
  attribute C_ADD_MODE of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of design_1_negate_0_0_c_addsub_v12_0_12 : entity is "0";
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_BYPASS_LOW : integer;
  attribute C_BYPASS_LOW of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_B_CONSTANT : integer;
  attribute C_B_CONSTANT of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of design_1_negate_0_0_c_addsub_v12_0_12 : entity is "1";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_BYPASS : integer;
  attribute C_HAS_BYPASS of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_IN : integer;
  attribute C_HAS_C_IN of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_C_OUT : integer;
  attribute C_HAS_C_OUT of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_OUT_WIDTH : integer;
  attribute C_OUT_WIDTH of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of design_1_negate_0_0_c_addsub_v12_0_12 : entity is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of design_1_negate_0_0_c_addsub_v12_0_12 : entity is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of design_1_negate_0_0_c_addsub_v12_0_12 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_negate_0_0_c_addsub_v12_0_12 : entity is "yes";
end design_1_negate_0_0_c_addsub_v12_0_12;

architecture STRUCTURE of design_1_negate_0_0_c_addsub_v12_0_12 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_xst_addsub_C_OUT_UNCONNECTED : STD_LOGIC;
  attribute C_AINIT_VAL of xst_addsub : label is "0";
  attribute C_BORROW_LOW of xst_addsub : label is 1;
  attribute C_CE_OVERRIDES_BYPASS of xst_addsub : label is 1;
  attribute C_CE_OVERRIDES_SCLR of xst_addsub : label is 0;
  attribute C_HAS_CE of xst_addsub : label is 0;
  attribute C_HAS_SCLR of xst_addsub : label is 0;
  attribute C_HAS_SINIT of xst_addsub : label is 0;
  attribute C_HAS_SSET of xst_addsub : label is 0;
  attribute C_IMPLEMENTATION of xst_addsub : label is 0;
  attribute C_SCLR_OVERRIDES_SSET of xst_addsub : label is 1;
  attribute C_SINIT_VAL of xst_addsub : label is "0";
  attribute C_VERBOSITY of xst_addsub : label is 0;
  attribute C_XDEVICEFAMILY of xst_addsub : label is "artix7";
  attribute c_a_type of xst_addsub : label is 1;
  attribute c_a_width of xst_addsub : label is 1;
  attribute c_add_mode of xst_addsub : label is 0;
  attribute c_b_constant of xst_addsub : label is 1;
  attribute c_b_type of xst_addsub : label is 1;
  attribute c_b_value of xst_addsub : label is "1";
  attribute c_b_width of xst_addsub : label is 1;
  attribute c_bypass_low of xst_addsub : label is 0;
  attribute c_has_bypass of xst_addsub : label is 0;
  attribute c_has_c_in of xst_addsub : label is 0;
  attribute c_has_c_out of xst_addsub : label is 0;
  attribute c_latency of xst_addsub : label is 1;
  attribute c_out_width of xst_addsub : label is 1;
  attribute downgradeipidentifiedwarnings of xst_addsub : label is "yes";
begin
  C_OUT <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xst_addsub: entity work.design_1_negate_0_0_c_addsub_v12_0_12_viv
     port map (
      A(0) => A(0),
      ADD => '0',
      B(0) => '0',
      BYPASS => '0',
      CE => '0',
      CLK => CLK,
      C_IN => '0',
      C_OUT => NLW_xst_addsub_C_OUT_UNCONNECTED,
      S(0) => S(0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_negate_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_negate_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_negate_0_0 : entity is "design_1_negate_0_0,c_addsub_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_negate_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_negate_0_0 : entity is "c_addsub_v12_0_12,Vivado 2018.3";
end design_1_negate_0_0;

architecture STRUCTURE of design_1_negate_0_0 is
  signal NLW_U0_C_OUT_UNCONNECTED : STD_LOGIC;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "0";
  attribute C_BORROW_LOW : integer;
  attribute C_BORROW_LOW of U0 : label is 1;
  attribute C_CE_OVERRIDES_BYPASS : integer;
  attribute C_CE_OVERRIDES_BYPASS of U0 : label is 1;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of U0 : label is 0;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of U0 : label is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute c_a_type : integer;
  attribute c_a_type of U0 : label is 1;
  attribute c_a_width : integer;
  attribute c_a_width of U0 : label is 1;
  attribute c_add_mode : integer;
  attribute c_add_mode of U0 : label is 0;
  attribute c_b_constant : integer;
  attribute c_b_constant of U0 : label is 1;
  attribute c_b_type : integer;
  attribute c_b_type of U0 : label is 1;
  attribute c_b_value : string;
  attribute c_b_value of U0 : label is "1";
  attribute c_b_width : integer;
  attribute c_b_width of U0 : label is 1;
  attribute c_bypass_low : integer;
  attribute c_bypass_low of U0 : label is 0;
  attribute c_has_bypass : integer;
  attribute c_has_bypass of U0 : label is 0;
  attribute c_has_c_in : integer;
  attribute c_has_c_in of U0 : label is 0;
  attribute c_has_c_out : integer;
  attribute c_has_c_out of U0 : label is 0;
  attribute c_latency : integer;
  attribute c_latency of U0 : label is 1;
  attribute c_out_width : integer;
  attribute c_out_width of U0 : label is 1;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF s_intf:c_out_intf:sinit_intf:sset_intf:bypass_intf:c_in_intf:add_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_100MHz, INSERT_VIP 0";
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef, POLARITY ACTIVE_LOW";
  attribute x_interface_info of S : signal is "xilinx.com:signal:data:1.0 s_intf DATA";
  attribute x_interface_parameter of S : signal is "XIL_INTERFACENAME s_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value FALSE}}}} DATA_WIDTH 1}";
begin
U0: entity work.design_1_negate_0_0_c_addsub_v12_0_12
     port map (
      A(0) => A(0),
      ADD => '1',
      B(0) => '0',
      BYPASS => '0',
      CE => '1',
      CLK => CLK,
      C_IN => '0',
      C_OUT => NLW_U0_C_OUT_UNCONNECTED,
      S(0) => S(0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0'
    );
end STRUCTURE;
