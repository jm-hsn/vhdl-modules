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

entity shiftIn is
    generic(
        inWidth : integer := 8;
        outWidth : integer := 32);
    Port ( clk : in STD_LOGIC;
           sync_reset : in STD_LOGIC;
           dataIn : in std_logic_vector(inWidth-1 downto 0);
           dataOut : out std_logic_vector(outWidth-1 downto 0);
           finished : out STD_LOGIC);
end shiftIn;

architecture Behavioral of shiftIn is
    signal dataIndex : integer range 0 to (outWidth / inWidth) := 0;
begin

p_s2p : process(clk, sync_reset)
begin
    if(sync_reset = '0') then
        dataIndex <= 0;
        finished <= '0';
        dataOut <= (others => '0');
    elsif(rising_edge(clk)) then
        if(dataIndex < outWidth/inWidth) then
            dataOut(outWidth - dataIndex * inWidth - 1 downto outWidth - dataIndex * inWidth - inWidth) <= dataIn;
            dataIndex <= dataIndex + 1;
            finished <= '0';
        else
            dataIndex <= dataIndex;
            finished <= '1';
        end if;
    end if;
end process;

end Behavioral;
