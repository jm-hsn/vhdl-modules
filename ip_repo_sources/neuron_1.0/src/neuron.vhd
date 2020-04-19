library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.myPackage.ALL;

entity neuron is
    Port (
        inputs : in dataVector;
        weights : in dataVector;
        bias : in dataType;
        clk : in std_logic;
        outp : out dataType);
end neuron;

architecture Behavioral of neuron is 

component mac is
 port ( 
   inputs : in dataVector;
   weights : in dataVector;
   bias : in dataType;
   outp : out dataType);
end component;

component sigmoid is
 port ( 
   inp : in dataType;
   clk : in std_logic;
   outp : out dataType);
end component;

signal var1 : dataType;

begin
mac1: mac port map (
    inputs => inputs,
    weights => weights,
    bias => bias,
    outp => var1
);

sig1: sigmoid port map (
    inp => var1,
    clk => clk,
    outp => outp
);

end Behavioral;
