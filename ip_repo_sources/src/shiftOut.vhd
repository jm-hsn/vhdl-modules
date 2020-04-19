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

entity shiftOut is
    generic(
        inWidth : integer := 32*4;
        outWidth : integer := 32);
    Port ( clk : in STD_LOGIC;
           sync_reset : in STD_LOGIC;
           dataIn : in std_logic_vector(inWidth-1 downto 0);
           dataOut : out std_logic_vector(outWidth-1 downto 0);
           finished : out STD_LOGIC);
end shiftOut;

architecture Behavioral of shiftOut is
    signal dataIndex : integer range 0 to (inWidth / outWidth) := 0;
begin

p_s2p : process(clk, sync_reset)
begin
    if(sync_reset = '0') then
        dataIndex <= 0;
        finished <= '0';
    elsif(rising_edge(clk)) then
        if(dataIndex < inWidth/outWidth) then
            
        else
            
        end if;
        if(dataIndex < inWidth/outWidth-1) then
            finished <= '0';
            dataIndex <= dataIndex + 1;
        else
            finished <= '1';
            dataIndex <= dataIndex;
        end if;
    end if;
end process;

dataOut <= dataIn(inWidth - dataIndex * outWidth - 1 downto inWidth - dataIndex * outWidth - outWidth);
end Behavioral;
