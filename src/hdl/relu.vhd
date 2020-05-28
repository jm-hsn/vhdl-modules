

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_arith.all;
use IEEE.math_real.all;
use work.myPackage.ALL;

entity relu is
    Port ( inp : in dataType;
           outp : out dataType;
           clk: in STD_LOGIC );
end relu;

architecture Behavioral of relu is

begin
    calc : process(clk)
    begin
        if(rising_edge(clk)) then
            if(signed(inp) > 0) then
                outp <= inp;
            else
                outp <= (others => '0');
            end if;
            
        end if;
    end process;
end Behavioral;
