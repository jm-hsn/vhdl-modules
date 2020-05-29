library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use STD.textio.all;
use ieee.std_logic_textio.all;

entity tb_module is
        
end tb_module;

architecture Behavioral of tb_module is

constant busWidth : integer:=32;

    component packaging is
    generic(
        busWidth : integer:=32);
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           
           inputStream : in STD_LOGIC_VECTOR (busWidth-1 downto 0);
           inpRdEn : out std_logic;
           inputEmpty : in std_logic;
           
           outData : out STD_LOGIC_VECTOR (busWidth-1 downto 0);
           outWrEn : out std_logic;
           outputFull : in std_logic;
           
           errorCode : out STD_LOGIC_VECTOR(3 DOWNTO 0);
           stateOut : out STD_LOGIC_VECTOR(3 downto 0));
    end component;
    
    signal clk : std_logic := '1';
    signal rst : std_logic := '0';
    
    
    

    file inputFile : text;
    file outputTimingsFile : text;
    file outputFile : text;
    
    signal s_inData : std_logic_vector(busWidth-1 downto 0);
    
    signal srcAvail: std_logic := '1';
    signal inputEmpty : std_logic := '0';
    signal rdEn : std_logic;
    
    signal s_outData : std_logic_vector(busWidth-1 downto 0);
    signal outputFull : std_logic := '0';
    signal wrEn : std_logic;
    

    signal done: std_logic := '0'; 

    signal index : integer := 0;
    signal seek : integer := 0;
    signal eth : integer range 0 to 7 := 0;

begin

    dut : packaging port map (
        clk => clk,
        rst => rst,
        
        inputStream => s_inData,
        inputEmpty => inputEmpty,
        inpRdEn => rdEn,
        
        outData => s_outData,
        outWrEn => wrEn,
        outputFull => outputFull
        
    );

    p_read : process
        variable v_inLine : line;
        variable v_inTime : time;
        variable v_space  : character;
        variable v_inData : std_logic_vector(busWidth-1 downto 0);
        

    begin
        file_open(inputFile, "input.txt", read_mode);
        
        while not endfile(inputFile) loop
            wait until rising_edge(clk);
            if rdEn = '1' then

                assert srcAvail = '1'
                report "input underflow"
                severity warning;
            
                readline(inputFile, v_inLine);
                read(v_inLine, v_inTime);
                read(v_inLine, v_space);
                read(v_inLine, v_inData);
                s_inData <= v_inData;
                
                if v_inTime > 10 ns then
                    srcAvail <= '0';
                    srcAvail <= '1' after v_inTime;
                end if;
            end if;
        end loop;
        wait until rising_edge(clk);
        file_close(inputFile);
        srcAvail <= '0';
        done <= '1' after 100 ns;
        wait;
    end process;
    
    inputEmpty <= not srcAvail or not rst;

    p_write : process
        variable v_outLine : line;
        variable v_outTime : time;
        variable c_space   : character := ' ';
    begin
        file_open(outputFile, "output.txt", write_mode);
        while not done = '1' loop
            wait until rising_edge(clk);
            if wrEn = '1' then
                assert outputFull = '0'
                report "output overflow"
                severity warning;
                write(v_outLine, time'image(now));
                write(v_outLine, c_space);
                write(v_outLine, s_outData);
                writeline(outputFile, v_outLine);
            end if;
        end loop;
        file_close(outputFile);
        wait;
    end process;
    
    p_throttleOut : process
        variable v_inLine : line;
        variable v_inTime : time;
    begin
        file_open(outputTimingsFile, "outputTimings.txt", read_mode);
        while not endfile(outputTimingsFile) and done = '0' loop
            wait until rising_edge(clk);
            
            if wrEn = '1' then
                readline(outputTimingsFile, v_inLine);
                read(v_inLine, v_inTime);
                
                if v_inTime > 10 ns then
                    outputFull <= '1';
                    outputFull <= '0' after v_inTime;
                end if;
            end if;
        end loop;
        file_close(outputTimingsFile);
        wait;
    end process;

    clkGen : process begin
        wait for 5ns;
        clk <= not clk;
    end process;
   
    
    rstGen : process begin
        rst <= '0';
        wait for 15 ns;
        rst <= '1';
        wait until rising_edge(done);
        wait until rising_edge(clk);
        assert false
        report "simulation ended"
        severity failure;
    end process;

end Behavioral;
