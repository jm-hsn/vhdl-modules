//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Mon Apr 20 19:50:48 2020
//Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=13,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, ASSOCIATED_RESET reset_rtl_0, CLK_DOMAIN design_1_clk_100MHz, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_100MHz;
  inout eth_crsdv_0;
  output eth_mdc_0;
  inout eth_mdio_0;
  output eth_refclk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ETH_RSTN_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ETH_RSTN_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) inout eth_rstn_0;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_rtl_0;
  input [4:0]sw_0;

  wire [1:0]Net;
  wire [1:0]Net1;
  wire Net2;
  wire Net3;
  wire Net4;
  wire Net5;
  wire Net6;
  wire [15:0]c_counter_binary_0_Q;
  wire [15:0]c_counter_binary_1_Q;
  wire clk_wiz_clk_out1;
  wire ethernet_transceiver2_0_eth_mdc;
  wire ethernet_transceiver2_0_eth_refclk;
  wire ethernet_transceiver2_0_fifo_read_EMPTY;
  wire [31:0]ethernet_transceiver2_0_fifo_read_RD_DATA;
  wire ethernet_transceiver2_0_fifo_read_RD_EN;
  wire ethernet_transceiver2_0_fifo_write_FULL;
  wire [31:0]ethernet_transceiver2_0_fifo_write_WR_DATA;
  wire ethernet_transceiver2_0_fifo_write_WR_EN;
  wire ethernet_transceiver2_0_led16_b;
  wire ethernet_transceiver2_0_led16_g;
  wire ethernet_transceiver2_0_led16_r;
  wire ethernet_transceiver2_0_led17_b;
  wire ethernet_transceiver2_0_led17_g;
  wire ethernet_transceiver2_0_led17_r;
  wire fifo_input_overflow;
  wire fifo_output_overflow;
  wire [8:0]fifo_output_rd_data_count;
  wire [3:0]packaging_1_errorCode;
  wire packaging_1_fifo_read_EMPTY;
  wire [31:0]packaging_1_fifo_read_RD_DATA;
  wire packaging_1_fifo_read_RD_EN;
  wire packaging_1_fifo_write_FULL;
  wire [31:0]packaging_1_fifo_write_WR_DATA;
  wire packaging_1_fifo_write_WR_EN;
  wire [3:0]packaging_1_stateOut;
  wire rst_clk_wiz_100M_peripheral_aresetn;
  wire [0:7]segment_0_anodes;
  wire [0:7]segment_0_cathodes;
  wire [4:0]sw_0_1;
  wire [15:0]xlconcat_4_dout;
  wire [15:0]xlconcat_5_dout;
  wire [15:0]xlconstant_0_dout;
  wire [6:0]xlconstant_1_dout;
  wire [7:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;

  assign anodes_0[0:7] = segment_0_anodes;
  assign cathodes_0[0:7] = segment_0_cathodes;
  assign clk_wiz_clk_out1 = clk_100MHz;
  assign eth_mdc_0 = ethernet_transceiver2_0_eth_mdc;
  assign eth_refclk_0 = ethernet_transceiver2_0_eth_refclk;
  assign led16_b_0 = ethernet_transceiver2_0_led16_b;
  assign led16_g_0 = ethernet_transceiver2_0_led16_g;
  assign led16_r_0 = ethernet_transceiver2_0_led16_r;
  assign led17_b_0 = ethernet_transceiver2_0_led17_b;
  assign led17_g_0 = ethernet_transceiver2_0_led17_g;
  assign led17_r_0 = ethernet_transceiver2_0_led17_r;
  assign led_0[15:0] = xlconcat_4_dout;
  assign rst_clk_wiz_100M_peripheral_aresetn = reset_rtl_0;
  assign sw_0_1 = sw_0[4:0];
  design_1_c_counter_binary_0_0 c_counter_binary_0
       (.CE(fifo_output_overflow),
        .CLK(clk_wiz_clk_out1),
        .Q(c_counter_binary_0_Q),
        .SCLR(xlslice_1_Dout));
  design_1_c_counter_binary_1_0 c_counter_binary_1
       (.CE(fifo_input_overflow),
        .CLK(clk_wiz_clk_out1),
        .Q(c_counter_binary_1_Q),
        .SCLR(xlslice_1_Dout));
  design_1_ethernet_transceiver2_0_0 ethernet_transceiver2_0
       (.btn_reset(rst_clk_wiz_100M_peripheral_aresetn),
        .clk100mhz(clk_wiz_clk_out1),
        .eth_crsdv(eth_crsdv_0),
        .eth_mdc(ethernet_transceiver2_0_eth_mdc),
        .eth_mdio(eth_mdio_0),
        .eth_refclk(ethernet_transceiver2_0_eth_refclk),
        .eth_rstn(eth_rstn_0),
        .eth_rxd(eth_rxd_0[1:0]),
        .eth_rxerr(eth_rxerr_0),
        .eth_txd(eth_txd_0[1:0]),
        .eth_txen(eth_txen_0),
        .fifo_read_data(ethernet_transceiver2_0_fifo_read_RD_DATA),
        .fifo_read_empty(ethernet_transceiver2_0_fifo_read_EMPTY),
        .fifo_read_enable(ethernet_transceiver2_0_fifo_read_RD_EN),
        .fifo_read_length(xlconcat_5_dout),
        .fifo_write_data(ethernet_transceiver2_0_fifo_write_WR_DATA),
        .fifo_write_enable(ethernet_transceiver2_0_fifo_write_WR_EN),
        .fifo_write_full(ethernet_transceiver2_0_fifo_write_FULL),
        .ip(sw_0_1),
        .led16_b(ethernet_transceiver2_0_led16_b),
        .led16_g(ethernet_transceiver2_0_led16_g),
        .led16_r(ethernet_transceiver2_0_led16_r),
        .led17_b(ethernet_transceiver2_0_led17_b),
        .led17_g(ethernet_transceiver2_0_led17_g),
        .led17_r(ethernet_transceiver2_0_led17_r),
        .udp_packet_checksum(xlconstant_0_dout));
  design_1_fifo_input_0 fifo_input
       (.clk(clk_wiz_clk_out1),
        .din(ethernet_transceiver2_0_fifo_write_WR_DATA),
        .dout(packaging_1_fifo_read_RD_DATA),
        .empty(packaging_1_fifo_read_EMPTY),
        .full(ethernet_transceiver2_0_fifo_write_FULL),
        .overflow(fifo_input_overflow),
        .rd_en(packaging_1_fifo_read_RD_EN),
        .srst(xlslice_1_Dout),
        .wr_en(ethernet_transceiver2_0_fifo_write_WR_EN));
  design_1_fifo_output_0 fifo_output
       (.din(packaging_1_fifo_write_WR_DATA),
        .dout(ethernet_transceiver2_0_fifo_read_RD_DATA),
        .empty(ethernet_transceiver2_0_fifo_read_EMPTY),
        .full(packaging_1_fifo_write_FULL),
        .overflow(fifo_output_overflow),
        .rd_clk(ethernet_transceiver2_0_eth_refclk),
        .rd_data_count(fifo_output_rd_data_count),
        .rd_en(ethernet_transceiver2_0_fifo_read_RD_EN),
        .rst(xlslice_1_Dout),
        .wr_clk(clk_wiz_clk_out1),
        .wr_en(packaging_1_fifo_write_WR_EN));
  design_1_negate_0_0 negate_0
       (.A(rst_clk_wiz_100M_peripheral_aresetn),
        .CLK(clk_wiz_clk_out1),
        .S(xlslice_1_Dout));
  design_1_packaging_1_0 packaging_1
       (.clk(clk_wiz_clk_out1),
        .errorCode(packaging_1_errorCode),
        .inpRdEn(packaging_1_fifo_read_RD_EN),
        .inputEmpty(packaging_1_fifo_read_EMPTY),
        .inputStream(packaging_1_fifo_read_RD_DATA),
        .outData(packaging_1_fifo_write_WR_DATA),
        .outWrEn(packaging_1_fifo_write_WR_EN),
        .outputFull(packaging_1_fifo_write_FULL),
        .rst(rst_clk_wiz_100M_peripheral_aresetn),
        .stateOut(packaging_1_stateOut));
  design_1_segment_0_0 segment_0
       (.anodes(segment_0_anodes),
        .cathodes(segment_0_cathodes),
        .clk(clk_wiz_clk_out1),
        .num1(c_counter_binary_1_Q),
        .num2(c_counter_binary_0_Q));
  design_1_xlconcat_4_0 xlconcat_4
       (.In0(packaging_1_errorCode),
        .In1(packaging_1_stateOut),
        .In2(xlslice_0_Dout),
        .dout(xlconcat_4_dout));
  design_1_xlconcat_5_0 xlconcat_5
       (.In0(fifo_output_rd_data_count),
        .In1(xlconstant_1_dout),
        .dout(xlconcat_5_dout));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  design_1_xlslice_0_0 xlslice_0
       (.Din(xlconcat_5_dout),
        .Dout(xlslice_0_Dout));
endmodule
