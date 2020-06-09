
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.myPackage.ALL;


entity conv2d is
    generic(
        busWidth : integer := 32;
        kernelSize : integer;
        imageWidth : integer);
    Port ( clk : in STD_LOGIC;
           rst_n : in std_logic;
           start : in STD_LOGIC;
           done : out std_logic := '0';
           
           srcData : in STD_LOGIC_VECTOR (busWidth-1 downto 0);
           srcValid : in std_logic;
           srcReady : out std_logic;
           
           dstData : out STD_LOGIC_VECTOR (busWidth-1 downto 0);
           dstValid : out std_logic;
           dstReady : in std_logic);
end conv2d;

architecture Behavioral of conv2d is
    constant regDepth : integer := ((kernelSize-1) * imageWidth + kernelSize);
    constant wordCount : integer := kernelSize*kernelSize + imageWidth*imageWidth;
    component shiftIn is
        generic(
            busWidth : integer := busWidth;
            regDepth : integer := regDepth;
            maxCount : integer := imageWidth*imageWidth);
        Port ( clk : in STD_LOGIC;
               ce : in std_logic;
               sync_reset : in STD_LOGIC;
               dataIn : in std_logic_vector(busWidth-1 downto 0);
               dataOut : out register_file(0 to regDepth-1);
               finished : out STD_LOGIC;
               dataIndex : out integer range 0 to maxCount);
    end component;
    
    component kernel_NxN is
    Generic(
        N: integer := kernelSize
    );
    Port (
        clk: in std_logic;
        rst_n: in std_logic;
        kernelValues: in register_file(0 to N*N-1);
        inputValues: in register_file(0 to N*N-1);
        inputValid : in STD_LOGIC;
        inputReady : out std_logic := '0';
        outputData : out STD_LOGIC_VECTOR (31 downto 0);
        outputValid : out std_logic;
        outputReady : in std_logic
    );
    end component;
    
    function buffer_to_activations(inp : in register_file(0 to regDepth-1)) return register_file is
        variable ret : register_file(0 to kernelSize*kernelSize-1);
    begin
        for x in integer range 0 to kernelSize - 1 loop
            for y in integer range 0 to kernelSize - 1 loop
                ret(x + y * kernelSize) := inp(imageWidth*(kernelSize-1-y) + (kernelSize-1-x));
            end loop;
        end loop;
        return ret;
    end function;
    
    signal inputBuffer : register_file(0 to regDepth-1);
    signal kernelValues : register_file(0 to kernelSize*kernelSize-1);
    signal dataIndex : integer range 0 to wordCount;
    signal dataIndexOutput : integer range 0 to imageWidth*imageWidth-1;
    
    signal working : std_logic := '0';
    signal dstStalled_s : std_logic := '0';
    signal dstValid_s : std_logic := '0';
    signal kernelValuesComplete : std_logic := '0';
    
    signal kernelInputValid_s : std_logic;
    signal kernelInputReady_s : std_logic;
    
begin
    kernel_5x5 : kernel_NxN port map (
        clk => clk,
        rst_n => rst_n,
        
        kernelValues => kernelValues,
        inputValues => buffer_to_activations(inputBuffer),
        
        inputValid => kernelInputValid_s,
        inputReady => kernelInputReady_s,
        
        outputData => dstData,
        outputReady => dstReady,
        outputValid => dstValid_s
    );

    shiftInPixels: shiftIn port map (
        clk         => clk,
        ce          => dstValid_s,
        sync_reset  => working,
        dataIn      => srcData,
        dataOut     => inputBuffer,
        dataIndex    => open
    );
    
    setKernel : process(rst_n, clk) begin
        if rst_n = '0' then
            kernelValuesComplete <= '0';
        elsif rising_edge(clk) then
            kernelValues <= kernelValues;
            if dataIndex < kernelSize * kernelSize then
                kernelValues(dataIndex) <= srcData;
                kernelValuesComplete <= '0';
            else
                kernelValuesComplete <= '1';
            end if;        
        end if;
    end process;
    
    dstValid <= dstValid_s;
    
    dataPathStall : process(rst_n, clk) begin
        if rst_n = '0' then
            dstStalled_s <= '0';
        elsif rising_edge(clk) then
            if working = '1' and srcValid = '1' and kernelInputReady_s = '0' then
                dstStalled_s <= '1';
            elsif dstStalled_s = '1' and working = '1' and kernelInputReady_s = '1' then
                dstStalled_s <= '0';
            end if;
        end if;
    end process;
    
    kernelInputValid_s <= working and kernelInputReady_s and (srcValid or dstStalled_s) and kernelValuesComplete;
 
    srcRdy : process(dataIndex, working, kernelInputReady_s, srcValid, start) begin
        if (dataIndex = wordCount - 1 and srcValid = '1') or dataIndex = wordCount then
            srcReady <= '0';
        else
            srcReady <= working and kernelInputReady_s and not dstStalled_s and start;
        end if;
    end process;
    
    dataIndexCounter : process(clk, rst_n)
    begin
        if(rst_n = '0') then
            dataIndex <= 0;
        elsif(rising_edge(clk)) then
            if(start = '0') then
                dataIndex <= 0;
            elsif(srcValid = '1') then
                dataIndex <= dataIndex + 1;
            else
                dataIndex <= dataIndex;
            end if;
        end if;
    end process;
    
    dataIndexOutputCounter : process(clk, rst_n) begin
        if(rst_n = '0') then
            dataIndexOutput <= 0;
            done <= '0';
        elsif(rising_edge(clk)) then
            done <= '0';
            if(start = '0') then
                dataIndexOutput <= 0;
            elsif dataIndexOutput = imageWidth*imageWidth - 1 and dstValid_s = '1' then
                dataIndexOutput <= 0;
                done <= '1';
            elsif dstValid_s = '1' then
                dataIndexOutput <= dataIndexOutput + 1;
            else
                dataIndexOutput <= dataIndexOutput;
            end if;
        end if;
    end process;
    
    reset : process(rst_n, clk)
    begin
        if rst_n = '0' then
            working <= '0';
        elsif rising_edge(clk) then
            working <= '0';
            if dataIndex = wordCount then
                working <= '0';
            elsif start = '1' then
                working <= '1';
            end if;
        end if;
    end process;
   
    

end Behavioral;
