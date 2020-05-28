--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Thu May 28 22:37:59 2020
--Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    anodes_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    cathodes_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    clk_100MHz : in STD_LOGIC;
    eth_crsdv_0 : inout STD_LOGIC;
    eth_mdc_0 : out STD_LOGIC;
    eth_mdio_0 : inout STD_LOGIC;
    eth_refclk_0 : out STD_LOGIC;
    eth_rstn_0 : inout STD_LOGIC;
    eth_rxd_0 : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_rxerr_0 : inout STD_LOGIC;
    eth_txd_0 : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_txen_0 : inout STD_LOGIC;
    led16_b_0 : out STD_LOGIC;
    led16_g_0 : out STD_LOGIC;
    led16_r_0 : out STD_LOGIC;
    led17_b_0 : out STD_LOGIC;
    led17_g_0 : out STD_LOGIC;
    led17_r_0 : out STD_LOGIC;
    led_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset_rtl_0 : in STD_LOGIC;
    sw_0 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    reset_rtl_0 : in STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    sw_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    led_0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    led17_r_0 : out STD_LOGIC;
    led17_g_0 : out STD_LOGIC;
    led17_b_0 : out STD_LOGIC;
    led16_r_0 : out STD_LOGIC;
    led16_g_0 : out STD_LOGIC;
    led16_b_0 : out STD_LOGIC;
    eth_refclk_0 : out STD_LOGIC;
    eth_mdio_0 : inout STD_LOGIC;
    eth_mdc_0 : out STD_LOGIC;
    eth_rxerr_0 : inout STD_LOGIC;
    eth_txen_0 : inout STD_LOGIC;
    eth_crsdv_0 : inout STD_LOGIC;
    eth_rstn_0 : inout STD_LOGIC;
    eth_rxd_0 : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    eth_txd_0 : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    anodes_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    cathodes_0 : out STD_LOGIC_VECTOR ( 0 to 7 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      anodes_0(0 to 7) => anodes_0(0 to 7),
      cathodes_0(0 to 7) => cathodes_0(0 to 7),
      clk_100MHz => clk_100MHz,
      eth_crsdv_0 => eth_crsdv_0,
      eth_mdc_0 => eth_mdc_0,
      eth_mdio_0 => eth_mdio_0,
      eth_refclk_0 => eth_refclk_0,
      eth_rstn_0 => eth_rstn_0,
      eth_rxd_0(1 downto 0) => eth_rxd_0(1 downto 0),
      eth_rxerr_0 => eth_rxerr_0,
      eth_txd_0(1 downto 0) => eth_txd_0(1 downto 0),
      eth_txen_0 => eth_txen_0,
      led16_b_0 => led16_b_0,
      led16_g_0 => led16_g_0,
      led16_r_0 => led16_r_0,
      led17_b_0 => led17_b_0,
      led17_g_0 => led17_g_0,
      led17_r_0 => led17_r_0,
      led_0(15 downto 0) => led_0(15 downto 0),
      reset_rtl_0 => reset_rtl_0,
      sw_0(4 downto 0) => sw_0(4 downto 0)
    );
end STRUCTURE;
