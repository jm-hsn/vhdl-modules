library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.myPackage.ALL;

entity parallelize is
    generic(
        busWidth : integer:=8);
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           start : in STD_LOGIC;
           dataIn : in std_logic_vector(busWidth-1 downto 0);
           ready: out std_logic;
           dataOutReset : in std_logic;
           dataOut : out std_logic_vector(busWidth-1 downto 0);
           finished : out STD_LOGIC);
end parallelize;

architecture Behavioral of parallelize is

constant parallelInWidth : integer := (2*nNodes+1) * nBits;
constant parallelOutWidth : integer := nBits;

component shiftIn is
    generic(
        inWidth : integer := busWidth;
        outWidth : integer := parallelInWidth);
    Port ( clk : in STD_LOGIC;
           sync_reset : in STD_LOGIC;
           dataIn : in std_logic_vector(inWidth-1 downto 0);
           dataOut : out std_logic_vector(outWidth-1 downto 0);
           finished : out STD_LOGIC);
end component;
component neuron is
    Port (
        inputs : in dataVector;
        weights : in dataVector;
        bias : in dataType;
        start : in std_logic;
        finished : out std_logic;
        clk : in std_logic;
        outp : out dataType);
end component;
component shiftOut is
    generic(
        inWidth : integer := parallelOutWidth;
        outWidth : integer := busWidth);
    Port ( clk : in STD_LOGIC;
           sync_reset : in STD_LOGIC;
           dataIn : in std_logic_vector(inWidth-1 downto 0);
           dataOut : out std_logic_vector(outWidth-1 downto 0);
           finished : out STD_LOGIC);
end component;

signal dataInStorage : std_logic_vector(parallelInWidth-1 downto 0);
signal dataOutStorage : std_logic_vector(parallelOutWidth-1 downto 0);
signal shiftInFinished : std_logic;

begin

shiftIn1: shiftIn port map (
    clk         => clk,
    sync_reset  => start,
    dataIn      => dataIn,
    dataOut     => dataInStorage,
    finished    => shiftInFinished
);

neuron1: neuron port map (
    inputs  => to_dataVector(dataInStorage(parallelInWidth-1 downto (nNodes+1) * nBits)),
    weights => to_dataVector(dataInStorage((nNodes+1) * nBits-1 downto nBits)),
    bias    => dataInStorage(nBits-1 downto 0),
    clk     => clk,
    outp    => dataOutStorage,
    start   => shiftInFinished,
    finished=> ready
);

shiftOut1 : shiftOut port map (
    clk         => clk,
    sync_reset  => dataOutReset,
    dataIn      => dataOutStorage,
    dataOut     => dataOut,
    finished    => finished
);

end Behavioral;
