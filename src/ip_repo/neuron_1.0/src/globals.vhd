library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.math_real.all;

package myPackage is
    
    constant nNodes : integer := 10;
    constant nBits : integer := 32;
    subtype dataType is std_logic_vector(nBits-1 downto 0);
    subtype dataTypeAdder is std_logic_vector(integer(ceil(log2(real(nBits)))) downto 0);
    type dataVector is array(0 to nNodes-1) of std_logic_vector(nBits-1 downto 0);
end myPackage;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.myPackage.ALL;

entity globals is
--  Port ( );
end globals;

architecture Behavioral of globals is

begin


end Behavioral;
