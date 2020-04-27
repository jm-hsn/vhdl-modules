--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Mon Apr 27 15:16:04 2020
--Host        : DESKTOP-L9P0FU6 running 64-bit major release  (build 9200)
--Command     : generate_target dut_packaging.bd
--Design      : dut_packaging
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dut_packaging is
  port (
    clk_0 : in STD_LOGIC;
    errorCode_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fifo_read_0_empty : in STD_LOGIC;
    fifo_read_0_rd_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_read_0_rd_en : out STD_LOGIC;
    fifo_write_0_full : in STD_LOGIC;
    fifo_write_0_wr_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_write_0_wr_en : out STD_LOGIC;
    rst_0 : in STD_LOGIC;
    stateOut_0 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of dut_packaging : entity is "dut_packaging,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=dut_packaging,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of dut_packaging : entity is "dut_packaging.hwdef";
end dut_packaging;

architecture STRUCTURE of dut_packaging is
  component dut_packaging_packaging_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    inputStream : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inpRdEn : out STD_LOGIC;
    inputEmpty : in STD_LOGIC;
    outData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    outWrEn : out STD_LOGIC;
    outputFull : in STD_LOGIC;
    errorCode : out STD_LOGIC_VECTOR ( 3 downto 0 );
    stateOut : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component dut_packaging_packaging_0_0;
  signal clk_0_1 : STD_LOGIC;
  signal packaging_0_errorCode : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal packaging_0_fifo_read_EMPTY : STD_LOGIC;
  signal packaging_0_fifo_read_RD_DATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal packaging_0_fifo_read_RD_EN : STD_LOGIC;
  signal packaging_0_fifo_write_FULL : STD_LOGIC;
  signal packaging_0_fifo_write_WR_DATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal packaging_0_fifo_write_WR_EN : STD_LOGIC;
  signal packaging_0_stateOut : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN dut_packaging_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of fifo_read_0_empty : signal is "xilinx.com:interface:fifo_read:1.0 fifo_read_0 EMPTY";
  attribute X_INTERFACE_INFO of fifo_read_0_rd_en : signal is "xilinx.com:interface:fifo_read:1.0 fifo_read_0 RD_EN";
  attribute X_INTERFACE_INFO of fifo_write_0_full : signal is "xilinx.com:interface:fifo_write:1.0 fifo_write_0 FULL";
  attribute X_INTERFACE_INFO of fifo_write_0_wr_en : signal is "xilinx.com:interface:fifo_write:1.0 fifo_write_0 WR_EN";
  attribute X_INTERFACE_INFO of rst_0 : signal is "xilinx.com:signal:reset:1.0 RST.RST_0 RST";
  attribute X_INTERFACE_PARAMETER of rst_0 : signal is "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of fifo_read_0_rd_data : signal is "xilinx.com:interface:fifo_read:1.0 fifo_read_0 RD_DATA";
  attribute X_INTERFACE_INFO of fifo_write_0_wr_data : signal is "xilinx.com:interface:fifo_write:1.0 fifo_write_0 WR_DATA";
begin
  clk_0_1 <= clk_0;
  errorCode_0(3 downto 0) <= packaging_0_errorCode(3 downto 0);
  fifo_read_0_rd_en <= packaging_0_fifo_read_RD_EN;
  fifo_write_0_wr_data(31 downto 0) <= packaging_0_fifo_write_WR_DATA(31 downto 0);
  fifo_write_0_wr_en <= packaging_0_fifo_write_WR_EN;
  packaging_0_fifo_read_EMPTY <= fifo_read_0_empty;
  packaging_0_fifo_read_RD_DATA(31 downto 0) <= fifo_read_0_rd_data(31 downto 0);
  packaging_0_fifo_write_FULL <= fifo_write_0_full;
  rst_0_1 <= rst_0;
  stateOut_0(3 downto 0) <= packaging_0_stateOut(3 downto 0);
packaging_0: component dut_packaging_packaging_0_0
     port map (
      clk => clk_0_1,
      errorCode(3 downto 0) => packaging_0_errorCode(3 downto 0),
      inpRdEn => packaging_0_fifo_read_RD_EN,
      inputEmpty => packaging_0_fifo_read_EMPTY,
      inputStream(31 downto 0) => packaging_0_fifo_read_RD_DATA(31 downto 0),
      outData(31 downto 0) => packaging_0_fifo_write_WR_DATA(31 downto 0),
      outWrEn => packaging_0_fifo_write_WR_EN,
      outputFull => packaging_0_fifo_write_FULL,
      rst => rst_0_1,
      stateOut(3 downto 0) => packaging_0_stateOut(3 downto 0)
    );
end STRUCTURE;
