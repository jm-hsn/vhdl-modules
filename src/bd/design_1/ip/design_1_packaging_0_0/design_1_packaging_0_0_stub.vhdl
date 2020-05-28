-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Thu May 28 23:33:25 2020
-- Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/windows/repos/vhdl-modules/src/bd/design_1/ip/design_1_packaging_0_0/design_1_packaging_0_0_stub.vhdl
-- Design      : design_1_packaging_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_packaging_0_0 is
  Port ( 
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

end design_1_packaging_0_0;

architecture stub of design_1_packaging_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,inputStream[31:0],inpRdEn,inputEmpty,outData[31:0],outWrEn,outputFull,errorCode[3:0],stateOut[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "packaging,Vivado 2018.3";
begin
end;
