// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu May 28 20:45:54 2020
// Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/windows/repos/vhdl-modules/src/bd/design_1/ip/design_1_c_addsub_0_0/design_1_c_addsub_0_0_stub.v
// Design      : design_1_c_addsub_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *)
module design_1_c_addsub_0_0(A, CLK, S)
/* synthesis syn_black_box black_box_pad_pin="A[0:0],CLK,S[0:0]" */;
  input [0:0]A;
  input CLK;
  output [0:0]S;
endmodule
