library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.myPackage.ALL;


entity checksum is
    generic(
        busWidth : integer:=32);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           dataIn : in std_logic_vector(busWidth-1 downto 0);
           output : out std_logic_vector(busWidth-1 downto 0));
end checksum;

architecture Behavioral of checksum is
    signal sum : unsigned(busWidth-1 downto 0);
begin
    main : process(clk, reset)
        
    begin
        if(reset = '0') then
            sum <= (others => '0');
        elsif(rising_edge(clk)) then
            if(enable = '1') then
                sum <= sum + unsigned(dataIn);
            end if;
        end if;
    end process;

    output <= std_logic_vector(sum);
end Behavioral;
