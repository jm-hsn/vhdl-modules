library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.math_real.all;

package myPackage is
    
    type register_file is array(integer range <>) of std_logic_vector(31 downto 0);
    
    constant moduleCount : integer := 4;
    constant moduleIds : register_file(0 to moduleCount-1) :=(
        0 => x"2cb31e7c", --dummyBig
        1 => x"f218e0a2", --dummy
        2 => x"9323eb24", --f11
        3 => x"4cd2e19c"  --conv2d_5x5
    );
    
end myPackage;

package body myPackage is

end myPackage;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.myPackage.ALL;

entity globals is
--Port ( );
end globals;

architecture Behavioral of globals is

begin


end Behavioral;
