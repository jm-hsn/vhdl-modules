
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.myPackage.ALL;

entity kernel_NxN is
    Generic(
        N: integer := 5
    );
    Port (
        kernelValues: in register_file(0 to N*N-1);
        inputValues: in register_file(0 to N*N-1);
        outputValue: out std_logic_vector(31 downto 0)
    );
end kernel_NxN;

architecture Behavioral of kernel_NxN is

begin
    calc : process(kernelValues, inputValues)
        variable sum : integer := 0;
    begin
        sum := 0;
        for i in integer range 0 to N*N-1 loop
            sum := sum + to_integer(signed(kernelValues(i)(17 downto 0))) * to_integer(signed(inputValues(i)(24 downto 0)));
        end loop;
        outputValue <= std_logic_vector(to_signed(sum, outputValue'length));
    end process;

end Behavioral;
