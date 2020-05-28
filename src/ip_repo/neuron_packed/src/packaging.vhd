----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.06.2019 20:10:59
-- Design Name: 
-- Module Name: packaging - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.myPackage.ALL;

entity packaging is
    generic(
        busWidth : integer:=32);
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           inputStream : in STD_LOGIC_VECTOR (busWidth-1 downto 0);
           inpRdEn : out std_logic;
           --inputDataCount : in STD_LOGIC_VECTOR (15 downto 0);
           inputEmpty : in std_logic;
           
           outData : out STD_LOGIC_VECTOR (busWidth-1 downto 0);
           outWrEn : out std_logic;
           outputFull : in std_logic;
           errorCode : out STD_LOGIC_VECTOR(3 DOWNTO 0);
           stateOut : out STD_LOGIC_VECTOR(3 downto 0));
end packaging;

architecture Behavioral of packaging is

    constant PREAMBLE : std_logic_vector(31 downto 0) := x"E1E4C312";
    type state_t is (
        waitPreamble, 
        checkPreamble,
        waitDatasetId,
        getDatasetId,
        waitModuleId,
        checkModuleId, 
        writeHeader,
        waitProcessing,
        waitChecksum,
        readChecksum,
        writeChecksum);
    

    component multiplex is
        generic(
            busWidth : integer:=busWidth);
        Port (
           clk : in STD_LOGIC;
           start : in STD_LOGIC;
           ready: out std_logic;
           rst : in STD_LOGIC;
           done : out STD_LOGIC;
           idle : out STD_LOGIC;
           
           moduleId : in STD_LOGIC_VECTOR (31 downto 0);
           
           srcData : in STD_LOGIC_VECTOR (busWidth-1 downto 0);
           srcValid : in std_logic;
           srcReady : out std_logic;
           
           dstData : out STD_LOGIC_VECTOR (busWidth-1 downto 0);
           dstValid : out std_logic;
           dstReady : in std_logic);
    end component;
    
    component checksum is
        Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           dataIn : in STD_LOGIC_VECTOR (busWidth-1 downto 0);
           output : out STD_LOGIC_VECTOR (busWidth-1 downto 0));
    end component;
    
    signal state : state_t;
    signal moduleId : STD_LOGIC_VECTOR (31 downto 0);
    signal datasetId : STD_LOGIC_VECTOR (31 downto 0);
    signal inputReadReady : std_logic;
    signal outputWriteEnable_s : std_logic;
    signal outputStream_s : STD_LOGIC_VECTOR (busWidth-1 downto 0);
    signal inputReadEnable : std_logic;
    signal outputWriteEnable : std_logic;
    signal outputStream : STD_LOGIC_VECTOR (busWidth-1 downto 0);
    signal errorCode_s : std_logic_vector(3 downto 0);
    
    signal outHeaderCounter : integer range 0 to 3;
    
    signal muxSrcData : STD_LOGIC_VECTOR (busWidth-1 downto 0);
    signal muxSrcValid : std_logic;
    signal muxSrcReady : std_logic;
    
    signal muxDstData : STD_LOGIC_VECTOR (busWidth-1 downto 0);
    signal muxDstValid : std_logic;
    signal muxDstReady : std_logic;
    
    signal muxStart  : std_logic;
    signal muxReady  : std_logic;
    signal muxDone   : std_logic;
    signal muxIdle   : std_logic;
    
    signal muxControlsFIFO : std_logic;
    
    signal csReset : std_logic;
    signal csOutReset : std_logic;
    signal csSum : STD_LOGIC_VECTOR (busWidth-1 downto 0);
    
    signal csOutSum : STD_LOGIC_VECTOR (busWidth-1 downto 0);
    
