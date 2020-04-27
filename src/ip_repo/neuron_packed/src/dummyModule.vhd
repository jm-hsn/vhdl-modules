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

    constant regWidth : integer:= regDepth * busWidth;

    component shiftIn is
        generic(
            inWidth : integer := busWidth;
            outWidth : integer := regWidth);
        Port ( clk : in STD_LOGIC;
               ce : in std_logic;
               sync_reset : in STD_LOGIC;
               dataIn : in std_logic_vector(inWidth-1 downto 0);
               dataOut : out std_logic_vector(outWidth-1 downto 0);
               finished : out STD_LOGIC);
    end component;
    component dummyModuleLogic is
        generic(
            regWidth : integer:=regWidth);
        Port (
            inputs : in std_logic_vector(regWidth-1 downto 0);
            start : in std_logic;
            finished : out std_logic;
            clk : in std_logic;
            outputs : out std_logic_vector(regWidth-1 downto 0));
    end component;
    component shiftOut is
        generic(
            inWidth : integer := regWidth;
            outWidth : integer := busWidth);
        Port ( clk : in STD_LOGIC;
               ce : in std_logic;
               sync_reset : in STD_LOGIC;
               dataIn : in std_logic_vector(inWidth-1 downto 0);
               dataOut : out std_logic_vector(outWidth-1 downto 0);
               valid : out std_logic;
               finished : out STD_LOGIC);
    end component;
    
    signal dataInStorage : std_logic_vector(regWidth-1 downto 0);
    signal dataOutStorage : std_logic_vector(regWidth-1 downto 0);
    signal startShiftIn : std_logic;
    signal shiftInFinished : std_logic;
    signal calcFinished : std_logic;
    signal shiftOutFinished : std_logic;
    
    type state_t is (waiting, srcShift, calc, dstShift);
    signal state : state_t := waiting;

begin
    shiftIn2: shiftIn port map (
        clk         => clk,
        ce          => srcValid,
        sync_reset  => startShiftIn,
        dataIn      => srcData,
        dataOut     => dataInStorage,
        finished    => shiftInFinished
    );
    
    dummyModuleLogic1: dummyModuleLogic port map (
        inputs  => dataInStorage,
        clk     => clk,
        outputs => dataOutStorage,
        start   => shiftInFinished,
        finished=> calcFinished
    );
    
    shiftOut2 : shiftOut port map (
        clk         => clk,
        ce      => dstReady,
        sync_reset  => calcFinished,
        dataIn      => dataOutStorage,
        dataOut     => dstData,
        finished    => shiftOutFinished,
        valid       => dstValid
    );
    
    fsm : process(clk, rst_n)
    
    begin
        if rst_n = '0' then
            state <= waiting;
            ready <= '0';
        elsif rising_edge(clk) then
            startShiftIn <= '1';
            idle <= '0';
            ready <= '1';
            case state is
                when waiting =>
                    if start='1' and shiftOutFinished = '0'  then
                        state <= srcShift;
                    else
                        startShiftIn <= '0';
                        idle <= '1';
                    end if;
                    
                    
                when srcShift =>
                    
                    if shiftInFinished = '1' then
                        state <= calc;
                    end if;
                when calc =>
                    if calcFinished='1' then
                        state <= dstShift;
                    end if;
                when dstShift =>
                    if shiftOutFinished='1' then
                        state <= waiting;
                    end if;
            end case;
        end if;
    end process;
    process(startShiftIn, shiftInFinished, shiftOutFinished, start) begin
        srcReady <= startShiftIn and not shiftInFinished;
        done <= start and shiftOutFinished;
    end process;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dummyModuleLogic is
    Generic (
        regWidth : integer := 16
    );
    Port (
        inputs : in std_logic_vector(regWidth-1 downto 0);
        start : in std_logic;
        finished : out std_logic;
        clk : in std_logic;
        outputs : out std_logic_vector(regWidth-1 downto 0));
end dummyModuleLogic;

architecture Behavioral of dummyModuleLogic is

begin
    process(clk)
    begin
        if(rising_edge(clk)) then
            outputs <= inputs;
            finished <= start;
        end if;
    end process;
end Behavioral;
