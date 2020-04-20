-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Apr 20 19:37:38 2020
-- Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/windows/repos/vhdl-modules/sources/complete-bd.bd/ip/design_1_ethernet_transceiver2_0_0/design_1_ethernet_transceiver2_0_0_stub.vhdl
-- Design      : design_1_ethernet_transceiver2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ethernet_transceiver2_0_0 is
  Port ( 
    clk100mhz : in STD_LOGIC;
    eth_rxd : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_txd : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_crsdv : inout STD_LOGIC;
    eth_txen : inout STD_LOGIC;
    eth_rxerr : inout STD_LOGIC;
    eth_mdc : out STD_LOGIC;
    eth_mdio : inout STD_LOGIC;
    eth_refclk : out STD_LOGIC;
    eth_rstn : inout STD_LOGIC;
    led16_b : out STD_LOGIC;
    led16_g : out STD_LOGIC;
    led16_r : out STD_LOGIC;
    led17_b : out STD_LOGIC;
    led17_g : out STD_LOGIC;
    led17_r : out STD_LOGIC;
    btn_reset : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    udp_packet_checksum : in STD_LOGIC_VECTOR ( 15 downto 0 );
    udp_packet_recieved : out STD_LOGIC;
    udp_packet_sending : out STD_LOGIC;
    fifo_write_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_write_enable : out STD_LOGIC;
    fifo_write_full : in STD_LOGIC;
    fifo_read_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_read_enable : out STD_LOGIC;
    fifo_read_length : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_read_empty : in STD_LOGIC;
    ip : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );

end design_1_ethernet_transceiver2_0_0;

architecture stub of design_1_ethernet_transceiver2_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk100mhz,eth_rxd[1:0],eth_txd[1:0],eth_crsdv,eth_txen,eth_rxerr,eth_mdc,eth_mdio,eth_refclk,eth_rstn,led16_b,led16_g,led16_r,led17_b,led17_g,led17_r,btn_reset,led[15:0],udp_packet_checksum[15:0],udp_packet_recieved,udp_packet_sending,fifo_write_data[31:0],fifo_write_enable,fifo_write_full,fifo_read_data[31:0],fifo_read_enable,fifo_read_length[15:0],fifo_read_empty,ip[4:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ethernet_transceiver2,Vivado 2018.3";
begin
end;
