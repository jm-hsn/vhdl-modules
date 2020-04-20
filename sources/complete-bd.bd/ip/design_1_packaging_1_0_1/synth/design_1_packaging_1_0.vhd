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

-- IP VLNV: user.org:user:packaging:3.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_packaging_1_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    inputStream : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    inpRdEn : OUT STD_LOGIC;
    inputEmpty : IN STD_LOGIC;
    outData : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    outWrEn : OUT STD_LOGIC;
    outputFull : IN STD_LOGIC;
    errorCode : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    stateOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END design_1_packaging_1_0;

ARCHITECTURE design_1_packaging_1_0_arch OF design_1_packaging_1_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_packaging_1_0_arch: ARCHITECTURE IS "yes";
  COMPONENT packaging IS
    GENERIC (
      busWidth : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      inputStream : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      inpRdEn : OUT STD_LOGIC;
      inputEmpty : IN STD_LOGIC;
      outData : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      outWrEn : OUT STD_LOGIC;
      outputFull : IN STD_LOGIC;
      errorCode : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      stateOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT packaging;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_packaging_1_0_arch: ARCHITECTURE IS "packaging,Vivado 2018.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_packaging_1_0_arch : ARCHITECTURE IS "design_1_packaging_1_0,packaging,{}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_packaging_1_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF outputFull: SIGNAL IS "xilinx.com:interface:fifo_write:1.0 fifo_write FULL";
  ATTRIBUTE X_INTERFACE_INFO OF outWrEn: SIGNAL IS "xilinx.com:interface:fifo_write:1.0 fifo_write WR_EN";
  ATTRIBUTE X_INTERFACE_INFO OF outData: SIGNAL IS "xilinx.com:interface:fifo_write:1.0 fifo_write WR_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF inputEmpty: SIGNAL IS "xilinx.com:interface:fifo_read:1.0 fifo_read EMPTY";
  ATTRIBUTE X_INTERFACE_INFO OF inpRdEn: SIGNAL IS "xilinx.com:interface:fifo_read:1.0 fifo_read RD_EN";
  ATTRIBUTE X_INTERFACE_INFO OF inputStream: SIGNAL IS "xilinx.com:interface:fifo_read:1.0 fifo_read RD_DATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_100MHz, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : packaging
    GENERIC MAP (
      busWidth => 32
    )
    PORT MAP (
      clk => clk,
      rst => rst,
      inputStream => inputStream,
      inpRdEn => inpRdEn,
      inputEmpty => inputEmpty,
      outData => outData,
      outWrEn => outWrEn,
      outputFull => outputFull,
      errorCode => errorCode,
      stateOut => stateOut
    );
END design_1_packaging_1_0_arch;