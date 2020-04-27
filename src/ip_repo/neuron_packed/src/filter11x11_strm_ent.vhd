-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity filter11x11_strm_ent is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    width : IN STD_LOGIC_VECTOR (31 downto 0);
    height : IN STD_LOGIC_VECTOR (31 downto 0);
    filt1 : IN STD_LOGIC_VECTOR (31 downto 0);
    filt2 : IN STD_LOGIC_VECTOR (31 downto 0);
    width_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    width_out_full_n : IN STD_LOGIC;
    width_out_write : OUT STD_LOGIC;
    width_out1_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    width_out1_full_n : IN STD_LOGIC;
    width_out1_write : OUT STD_LOGIC;
    height_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    height_out_full_n : IN STD_LOGIC;
    height_out_write : OUT STD_LOGIC;
    height_out2_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    height_out2_full_n : IN STD_LOGIC;
    height_out2_write : OUT STD_LOGIC;
    filt1_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    filt1_out_full_n : IN STD_LOGIC;
    filt1_out_write : OUT STD_LOGIC;
    filt1_out3_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    filt1_out3_full_n : IN STD_LOGIC;
    filt1_out3_write : OUT STD_LOGIC;
    filt2_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    filt2_out_full_n : IN STD_LOGIC;
    filt2_out_write : OUT STD_LOGIC;
    filt2_out4_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    filt2_out4_full_n : IN STD_LOGIC;
    filt2_out4_write : OUT STD_LOGIC );
end;


