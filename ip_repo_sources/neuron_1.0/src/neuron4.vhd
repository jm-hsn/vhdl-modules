library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.myPackage.ALL;

entity neuron4 is
    Port (
        input0 : in std_logic_vector(nBits-1 downto 0);
        input1 : in std_logic_vector(nBits-1 downto 0);
        input2 : in std_logic_vector(nBits-1 downto 0);
        input3 : in std_logic_vector(nBits-1 downto 0);
        weight0 : in std_logic_vector(nBits-1 downto 0);
        weight1 : in std_logic_vector(nBits-1 downto 0);
        weight2 : in std_logic_vector(nBits-1 downto 0);
        weight3 : in std_logic_vector(nBits-1 downto 0);
        
        bias : in std_logic_vector(nBits-1 downto 0);
        clk : in std_logic;
        outp : out std_logic_vector(nBits-1 downto 0));
end neuron4;

architecture Behavioral of neuron4 is 

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
    inputs(0) => input0,
    inputs(1) => input1,
    inputs(2) => input2,
    inputs(3) => input3,
    weights(0) => weight0,
    weights(1) => weight1,
    weights(2) => weight2,
    weights(3) => weight3,
    
    bias => bias,
    outp => var1
);

sig1: sigmoid port map (
    inp => var1,
    clk => clk,
    outp => outp
);

end Behavioral;
