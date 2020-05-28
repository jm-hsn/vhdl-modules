
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
           ready: out std_logic;
           idle : out std_logic := '0';
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
        kernelValues: in register_file(0 to N*N-1);
        inputValues: in register_file(0 to N*N-1);
        outputValue: out std_logic_vector(31 downto 0)
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
    
    signal kernelOutput : std_logic_vector(busWidth-1 downto 0);
    signal inputBuffer : register_file(0 to regDepth-1);
    signal kernelValues : register_file(0 to kernelSize*kernelSize-1);
    signal dataIndex : integer range 0 to wordCount;
    
    signal working : std_logic := '0';
    signal dstStalled_s : std_logic := '0';
    signal dstValid_s : std_logic := '0';
    signal kernelComplete : std_logic := '0';
    
begin
    kernel_5x5 : kernel_NxN port map (
        kernelValues => kernelValues,
        inputValues => buffer_to_activations(inputBuffer),
        outputValue => kernelOutput
    );
    dstData <= kernelOutput;
    shiftInPixels: shiftIn port map (
        clk         => clk,
        ce          => dstValid_s,
        sync_reset  => working,
        dataIn      => srcData,
        dataOut     => inputBuffer,
        dataIndex    => dataIndex
    );
    
    setKernel : process(rst_n, clk) begin
        if rst_n = '0' then
            kernelComplete <= '0';
        elsif rising_edge(clk) then
            kernelValues <= kernelValues;
            if dataIndex < kernelSize * kernelSize then
                kernelValues(dataIndex) <= srcData;
                kernelComplete <= '0';
            else
                kernelComplete <= '1';
            end if;        
        end if;
    end process;
    
    dataPathStall : process(rst_n, clk)
    
    begin
        if rst_n = '0' then
            dstStalled_s <= '0';
        elsif rising_edge(clk) then
            if working = '1' and srcValid = '1' and dstReady = '0' then
                dstStalled_s <= '1';
            elsif dstStalled_s = '1' and working = '1' and dstReady = '1' then
                dstStalled_s <= '0';
            end if;
        end if;
    end process;
    
    dstValid_s <= working and dstReady and (srcValid or dstStalled_s) and kernelComplete;
    dstValid <= dstValid_s;
    
    srcRdy : process(dataIndex, working, dstReady, srcValid, start) begin
        if (dataIndex = wordCount - 1 and srcValid = '1') or dataIndex = wordCount then
            srcReady <= '0';
        else
            srcReady <= working and dstReady and not dstStalled_s and start;
        end if;
    end process;
    
    reset : process(rst_n, clk)
    begin
        if rst_n = '0' then
            working <= '0';
            done <= '0';
        elsif rising_edge(clk) then
            done <= '0';
            working <= '0';
           
            if dataIndex = wordCount - 1 and dstValid_s = '1' then
                done <= '1';
                working <= '1';
            elsif dataIndex = wordCount then
                working <= '0';
            elsif start = '1' then
                working <= '1';
            end if;
        end if;
    end process;
    
    idle <= rst_n and not working;
    ready <= rst_n;
    
    

end Behavioral;
