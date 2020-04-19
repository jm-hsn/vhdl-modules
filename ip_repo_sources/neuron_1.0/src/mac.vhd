library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_textio.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.myPackage.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mac is
    Port ( inputs : in dataVector;
           weights : in dataVector;
           bias : in dataType;
           outp : out dataType;
           clk: in STD_LOGIC);
end mac;

architecture Behavioral of mac is

begin

MAIN: process(clk)
    variable sum : dataType;
begin
    if rising_edge(clk) then
        sum :=  bias;
        for i in 0 to nNodes-1 loop
            sum := sum + conv_integer(inputs(i)) * conv_integer(weights(i));
        end loop;
        
        outp <= sum;
    end if;
end process;

end Behavioral;
