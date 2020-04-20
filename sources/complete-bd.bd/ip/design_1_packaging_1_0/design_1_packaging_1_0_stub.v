// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Apr 20 19:37:55 2020
// Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/windows/repos/vhdl-modules/sources/complete-bd.bd/ip/design_1_packaging_1_0/design_1_packaging_1_0_stub.v
// Design      : design_1_packaging_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "packaging,Vivado 2018.3" *)
module design_1_packaging_1_0(clk, rst, inputStream, inpRdEn, inputEmpty, 
  outData, outWrEn, outputFull, errorCode, stateOut)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,inputStream[31:0],inpRdEn,inputEmpty,outData[31:0],outWrEn,outputFull,errorCode[3:0],stateOut[3:0]" */;
  input clk;
  input rst;
  input [31:0]inputStream;
  output inpRdEn;
  input inputEmpty;
  output [31:0]outData;
  output outWrEn;
  input outputFull;
  output [3:0]errorCode;
  output [3:0]stateOut;
endmodule
