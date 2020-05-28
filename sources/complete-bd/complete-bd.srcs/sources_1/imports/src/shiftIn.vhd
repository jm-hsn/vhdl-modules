----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2019 01:56:01 PM
-- Design Name: 
-- Module Name: shiftOut - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.myPackage.ALL;

entity shiftIn is
    generic(
        busWidth : integer := 32;
        regDepth : integer := 4;
        maxCount : integer := 4);
    Port ( clk : in STD_LOGIC;
               ce : in std_logic;
               sync_reset : in STD_LOGIC;
               dataIn : in std_logic_vector(busWidth-1 downto 0);
               dataOut : out register_file(0 to regDepth-1);
               finished : out STD_LOGIC;
               dataIndex : out integer range 0 to maxCount);
end shiftIn;

architecture Behavioral of shiftIn is
    signal dataIndex_s : integer range 0 to maxCount := 0;
    signal dataOut_s : register_file(0 to regDepth-1);
begin

p_s2p : process(clk, sync_reset, dataIndex_s)
begin
    if(sync_reset = '0') then
        dataIndex_s <= 0;
        finished <= '0';
        dataOut_s <= (others => (others => '0'));
    elsif(rising_edge(clk)) then
        if(ce = '1') then
            dataOut_s(0) <= dataIn;
            for i in integer range 1 to regDepth - 1 loop
                dataOut_s(i) <= dataOut_s(i-1);
            end loop;
            
            dataIndex_s <= dataIndex_s + 1;
        else
            dataIndex_s <= dataIndex_s;
            dataOut_s <= dataOut_s;
        end if;
    end if;
    if dataIndex_s < regDepth-1 then
        finished <= '0';
    elsif dataIndex_s < regDepth and ce = '0' then
        finished <= '0';
    else
        finished <= '1';
    end if;
end process;

dataOut <= dataOut_s;
dataIndex <= dataIndex_s;
end Behavioral;
