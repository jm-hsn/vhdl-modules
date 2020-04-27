----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.06.2019 22:30:43
-- Design Name: 
-- Module Name: dummyModule - Behavioral
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

entity dummyModule is
    generic(
        busWidth : integer:=32;
        regDepth : integer:=4);
    Port ( clk : in STD_LOGIC;
           rst_n : in STD_LOGIC;
           start : in STD_LOGIC;
           ready: out std_logic;
           idle : out std_logic;
           done : out std_logic;
           
           srcData : in STD_LOGIC_VECTOR (busWidth-1 downto 0);
           srcValid : in std_logic;
           srcReady : out std_logic;
           
           dstData : out STD_LOGIC_VECTOR (busWidth-1 downto 0);
           dstValid : out std_logic;
           dstReady : in std_logic);
end dummyModule;

architecture Behavioral of dummyModule is
    signal working : std_logic := '0';
    signal dstStalled_s : std_logic := '0';
    signal dstValid_s : std_logic := '0';
    
    signal dataIndex : integer range 0 to regDepth;
begin
    
    dstData <= srcData;
    
    reset : process(rst_n, clk)
    begin
        if rst_n = '0' then
            working <= '0';
            done <= '0';
        elsif rising_edge(clk) then
            done <= '0';
            working <= '0';
           
            if dataIndex = regDepth - 1 and dstValid_s = '1' then
                done <= '1';
                working <= '1';
            elsif dataIndex = regDepth then
                working <= '0';
            elsif start = '1' then
                working <= '1';
            end if;
        end if;
    end process;
    
    idle <= rst_n and not working;
    ready <= rst_n;
    
    dataPathStall : process(rst_n, clk)
    
    begin
        if rst_n = '0' then
            dstStalled_s <= '0';
        elsif rising_edge(clk) then
            if working = '1' and srcValid = '1' and dstReady = '0' then
                dstStalled_s <= '1';
            elsif dstStalled_s = '1' and working = '1' and dstReady = '1' then
                dstStalled_s <= '0';
            end if;
        end if;
    end process;
    
    dstValid_s <= working and dstReady and (srcValid or dstStalled_s);
    dstValid <= dstValid_s;
    
    srcRdy : process(dataIndex, working, dstReady, srcValid, start) begin
        if (dataIndex = regDepth - 1 and srcValid = '1') or dataIndex = regDepth then
            srcReady <= '0';
        else
            srcReady <= working and dstReady and not dstStalled_s and start;
        end if;
    end process;
    
    dataCounter : process(rst_n, clk) begin
        if rst_n = '0' then
            dataIndex <= 0;
        elsif rising_edge(clk) then
            if start = '1' and srcValid = '1' then
                dataIndex <= dataIndex + 1;
            elsif start = '0' then
                dataIndex <= 0;
            else
                dataIndex <= dataIndex;
            end if;
        end if;
    end process;
end Behavioral;
