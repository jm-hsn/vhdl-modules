library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_textio.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity segment is Port (
    num1 : in std_logic_vector(15 downto 0) := x"00e2";
    num2 : in std_logic_vector(15 downto 0) := x"00e2";
    clk: in std_logic;
    anodes: out std_logic_vector(0 to 7);
    cathodes: out std_logic_vector(0 to 7)
);
end segment;

architecture Behavioral of segment is
    
    type inputs is array(7 downto 0) of integer range 0 to 15;
    signal counter: std_logic_vector(18 downto 0);
begin

    process(clk)
        variable tmp1 : integer range 0 to 2**15-1;
        variable tmp2 : integer range 0 to 2**15-1;
        variable data : integer range 0 to 15;
        variable index: integer range 0 to 7;
    begin
        if(rising_edge(clk)) then
            counter <= counter + 1;
        end if;
        index := conv_integer(unsigned(counter(18 downto 16)));
        
        tmp1 := conv_integer(unsigned(num1));
        tmp2 := conv_integer(unsigned(num2));
        anodes <= (others => '1');
        anodes(index) <= '0';
        
        data := 10;
        
        case index is
            when 0 => if(tmp1 / 1000 > 0) then data := tmp1 / 1000 mod 10; end if;
            when 1 => if(tmp1 / 100  > 0) then data := tmp1 / 100  mod 10; end if;
            when 2 => if(tmp1 / 10   > 0) then data := tmp1 / 10   mod 10; end if;
            when 3 => data := tmp1 mod 10;
            when 4 => if(tmp2 / 1000 > 0) then data := tmp2 / 1000 mod 10; end if;
            when 5 => if(tmp2 / 100  > 0) then data := tmp2 / 100  mod 10; end if;
            when 6 => if(tmp2 / 10   > 0) then data := tmp2 / 10   mod 10; end if;
            when 7 => data := tmp2 mod 10;
        end case;
        case data is
            when 0 => cathodes <= "00000011"; -- "0"     
            when 1 => cathodes <= "10011111"; -- "1" 
            when 2 => cathodes <= "00100101"; -- "2" 
            when 3 => cathodes <= "00001101"; -- "3" 
            when 4 => cathodes <= "10011001"; -- "4" 
            when 5 => cathodes <= "01001001"; -- "5" 
            when 6 => cathodes <= "01000001"; -- "6" 
            when 7 => cathodes <= "00011111"; -- "7" 
            when 8 => cathodes <= "00000001"; -- "8"     
            when 9 => cathodes <= "00001001"; -- "9" 
            when others => cathodes <= "11111111"; -- " "
        end case;
    end process;
end Behavioral;
