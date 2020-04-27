

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity ram is
    generic(
        busWidth : integer:=32;
        addrWidth: integer := 8);
    port(
        clk : in std_logic;
        wrEn : in std_logic;
        wrAddr : in std_logic_vector(addrWidth-1 downto 0);
        rdAddr : in std_logic_vector(addrWidth-1 downto 0);
        wrData : in std_logic_vector(busWidth-1 downto 0);
        rdData : out std_logic_vector(busWidth-1 downto 0)
    );
end ram;

architecture Behavioral of ram is
    type ram_t is array(0 to 2**addrWidth) of std_logic_vector(busWidth-1 downto 0);
    signal memory : ram_t;
begin
    process(clk)
    
    begin
        if rising_edge(clk) then
            if wrEn = '1' then
                memory(to_integer(unsigned(wrAddr))) <= wrData;
            end if;
            rdData <= memory(to_integer(unsigned(rdAddr)));
        end if;
    end process;

end Behavioral;
