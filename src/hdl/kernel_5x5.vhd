
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.myPackage.ALL;

entity kernel_NxN is
    Generic(
        N: integer := 5
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
end kernel_NxN;

architecture Behavioral of kernel_NxN is
    component fp_multiply_0 is
      Port ( 
        aclk : in STD_LOGIC;
        aresetn : in STD_LOGIC;
        s_axis_a_tvalid : in STD_LOGIC;
        s_axis_a_tready : out STD_LOGIC;
        s_axis_a_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
        s_axis_a_tlast : in STD_LOGIC;
        s_axis_b_tvalid : in STD_LOGIC;
        s_axis_b_tready : out STD_LOGIC;
        s_axis_b_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
        m_axis_result_tvalid : out STD_LOGIC;
        m_axis_result_tready : in STD_LOGIC;
        m_axis_result_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
        m_axis_result_tlast : out STD_LOGIC
      );
    end component;
    component fp_accumulator_0 is
      Port ( 
        aclk : in STD_LOGIC;
        aresetn : in STD_LOGIC;
        s_axis_a_tvalid : in STD_LOGIC;
        s_axis_a_tready : out STD_LOGIC;
        s_axis_a_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
        s_axis_a_tlast : in STD_LOGIC;
        m_axis_result_tvalid : out STD_LOGIC;
        m_axis_result_tready : in STD_LOGIC;
        m_axis_result_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
        m_axis_result_tlast : out STD_LOGIC
      );
    end component;
    
    signal working : std_logic := '0';
    
    signal index_s : integer range 0 to N*N-1 := 0;
    
    signal macInput_s : std_logic_vector(31 downto 0);
    signal macInputValid_s : std_logic := '0';
    signal macInputReady_s : std_logic := '0';
    signal macInputLast_s  : std_logic := '0';
    
    signal macKernel_s : std_logic_vector(31 downto 0);
    
    signal macOutput_s : std_logic_vector(31 downto 0);
    signal macOutputValid_s : std_logic := '0';
    signal macOutputReady_s : std_logic := '0';
    signal macOutputLast_s  : std_logic := '0';
    
    signal macIntraData_s  : std_logic_vector(31 downto 0);
    signal macIntraValid_s : std_logic;
    signal macIntraReady_s : std_logic;
    signal macIntraLast_s  : std_logic;
begin
    fp_mul_0 : fp_multiply_0 port map (
        aclk => clk,
        aresetn => rst_n,
        s_axis_a_tvalid => macInputValid_s,
        s_axis_a_tready => macInputReady_s,
        s_axis_a_tdata => macInput_s,
        s_axis_a_tlast => macInputLast_s,
        s_axis_b_tvalid => macInputValid_s,
        s_axis_b_tready => open,
        s_axis_b_tdata => macKernel_s,
        m_axis_result_tvalid => macIntraValid_s,
        m_axis_result_tready => macIntraReady_s,
        m_axis_result_tdata => macIntraData_s,
        m_axis_result_tlast => macIntraLast_s
    );
    fp_acc_0 : fp_accumulator_0 port map (
        aclk => clk,
        aresetn => rst_n,
        s_axis_a_tvalid => macIntraValid_s,
        s_axis_a_tready => macIntraReady_s,
        s_axis_a_tdata => macIntraData_s,
        s_axis_a_tlast => macIntraLast_s,
        m_axis_result_tvalid => macOutputValid_s,
        m_axis_result_tready => macOutputReady_s,
        m_axis_result_tdata => macOutput_s,
        m_axis_result_tlast => macOutputLast_s
    );
    counter : process(rst_n, clk)
    begin
        if rst_n = '0' then
            index_s <= 0;
            working <= '0';
        elsif rising_edge(clk) then
            if working = '0' and inputValid = '1' then
                working <= '1';
                index_s <= 0;
            elsif index_s < N*N-1 and working = '1' and macInputValid_s = '1' then
                working <= '1';
                index_s <= index_s + 1;
            elsif index_s = N*N-1 and working = '1' and macInputValid_s = '1' then
                working <= '0';
                index_s <= 0;
            else
                working <= working;
                index_s <= index_s;
            end if;
        end if;
    end process;
    

    macInput_s <= inputValues(index_s);
    macKernel_s <= kernelValues(index_s);
    outputData <= macOutput_s;

    
    controlSignals : process(macOutputLast_s, macInputReady_s, working, index_s, outputReady, macOutputValid_s) begin
        inputReady <= macInputReady_s and not working;
        macInputValid_s <= macInputReady_s and working;
        
        if index_s = N*N-1 then
            macInputLast_s <= '1';
        else
            macInputLast_s <= '0';
        end if;
        
        macOutputReady_s <= outputReady;
        if macOutputLast_s = '1' then
            outputValid <= macOutputValid_s;
        else
            outputValid <= '0';
        end if;
        
    end process;
end Behavioral;
