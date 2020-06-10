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
    
    component tb_design_1_wrapper is
      port (
        FIFO_READ_0_empty : out STD_LOGIC;
        FIFO_READ_0_rd_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
        FIFO_READ_0_rd_en : in STD_LOGIC;
        FIFO_WRITE_0_full : out STD_LOGIC;
        FIFO_WRITE_0_wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
        FIFO_WRITE_0_wr_en : in STD_LOGIC;
        clk_100MHz : in STD_LOGIC;
        data_count_0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
        errorCode_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
        overflow_0 : out STD_LOGIC;
        overflow_1 : out STD_LOGIC;
        rd_data_count_0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
        reset_rtl_0 : in STD_LOGIC;
        stateOut_0 : out STD_LOGIC_VECTOR ( 3 downto 0 )
      );
    end component;
    
    signal clk : std_logic := '1';
    signal rst : std_logic := '0';

    file inputFile : text;
    file outputTimingsFile : text;
    file outputFile : text;
    
    signal s_inData : std_logic_vector(busWidth-1 downto 0);
    signal inputFull : std_logic := '0';
    signal wrEn : std_logic := '0';
    signal srcAvail: std_logic := '0';
    
    signal s_outData : std_logic_vector(busWidth-1 downto 0);
    signal outputEmpty : std_logic := '0';
    signal rdEn : std_logic := '0';
    signal outputSpace: std_logic := '1';

    signal done: std_logic := '0'; 

begin

    dut : tb_design_1_wrapper port map (
        clk_100MHz => clk,
        reset_rtl_0 => rst,
        
        FIFO_WRITE_0_wr_data => s_inData,
        FIFO_WRITE_0_wr_en => wrEn,
        FIFO_WRITE_0_full => inputFull,
        
        FIFO_READ_0_rd_data => s_outData,
        FIFO_READ_0_empty => outputEmpty,
        FIFO_READ_0_rd_en => rdEn
        
    );

    p_read : process
        variable v_inLine : line;
        variable v_inTime : time;
        variable v_space  : character;
        variable v_inData : std_logic_vector(busWidth-1 downto 0);
        

    begin
        file_open(inputFile, "input.txt", read_mode);
        srcAvail <= '1' after 95 ns;
        while not endfile(inputFile) loop
            wait until rising_edge(clk);
            wrEn <= '0';
            if inputFull = '0' and srcAvail = '1' and rst = '1' then

                readline(inputFile, v_inLine);
                read(v_inLine, v_inTime);
                read(v_inLine, v_space);
                read(v_inLine, v_inData);
                s_inData <= v_inData;
                wrEn <= '1';
                if v_inTime > 10 ns then
                    srcAvail <= '0';
                    srcAvail <= '1' after v_inTime;
                end if;
            end if;
        end loop;
        wait until rising_edge(clk);
        wrEn <= '0';
        file_close(inputFile);
        srcAvail <= '0';
        
        wait;
    end process;
    
    p_write : process
        variable v_outLine : line;
        variable v_outTime : time;
        variable c_space   : character := ' ';
    begin
        file_open(outputFile, "output.txt", write_mode);
        while not done = '1' loop
            if rdEn = '1' and rst = '1' then
                wait until rising_edge(clk);
                write(v_outLine, time'image(now));
                write(v_outLine, c_space);
                write(v_outLine, s_outData);
                writeline(outputFile, v_outLine);
            else
                wait until rising_edge(clk);
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
            rdEn <= '0';
            if outputEmpty = '0' and outputSpace = '1' and rst = '1' then
                readline(outputTimingsFile, v_inLine);
                read(v_inLine, v_inTime);
                rdEn <= '1';
                if v_inTime > 10 ns then
                    outputSpace <= '0';
                    outputSpace <= '1' after v_inTime;
                end if;
            end if;
        end loop;
        done <= '1' after 100 ns;
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
