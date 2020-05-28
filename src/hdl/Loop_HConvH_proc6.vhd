-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Loop_HConvH_proc6 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    height_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    height_empty_n : IN STD_LOGIC;
    height_read : OUT STD_LOGIC;
    width_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    width_empty_n : IN STD_LOGIC;
    width_read : OUT STD_LOGIC;
    src_V_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    src_V_TVALID : IN STD_LOGIC;
    src_V_TREADY : OUT STD_LOGIC;
    filt1_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    filt1_empty_n : IN STD_LOGIC;
    filt1_read : OUT STD_LOGIC;
    filt2_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    filt2_empty_n : IN STD_LOGIC;
    filt2_read : OUT STD_LOGIC;
    hconv_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    hconv_V_full_n : IN STD_LOGIC;
    hconv_V_write : OUT STD_LOGIC );
end;


architecture behav of Loop_HConvH_proc6 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv10_9 : STD_LOGIC_VECTOR (9 downto 0) := "0000001001";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal src_V_0_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal src_V_0_vld_in : STD_LOGIC;
    signal src_V_0_vld_out : STD_LOGIC;
    signal src_V_0_ack_in : STD_LOGIC;
    signal src_V_0_ack_out : STD_LOGIC;
    signal src_V_0_payload_A : STD_LOGIC_VECTOR (31 downto 0);
    signal src_V_0_payload_B : STD_LOGIC_VECTOR (31 downto 0);
    signal src_V_0_sel_rd : STD_LOGIC := '0';
    signal src_V_0_sel_wr : STD_LOGIC := '0';
    signal src_V_0_sel : STD_LOGIC;
    signal src_V_0_load_A : STD_LOGIC;
    signal src_V_0_load_B : STD_LOGIC;
    signal src_V_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal src_V_0_state_cmp_full : STD_LOGIC;
    signal height_blk_n : STD_LOGIC;
    signal width_blk_n : STD_LOGIC;
    signal src_V_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal exitcond_flatten_fu_214_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal filt1_blk_n : STD_LOGIC;
    signal filt2_blk_n : STD_LOGIC;
    signal hconv_V_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal tmp_10_i_reg_491 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_10_i_reg_491_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_reg_141 : STD_LOGIC_VECTOR (63 downto 0);
    signal row_0_i_i_reg_152 : STD_LOGIC_VECTOR (9 downto 0);
    signal height_read_reg_421 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal width_read_reg_426 : STD_LOGIC_VECTOR (31 downto 0);
    signal filt1_read_reg_432 : STD_LOGIC_VECTOR (31 downto 0);
    signal filt2_read_reg_437 : STD_LOGIC_VECTOR (31 downto 0);
    signal bound_fu_169_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal bound_reg_442 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal hwin_5_load_reg_447 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal hwin_5_load_reg_447_pp0_iter1_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal hwin_8_load_reg_452 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond_flatten_reg_457 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten_reg_457_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_next_fu_219_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_23_9_i_fu_281_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_23_9_i_reg_466 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_23_i_fu_286_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_23_i_reg_471 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp2_fu_291_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp2_reg_476 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp2_reg_476_pp0_iter1_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp2_reg_476_pp0_iter2_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp3_fu_303_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp3_reg_481 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp3_reg_481_pp0_iter1_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp3_reg_481_pp0_iter2_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp7_fu_309_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp7_reg_486 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp7_reg_486_pp0_iter1_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_10_i_fu_315_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_10_i_reg_491_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal row_fu_326_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp8_fu_336_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp8_reg_500 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp5_fu_345_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp5_reg_505 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal hwin_1_1_i_fu_64 : STD_LOGIC_VECTOR (31 downto 0);
    signal hwin_1_fu_68 : STD_LOGIC_VECTOR (31 downto 0);
    signal hwin_2_fu_72 : STD_LOGIC_VECTOR (31 downto 0);
    signal hwin_3_fu_76 : STD_LOGIC_VECTOR (31 downto 0);
    signal hwin_4_fu_80 : STD_LOGIC_VECTOR (31 downto 0);
    signal hwin_5_fu_84 : STD_LOGIC_VECTOR (31 downto 0);
    signal hwin_6_fu_88 : STD_LOGIC_VECTOR (31 downto 0);
    signal hwin_7_fu_92 : STD_LOGIC_VECTOR (31 downto 0);
    signal hwin_8_fu_96 : STD_LOGIC_VECTOR (31 downto 0);
    signal hwin_9_fu_100 : STD_LOGIC_VECTOR (31 downto 0);
    signal bound_fu_169_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal bound_fu_169_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal row_0_i_cast_i_fu_205_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_4_i_fu_209_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_23_9_i_fu_281_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_23_i_fu_286_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp4_fu_297_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal row_0_i_i_mid2_fu_273_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp9_fu_332_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp6_fu_341_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp1_fu_350_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal bound_fu_169_p00 : STD_LOGIC_VECTOR (63 downto 0);
    signal bound_fu_169_p10 : STD_LOGIC_VECTOR (63 downto 0);


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
                elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                    ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    src_V_0_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                src_V_0_sel_rd <= ap_const_logic_0;
            else
                if (((src_V_0_ack_out = ap_const_logic_1) and (src_V_0_vld_out = ap_const_logic_1))) then 
                                        src_V_0_sel_rd <= not(src_V_0_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    src_V_0_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                src_V_0_sel_wr <= ap_const_logic_0;
            else
                if (((src_V_0_ack_in = ap_const_logic_1) and (src_V_0_vld_in = ap_const_logic_1))) then 
                                        src_V_0_sel_wr <= not(src_V_0_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    src_V_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                src_V_0_state <= ap_const_lv2_0;
            else
                if ((((src_V_0_state = ap_const_lv2_2) and (src_V_0_vld_in = ap_const_logic_0)) or ((src_V_0_state = ap_const_lv2_3) and (src_V_0_vld_in = ap_const_logic_0) and (src_V_0_ack_out = ap_const_logic_1)))) then 
                    src_V_0_state <= ap_const_lv2_2;
                elsif ((((src_V_0_state = ap_const_lv2_1) and (src_V_0_ack_out = ap_const_logic_0)) or ((src_V_0_state = ap_const_lv2_3) and (src_V_0_ack_out = ap_const_logic_0) and (src_V_0_vld_in = ap_const_logic_1)))) then 
                    src_V_0_state <= ap_const_lv2_1;
                elsif (((not(((src_V_0_vld_in = ap_const_logic_0) and (src_V_0_ack_out = ap_const_logic_1))) and not(((src_V_0_ack_out = ap_const_logic_0) and (src_V_0_vld_in = ap_const_logic_1))) and (src_V_0_state = ap_const_lv2_3)) or ((src_V_0_state = ap_const_lv2_1) and (src_V_0_ack_out = ap_const_logic_1)) or ((src_V_0_state = ap_const_lv2_2) and (src_V_0_vld_in = ap_const_logic_1)))) then 
                    src_V_0_state <= ap_const_lv2_3;
                else 
                    src_V_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten_reg_141_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_fu_214_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                indvar_flatten_reg_141 <= indvar_flatten_next_fu_219_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                indvar_flatten_reg_141 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;

    row_0_i_i_reg_152_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_fu_214_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                row_0_i_i_reg_152 <= row_fu_326_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                row_0_i_i_reg_152 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                bound_reg_442 <= bound_fu_169_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                exitcond_flatten_reg_457 <= exitcond_flatten_fu_214_p2;
                exitcond_flatten_reg_457_pp0_iter1_reg <= exitcond_flatten_reg_457;
                hwin_5_load_reg_447 <= hwin_5_fu_84;
                hwin_5_load_reg_447_pp0_iter1_reg <= hwin_5_load_reg_447;
                hwin_8_load_reg_452 <= hwin_8_fu_96;
                tmp2_reg_476_pp0_iter1_reg <= tmp2_reg_476;
                tmp3_reg_481_pp0_iter1_reg <= tmp3_reg_481;
                tmp7_reg_486_pp0_iter1_reg <= tmp7_reg_486;
                tmp_10_i_reg_491_pp0_iter1_reg <= tmp_10_i_reg_491;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (width_empty_n = ap_const_logic_0) or (height_empty_n = ap_const_logic_0) or (filt2_empty_n = ap_const_logic_0) or (filt1_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                filt1_read_reg_432 <= filt1_dout;
                filt2_read_reg_437 <= filt2_dout;
                height_read_reg_421 <= height_dout;
                width_read_reg_426 <= width_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                hwin_1_1_i_fu_64 <= hwin_1_fu_68;
                hwin_1_fu_68 <= hwin_2_fu_72;
                hwin_2_fu_72 <= hwin_3_fu_76;
                hwin_3_fu_76 <= hwin_4_fu_80;
                hwin_4_fu_80 <= hwin_5_fu_84;
                hwin_5_fu_84 <= hwin_6_fu_88;
                hwin_6_fu_88 <= hwin_7_fu_92;
                hwin_7_fu_92 <= hwin_8_fu_96;
                hwin_8_fu_96 <= hwin_9_fu_100;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_fu_214_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                hwin_9_fu_100 <= src_V_0_data_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((src_V_0_load_A = ap_const_logic_1)) then
                src_V_0_payload_A <= src_V_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((src_V_0_load_B = ap_const_logic_1)) then
                src_V_0_payload_B <= src_V_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_fu_214_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp2_reg_476 <= tmp2_fu_291_p2;
                tmp3_reg_481 <= tmp3_fu_303_p2;
                tmp7_reg_486 <= tmp7_fu_309_p2;
                tmp_10_i_reg_491 <= tmp_10_i_fu_315_p2;
                tmp_23_9_i_reg_466 <= tmp_23_9_i_fu_281_p2;
                tmp_23_i_reg_471 <= tmp_23_i_fu_286_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                tmp2_reg_476_pp0_iter2_reg <= tmp2_reg_476_pp0_iter1_reg;
                tmp3_reg_481_pp0_iter2_reg <= tmp3_reg_481_pp0_iter1_reg;
                tmp_10_i_reg_491_pp0_iter2_reg <= tmp_10_i_reg_491_pp0_iter1_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_reg_457_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp5_reg_505 <= tmp5_fu_345_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_flatten_reg_457 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                tmp8_reg_500 <= tmp8_fu_336_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, height_empty_n, width_empty_n, filt1_empty_n, filt2_empty_n, ap_enable_reg_pp0_iter0, exitcond_flatten_fu_214_p2, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (width_empty_n = ap_const_logic_0) or (height_empty_n = ap_const_logic_0) or (filt2_empty_n = ap_const_logic_0) or (filt1_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((exitcond_flatten_fu_214_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) and not(((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1)) or ((exitcond_flatten_fu_214_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state7 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(src_V_0_vld_out, hconv_V_full_n, ap_enable_reg_pp0_iter0, exitcond_flatten_fu_214_p2, ap_enable_reg_pp0_iter3, tmp_10_i_reg_491_pp0_iter2_reg)
    begin
                ap_block_pp0_stage0_01001 <= (((tmp_10_i_reg_491_pp0_iter2_reg = ap_const_lv1_1) and (hconv_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1)) or ((exitcond_flatten_fu_214_p2 = ap_const_lv1_0) and (src_V_0_vld_out = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(src_V_0_vld_out, hconv_V_full_n, ap_enable_reg_pp0_iter0, exitcond_flatten_fu_214_p2, ap_enable_reg_pp0_iter3, tmp_10_i_reg_491_pp0_iter2_reg)
    begin
                ap_block_pp0_stage0_11001 <= (((tmp_10_i_reg_491_pp0_iter2_reg = ap_const_lv1_1) and (hconv_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1)) or ((exitcond_flatten_fu_214_p2 = ap_const_lv1_0) and (src_V_0_vld_out = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(src_V_0_vld_out, hconv_V_full_n, ap_enable_reg_pp0_iter0, exitcond_flatten_fu_214_p2, ap_enable_reg_pp0_iter3, tmp_10_i_reg_491_pp0_iter2_reg)
    begin
                ap_block_pp0_stage0_subdone <= (((tmp_10_i_reg_491_pp0_iter2_reg = ap_const_lv1_1) and (hconv_V_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1)) or ((exitcond_flatten_fu_214_p2 = ap_const_lv1_0) and (src_V_0_vld_out = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, height_empty_n, width_empty_n, filt1_empty_n, filt2_empty_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (width_empty_n = ap_const_logic_0) or (height_empty_n = ap_const_logic_0) or (filt2_empty_n = ap_const_logic_0) or (filt1_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state3_pp0_stage0_iter0_assign_proc : process(src_V_0_vld_out, exitcond_flatten_fu_214_p2)
    begin
                ap_block_state3_pp0_stage0_iter0 <= ((exitcond_flatten_fu_214_p2 = ap_const_lv1_0) and (src_V_0_vld_out = ap_const_logic_0));
    end process;

        ap_block_state4_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state6_pp0_stage0_iter3_assign_proc : process(hconv_V_full_n, tmp_10_i_reg_491_pp0_iter2_reg)
    begin
                ap_block_state6_pp0_stage0_iter3 <= ((tmp_10_i_reg_491_pp0_iter2_reg = ap_const_lv1_1) and (hconv_V_full_n = ap_const_logic_0));
    end process;


    ap_condition_pp0_exit_iter0_state3_assign_proc : process(exitcond_flatten_fu_214_p2)
    begin
        if ((exitcond_flatten_fu_214_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    bound_fu_169_p0 <= bound_fu_169_p00(32 - 1 downto 0);
    bound_fu_169_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(width_read_reg_426),64));
    bound_fu_169_p1 <= bound_fu_169_p10(32 - 1 downto 0);
    bound_fu_169_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(height_read_reg_421),64));
    bound_fu_169_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bound_fu_169_p0) * unsigned(bound_fu_169_p1), 64));
    exitcond_flatten_fu_214_p2 <= "1" when (indvar_flatten_reg_141 = bound_reg_442) else "0";

    filt1_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, filt1_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            filt1_blk_n <= filt1_empty_n;
        else 
            filt1_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    filt1_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, height_empty_n, width_empty_n, filt1_empty_n, filt2_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (width_empty_n = ap_const_logic_0) or (height_empty_n = ap_const_logic_0) or (filt2_empty_n = ap_const_logic_0) or (filt1_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            filt1_read <= ap_const_logic_1;
        else 
            filt1_read <= ap_const_logic_0;
        end if; 
    end process;


    filt2_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, filt2_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            filt2_blk_n <= filt2_empty_n;
        else 
            filt2_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    filt2_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, height_empty_n, width_empty_n, filt1_empty_n, filt2_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (width_empty_n = ap_const_logic_0) or (height_empty_n = ap_const_logic_0) or (filt2_empty_n = ap_const_logic_0) or (filt1_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            filt2_read <= ap_const_logic_1;
        else 
            filt2_read <= ap_const_logic_0;
        end if; 
    end process;


    hconv_V_blk_n_assign_proc : process(hconv_V_full_n, ap_block_pp0_stage0, ap_enable_reg_pp0_iter3, tmp_10_i_reg_491_pp0_iter2_reg)
    begin
        if (((tmp_10_i_reg_491_pp0_iter2_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            hconv_V_blk_n <= hconv_V_full_n;
        else 
            hconv_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    hconv_V_din <= std_logic_vector(unsigned(tmp5_reg_505) + unsigned(tmp1_fu_350_p2));

    hconv_V_write_assign_proc : process(ap_enable_reg_pp0_iter3, tmp_10_i_reg_491_pp0_iter2_reg, ap_block_pp0_stage0_11001)
    begin
        if (((tmp_10_i_reg_491_pp0_iter2_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            hconv_V_write <= ap_const_logic_1;
        else 
            hconv_V_write <= ap_const_logic_0;
        end if; 
    end process;


    height_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, height_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            height_blk_n <= height_empty_n;
        else 
            height_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    height_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, height_empty_n, width_empty_n, filt1_empty_n, filt2_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (width_empty_n = ap_const_logic_0) or (height_empty_n = ap_const_logic_0) or (filt2_empty_n = ap_const_logic_0) or (filt1_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            height_read <= ap_const_logic_1;
        else 
            height_read <= ap_const_logic_0;
        end if; 
    end process;

    indvar_flatten_next_fu_219_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_141) + unsigned(ap_const_lv64_1));
    row_0_i_cast_i_fu_205_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(row_0_i_i_reg_152),32));
    row_0_i_i_mid2_fu_273_p3 <= 
        row_0_i_i_reg_152 when (tmp_4_i_fu_209_p2(0) = '1') else 
        ap_const_lv10_0;
    row_fu_326_p2 <= std_logic_vector(unsigned(row_0_i_i_mid2_fu_273_p3) + unsigned(ap_const_lv10_1));
    src_V_0_ack_in <= src_V_0_state(1);

    src_V_0_ack_out_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, exitcond_flatten_fu_214_p2, ap_block_pp0_stage0_11001)
    begin
        if (((exitcond_flatten_fu_214_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            src_V_0_ack_out <= ap_const_logic_1;
        else 
            src_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    src_V_0_data_out_assign_proc : process(src_V_0_payload_A, src_V_0_payload_B, src_V_0_sel)
    begin
        if ((src_V_0_sel = ap_const_logic_1)) then 
            src_V_0_data_out <= src_V_0_payload_B;
        else 
            src_V_0_data_out <= src_V_0_payload_A;
        end if; 
    end process;

    src_V_0_load_A <= (src_V_0_state_cmp_full and not(src_V_0_sel_wr));
    src_V_0_load_B <= (src_V_0_state_cmp_full and src_V_0_sel_wr);
    src_V_0_sel <= src_V_0_sel_rd;
    src_V_0_state_cmp_full <= '0' when (src_V_0_state = ap_const_lv2_1) else '1';
    src_V_0_vld_in <= src_V_TVALID;
    src_V_0_vld_out <= src_V_0_state(0);

    src_V_TDATA_blk_n_assign_proc : process(src_V_0_state, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, exitcond_flatten_fu_214_p2)
    begin
        if (((exitcond_flatten_fu_214_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            src_V_TDATA_blk_n <= src_V_0_state(0);
        else 
            src_V_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    src_V_TREADY <= src_V_0_state(1);
    tmp1_fu_350_p2 <= std_logic_vector(unsigned(tmp3_reg_481_pp0_iter2_reg) + unsigned(tmp2_reg_476_pp0_iter2_reg));
    tmp2_fu_291_p2 <= std_logic_vector(unsigned(hwin_1_1_i_fu_64) + unsigned(hwin_1_fu_68));
    tmp3_fu_303_p2 <= std_logic_vector(unsigned(tmp4_fu_297_p2) + unsigned(hwin_2_fu_72));
    tmp4_fu_297_p2 <= std_logic_vector(unsigned(hwin_3_fu_76) + unsigned(hwin_4_fu_80));
    tmp5_fu_345_p2 <= std_logic_vector(unsigned(tmp8_reg_500) + unsigned(tmp6_fu_341_p2));
    tmp6_fu_341_p2 <= std_logic_vector(unsigned(tmp7_reg_486_pp0_iter1_reg) + unsigned(hwin_5_load_reg_447_pp0_iter1_reg));
    tmp7_fu_309_p2 <= std_logic_vector(unsigned(hwin_6_fu_88) + unsigned(hwin_7_fu_92));
    tmp8_fu_336_p2 <= std_logic_vector(unsigned(tmp9_fu_332_p2) + unsigned(hwin_8_load_reg_452));
    tmp9_fu_332_p2 <= std_logic_vector(unsigned(tmp_23_9_i_reg_466) + unsigned(tmp_23_i_reg_471));
    tmp_10_i_fu_315_p2 <= "1" when (unsigned(row_0_i_i_mid2_fu_273_p3) > unsigned(ap_const_lv10_9)) else "0";
    tmp_23_9_i_fu_281_p1 <= hwin_9_fu_100;
    tmp_23_9_i_fu_281_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(filt1_read_reg_432) * signed(tmp_23_9_i_fu_281_p1))), 32));
    tmp_23_i_fu_286_p1 <= src_V_0_data_out;
    tmp_23_i_fu_286_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(filt2_read_reg_437) * signed(tmp_23_i_fu_286_p1))), 32));
    tmp_4_i_fu_209_p2 <= "1" when (signed(row_0_i_cast_i_fu_205_p1) < signed(width_read_reg_426)) else "0";

    width_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, width_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            width_blk_n <= width_empty_n;
        else 
            width_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    width_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, height_empty_n, width_empty_n, filt1_empty_n, filt2_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (width_empty_n = ap_const_logic_0) or (height_empty_n = ap_const_logic_0) or (filt2_empty_n = ap_const_logic_0) or (filt1_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            width_read <= ap_const_logic_1;
        else 
            width_read <= ap_const_logic_0;
        end if; 
    end process;

end behav;