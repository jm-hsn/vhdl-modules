-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Mon Apr 20 19:37:18 2020
-- Host        : DESKTOP-L9P0FU6 running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/windows/repos/vhdl-modules/sources/complete-bd.bd/ip/design_1_segment_0_0/design_1_segment_0_0_stub.vhdl
-- Design      : design_1_segment_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_segment_0_0 is
  Port ( 
    num1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    num2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    anodes : out STD_LOGIC_VECTOR ( 0 to 7 );
    cathodes : out STD_LOGIC_VECTOR ( 0 to 7 )
  );

end design_1_segment_0_0;

architecture stub of design_1_segment_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "num1[15:0],num2[15:0],clk,anodes[0:7],cathodes[0:7]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "segment,Vivado 2018.3";
begin
end;