architecture behav of filter11x11_strm_ent is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal width_out_blk_n : STD_LOGIC;
    signal width_out1_blk_n : STD_LOGIC;
    signal height_out_blk_n : STD_LOGIC;
    signal height_out2_blk_n : STD_LOGIC;
    signal filt1_out_blk_n : STD_LOGIC;
    signal filt1_out3_blk_n : STD_LOGIC;
    signal filt2_out_blk_n : STD_LOGIC;
    signal filt2_out4_blk_n : STD_LOGIC;
    signal ap_block_state1 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((not(((filt2_out4_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (filt2_out_full_n = ap_const_logic_0) or (filt1_out3_full_n = ap_const_logic_0) or (filt1_out_full_n = ap_const_logic_0) or (height_out2_full_n = ap_const_logic_0) or (height_out_full_n = ap_const_logic_0) or (width_out1_full_n = ap_const_logic_0) or (width_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, width_out_full_n, width_out1_full_n, height_out_full_n, height_out2_full_n, filt1_out_full_n, filt1_out3_full_n, filt2_out_full_n, filt2_out4_full_n)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_block_state1_assign_proc : process(real_start, ap_done_reg, width_out_full_n, width_out1_full_n, height_out_full_n, height_out2_full_n, filt1_out_full_n, filt1_out3_full_n, filt2_out_full_n, filt2_out4_full_n)
    begin
                ap_block_state1 <= ((filt2_out4_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (filt2_out_full_n = ap_const_logic_0) or (filt1_out3_full_n = ap_const_logic_0) or (filt1_out_full_n = ap_const_logic_0) or (height_out2_full_n = ap_const_logic_0) or (height_out_full_n = ap_const_logic_0) or (width_out1_full_n = ap_const_logic_0) or (width_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, width_out_full_n, width_out1_full_n, height_out_full_n, height_out2_full_n, filt1_out_full_n, filt1_out3_full_n, filt2_out_full_n, filt2_out4_full_n)
    begin
        if ((not(((filt2_out4_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (filt2_out_full_n = ap_const_logic_0) or (filt1_out3_full_n = ap_const_logic_0) or (filt1_out_full_n = ap_const_logic_0) or (height_out2_full_n = ap_const_logic_0) or (height_out_full_n = ap_const_logic_0) or (width_out1_full_n = ap_const_logic_0) or (width_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;

    filt1_out3_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, filt1_out3_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            filt1_out3_blk_n <= filt1_out3_full_n;
        else 
            filt1_out3_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    filt1_out3_din <= filt1;

    filt1_out3_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, width_out_full_n, width_out1_full_n, height_out_full_n, height_out2_full_n, filt1_out_full_n, filt1_out3_full_n, filt2_out_full_n, filt2_out4_full_n)
    begin
        if ((not(((filt2_out4_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (filt2_out_full_n = ap_const_logic_0) or (filt1_out3_full_n = ap_const_logic_0) or (filt1_out_full_n = ap_const_logic_0) or (height_out2_full_n = ap_const_logic_0) or (height_out_full_n = ap_const_logic_0) or (width_out1_full_n = ap_const_logic_0) or (width_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            filt1_out3_write <= ap_const_logic_1;
        else 
            filt1_out3_write <= ap_const_logic_0;
        end if; 
    end process;


    filt1_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, filt1_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            filt1_out_blk_n <= filt1_out_full_n;
        else 
            filt1_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    filt1_out_din <= filt1;

    filt1_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, width_out_full_n, width_out1_full_n, height_out_full_n, height_out2_full_n, filt1_out_full_n, filt1_out3_full_n, filt2_out_full_n, filt2_out4_full_n)
    begin
        if ((not(((filt2_out4_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (filt2_out_full_n = ap_const_logic_0) or (filt1_out3_full_n = ap_const_logic_0) or (filt1_out_full_n = ap_const_logic_0) or (height_out2_full_n = ap_const_logic_0) or (height_out_full_n = ap_const_logic_0) or (width_out1_full_n = ap_const_logic_0) or (width_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            filt1_out_write <= ap_const_logic_1;
        else 
            filt1_out_write <= ap_const_logic_0;
        end if; 
    end process;


    filt2_out4_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, filt2_out4_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            filt2_out4_blk_n <= filt2_out4_full_n;
        else 
            filt2_out4_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    filt2_out4_din <= filt2;

    filt2_out4_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, width_out_full_n, width_out1_full_n, height_out_full_n, height_out2_full_n, filt1_out_full_n, filt1_out3_full_n, filt2_out_full_n, filt2_out4_full_n)
    begin
        if ((not(((filt2_out4_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (filt2_out_full_n = ap_const_logic_0) or (filt1_out3_full_n = ap_const_logic_0) or (filt1_out_full_n = ap_const_logic_0) or (height_out2_full_n = ap_const_logic_0) or (height_out_full_n = ap_const_logic_0) or (width_out1_full_n = ap_const_logic_0) or (width_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            filt2_out4_write <= ap_const_logic_1;
        else 
            filt2_out4_write <= ap_const_logic_0;
        end if; 
    end process;


    filt2_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, filt2_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            filt2_out_blk_n <= filt2_out_full_n;
        else 
            filt2_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    filt2_out_din <= filt2;

    filt2_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, width_out_full_n, width_out1_full_n, height_out_full_n, height_out2_full_n, filt1_out_full_n, filt1_out3_full_n, filt2_out_full_n, filt2_out4_full_n)
    begin
        if ((not(((filt2_out4_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (filt2_out_full_n = ap_const_logic_0) or (filt1_out3_full_n = ap_const_logic_0) or (filt1_out_full_n = ap_const_logic_0) or (height_out2_full_n = ap_const_logic_0) or (height_out_full_n = ap_const_logic_0) or (width_out1_full_n = ap_const_logic_0) or (width_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            filt2_out_write <= ap_const_logic_1;
        else 
            filt2_out_write <= ap_const_logic_0;
        end if; 
    end process;


    height_out2_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, height_out2_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            height_out2_blk_n <= height_out2_full_n;
        else 
            height_out2_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    height_out2_din <= height;

    height_out2_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, width_out_full_n, width_out1_full_n, height_out_full_n, height_out2_full_n, filt1_out_full_n, filt1_out3_full_n, filt2_out_full_n, filt2_out4_full_n)
    begin
        if ((not(((filt2_out4_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (filt2_out_full_n = ap_const_logic_0) or (filt1_out3_full_n = ap_const_logic_0) or (filt1_out_full_n = ap_const_logic_0) or (height_out2_full_n = ap_const_logic_0) or (height_out_full_n = ap_const_logic_0) or (width_out1_full_n = ap_const_logic_0) or (width_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            height_out2_write <= ap_const_logic_1;
        else 
            height_out2_write <= ap_const_logic_0;
        end if; 
    end process;


    height_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, height_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            height_out_blk_n <= height_out_full_n;
        else 
            height_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    height_out_din <= height;

    height_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, width_out_full_n, width_out1_full_n, height_out_full_n, height_out2_full_n, filt1_out_full_n, filt1_out3_full_n, filt2_out_full_n, filt2_out4_full_n)
    begin
        if ((not(((filt2_out4_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (filt2_out_full_n = ap_const_logic_0) or (filt1_out3_full_n = ap_const_logic_0) or (filt1_out_full_n = ap_const_logic_0) or (height_out2_full_n = ap_const_logic_0) or (height_out_full_n = ap_const_logic_0) or (width_out1_full_n = ap_const_logic_0) or (width_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            height_out_write <= ap_const_logic_1;
        else 
            height_out_write <= ap_const_logic_0;
        end if; 
    end process;


    internal_ap_ready_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, width_out_full_n, width_out1_full_n, height_out_full_n, height_out2_full_n, filt1_out_full_n, filt1_out3_full_n, filt2_out_full_n, filt2_out4_full_n)
    begin
        if ((not(((filt2_out4_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (filt2_out_full_n = ap_const_logic_0) or (filt1_out3_full_n = ap_const_logic_0) or (filt1_out_full_n = ap_const_logic_0) or (height_out2_full_n = ap_const_logic_0) or (height_out_full_n = ap_const_logic_0) or (width_out1_full_n = ap_const_logic_0) or (width_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_full_n = ap_const_logic_0) and (start_once_reg = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;


    width_out1_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, width_out1_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            width_out1_blk_n <= width_out1_full_n;
        else 
            width_out1_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    width_out1_din <= width;

    width_out1_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, width_out_full_n, width_out1_full_n, height_out_full_n, height_out2_full_n, filt1_out_full_n, filt1_out3_full_n, filt2_out_full_n, filt2_out4_full_n)
    begin
        if ((not(((filt2_out4_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (filt2_out_full_n = ap_const_logic_0) or (filt1_out3_full_n = ap_const_logic_0) or (filt1_out_full_n = ap_const_logic_0) or (height_out2_full_n = ap_const_logic_0) or (height_out_full_n = ap_const_logic_0) or (width_out1_full_n = ap_const_logic_0) or (width_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            width_out1_write <= ap_const_logic_1;
        else 
            width_out1_write <= ap_const_logic_0;
        end if; 
    end process;


    width_out_blk_n_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, width_out_full_n)
    begin
        if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            width_out_blk_n <= width_out_full_n;
        else 
            width_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    width_out_din <= width;

    width_out_write_assign_proc : process(real_start, ap_done_reg, ap_CS_fsm_state1, width_out_full_n, width_out1_full_n, height_out_full_n, height_out2_full_n, filt1_out_full_n, filt1_out3_full_n, filt2_out_full_n, filt2_out4_full_n)
    begin
        if ((not(((filt2_out4_full_n = ap_const_logic_0) or (real_start = ap_const_logic_0) or (filt2_out_full_n = ap_const_logic_0) or (filt1_out3_full_n = ap_const_logic_0) or (filt1_out_full_n = ap_const_logic_0) or (height_out2_full_n = ap_const_logic_0) or (height_out_full_n = ap_const_logic_0) or (width_out1_full_n = ap_const_logic_0) or (width_out_full_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            width_out_write <= ap_const_logic_1;
        else 
            width_out_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;