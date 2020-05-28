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
           ce : in std_logic;
           sync_reset : in STD_LOGIC;
           dataIn : in std_logic_vector(inWidth-1 downto 0);
           dataOut : out std_logic_vector(outWidth-1 downto 0);
           valid : out std_logic;
           finished : out STD_LOGIC);
end shiftOut;

architecture Behavioral of shiftOut is
    signal dataIndex : integer range -1 to (inWidth / outWidth)-1 := 0;
begin

p_s2p : process(clk, sync_reset)
begin
    if(sync_reset = '0') then
        dataIndex <= -1;
        finished <= '0';
        valid <= '0';
    elsif(rising_edge(clk)) then
        if dataIndex < inWidth/outWidth-1 and ce='0' then
            finished <= '0';
            dataIndex <= dataIndex;
            valid <= '0';
        elsif(dataIndex < inWidth/outWidth-1) then
            finished <= '0';
            dataIndex <= dataIndex + 1;
            valid <= '1';
        else
            finished <= '1';
            dataIndex <= dataIndex;
            valid <= '0';
        end if;
    end if;
end process;

process(dataIn, dataIndex) begin
    if dataIndex >= 0 then
        dataOut <= dataIn(inWidth - dataIndex * outWidth - 1 downto inWidth - dataIndex * outWidth - outWidth);
    else
        dataOut <= (others => 'U');
    end if;
end process;
end Behavioral;
