-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:ethernet_transceiver2:1.0
-- IP Revision: 44

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_ethernet_transceiver2_0_0 IS
  PORT (
    clk100mhz : IN STD_LOGIC;
    eth_rxd : INOUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    eth_txd : INOUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    eth_crsdv : INOUT STD_LOGIC;
    eth_txen : INOUT STD_LOGIC;
    eth_rxerr : INOUT STD_LOGIC;
    eth_mdc : OUT STD_LOGIC;
    eth_mdio : INOUT STD_LOGIC;
    eth_refclk : OUT STD_LOGIC;
    eth_rstn : INOUT STD_LOGIC;
    led16_b : OUT STD_LOGIC;
    led16_g : OUT STD_LOGIC;
    led16_r : OUT STD_LOGIC;
    led17_b : OUT STD_LOGIC;
    led17_g : OUT STD_LOGIC;
    led17_r : OUT STD_LOGIC;
    btn_reset : IN STD_LOGIC;
    led : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    udp_packet_checksum : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    udp_packet_recieved : OUT STD_LOGIC;
    udp_packet_sending : OUT STD_LOGIC;
    fifo_write_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    fifo_write_enable : OUT STD_LOGIC;
    fifo_write_full : IN STD_LOGIC;
    fifo_read_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    fifo_read_enable : OUT STD_LOGIC;
    fifo_read_length : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    fifo_read_empty : IN STD_LOGIC;
    ip : IN STD_LOGIC_VECTOR(4 DOWNTO 0)
  );
END design_1_ethernet_transceiver2_0_0;

ARCHITECTURE design_1_ethernet_transceiver2_0_0_arch OF design_1_ethernet_transceiver2_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_ethernet_transceiver2_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT ethernet_transceiver2 IS
    GENERIC (
      M_clk2_5mhz1 : INTEGER;
      M_clk2_5mhz2 : INTEGER;
      N : INTEGER;
      ADDR_WIDTH : INTEGER;
      DATA_WIDTH : INTEGER;
      FIFO_WIDTH : INTEGER
    );
    PORT (
      clk100mhz : IN STD_LOGIC;
      eth_rxd : INOUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      eth_txd : INOUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      eth_crsdv : INOUT STD_LOGIC;
      eth_txen : INOUT STD_LOGIC;
      eth_rxerr : INOUT STD_LOGIC;
      eth_mdc : OUT STD_LOGIC;
      eth_mdio : INOUT STD_LOGIC;
      eth_refclk : OUT STD_LOGIC;
      eth_rstn : INOUT STD_LOGIC;
      led16_b : OUT STD_LOGIC;
      led16_g : OUT STD_LOGIC;
      led16_r : OUT STD_LOGIC;
      led17_b : OUT STD_LOGIC;
      led17_g : OUT STD_LOGIC;
      led17_r : OUT STD_LOGIC;
      btn_reset : IN STD_LOGIC;
      led : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      udp_packet_checksum : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      udp_packet_recieved : OUT STD_LOGIC;
      udp_packet_sending : OUT STD_LOGIC;
      fifo_write_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      fifo_write_enable : OUT STD_LOGIC;
      fifo_write_full : IN STD_LOGIC;
      fifo_read_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      fifo_read_enable : OUT STD_LOGIC;
      fifo_read_length : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      fifo_read_empty : IN STD_LOGIC;
      ip : IN STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
  END COMPONENT ethernet_transceiver2;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_ethernet_transceiver2_0_0_arch: ARCHITECTURE IS "ethernet_transceiver2,Vivado 2018.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_ethernet_transceiver2_0_0_arch : ARCHITECTURE IS "design_1_ethernet_transceiver2_0_0,ethernet_transceiver2,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_ethernet_transceiver2_0_0_arch: ARCHITECTURE IS "design_1_ethernet_transceiver2_0_0,ethernet_transceiver2,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=ethernet_transceiver2,x_ipVersion=1.0,x_ipCoreRevision=44,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,M_clk2_5mhz1=20,M_clk2_5mhz2=10,N=22,ADDR_WIDTH=10,DATA_WIDTH=8,FIFO_WIDTH=32}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_ethernet_transceiver2_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF fifo_read_empty: SIGNAL IS "xilinx.com:interface:fifo_read:1.0 fifo_read EMPTY";
  ATTRIBUTE X_INTERFACE_INFO OF fifo_read_enable: SIGNAL IS "xilinx.com:interface:fifo_read:1.0 fifo_read RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF fifo_read_data: SIGNAL IS "xilinx.com:interface:fifo_read:1.0 fifo_read RD_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF fifo_write_full: SIGNAL IS "xilinx.com:interface:fifo_write:1.0 fifo_write FULL";
  ATTRIBUTE X_INTERFACE_INFO OF fifo_write_enable: SIGNAL IS "xilinx.com:interface:fifo_write:1.0 fifo_write WR_EN";
  ATTRIBUTE X_INTERFACE_INFO OF fifo_write_data: SIGNAL IS "xilinx.com:interface:fifo_write:1.0 fifo_write WR_DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF btn_reset: SIGNAL IS "XIL_INTERFACENAME btn_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF btn_reset: SIGNAL IS "xilinx.com:signal:reset:1.0 btn_reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF eth_rstn: SIGNAL IS "XIL_INTERFACENAME eth_rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF eth_rstn: SIGNAL IS "xilinx.com:signal:reset:1.0 eth_rstn RST";
BEGIN
  U0 : ethernet_transceiver2
    GENERIC MAP (
      M_clk2_5mhz1 => 20,
      M_clk2_5mhz2 => 10,
      N => 22,
      ADDR_WIDTH => 10,
      DATA_WIDTH => 8,
      FIFO_WIDTH => 32
    )
    PORT MAP (
      clk100mhz => clk100mhz,
      eth_rxd => eth_rxd,
      eth_txd => eth_txd,
      eth_crsdv => eth_crsdv,
      eth_txen => eth_txen,
      eth_rxerr => eth_rxerr,
      eth_mdc => eth_mdc,
      eth_mdio => eth_mdio,
      eth_refclk => eth_refclk,
      eth_rstn => eth_rstn,
      led16_b => led16_b,
      led16_g => led16_g,
      led16_r => led16_r,
      led17_b => led17_b,
      led17_g => led17_g,
      led17_r => led17_r,
      btn_reset => btn_reset,
      led => led,
      udp_packet_checksum => udp_packet_checksum,
      udp_packet_recieved => udp_packet_recieved,
      udp_packet_sending => udp_packet_sending,
      fifo_write_data => fifo_write_data,
      fifo_write_enable => fifo_write_enable,
      fifo_write_full => fifo_write_full,
      fifo_read_data => fifo_read_data,
      fifo_read_enable => fifo_read_enable,
      fifo_read_length => fifo_read_length,
      fifo_read_empty => fifo_read_empty,
      ip => ip
    );
END design_1_ethernet_transceiver2_0_0_arch;
