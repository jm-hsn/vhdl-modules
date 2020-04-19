----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.06.2019 18:42:50
-- Design Name: 
-- Module Name: multiplex - Behavioral
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
use IEEE.std_logic_arith.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.myPackage.ALL;

entity multiplex is
    generic(
        busWidth : integer:=32);
    Port ( clk : in STD_LOGIC;
           start : in STD_LOGIC;
           ready: out std_logic;
           rst : in STD_LOGIC;
           done : out STD_LOGIC;
           idle : out STD_LOGIC;
           
           moduleId : in STD_LOGIC_VECTOR (31 downto 0);
           
           srcData : in STD_LOGIC_VECTOR (busWidth-1 downto 0);
           srcValid : in std_logic;
           srcReady : out std_logic;
           
           dstData : out STD_LOGIC_VECTOR (busWidth-1 downto 0);
           dstValid : out std_logic;
           dstReady : in std_logic
    );
end multiplex;

architecture Behavioral of multiplex is

component parallelize is
    generic(
        busWidth : integer:=busWidth);
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           start : in STD_LOGIC;
           dataIn : in std_logic_vector(busWidth-1 downto 0);
           ready: out std_logic;
           dataOutReset : in std_logic;
           dataOut : out std_logic_vector(busWidth-1 downto 0);
           finished : out STD_LOGIC);
end component;

component dummyModule is
    generic(
        busWidth : integer:=busWidth;
        regDepth : integer);
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
end component;

component filter11x11_strm is
port (
    width : IN STD_LOGIC_VECTOR (31 downto 0);
    height : IN STD_LOGIC_VECTOR (31 downto 0);
    filt1 : IN STD_LOGIC_VECTOR (31 downto 0);
    filt2 : IN STD_LOGIC_VECTOR (31 downto 0);
    src_V_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    dst_V_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    src_V_TVALID : IN STD_LOGIC;
    src_V_TREADY : OUT STD_LOGIC;
    dst_V_TVALID : OUT STD_LOGIC;
    dst_V_TREADY : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC);
end component;

constant N : integer := 3;
type muxBitVector is array(0 to N-1) of std_logic;
type muxDataVector is array(0 to N-1) of std_logic_vector(busWidth-1 downto 0);
subtype filter11_t is std_logic_vector(busWidth-1 downto 0);

constant moduleIds : muxDataVector :=(
    0 => x"2cb31e7c",
    1 => x"f218e0a2",
    2 => x"9323eb24"
);

signal imgWidth : std_logic_vector(busWidth-1 downto 0) := std_logic_vector(conv_unsigned(224, 32));
signal imgHeight : std_logic_vector(busWidth-1 downto 0) := std_logic_vector(conv_unsigned(224, 32));

signal filt1 : filter11_t := x"00000001";
signal filt2 : filter11_t := x"00000001";

signal muxSrcData : std_logic_vector(busWidth-1 downto 0);
signal muxSrcValid : std_logic;
signal muxSrcReady : muxBitVector := (others => '1');

signal muxDstData : muxDataVector;
signal muxDstValid : muxBitVector := (others => '0');
signal muxDstReady : std_logic;

signal muxReady : muxBitVector := (others => '1');
signal muxIdle : muxBitVector := (others => '1');
signal muxDone : muxBitVector := (others => '1');

signal muxStart : muxBitVector := (others => '0');



begin
    dummyBig : dummyModule 
    generic map (
        regDepth => 1024
    ) port map (
        clk     => clk,
        rst_n   => rst,
        
        srcData => muxSrcData,
        srcValid=> muxSrcValid,
        srcReady=> muxSrcReady(0),
        
        dstData => muxDstData(0),
        dstValid => muxDstValid(0),
        dstReady => muxDstReady,
        
        start   => muxStart(0),
        ready   => muxReady(0),
        idle    => muxIdle(0),
        done    => muxDone(0)
    );
    
    dummy : dummyModule 
    generic map (
        regDepth => 4
    ) port map (
        clk     => clk,
        rst_n   => rst,
        
        srcData => muxSrcData,
        srcValid=> muxSrcValid,
        srcReady=> muxSrcReady(1),
        
        dstData => muxDstData(1),
        dstValid => muxDstValid(1),
        dstReady => muxDstReady,
        
        start   => muxStart(1),
        ready   => muxReady(1),
        idle    => muxIdle(1),
        done    => muxDone(1)
    );
    f11 : filter11x11_strm port map (
        ap_clk => clk,
        ap_rst_n => rst,
        ap_start => muxStart(2),
        ap_done => muxDone(2),
        ap_ready => muxReady(2),
        ap_idle => muxIdle(2),
        width => imgWidth,
        height => imgHeight,
        
        src_V_TDATA => muxSrcData,
        src_V_TVALID => muxSrcValid,
        src_V_TREADY => muxSrcReady(2),
        
        dst_V_TDATA => muxDstData(2),
        dst_V_TVALID => muxDstValid(2),
        dst_V_TREADY => muxDstReady,
        
        filt1 => filt1,
        filt2 => filt2
        
    );

    process(moduleId, muxSrcReady, muxReady, muxDstData, muxDstValid, muxDone, muxIdle, start)
        variable i : integer range 0 to N-1;
    begin
        i := 0;
        for k in 0 to N-1 loop
            if moduleIds(k) = moduleId then
                i := k;
            end if;
        end loop;
        
        ready <= muxReady(i);
        dstData <= muxDstData(i);
        done <= muxDone(i);
        idle <= muxIdle(i);
        dstValid <= muxDstValid(i);
        srcReady <= muxSrcReady(i);
        
        muxStart <= (others => '0');
        muxStart(i) <= start;
    end process;
    
    muxSrcValid <= srcValid;
    muxSrcData <= srcData;
    muxDstReady <= dstReady;
    
end Behavioral;
