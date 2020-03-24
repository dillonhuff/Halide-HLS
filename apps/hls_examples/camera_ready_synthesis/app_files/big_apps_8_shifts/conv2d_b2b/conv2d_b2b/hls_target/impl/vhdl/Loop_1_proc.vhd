-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Loop_1_proc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    p_hw_input_stencil_stream_V_value_V_dout : IN STD_LOGIC_VECTOR (71 downto 0);
    p_hw_input_stencil_stream_V_value_V_empty_n : IN STD_LOGIC;
    p_hw_input_stencil_stream_V_value_V_read : OUT STD_LOGIC;
    p_mul_stencil_update_stream_V_value_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    p_mul_stencil_update_stream_V_value_V_full_n : IN STD_LOGIC;
    p_mul_stencil_update_stream_V_value_V_write : OUT STD_LOGIC );
end;


architecture behav of Loop_1_proc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv21_0 : STD_LOGIC_VECTOR (20 downto 0) := "000000000000000000000";
    constant ap_const_lv21_1F8C94 : STD_LOGIC_VECTOR (20 downto 0) := "111111000110010010100";
    constant ap_const_lv21_1 : STD_LOGIC_VECTOR (20 downto 0) := "000000000000000000001";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_30 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110000";
    constant ap_const_lv32_37 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110111";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_47 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_25 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100101";
    constant ap_const_lv32_28 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101000";
    constant ap_const_lv32_2E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101110";
    constant ap_const_lv32_38 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111000";
    constant ap_const_lv32_3E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111110";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal real_start : STD_LOGIC;
    signal real_start_status_reg : STD_LOGIC := '0';
    signal internal_ap_ready : STD_LOGIC;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal start_once_reg : STD_LOGIC := '0';
    signal start_control_reg : STD_LOGIC := '0';
    signal p_hw_input_stencil_stream_V_value_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_flag00000000 : BOOLEAN;
    signal exitcond_flatten_reg_354 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_mul_stencil_update_stream_V_value_V_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_reg_pp0_iter3_exitcond_flatten_reg_354 : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_reg_103 : STD_LOGIC_VECTOR (20 downto 0);
    signal exitcond_flatten_fu_114_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011001 : BOOLEAN;
    signal ap_reg_pp0_iter1_exitcond_flatten_reg_354 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_pp0_iter2_exitcond_flatten_reg_354 : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_next_fu_120_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal p_391_reg_363 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_reg_pp0_iter2_p_391_reg_363 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_reg_pp0_iter3_p_391_reg_363 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_341_fu_194_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_341_reg_368 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp1_fu_222_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp1_reg_373 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_8_reg_378 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_reg_pp0_iter2_tmp_8_reg_378 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_9_reg_383 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp4_fu_270_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp4_reg_388 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_357_fu_282_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_357_reg_393 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp3_fu_302_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp3_reg_398 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_389_fu_331_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_389_reg_403 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011011 : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_flag00001001 : BOOLEAN;
    signal p_327_fu_126_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_343_fu_134_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_375_fu_148_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_6_fu_172_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_339_fu_182_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_332_cast_fu_130_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_340_cast_fu_190_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_7_fu_200_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_355_fu_210_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_356_cast_cast_fu_218_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_348_cast_cast_fu_144_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_s_fu_248_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_387_fu_258_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_388_cast_cast_fu_266_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_380_cast_cast_fu_158_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_341_cast_fu_276_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp1_cast_fu_279_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_371_fu_288_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_372_cast_cast_fu_295_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp4_cast_fu_299_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_363_fu_311_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_364_cast_fu_318_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_357_cast_fu_308_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp2_fu_322_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp3_cast_fu_328_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_396_cast_fu_337_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_389_cast_fu_340_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_397_fu_343_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


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
                if ((ap_const_logic_1 = ap_continue)) then 
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
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1))))) then 
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
                if ((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state2 xor ap_const_logic_1);
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
                if ((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0)) then 
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
                if ((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1))))) then 
                    ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    real_start_status_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                real_start_status_reg <= ap_const_logic_0;
            else
                if ((start_full_n = ap_const_logic_1)) then 
                    real_start_status_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_0 = start_full_n) and (ap_const_logic_1 = internal_ap_ready))) then 
                    real_start_status_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    start_control_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_control_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = real_start) and ((ap_const_logic_1 = internal_ap_ready) or (ap_const_logic_0 = start_once_reg)))) then 
                    start_control_reg <= ap_const_logic_1;
                elsif ((ap_const_logic_1 = start_control_reg)) then 
                    start_control_reg <= ap_const_logic_0;
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
                if ((ap_const_logic_1 = real_start)) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((ap_const_logic_0 = ap_start)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten_reg_103_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_0 = exitcond_flatten_fu_114_p2))) then 
                indvar_flatten_reg_103 <= indvar_flatten_next_fu_120_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1))))) then 
                indvar_flatten_reg_103 <= ap_const_lv21_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                ap_reg_pp0_iter1_exitcond_flatten_reg_354 <= exitcond_flatten_reg_354;
                exitcond_flatten_reg_354 <= exitcond_flatten_fu_114_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0)) then
                ap_reg_pp0_iter2_exitcond_flatten_reg_354 <= ap_reg_pp0_iter1_exitcond_flatten_reg_354;
                ap_reg_pp0_iter2_p_391_reg_363 <= p_391_reg_363;
                ap_reg_pp0_iter2_tmp_8_reg_378 <= tmp_8_reg_378;
                ap_reg_pp0_iter3_exitcond_flatten_reg_354 <= ap_reg_pp0_iter2_exitcond_flatten_reg_354;
                ap_reg_pp0_iter3_p_391_reg_363 <= ap_reg_pp0_iter2_p_391_reg_363;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (exitcond_flatten_reg_354 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                p_341_reg_368 <= p_341_fu_194_p2;
                p_391_reg_363 <= p_hw_input_stencil_stream_V_value_V_dout(71 downto 64);
                tmp1_reg_373 <= tmp1_fu_222_p2;
                tmp4_reg_388 <= tmp4_fu_270_p2;
                tmp_8_reg_378 <= p_hw_input_stencil_stream_V_value_V_dout(37 downto 32);
                tmp_9_reg_383 <= p_hw_input_stencil_stream_V_value_V_dout(46 downto 40);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_lv1_0 = ap_reg_pp0_iter1_exitcond_flatten_reg_354))) then
                p_357_reg_393 <= p_357_fu_282_p2;
                tmp3_reg_398 <= tmp3_fu_302_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_lv1_0 = ap_reg_pp0_iter2_exitcond_flatten_reg_354))) then
                p_389_reg_403 <= p_389_fu_331_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter4, exitcond_flatten_fu_114_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_flag00011011, ap_enable_reg_pp0_iter3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_const_logic_1 = ap_enable_reg_pp0_iter4) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0))) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (exitcond_flatten_fu_114_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_const_logic_1 = ap_enable_reg_pp0_iter4) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (exitcond_flatten_fu_114_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state7 <= ap_CS_fsm(2);
        ap_block_pp0_stage0_flag00000000 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_flag00001001_assign_proc : process(p_hw_input_stencil_stream_V_value_V_empty_n, p_mul_stencil_update_stream_V_value_V_full_n, ap_enable_reg_pp0_iter1, exitcond_flatten_reg_354, ap_enable_reg_pp0_iter4, ap_reg_pp0_iter3_exitcond_flatten_reg_354)
    begin
                ap_block_pp0_stage0_flag00001001 <= (((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_flatten_reg_354 = ap_const_lv1_0) and (ap_const_logic_0 = p_hw_input_stencil_stream_V_value_V_empty_n)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter4) and (ap_const_lv1_0 = ap_reg_pp0_iter3_exitcond_flatten_reg_354) and (ap_const_logic_0 = p_mul_stencil_update_stream_V_value_V_full_n)));
    end process;


    ap_block_pp0_stage0_flag00011001_assign_proc : process(p_hw_input_stencil_stream_V_value_V_empty_n, p_mul_stencil_update_stream_V_value_V_full_n, ap_enable_reg_pp0_iter1, exitcond_flatten_reg_354, ap_enable_reg_pp0_iter4, ap_reg_pp0_iter3_exitcond_flatten_reg_354)
    begin
                ap_block_pp0_stage0_flag00011001 <= (((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_flatten_reg_354 = ap_const_lv1_0) and (ap_const_logic_0 = p_hw_input_stencil_stream_V_value_V_empty_n)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter4) and (ap_const_lv1_0 = ap_reg_pp0_iter3_exitcond_flatten_reg_354) and (ap_const_logic_0 = p_mul_stencil_update_stream_V_value_V_full_n)));
    end process;


    ap_block_pp0_stage0_flag00011011_assign_proc : process(p_hw_input_stencil_stream_V_value_V_empty_n, p_mul_stencil_update_stream_V_value_V_full_n, ap_enable_reg_pp0_iter1, exitcond_flatten_reg_354, ap_enable_reg_pp0_iter4, ap_reg_pp0_iter3_exitcond_flatten_reg_354)
    begin
                ap_block_pp0_stage0_flag00011011 <= (((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_flatten_reg_354 = ap_const_lv1_0) and (ap_const_logic_0 = p_hw_input_stencil_stream_V_value_V_empty_n)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter4) and (ap_const_lv1_0 = ap_reg_pp0_iter3_exitcond_flatten_reg_354) and (ap_const_logic_0 = p_mul_stencil_update_stream_V_value_V_full_n)));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter1_assign_proc : process(p_hw_input_stencil_stream_V_value_V_empty_n, exitcond_flatten_reg_354)
    begin
                ap_block_state3_pp0_stage0_iter1 <= ((exitcond_flatten_reg_354 = ap_const_lv1_0) and (ap_const_logic_0 = p_hw_input_stencil_stream_V_value_V_empty_n));
    end process;

        ap_block_state4_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state6_pp0_stage0_iter4_assign_proc : process(p_mul_stencil_update_stream_V_value_V_full_n, ap_reg_pp0_iter3_exitcond_flatten_reg_354)
    begin
                ap_block_state6_pp0_stage0_iter4 <= ((ap_const_lv1_0 = ap_reg_pp0_iter3_exitcond_flatten_reg_354) and (ap_const_logic_0 = p_mul_stencil_update_stream_V_value_V_full_n));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(exitcond_flatten_fu_114_p2)
    begin
        if ((exitcond_flatten_fu_114_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
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

    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = real_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_const_logic_0 = ap_enable_reg_pp0_iter0) and (ap_const_logic_0 = ap_enable_reg_pp0_iter1) and (ap_const_logic_0 = ap_enable_reg_pp0_iter2) and (ap_const_logic_0 = ap_enable_reg_pp0_iter3) and (ap_const_logic_0 = ap_enable_reg_pp0_iter4))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    exitcond_flatten_fu_114_p2 <= "1" when (indvar_flatten_reg_103 = ap_const_lv21_1F8C94) else "0";
    indvar_flatten_next_fu_120_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_103) + unsigned(ap_const_lv21_1));

    internal_ap_ready_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    p_327_fu_126_p1 <= p_hw_input_stencil_stream_V_value_V_dout(8 - 1 downto 0);
    p_332_cast_fu_130_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_327_fu_126_p1),9));
    p_339_fu_182_p3 <= (tmp_6_fu_172_p4 & ap_const_lv1_0);
    p_340_cast_fu_190_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_339_fu_182_p3),9));
    p_341_cast_fu_276_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_341_reg_368),10));
    p_341_fu_194_p2 <= std_logic_vector(unsigned(p_332_cast_fu_130_p1) + unsigned(p_340_cast_fu_190_p1));
    p_343_fu_134_p4 <= p_hw_input_stencil_stream_V_value_V_dout(23 downto 16);
    p_348_cast_cast_fu_144_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_343_fu_134_p4),9));
    p_355_fu_210_p3 <= (tmp_7_fu_200_p4 & ap_const_lv1_0);
    p_356_cast_cast_fu_218_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_355_fu_210_p3),9));
    p_357_cast_fu_308_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_357_reg_393),11));
    p_357_fu_282_p2 <= std_logic_vector(unsigned(p_341_cast_fu_276_p1) + unsigned(tmp1_cast_fu_279_p1));
    p_363_fu_311_p3 <= (ap_reg_pp0_iter2_tmp_8_reg_378 & ap_const_lv2_0);
    p_364_cast_fu_318_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_363_fu_311_p3),11));
    p_371_fu_288_p3 <= (tmp_9_reg_383 & ap_const_lv1_0);
    p_372_cast_cast_fu_295_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_371_fu_288_p3),10));
    p_375_fu_148_p4 <= p_hw_input_stencil_stream_V_value_V_dout(55 downto 48);
    p_380_cast_cast_fu_158_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_375_fu_148_p4),9));
    p_387_fu_258_p3 <= (tmp_s_fu_248_p4 & ap_const_lv1_0);
    p_388_cast_cast_fu_266_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_387_fu_258_p3),9));
    p_389_cast_fu_340_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_389_reg_403),12));
    p_389_fu_331_p2 <= std_logic_vector(unsigned(tmp2_fu_322_p2) + unsigned(tmp3_cast_fu_328_p1));
    p_396_cast_fu_337_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_reg_pp0_iter3_p_391_reg_363),12));
    p_397_fu_343_p2 <= std_logic_vector(unsigned(p_396_cast_fu_337_p1) + unsigned(p_389_cast_fu_340_p1));

    p_hw_input_stencil_stream_V_value_V_blk_n_assign_proc : process(p_hw_input_stencil_stream_V_value_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00000000, exitcond_flatten_reg_354)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (exitcond_flatten_reg_354 = ap_const_lv1_0))) then 
            p_hw_input_stencil_stream_V_value_V_blk_n <= p_hw_input_stencil_stream_V_value_V_empty_n;
        else 
            p_hw_input_stencil_stream_V_value_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_hw_input_stencil_stream_V_value_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_flatten_reg_354, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_flatten_reg_354 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            p_hw_input_stencil_stream_V_value_V_read <= ap_const_logic_1;
        else 
            p_hw_input_stencil_stream_V_value_V_read <= ap_const_logic_0;
        end if; 
    end process;


    p_mul_stencil_update_stream_V_value_V_blk_n_assign_proc : process(p_mul_stencil_update_stream_V_value_V_full_n, ap_block_pp0_stage0_flag00000000, ap_enable_reg_pp0_iter4, ap_reg_pp0_iter3_exitcond_flatten_reg_354)
    begin
        if (((ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter4) and (ap_const_lv1_0 = ap_reg_pp0_iter3_exitcond_flatten_reg_354))) then 
            p_mul_stencil_update_stream_V_value_V_blk_n <= p_mul_stencil_update_stream_V_value_V_full_n;
        else 
            p_mul_stencil_update_stream_V_value_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_mul_stencil_update_stream_V_value_V_din <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_397_fu_343_p2),32));

    p_mul_stencil_update_stream_V_value_V_write_assign_proc : process(ap_enable_reg_pp0_iter4, ap_reg_pp0_iter3_exitcond_flatten_reg_354, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter4) and (ap_const_lv1_0 = ap_reg_pp0_iter3_exitcond_flatten_reg_354) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            p_mul_stencil_update_stream_V_value_V_write <= ap_const_logic_1;
        else 
            p_mul_stencil_update_stream_V_value_V_write <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, real_start_status_reg)
    begin
        if ((ap_const_logic_1 = real_start_status_reg)) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;
    start_write <= (ap_start and start_control_reg);
    tmp1_cast_fu_279_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp1_reg_373),10));
    tmp1_fu_222_p2 <= std_logic_vector(unsigned(p_356_cast_cast_fu_218_p1) + unsigned(p_348_cast_cast_fu_144_p1));
    tmp2_fu_322_p2 <= std_logic_vector(unsigned(p_364_cast_fu_318_p1) + unsigned(p_357_cast_fu_308_p1));
    tmp3_cast_fu_328_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp3_reg_398),11));
    tmp3_fu_302_p2 <= std_logic_vector(unsigned(p_372_cast_cast_fu_295_p1) + unsigned(tmp4_cast_fu_299_p1));
    tmp4_cast_fu_299_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp4_reg_388),10));
    tmp4_fu_270_p2 <= std_logic_vector(unsigned(p_388_cast_cast_fu_266_p1) + unsigned(p_380_cast_cast_fu_158_p1));
    tmp_6_fu_172_p4 <= p_hw_input_stencil_stream_V_value_V_dout(14 downto 8);
    tmp_7_fu_200_p4 <= p_hw_input_stencil_stream_V_value_V_dout(30 downto 24);
    tmp_s_fu_248_p4 <= p_hw_input_stencil_stream_V_value_V_dout(62 downto 56);
end behav;