begin

    mux1 : multiplex port map (
        clk => clk,
        rst => rst,
        start => muxStart,
        ready  => muxReady,
        done => muxDone,
        idle => muxIdle,
        
        moduleId => moduleId,
        
        srcData     => muxSrcData,
        srcValid    => muxSrcValid,
        srcReady    => muxSrcReady,
        
        dstData     => muxDstData,
        dstValid    => muxDstValid,
        dstReady    => muxDstReady
        
    );
    checksum1 : checksum port map (
        clk => clk,
        reset => csReset,
        enable => inputReadEnable,
        dataIn => inputStream,
        output => csSum
    );
    checksum2 : checksum port map (
        clk => clk,
        reset => csOutReset,
        enable => outputWriteEnable,
        dataIn => outputStream,
        output => csOutSum
    );

    sm : process(rst, clk)
    
    begin
        if(rst = '0') then
            state <= waitPreamble;
            inputReadReady <= '0';
            csReset <= '0';
            csOutReset <= '0';
            outHeaderCounter <= 3;
            muxStart <= '0';
            muxControlsFIFO <= '0';
        elsif(rising_edge(clk)) then
            csReset <= '1';
            csOutReset <= '1';
            errorCode_s <= x"0";
            muxStart <= '0';
            muxControlsFIFO <= '0';

            outputWriteEnable_s <= '0';
            outHeaderCounter <= 0;
            
            outputStream_s <= (others=>'0');
        
            case state is
                -- wait for header
                when waitPreamble =>
                    csReset <= '0';
                    inputReadReady <= '1';
                    if(inputEmpty = '1' or outputFull = '1') then
                        state <= waitPreamble;
                    else
                        state <= checkPreamble;
                    end if;
                    
                -- is preamble correct?
                when checkPreamble =>
                    if(inputStream = PREAMBLE and inputEmpty = '0') then
                        state <= getDatasetId;
                    elsif inputStream = PREAMBLE then
                        state <= waitDatasetId;
                    else
                        state <= waitPreamble;
                        errorCode_s <= x"1";
                    end if;
                when waitDatasetId =>
                    if inputEmpty = '1' then
                        errorCode_s <= x"F";
                        state <= waitDatasetId;
                    else
                        state <= getDatasetId;
                    end if;
                    
                when getDatasetId =>
                    datasetId <= inputStream;
                    if inputEmpty = '1' then
                        state <= waitModuleId;
                    else
                        state <= checkModuleId;
                    end if;
                
                when waitModuleId =>
                    if inputEmpty = '1' then
                        errorCode_s <= x"E";
                        state <= waitModuleId;
                    else
                        state <= checkModuleId;
                    end if;
                -- is moduleId known?
                when checkModuleId =>
                    inputReadReady <= '0';
                    if outputFull = '1' then
                        state <= checkModuleId;
                        errorCode_s <= x"D";
                    elsif(inputStream = x"2cb31e7c" or inputStream = x"f218e0a2" or inputStream = x"9323eb24") then
                        state <= writeHeader;
                        moduleId <= inputStream;
                        outputStream_s <= PREAMBLE;
                        csOutReset <= '0';
                        outputWriteEnable_s <= '1';
                        
                    else
                        state <= waitPreamble;
                        errorCode_s <= x"2";
                    end if;
                    
                -- wait for data
                when writeHeader =>
                    if outputFull = '1' then
                        state <= writeHeader;
                        errorCode_s <= x"C";
                        outHeaderCounter <= outHeaderCounter;
                    elsif(outHeaderCounter < 2) then
                        outputWriteEnable_s <= '1';
                        case outHeaderCounter is
                            when 0 =>  outputStream_s <= datasetId;
                            when others => outputStream_s <= moduleId;
                        end case;
                        outHeaderCounter <= outHeaderCounter + 1;
                        state <= writeHeader;
                    else
                        state <= waitProcessing;
                        muxStart <= '1';
                        muxControlsFIFO <= '1';
                    end if;

                when waitProcessing =>
                    if(muxDone = '0') then
                        state <= waitProcessing;
                        muxControlsFIFO <= '1';
                        errorCode_s <= x"B";
                        muxStart <= '1';
                    else
                        state <= waitChecksum;
                        inputReadReady <= '1';
                    end if;
                
                when waitChecksum =>
                    if inputEmpty = '1' then
                        errorCode_s <= x"A";
                        state <= waitChecksum;
                        inputReadReady <= '1';
                    else
                        state <= readChecksum;
                        inputReadReady <= '0';
                    end if;
                when readChecksum =>
                    state <= writeChecksum;
                    
                when writeChecksum =>
                    if outputFull = '0' then
                        outputWriteEnable_s <= '1';
                        state <= waitPreamble;
                    else
                        state <= writeChecksum;
                    end if;
                    
                    if(unsigned(csSum) = 0) then
                        outputStream_s <= 0 - unsigned(csOutSum);
                    else
                        errorCode_s <= x"3";
                        outputStream_s <= 1 - unsigned(csOutSum);
                    end if;
                
                when others =>
                    state <= waitPreamble;
                    inputReadReady <= '0';
            end case;
            
            if signed(errorCode_s) > 0 and outputFull = '0' then
                outputWriteEnable_s <= '1';
                outputStream_s <= x"E330300" & errorCode_s;
            end if;
            muxSrcValid <= muxSrcReady and not inputEmpty;
            
        end if;
    end process;
    
    muxCtrl : process(muxControlsFIFO, outputWriteEnable_s, inputReadReady, outputStream_s, muxDstValid, muxSrcReady, muxDstData, inputStream, outputFull, inputEmpty)
    
    begin
        if muxControlsFIFO = '0' then
            outputWriteEnable   <= outputWriteEnable_s;
            inputReadEnable     <= inputReadReady and not inputEmpty;
            outputStream        <= outputStream_s;
            
            muxSrcData <= (others => 'U');
            muxDstReady <= '0';
        else
            outputWriteEnable   <= muxDstValid and not outputFull;
            inputReadEnable     <= muxSrcReady and not inputEmpty;
            outputStream        <= muxDstData;
            
            muxSrcData <= inputStream;
            muxDstReady <= not outputFull;
        end if;
        
    end process;
    errorCode <= errorCode_s;
    stateOut <= std_logic_vector(conv_unsigned(state_t'POS(state), 4));
    
    outWrEn <= outputWriteEnable;
    inpRdEn <= inputReadEnable;
    outData <= outputStream;
    
end Behavioral;
