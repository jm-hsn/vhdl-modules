library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.math_real.all;

package myPackage is
    
    constant nNodes : integer := 10;
    constant nBits : integer := 32;
    subtype dataType is std_logic_vector(nBits-1 downto 0);
    type dataVector is array(nNodes-1 downto 0) of std_logic_vector(nBits-1 downto 0);
    function to_dataVector(x : in std_logic_vector(nBits*nNodes-1 downto 0)) return dataVector;
    
end myPackage;

package body myPackage is
    function to_dataVector(x : in std_logic_vector(nBits*nNodes-1 downto 0)) return dataVector is
    variable ret : dataVector;
    begin
        for i in integer range 0 to (x'length/nBits) - 1 loop
            ret(i) := x(i * nBits + nBits - 1 downto i * nBits);
        end loop;
        return ret;
    end function;

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
