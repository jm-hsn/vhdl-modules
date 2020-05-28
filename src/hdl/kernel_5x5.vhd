
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.myPackage.ALL;
use work.float32.float_t;
use work.float32.conv_float;
use work.float32.conv_std_logic_vector;
use work.float32."*";
use work.float32."+";

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
        variable sum : float_t;
        variable product : float_t;
    begin
        sum := conv_float(std_logic_vector(to_unsigned(0, 32)));
        for i in integer range 0 to N*N-1 loop
            product := conv_float(kernelValues(i)) * conv_float(inputValues(i));
            sum := sum + product;
        end loop;
        outputValue <= conv_std_logic_vector(sum);
    end process;

end Behavioral;
