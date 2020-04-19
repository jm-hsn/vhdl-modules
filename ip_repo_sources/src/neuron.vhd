library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.myPackage.ALL;

entity neuron is
    Port (
        inputs : in dataVector;
        weights : in dataVector;
        bias : in dataType;
        start : in std_logic;
        finished : out std_logic;
        clk : in std_logic;
        outp : out dataType);
end neuron;

architecture Behavioral of neuron is 

component mac is
 port ( 
   inputs : in dataVector;
   weights : in dataVector;
   bias : in dataType;
   outp : out dataType;
   clk : in std_logic);
end component;

component relu is
 port ( 
   inp : in dataType;
   clk : in std_logic;
   outp : out dataType);
end component;

signal var1 : dataType;

signal macFinished: std_logic;

begin
mac1: mac port map (
    inputs => inputs,
    weights => weights,
    bias => bias,
    outp => var1,
    clk => clk
);

relu1: relu port map (
    inp => var1,
    clk => clk,
    outp => outp
);

timing : process(clk)
begin
    if(rising_edge(clk)) then
        macFinished <= start;
        finished <= macFinished;
    end if;
end process;

end Behavioral;
