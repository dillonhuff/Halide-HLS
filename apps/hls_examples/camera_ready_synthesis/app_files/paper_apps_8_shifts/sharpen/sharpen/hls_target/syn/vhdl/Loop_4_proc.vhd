-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Loop_4_proc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    hw_output_V_value_V : OUT STD_LOGIC_VECTOR (7 downto 0);
    hw_output_V_value_V_ap_vld : OUT STD_LOGIC;
    hw_output_V_value_V_ap_ack : IN STD_LOGIC;
    hw_output_V_last_V : OUT STD_LOGIC_VECTOR (0 downto 0);
    hw_output_V_last_V_ap_vld : OUT STD_LOGIC;
    hw_output_V_last_V_ap_ack : IN STD_LOGIC;
    p_mul_stencil_stream_V_value_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    p_mul_stencil_stream_V_value_V_empty_n : IN STD_LOGIC;
    p_mul_stencil_stream_V_value_V_read : OUT STD_LOGIC;
    p_delayed_input_stencil_stream_V_value_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    p_delayed_input_stencil_stream_V_value_V_empty_n : IN STD_LOGIC;
    p_delayed_input_stencil_stream_V_value_V_read : OUT STD_LOGIC );
end;


architecture behav of Loop_4_proc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal hw_output_V_value_V_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_flag00000000 : BOOLEAN;
    signal exitcond_flatten_reg_307 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_pp0_iter2_exitcond_flatten_reg_307 : STD_LOGIC_VECTOR (0 downto 0);
    signal hw_output_V_last_V_blk_n : STD_LOGIC;
    signal p_mul_stencil_stream_V_value_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal p_delayed_input_stencil_stream_V_value_V_blk_n : STD_LOGIC;
    signal indvar_flatten_reg_94 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_hw_output_y_scan_1_reg_105 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_hw_output_x_scan_2_reg_116 : STD_LOGIC_VECTOR (1 downto 0);
    signal exitcond_flatten_fu_127_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter3 : BOOLEAN;
    signal ap_sig_ioackin_hw_output_V_value_V_ap_ack : STD_LOGIC;
    signal ap_block_state5_io : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011001 : BOOLEAN;
    signal ap_reg_pp0_iter1_exitcond_flatten_reg_307 : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_next_fu_133_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal exitcond6_fu_139_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond6_reg_316 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_hw_output_x_scan_s_fu_145_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_hw_output_x_scan_s_reg_321 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_3_mid1_fu_153_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_mid1_reg_326 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_159_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_reg_331 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_hw_output_y_scan_s_fu_171_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_hw_output_x_scan_1_fu_179_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_435_fu_190_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_435_reg_346 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_reg_pp0_iter2_p_435_reg_346 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_439_fu_214_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_439_reg_351 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_reg_pp0_iter2_p_439_reg_351 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_12_reg_357 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_13_reg_362 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_last_V_fu_245_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_last_V_reg_367 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_pp0_iter2_tmp_last_V_reg_367 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_442_fu_251_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_442_reg_372 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_444_fu_256_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_444_reg_377 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011011 : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_flag00001001 : BOOLEAN;
    signal ap_reg_ioackin_hw_output_V_value_V_ap_ack : STD_LOGIC := '0';
    signal ap_reg_ioackin_hw_output_V_last_V_ap_ack : STD_LOGIC := '0';
    signal p_hw_output_y_scan_2_fu_165_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_s_fu_194_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_438_fu_204_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_443_fu_208_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_s_fu_240_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_mid2_fu_185_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_14_fu_270_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_15_fu_279_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_fu_261_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_5_cast_fu_286_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_447_fu_290_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_447_cast_fu_297_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
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
                elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
                    ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_reg_ioackin_hw_output_V_last_V_ap_ack_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ioackin_hw_output_V_last_V_ap_ack <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_enable_reg_pp0_iter3) and (ap_reg_pp0_iter2_exitcond_flatten_reg_307 = ap_const_lv1_0))) then
                    if ((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0)) then 
                        ap_reg_ioackin_hw_output_V_last_V_ap_ack <= ap_const_logic_0;
                    elsif (((ap_block_pp0_stage0_flag00001001 = ap_const_boolean_0) and (ap_const_logic_1 = hw_output_V_last_V_ap_ack))) then 
                        ap_reg_ioackin_hw_output_V_last_V_ap_ack <= ap_const_logic_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_reg_ioackin_hw_output_V_value_V_ap_ack_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_reg_ioackin_hw_output_V_value_V_ap_ack <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_enable_reg_pp0_iter3) and (ap_reg_pp0_iter2_exitcond_flatten_reg_307 = ap_const_lv1_0))) then
                    if ((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0)) then 
                        ap_reg_ioackin_hw_output_V_value_V_ap_ack <= ap_const_logic_0;
                    elsif (((ap_block_pp0_stage0_flag00001001 = ap_const_boolean_0) and (ap_const_logic_1 = hw_output_V_value_V_ap_ack))) then 
                        ap_reg_ioackin_hw_output_V_value_V_ap_ack <= ap_const_logic_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten_reg_94_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_0 = exitcond_flatten_fu_127_p2))) then 
                indvar_flatten_reg_94 <= indvar_flatten_next_fu_133_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
                indvar_flatten_reg_94 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    p_hw_output_x_scan_2_reg_116_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_0 = exitcond_flatten_fu_127_p2))) then 
                p_hw_output_x_scan_2_reg_116 <= p_hw_output_x_scan_1_fu_179_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
                p_hw_output_x_scan_2_reg_116 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    p_hw_output_y_scan_1_reg_105_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_0 = exitcond_flatten_fu_127_p2))) then 
                p_hw_output_y_scan_1_reg_105 <= p_hw_output_y_scan_s_fu_171_p3;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
                p_hw_output_y_scan_1_reg_105 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                ap_reg_pp0_iter1_exitcond_flatten_reg_307 <= exitcond_flatten_reg_307;
                exitcond_flatten_reg_307 <= exitcond_flatten_fu_127_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0)) then
                ap_reg_pp0_iter2_exitcond_flatten_reg_307 <= ap_reg_pp0_iter1_exitcond_flatten_reg_307;
                ap_reg_pp0_iter2_p_435_reg_346 <= p_435_reg_346;
                ap_reg_pp0_iter2_p_439_reg_351 <= p_439_reg_351;
                ap_reg_pp0_iter2_tmp_last_V_reg_367 <= tmp_last_V_reg_367;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_lv1_0 = exitcond_flatten_fu_127_p2))) then
                exitcond6_reg_316 <= exitcond6_fu_139_p2;
                p_hw_output_x_scan_s_reg_321 <= p_hw_output_x_scan_s_fu_145_p3;
                tmp_1_reg_331 <= tmp_1_fu_159_p2;
                tmp_3_mid1_reg_326 <= tmp_3_mid1_fu_153_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (exitcond_flatten_reg_307 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                p_435_reg_346 <= p_435_fu_190_p1;
                p_439_reg_351 <= p_439_fu_214_p2;
                tmp_12_reg_357 <= p_439_fu_214_p2(7 downto 4);
                tmp_13_reg_362 <= p_443_fu_208_p2(7 downto 4);
                tmp_last_V_reg_367 <= tmp_last_V_fu_245_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_lv1_0 = ap_reg_pp0_iter1_exitcond_flatten_reg_307))) then
                p_442_reg_372 <= p_442_fu_251_p2;
                p_444_reg_377 <= p_444_fu_256_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter1, exitcond_flatten_fu_127_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_flag00011011, ap_enable_reg_pp0_iter2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_const_logic_1 = ap_enable_reg_pp0_iter3) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0))) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (exitcond_flatten_fu_127_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_const_logic_1 = ap_enable_reg_pp0_iter3) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (exitcond_flatten_fu_127_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state6 <= ap_CS_fsm(2);
        ap_block_pp0_stage0_flag00000000 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_flag00001001_assign_proc : process(p_mul_stencil_stream_V_value_V_empty_n, p_delayed_input_stencil_stream_V_value_V_empty_n, exitcond_flatten_reg_307, ap_enable_reg_pp0_iter1)
    begin
                ap_block_pp0_stage0_flag00001001 <= ((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (((exitcond_flatten_reg_307 = ap_const_lv1_0) and (ap_const_logic_0 = p_mul_stencil_stream_V_value_V_empty_n)) or ((exitcond_flatten_reg_307 = ap_const_lv1_0) and (ap_const_logic_0 = p_delayed_input_stencil_stream_V_value_V_empty_n))));
    end process;


    ap_block_pp0_stage0_flag00011001_assign_proc : process(p_mul_stencil_stream_V_value_V_empty_n, p_delayed_input_stencil_stream_V_value_V_empty_n, ap_enable_reg_pp0_iter3, exitcond_flatten_reg_307, ap_enable_reg_pp0_iter1, ap_block_state5_io)
    begin
                ap_block_pp0_stage0_flag00011001 <= (((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (((exitcond_flatten_reg_307 = ap_const_lv1_0) and (ap_const_logic_0 = p_mul_stencil_stream_V_value_V_empty_n)) or ((exitcond_flatten_reg_307 = ap_const_lv1_0) and (ap_const_logic_0 = p_delayed_input_stencil_stream_V_value_V_empty_n)))) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter3) and (ap_const_boolean_1 = ap_block_state5_io)));
    end process;


    ap_block_pp0_stage0_flag00011011_assign_proc : process(p_mul_stencil_stream_V_value_V_empty_n, p_delayed_input_stencil_stream_V_value_V_empty_n, ap_enable_reg_pp0_iter3, exitcond_flatten_reg_307, ap_enable_reg_pp0_iter1, ap_block_state5_io)
    begin
                ap_block_pp0_stage0_flag00011011 <= (((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (((exitcond_flatten_reg_307 = ap_const_lv1_0) and (ap_const_logic_0 = p_mul_stencil_stream_V_value_V_empty_n)) or ((exitcond_flatten_reg_307 = ap_const_lv1_0) and (ap_const_logic_0 = p_delayed_input_stencil_stream_V_value_V_empty_n)))) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter3) and (ap_const_boolean_1 = ap_block_state5_io)));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter1_assign_proc : process(p_mul_stencil_stream_V_value_V_empty_n, p_delayed_input_stencil_stream_V_value_V_empty_n, exitcond_flatten_reg_307)
    begin
                ap_block_state3_pp0_stage0_iter1 <= (((exitcond_flatten_reg_307 = ap_const_lv1_0) and (ap_const_logic_0 = p_mul_stencil_stream_V_value_V_empty_n)) or ((exitcond_flatten_reg_307 = ap_const_lv1_0) and (ap_const_logic_0 = p_delayed_input_stencil_stream_V_value_V_empty_n)));
    end process;

        ap_block_state4_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state5_io_assign_proc : process(ap_reg_pp0_iter2_exitcond_flatten_reg_307, ap_sig_ioackin_hw_output_V_value_V_ap_ack)
    begin
                ap_block_state5_io <= ((ap_reg_pp0_iter2_exitcond_flatten_reg_307 = ap_const_lv1_0) and (ap_const_logic_0 = ap_sig_ioackin_hw_output_V_value_V_ap_ack));
    end process;

        ap_block_state5_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(exitcond_flatten_fu_127_p2)
    begin
        if ((exitcond_flatten_fu_127_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_logic_0 = ap_enable_reg_pp0_iter0) and (ap_const_logic_0 = ap_enable_reg_pp0_iter1) and (ap_const_logic_0 = ap_enable_reg_pp0_iter2) and (ap_const_logic_0 = ap_enable_reg_pp0_iter3))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_ioackin_hw_output_V_value_V_ap_ack_assign_proc : process(hw_output_V_value_V_ap_ack, ap_reg_ioackin_hw_output_V_value_V_ap_ack)
    begin
        if ((ap_const_logic_0 = ap_reg_ioackin_hw_output_V_value_V_ap_ack)) then 
            ap_sig_ioackin_hw_output_V_value_V_ap_ack <= hw_output_V_value_V_ap_ack;
        else 
            ap_sig_ioackin_hw_output_V_value_V_ap_ack <= ap_const_logic_1;
        end if; 
    end process;

    exitcond6_fu_139_p2 <= "1" when (p_hw_output_x_scan_2_reg_116 = ap_const_lv2_2) else "0";
    exitcond_flatten_fu_127_p2 <= "1" when (indvar_flatten_reg_94 = ap_const_lv3_4) else "0";
    hw_output_V_last_V <= ap_reg_pp0_iter2_tmp_last_V_reg_367;

    hw_output_V_last_V_ap_vld_assign_proc : process(ap_enable_reg_pp0_iter3, ap_reg_pp0_iter2_exitcond_flatten_reg_307, ap_block_pp0_stage0_flag00001001, ap_reg_ioackin_hw_output_V_last_V_ap_ack)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter3) and (ap_reg_pp0_iter2_exitcond_flatten_reg_307 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00001001 = ap_const_boolean_0) and (ap_const_logic_0 = ap_reg_ioackin_hw_output_V_last_V_ap_ack))) then 
            hw_output_V_last_V_ap_vld <= ap_const_logic_1;
        else 
            hw_output_V_last_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    hw_output_V_last_V_blk_n_assign_proc : process(hw_output_V_last_V_ap_ack, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_flag00000000, ap_reg_pp0_iter2_exitcond_flatten_reg_307)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter3) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (ap_reg_pp0_iter2_exitcond_flatten_reg_307 = ap_const_lv1_0))) then 
            hw_output_V_last_V_blk_n <= hw_output_V_last_V_ap_ack;
        else 
            hw_output_V_last_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    hw_output_V_value_V <= std_logic_vector(unsigned(p_447_cast_fu_297_p1) + unsigned(ap_reg_pp0_iter2_p_435_reg_346));

    hw_output_V_value_V_ap_vld_assign_proc : process(ap_enable_reg_pp0_iter3, ap_reg_pp0_iter2_exitcond_flatten_reg_307, ap_block_pp0_stage0_flag00001001, ap_reg_ioackin_hw_output_V_value_V_ap_ack)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter3) and (ap_reg_pp0_iter2_exitcond_flatten_reg_307 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00001001 = ap_const_boolean_0) and (ap_const_logic_0 = ap_reg_ioackin_hw_output_V_value_V_ap_ack))) then 
            hw_output_V_value_V_ap_vld <= ap_const_logic_1;
        else 
            hw_output_V_value_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    hw_output_V_value_V_blk_n_assign_proc : process(hw_output_V_value_V_ap_ack, ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_flag00000000, ap_reg_pp0_iter2_exitcond_flatten_reg_307)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter3) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (ap_reg_pp0_iter2_exitcond_flatten_reg_307 = ap_const_lv1_0))) then 
            hw_output_V_value_V_blk_n <= hw_output_V_value_V_ap_ack;
        else 
            hw_output_V_value_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    indvar_flatten_next_fu_133_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_94) + unsigned(ap_const_lv3_1));
    p_435_fu_190_p1 <= p_delayed_input_stencil_stream_V_value_V_dout(8 - 1 downto 0);
    p_438_fu_204_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_s_fu_194_p4),8));
    p_439_fu_214_p2 <= std_logic_vector(unsigned(p_435_fu_190_p1) - unsigned(p_438_fu_204_p1));
    p_442_fu_251_p2 <= "0" when (tmp_12_reg_357 = ap_const_lv4_0) else "1";
    p_443_fu_208_p2 <= std_logic_vector(unsigned(p_438_fu_204_p1) - unsigned(p_435_fu_190_p1));
    p_444_fu_256_p2 <= "0" when (tmp_13_reg_362 = ap_const_lv4_0) else "1";
    p_447_cast_fu_297_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_447_fu_290_p3),8));
    p_447_fu_290_p3 <= 
        tmp_fu_261_p4 when (p_442_reg_372(0) = '1') else 
        tmp_5_cast_fu_286_p1;

    p_delayed_input_stencil_stream_V_value_V_blk_n_assign_proc : process(p_delayed_input_stencil_stream_V_value_V_empty_n, ap_block_pp0_stage0_flag00000000, exitcond_flatten_reg_307, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_flatten_reg_307 = ap_const_lv1_0))) then 
            p_delayed_input_stencil_stream_V_value_V_blk_n <= p_delayed_input_stencil_stream_V_value_V_empty_n;
        else 
            p_delayed_input_stencil_stream_V_value_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_delayed_input_stencil_stream_V_value_V_read_assign_proc : process(exitcond_flatten_reg_307, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_flatten_reg_307 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            p_delayed_input_stencil_stream_V_value_V_read <= ap_const_logic_1;
        else 
            p_delayed_input_stencil_stream_V_value_V_read <= ap_const_logic_0;
        end if; 
    end process;

    p_hw_output_x_scan_1_fu_179_p2 <= std_logic_vector(unsigned(ap_const_lv2_1) + unsigned(p_hw_output_x_scan_s_fu_145_p3));
    p_hw_output_x_scan_s_fu_145_p3 <= 
        ap_const_lv2_0 when (exitcond6_fu_139_p2(0) = '1') else 
        p_hw_output_x_scan_2_reg_116;
    p_hw_output_y_scan_2_fu_165_p2 <= std_logic_vector(unsigned(ap_const_lv2_1) + unsigned(p_hw_output_y_scan_1_reg_105));
    p_hw_output_y_scan_s_fu_171_p3 <= 
        p_hw_output_y_scan_2_fu_165_p2 when (exitcond6_fu_139_p2(0) = '1') else 
        p_hw_output_y_scan_1_reg_105;

    p_mul_stencil_stream_V_value_V_blk_n_assign_proc : process(p_mul_stencil_stream_V_value_V_empty_n, ap_block_pp0_stage0_flag00000000, exitcond_flatten_reg_307, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_flatten_reg_307 = ap_const_lv1_0))) then 
            p_mul_stencil_stream_V_value_V_blk_n <= p_mul_stencil_stream_V_value_V_empty_n;
        else 
            p_mul_stencil_stream_V_value_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_mul_stencil_stream_V_value_V_read_assign_proc : process(exitcond_flatten_reg_307, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_flatten_reg_307 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            p_mul_stencil_stream_V_value_V_read <= ap_const_logic_1;
        else 
            p_mul_stencil_stream_V_value_V_read <= ap_const_logic_0;
        end if; 
    end process;

    p_s_fu_194_p4 <= p_mul_stencil_stream_V_value_V_dout(7 downto 4);
    tmp_14_fu_270_p4 <= ap_reg_pp0_iter2_p_439_reg_351(3 downto 2);
    tmp_15_fu_279_p3 <= 
        tmp_14_fu_270_p4 when (p_444_reg_377(0) = '1') else 
        ap_const_lv2_0;
    tmp_1_fu_159_p2 <= "1" when (p_hw_output_y_scan_1_reg_105 = ap_const_lv2_1) else "0";
    tmp_3_mid1_fu_153_p2 <= "1" when (p_hw_output_y_scan_1_reg_105 = ap_const_lv2_0) else "0";
    tmp_3_mid2_fu_185_p3 <= 
        tmp_3_mid1_reg_326 when (exitcond6_reg_316(0) = '1') else 
        tmp_1_reg_331;
    tmp_5_cast_fu_286_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_15_fu_279_p3),6));
    tmp_fu_261_p4 <= ap_reg_pp0_iter2_p_439_reg_351(7 downto 2);
    tmp_last_V_fu_245_p2 <= (tmp_s_fu_240_p2 and tmp_3_mid2_fu_185_p3);
    tmp_s_fu_240_p2 <= "1" when (p_hw_output_x_scan_s_reg_321 = ap_const_lv2_1) else "0";
end behav;