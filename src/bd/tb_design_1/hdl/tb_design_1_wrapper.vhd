--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Wed Aug 26 18:07:24 2020
--Host        : DESKTOP-L9P0FU6 running 64-bit major release  (build 9200)
--Command     : generate_target tb_design_1_wrapper.bd
--Design      : tb_design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity tb_design_1_wrapper is
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
end tb_design_1_wrapper;

architecture STRUCTURE of tb_design_1_wrapper is
  component tb_design_1 is
  port (
    clk_100MHz : in STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC;
    overflow_0 : out STD_LOGIC;
    overflow_1 : out STD_LOGIC;
    stateOut_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    errorCode_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rd_data_count_0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    FIFO_WRITE_0_full : out STD_LOGIC;
    FIFO_WRITE_0_wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FIFO_WRITE_0_wr_en : in STD_LOGIC;
    FIFO_READ_0_empty : out STD_LOGIC;
    FIFO_READ_0_rd_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    FIFO_READ_0_rd_en : in STD_LOGIC
  );
  end component tb_design_1;
begin
tb_design_1_i: component tb_design_1
     port map (
      FIFO_READ_0_empty => FIFO_READ_0_empty,
      FIFO_READ_0_rd_data(31 downto 0) => FIFO_READ_0_rd_data(31 downto 0),
      FIFO_READ_0_rd_en => FIFO_READ_0_rd_en,
      FIFO_WRITE_0_full => FIFO_WRITE_0_full,
      FIFO_WRITE_0_wr_data(31 downto 0) => FIFO_WRITE_0_wr_data(31 downto 0),
      FIFO_WRITE_0_wr_en => FIFO_WRITE_0_wr_en,
      clk_100MHz => clk_100MHz,
      errorCode_0(3 downto 0) => errorCode_0(3 downto 0),
      overflow_0 => overflow_0,
      overflow_1 => overflow_1,
      rd_data_count_0(8 downto 0) => rd_data_count_0(8 downto 0),
      reset_rtl_0 => reset_rtl_0,
      stateOut_0(3 downto 0) => stateOut_0(3 downto 0)
    );
end STRUCTURE;
