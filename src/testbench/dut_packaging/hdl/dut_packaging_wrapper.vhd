--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
--Date        : Mon Apr 27 15:16:04 2020
--Host        : DESKTOP-L9P0FU6 running 64-bit major release  (build 9200)
--Command     : generate_target dut_packaging_wrapper.bd
--Design      : dut_packaging_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dut_packaging_wrapper is
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
end dut_packaging_wrapper;

architecture STRUCTURE of dut_packaging_wrapper is
  component dut_packaging is
  port (
    errorCode_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_0 : in STD_LOGIC;
    rst_0 : in STD_LOGIC;
    stateOut_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fifo_write_0_wr_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_write_0_wr_en : out STD_LOGIC;
    fifo_write_0_full : in STD_LOGIC;
    fifo_read_0_rd_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_read_0_rd_en : out STD_LOGIC;
    fifo_read_0_empty : in STD_LOGIC
  );
  end component dut_packaging;
begin
dut_packaging_i: component dut_packaging
     port map (
      clk_0 => clk_0,
      errorCode_0(3 downto 0) => errorCode_0(3 downto 0),
      fifo_read_0_empty => fifo_read_0_empty,
      fifo_read_0_rd_data(31 downto 0) => fifo_read_0_rd_data(31 downto 0),
      fifo_read_0_rd_en => fifo_read_0_rd_en,
      fifo_write_0_full => fifo_write_0_full,
      fifo_write_0_wr_data(31 downto 0) => fifo_write_0_wr_data(31 downto 0),
      fifo_write_0_wr_en => fifo_write_0_wr_en,
      rst_0 => rst_0,
      stateOut_0(3 downto 0) => stateOut_0(3 downto 0)
    );
end STRUCTURE;
