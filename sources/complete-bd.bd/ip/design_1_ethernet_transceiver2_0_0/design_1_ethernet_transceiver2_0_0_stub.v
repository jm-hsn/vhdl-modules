// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Apr 20 19:37:38 2020
// Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/windows/repos/vhdl-modules/sources/complete-bd.bd/ip/design_1_ethernet_transceiver2_0_0/design_1_ethernet_transceiver2_0_0_stub.v
// Design      : design_1_ethernet_transceiver2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ethernet_transceiver2,Vivado 2018.3" *)
module design_1_ethernet_transceiver2_0_0(clk100mhz, eth_rxd, eth_txd, eth_crsdv, eth_txen, 
  eth_rxerr, eth_mdc, eth_mdio, eth_refclk, eth_rstn, led16_b, led16_g, led16_r, led17_b, led17_g, 
  led17_r, btn_reset, led, udp_packet_checksum, udp_packet_recieved, udp_packet_sending, 
  fifo_write_data, fifo_write_enable, fifo_write_full, fifo_read_data, fifo_read_enable, 
  fifo_read_length, fifo_read_empty, ip)
/* synthesis syn_black_box black_box_pad_pin="clk100mhz,eth_rxd[1:0],eth_txd[1:0],eth_crsdv,eth_txen,eth_rxerr,eth_mdc,eth_mdio,eth_refclk,eth_rstn,led16_b,led16_g,led16_r,led17_b,led17_g,led17_r,btn_reset,led[15:0],udp_packet_checksum[15:0],udp_packet_recieved,udp_packet_sending,fifo_write_data[31:0],fifo_write_enable,fifo_write_full,fifo_read_data[31:0],fifo_read_enable,fifo_read_length[15:0],fifo_read_empty,ip[4:0]" */;
  input clk100mhz;
  inout [1:0]eth_rxd;
  inout [1:0]eth_txd;
  inout eth_crsdv;
  inout eth_txen;
  inout eth_rxerr;
  output eth_mdc;
  inout eth_mdio;
  output eth_refclk;
  inout eth_rstn;
  output led16_b;
  output led16_g;
  output led16_r;
  output led17_b;
  output led17_g;
  output led17_r;
  input btn_reset;
  output [15:0]led;
  input [15:0]udp_packet_checksum;
  output udp_packet_recieved;
  output udp_packet_sending;
  output [31:0]fifo_write_data;
  output fifo_write_enable;
  input fifo_write_full;
  input [31:0]fifo_read_data;
  output fifo_read_enable;
  input [15:0]fifo_read_length;
  input fifo_read_empty;
  input [4:0]ip;
endmodule
