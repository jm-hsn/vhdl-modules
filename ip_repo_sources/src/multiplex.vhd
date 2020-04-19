----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.06.2019 18:42:50
-- Design Name: 
-- Module Name: multiplex - Behavioral
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

entity multiplex is
    generic(
        busWidth : integer:=32
        );
    Port ( clk : in STD_LOGIC;
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
           dstReady : in std_logic
    );
end multiplex;

architecture Behavioral of multiplex is

component dummyModule is
    generic(
        busWidth : integer:=32;
        regDepth : integer:=4);
    Port ( clk : in STD_LOGIC;
           rst_n : in STD_LOGIC;
           start : in STD_LOGIC;
           ready: out std_logic;
           idle : out std_logic;
           done : out std_logic;
           
           srcData : in STD_LOGIC_VECTOR (busWidth-1 downto 0);
           srcValid : in std_logic;
           srcReady : out std_logic;
           
           dstData : out STD_LOGIC_VECTOR (busWidth-1 downto 0);
           dstValid : out std_logic;
           dstReady : in std_logic);
end component;

component filter11x11_strm is
port (
    width : IN STD_LOGIC_VECTOR (31 downto 0);
    height : IN STD_LOGIC_VECTOR (31 downto 0);
    filt1 : IN STD_LOGIC_VECTOR (31 downto 0);
    filt2 : IN STD_LOGIC_VECTOR (31 downto 0);
    src_V_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    dst_V_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    src_V_TVALID : IN STD_LOGIC;
    src_V_TREADY : OUT STD_LOGIC;
    dst_V_TVALID : OUT STD_LOGIC;
    dst_V_TREADY : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC);
end component;

component conv2d_5x5_224p is
    generic(
        busWidth : integer := 32;
        kernelSize : integer := 5;
        imageWidth : integer := 224 + 4);
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
end component;

component ram is
    generic(
        busWidth : integer:=busWidth;
        addrWidth: integer);
    port(
        clk : in std_logic;
        wrEn : in std_logic;
        wrAddr : in std_logic_vector(addrWidth-1 downto 0);
        rdAddr : in std_logic_vector(addrWidth-1 downto 0);
        wrData : in std_logic_vector(busWidth-1 downto 0);
        rdData : out std_logic_vector(busWidth-1 downto 0)
    );
end component;

constant ramAddrWidth : integer := 4;
type muxBitVector is array(0 to moduleCount-1) of std_logic;
type muxDataVector is array(0 to moduleCount-1) of std_logic_vector(busWidth-1 downto 0);

type configRam_t is array(integer range <>) of std_logic_vector(busWidth-1 downto 0);

signal imgWidth : std_logic_vector(busWidth-1 downto 0) := std_logic_vector(conv_unsigned(224, 32));
signal imgHeight : std_logic_vector(busWidth-1 downto 0) := std_logic_vector(conv_unsigned(224, 32));

signal h_coeff : configRam_t(0 to 4);
signal v_coeff : configRam_t(0 to 4);

signal h_coeff_rdAddr : std_logic_vector(2 downto 0);
signal h_coeff_rdEn : std_logic;
signal v_coeff_rdAddr : std_logic_vector(2 downto 0);
signal v_coeff_rdEn : std_logic;

signal ram_wrEn   : std_logic;
signal ram_wrAddr : std_logic_vector(ramAddrWidth-1 downto 0);
signal ram_wrData : std_logic_vector(busWidth-1 downto 0);
signal ram_rdAddr : std_logic_vector(ramAddrWidth-1 downto 0);
signal ram_rdData : std_logic_vector(busWidth-1 downto 0);

signal muxSrcData : std_logic_vector(busWidth-1 downto 0);
signal muxSrcValid : std_logic;
signal muxSrcReady : muxBitVector := (others => '1');

signal muxDstData : muxDataVector;
signal muxDstValid : muxBitVector := (others => '0');
signal muxDstReady : std_logic;

