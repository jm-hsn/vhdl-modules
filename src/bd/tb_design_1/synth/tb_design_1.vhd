--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Wed Aug 26 18:07:24 2020
--Host        : DESKTOP-L9P0FU6 running 64-bit major release  (build 9200)
--Command     : generate_target tb_design_1.bd
--Design      : tb_design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tb_design_1 is
  port (
    FIFO_READ_0_empty : out STD_LOGIC;
    FIFO_READ_0_rd_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    FIFO_READ_0_rd_en : in STD_LOGIC;
    FIFO_WRITE_0_full : out STD_LOGIC;
    FIFO_WRITE_0_wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FIFO_WRITE_0_wr_en : in STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    errorCode_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    overflow_0 : out STD_LOGIC;
    overflow_1 : out STD_LOGIC;
    rd_data_count_0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    reset_rtl_0 : in STD_LOGIC;
    stateOut_0 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of tb_design_1 : entity is "tb_design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=tb_design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of tb_design_1 : entity is "tb_design_1.hwdef";
end tb_design_1;

architecture STRUCTURE of tb_design_1 is
  component tb_design_1_fifo_input_0 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  end component tb_design_1_fifo_input_0;
  component tb_design_1_fifo_output_0 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    full : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component tb_design_1_fifo_output_0;
  component tb_design_1_invert_reset_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component tb_design_1_invert_reset_0_0;
  component tb_design_1_packaging_0_0 is
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
  end component tb_design_1_packaging_0_0;
  signal FIFO_READ_0_1_EMPTY : STD_LOGIC;
  signal FIFO_READ_0_1_RD_DATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal FIFO_READ_0_1_RD_EN : STD_LOGIC;
  signal \^fifo_write_0_full\ : STD_LOGIC;
  signal \^fifo_write_0_wr_data\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^fifo_write_0_wr_en\ : STD_LOGIC;
  signal clk_0_1 : STD_LOGIC;
  signal fifo_input_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fifo_input_empty : STD_LOGIC;
  signal fifo_input_overflow : STD_LOGIC;
  signal fifo_output_full : STD_LOGIC;
  signal fifo_output_overflow : STD_LOGIC;
  signal fifo_output_rd_data_count : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal invert_reset_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal packaging_0_errorCode : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal packaging_0_inpRdEn : STD_LOGIC;
  signal packaging_0_outData : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal packaging_0_outWrEn : STD_LOGIC;
  signal packaging_0_stateOut : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of FIFO_READ_0_empty : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ_0 EMPTY";
  attribute X_INTERFACE_INFO of FIFO_READ_0_rd_en : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ_0 RD_EN";
  attribute X_INTERFACE_INFO of FIFO_WRITE_0_full : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE_0 FULL";
  attribute X_INTERFACE_INFO of FIFO_WRITE_0_wr_en : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE_0 WR_EN";
  attribute X_INTERFACE_INFO of clk_100MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_100MHz : signal is "XIL_INTERFACENAME CLK.CLK_100MHZ, ASSOCIATED_RESET reset_rtl_0, CLK_DOMAIN tb_design_1_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset_rtl_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_rtl_0 : signal is "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of FIFO_READ_0_rd_data : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ_0 RD_DATA";
  attribute X_INTERFACE_INFO of FIFO_WRITE_0_wr_data : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE_0 WR_DATA";
begin
  FIFO_READ_0_1_RD_EN <= FIFO_READ_0_rd_en;
  FIFO_READ_0_empty <= FIFO_READ_0_1_EMPTY;
  FIFO_READ_0_rd_data(31 downto 0) <= FIFO_READ_0_1_RD_DATA(31 downto 0);
  FIFO_WRITE_0_full <= \^fifo_write_0_full\;
  \^fifo_write_0_wr_data\(31 downto 0) <= FIFO_WRITE_0_wr_data(31 downto 0);
  \^fifo_write_0_wr_en\ <= FIFO_WRITE_0_wr_en;
  clk_0_1 <= clk_100MHz;
  errorCode_0(3 downto 0) <= packaging_0_errorCode(3 downto 0);
  overflow_0 <= fifo_input_overflow;
  overflow_1 <= fifo_output_overflow;
  rd_data_count_0(8 downto 0) <= fifo_output_rd_data_count(8 downto 0);
  rst_0_1 <= reset_rtl_0;
  stateOut_0(3 downto 0) <= packaging_0_stateOut(3 downto 0);
fifo_input: component tb_design_1_fifo_input_0
     port map (
      clk => clk_0_1,
      din(31 downto 0) => \^fifo_write_0_wr_data\(31 downto 0),
      dout(31 downto 0) => fifo_input_dout(31 downto 0),
      empty => fifo_input_empty,
      full => \^fifo_write_0_full\,
      overflow => fifo_input_overflow,
      rd_en => packaging_0_inpRdEn,
      srst => invert_reset_0_Res(0),
      wr_en => \^fifo_write_0_wr_en\
    );
fifo_output: component tb_design_1_fifo_output_0
     port map (
      din(31 downto 0) => packaging_0_outData(31 downto 0),
      dout(31 downto 0) => FIFO_READ_0_1_RD_DATA(31 downto 0),
      empty => FIFO_READ_0_1_EMPTY,
      full => fifo_output_full,
      overflow => fifo_output_overflow,
      rd_clk => clk_0_1,
      rd_data_count(8 downto 0) => fifo_output_rd_data_count(8 downto 0),
      rd_en => FIFO_READ_0_1_RD_EN,
      rst => invert_reset_0_Res(0),
      wr_clk => clk_0_1,
      wr_en => packaging_0_outWrEn
    );
invert_reset_0: component tb_design_1_invert_reset_0_0
     port map (
      Op1(0) => rst_0_1,
      Res(0) => invert_reset_0_Res(0)
    );
packaging_0: component tb_design_1_packaging_0_0
     port map (
      clk => clk_0_1,
      errorCode(3 downto 0) => packaging_0_errorCode(3 downto 0),
      inpRdEn => packaging_0_inpRdEn,
      inputEmpty => fifo_input_empty,
      inputStream(31 downto 0) => fifo_input_dout(31 downto 0),
      outData(31 downto 0) => packaging_0_outData(31 downto 0),
      outWrEn => packaging_0_outWrEn,
      outputFull => fifo_output_full,
      rst => rst_0_1,
      stateOut(3 downto 0) => packaging_0_stateOut(3 downto 0)
    );
end STRUCTURE;
