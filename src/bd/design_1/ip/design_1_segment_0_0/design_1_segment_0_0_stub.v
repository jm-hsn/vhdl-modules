// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu May 28 20:46:09 2020
// Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/windows/repos/vhdl-modules/src/bd/design_1/ip/design_1_segment_0_0/design_1_segment_0_0_stub.v
// Design      : design_1_segment_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "segment,Vivado 2018.3" *)
module design_1_segment_0_0(num1, num2, clk, anodes, cathodes)
/* synthesis syn_black_box black_box_pad_pin="num1[15:0],num2[15:0],clk,anodes[0:7],cathodes[0:7]" */;
  input [15:0]num1;
  input [15:0]num2;
  input clk;
  output [0:7]anodes;
  output [0:7]cathodes;
endmodule