signal muxReady : muxBitVector := (others => '1');
signal muxIdle : muxBitVector := (others => '1');
signal muxDone : muxBitVector := (others => '1');

signal muxStart : muxBitVector := (others => '0');



begin
    dummyBig : dummyModule 
    generic map (
        regDepth => 1024
    ) port map (
        clk     => clk,
        rst_n   => rst,
        
        srcData => muxSrcData,
        srcValid=> muxSrcValid,
        srcReady=> muxSrcReady(0),
        
        dstData => muxDstData(0),
        dstValid => muxDstValid(0),
        dstReady => muxDstReady,
        
        start   => muxStart(0),
        ready   => muxReady(0),
        idle    => muxIdle(0),
        done    => muxDone(0)
    );
    
    dummy : dummyModule 
    generic map (
        regDepth => 4
    ) port map (
        clk     => clk,
        rst_n   => rst,
        
        srcData => muxSrcData,
        srcValid=> muxSrcValid,
        srcReady=> muxSrcReady(1),
        
        dstData => muxDstData(1),
        dstValid => muxDstValid(1),
        dstReady => muxDstReady,
        
        start   => muxStart(1),
        ready   => muxReady(1),
        idle    => muxIdle(1),
        done    => muxDone(1)
    );
    f11 : filter11x11_strm port map (
        ap_clk => clk,
        ap_rst_n => rst,
        ap_start => muxStart(2),
        ap_done => muxDone(2),
        ap_ready => muxReady(2),
        ap_idle => muxIdle(2),
        width => imgWidth,
        height => imgHeight,
        
        src_V_TDATA => muxSrcData,
        src_V_TVALID => muxSrcValid,
        src_V_TREADY => muxSrcReady(2),
        
        dst_V_TDATA => muxDstData(2),
        dst_V_TVALID => muxDstValid(2),
        dst_V_TREADY => muxDstReady,
        
        filt1 => x"00000001",
        filt2 => x"00000001"
        
    );
    
    conv2d_5x5 : conv2d_5x5_224p port map (
        clk => clk,
        rst_n => rst,

        srcData => muxSrcData,
        srcValid=> muxSrcValid,
        srcReady=> muxSrcReady(3),
        
        dstData => muxDstData(3),
        dstValid => muxDstValid(3),
        dstReady => muxDstReady,
        
        start   => muxStart(3),
        ready   => muxReady(3),
        idle    => muxIdle(3),
        done    => muxDone(3)
    );
    
    config_ram : ram generic map(
        addrWidth => ramAddrWidth
    ) port map(
        clk => clk,
        wrEn => ram_wrEn,
        wrAddr => ram_wrAddr,
        rdAddr => ram_rdAddr,
        wrData => ram_wrData,
        rdData => ram_rdData
    );
    
    readConfig : process(h_coeff_rdEn)
        variable rdAddr : std_logic_vector(ramAddrWidth-1 downto 0);
    begin
        if h_coeff_rdEn = '1' then
        
        elsif v_coeff_rdEn = '1' then
        
        end if;
    end process;
    
    switching : process(moduleId, muxSrcReady, muxReady, muxDstData, muxDstValid, muxDone, muxIdle, start)
        variable i : integer range 0 to moduleCount-1;
    begin
        i := 0;
        for k in 0 to moduleCount-1 loop
            if moduleIds(k) = moduleId then
                i := k;
            end if;
        end loop;
        
        ready <= muxReady(i);
        dstData <= muxDstData(i);
        done <= muxDone(i);
        idle <= muxIdle(i);
        dstValid <= muxDstValid(i);
        srcReady <= muxSrcReady(i);
        
        muxStart <= (others => '0');
        muxStart(i) <= start;
    end process;
    
    muxSrcValid <= srcValid;
    muxSrcData <= srcData;
    muxDstReady <= dstReady;
    
end Behavioral;
