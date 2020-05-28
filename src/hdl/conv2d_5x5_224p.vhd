
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.myPackage.ALL;


entity conv2d_5x5_224p is
    generic(
        busWidth : integer := 32);
    Port ( clk : in STD_LOGIC;
           rst_n : in std_logic;
           start : in STD_LOGIC;
           ready: out std_logic;
           idle : out std_logic := '0';
           done : out std_logic := '0';
           
           srcData : in STD_LOGIC_VECTOR (busWidth-1 downto 0);
           srcValid : in std_logic;
           srcReady : out std_logic;
           
           dstData : out STD_LOGIC_VECTOR (busWidth-1 downto 0);
           dstValid : out std_logic;
           dstReady : in std_logic);
end conv2d_5x5_224p;

architecture Behavioral of conv2d_5x5_224p is
    component conv2d is
    generic(
        busWidth : integer := 32;
        kernelSize : integer;
        imageWidth : integer);
    Port ( clk : in STD_LOGIC;
           rst_n : in std_logic;
           start : in STD_LOGIC;
           ready: out std_logic;
           idle : out std_logic := '0';
           done : out std_logic := '0';
           
           srcData : in STD_LOGIC_VECTOR (busWidth-1 downto 0);
           srcValid : in std_logic;
           srcReady : out std_logic;
           
           dstData : out STD_LOGIC_VECTOR (busWidth-1 downto 0);
           dstValid : out std_logic;
           dstReady : in std_logic);
    end component;
begin
    conv2d_0: conv2d generic map (
        kernelSize => 5,
        imageWidth => 224 + 4
    ) port map (
        clk => clk,
        rst_n => rst_n,

        srcData => srcData,
        srcValid=> srcValid,
        srcReady=> srcReady,
        
        dstData => dstData,
        dstValid => dstValid,
        dstReady => dstReady,
        
        start   => start,
        ready   => ready,
        idle    => idle,
        done    => done
    );
end Behavioral;
