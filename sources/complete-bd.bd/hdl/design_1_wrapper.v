//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Mon Apr 20 19:50:49 2020
//Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (anodes_0,
    cathodes_0,
    clk_100MHz,
    eth_crsdv_0,
    eth_mdc_0,
    eth_mdio_0,
    eth_refclk_0,
    eth_rstn_0,
    eth_rxd_0,
    eth_rxerr_0,
    eth_txd_0,
    eth_txen_0,
    led16_b_0,
    led16_g_0,
    led16_r_0,
    led17_b_0,
    led17_g_0,
    led17_r_0,
    led_0,
    reset_rtl_0,
    sw_0);
  output [0:7]anodes_0;
  output [0:7]cathodes_0;
  input clk_100MHz;
  inout eth_crsdv_0;
  output eth_mdc_0;
  inout eth_mdio_0;
  output eth_refclk_0;
  inout eth_rstn_0;
  inout [1:0]eth_rxd_0;
  inout eth_rxerr_0;
  inout [1:0]eth_txd_0;
  inout eth_txen_0;
  output led16_b_0;
  output led16_g_0;
  output led16_r_0;
  output led17_b_0;
  output led17_g_0;
  output led17_r_0;
  output [15:0]led_0;
  input reset_rtl_0;
  input [4:0]sw_0;

  wire [0:7]anodes_0;
  wire [0:7]cathodes_0;
  wire clk_100MHz;
  wire eth_crsdv_0;
  wire eth_mdc_0;
  wire eth_mdio_0;
  wire eth_refclk_0;
  wire eth_rstn_0;
  wire [1:0]eth_rxd_0;
  wire eth_rxerr_0;
  wire [1:0]eth_txd_0;
  wire eth_txen_0;
  wire led16_b_0;
  wire led16_g_0;
  wire led16_r_0;
  wire led17_b_0;
  wire led17_g_0;
  wire led17_r_0;
  wire [15:0]led_0;
  wire reset_rtl_0;
  wire [4:0]sw_0;

  design_1 design_1_i
       (.anodes_0(anodes_0),
        .cathodes_0(cathodes_0),
        .clk_100MHz(clk_100MHz),
        .eth_crsdv_0(eth_crsdv_0),
        .eth_mdc_0(eth_mdc_0),
        .eth_mdio_0(eth_mdio_0),
        .eth_refclk_0(eth_refclk_0),
        .eth_rstn_0(eth_rstn_0),
        .eth_rxd_0(eth_rxd_0),
        .eth_rxerr_0(eth_rxerr_0),
        .eth_txd_0(eth_txd_0),
        .eth_txen_0(eth_txen_0),
        .led16_b_0(led16_b_0),
        .led16_g_0(led16_g_0),
        .led16_r_0(led16_r_0),
        .led17_b_0(led17_b_0),
        .led17_g_0(led17_g_0),
        .led17_r_0(led17_r_0),
        .led_0(led_0),
        .reset_rtl_0(reset_rtl_0),
        .sw_0(sw_0));
endmodule
