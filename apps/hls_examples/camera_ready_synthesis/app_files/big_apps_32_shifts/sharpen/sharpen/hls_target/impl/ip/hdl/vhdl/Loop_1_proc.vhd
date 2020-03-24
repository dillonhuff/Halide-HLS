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
    p_hw_input_stencil_stream_V_value_V_dout : IN STD_LOGIC_VECTOR (287 downto 0);
    p_hw_input_stencil_stream_V_value_V_empty_n : IN STD_LOGIC;
    p_hw_input_stencil_stream_V_value_V_read : OUT STD_LOGIC;
    p_hw_input_stencil_stream_to_delayed_input_V_value_V_din : OUT STD_LOGIC_VECTOR (287 downto 0);
    p_hw_input_stencil_stream_to_delayed_input_V_value_V_full_n : IN STD_LOGIC;
    p_hw_input_stencil_stream_to_delayed_input_V_value_V_write : OUT STD_LOGIC;
    p_hw_input_stencil_stream_to_mul_V_value_V_din : OUT STD_LOGIC_VECTOR (287 downto 0);
    p_hw_input_stencil_stream_to_mul_V_value_V_full_n : IN STD_LOGIC;
    p_hw_input_stencil_stream_to_mul_V_value_V_write : OUT STD_LOGIC );
end;


architecture behav of Loop_1_proc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv21_0 : STD_LOGIC_VECTOR (20 downto 0) := "000000000000000000000";
    constant ap_const_lv21_1F8C94 : STD_LOGIC_VECTOR (20 downto 0) := "111111000110010010100";
    constant ap_const_lv21_1 : STD_LOGIC_VECTOR (20 downto 0) := "000000000000000000001";
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
    signal exitcond_flatten_reg_93 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_hw_input_stencil_stream_to_delayed_input_V_value_V_blk_n : STD_LOGIC;
    signal p_hw_input_stencil_stream_to_mul_V_value_V_blk_n : STD_LOGIC;
    signal indvar_flatten_reg_70 : STD_LOGIC_VECTOR (20 downto 0);
    signal exitcond_flatten_fu_81_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011001 : BOOLEAN;
    signal indvar_flatten_next_fu_87_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011011 : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage0_flag00001001 : BOOLEAN;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
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
                elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
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
                if (((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state2 xor ap_const_logic_1);
                elsif ((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1))))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
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


    indvar_flatten_reg_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_0 = exitcond_flatten_fu_81_p2))) then 
                indvar_flatten_reg_70 <= indvar_flatten_next_fu_87_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1))))) then 
                indvar_flatten_reg_70 <= ap_const_lv21_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                exitcond_flatten_reg_93 <= exitcond_flatten_fu_81_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, exitcond_flatten_fu_81_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_flag00011011)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (exitcond_flatten_fu_81_p2 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (exitcond_flatten_fu_81_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);
        ap_block_pp0_stage0_flag00000000 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_flag00001001_assign_proc : process(p_hw_input_stencil_stream_V_value_V_empty_n, p_hw_input_stencil_stream_to_delayed_input_V_value_V_full_n, p_hw_input_stencil_stream_to_mul_V_value_V_full_n, ap_enable_reg_pp0_iter1, exitcond_flatten_reg_93)
    begin
                ap_block_pp0_stage0_flag00001001 <= ((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (((exitcond_flatten_reg_93 = ap_const_lv1_0) and (ap_const_logic_0 = p_hw_input_stencil_stream_V_value_V_empty_n)) or ((exitcond_flatten_reg_93 = ap_const_lv1_0) and (ap_const_logic_0 = p_hw_input_stencil_stream_to_delayed_input_V_value_V_full_n)) or ((exitcond_flatten_reg_93 = ap_const_lv1_0) and (ap_const_logic_0 = p_hw_input_stencil_stream_to_mul_V_value_V_full_n))));
    end process;


    ap_block_pp0_stage0_flag00011001_assign_proc : process(p_hw_input_stencil_stream_V_value_V_empty_n, p_hw_input_stencil_stream_to_delayed_input_V_value_V_full_n, p_hw_input_stencil_stream_to_mul_V_value_V_full_n, ap_enable_reg_pp0_iter1, exitcond_flatten_reg_93)
    begin
                ap_block_pp0_stage0_flag00011001 <= ((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (((exitcond_flatten_reg_93 = ap_const_lv1_0) and (ap_const_logic_0 = p_hw_input_stencil_stream_V_value_V_empty_n)) or ((exitcond_flatten_reg_93 = ap_const_lv1_0) and (ap_const_logic_0 = p_hw_input_stencil_stream_to_delayed_input_V_value_V_full_n)) or ((exitcond_flatten_reg_93 = ap_const_lv1_0) and (ap_const_logic_0 = p_hw_input_stencil_stream_to_mul_V_value_V_full_n))));
    end process;


    ap_block_pp0_stage0_flag00011011_assign_proc : process(p_hw_input_stencil_stream_V_value_V_empty_n, p_hw_input_stencil_stream_to_delayed_input_V_value_V_full_n, p_hw_input_stencil_stream_to_mul_V_value_V_full_n, ap_enable_reg_pp0_iter1, exitcond_flatten_reg_93)
    begin
                ap_block_pp0_stage0_flag00011011 <= ((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (((exitcond_flatten_reg_93 = ap_const_lv1_0) and (ap_const_logic_0 = p_hw_input_stencil_stream_V_value_V_empty_n)) or ((exitcond_flatten_reg_93 = ap_const_lv1_0) and (ap_const_logic_0 = p_hw_input_stencil_stream_to_delayed_input_V_value_V_full_n)) or ((exitcond_flatten_reg_93 = ap_const_lv1_0) and (ap_const_logic_0 = p_hw_input_stencil_stream_to_mul_V_value_V_full_n))));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter1_assign_proc : process(p_hw_input_stencil_stream_V_value_V_empty_n, p_hw_input_stencil_stream_to_delayed_input_V_value_V_full_n, p_hw_input_stencil_stream_to_mul_V_value_V_full_n, exitcond_flatten_reg_93)
    begin
                ap_block_state3_pp0_stage0_iter1 <= (((exitcond_flatten_reg_93 = ap_const_lv1_0) and (ap_const_logic_0 = p_hw_input_stencil_stream_V_value_V_empty_n)) or ((exitcond_flatten_reg_93 = ap_const_lv1_0) and (ap_const_logic_0 = p_hw_input_stencil_stream_to_delayed_input_V_value_V_full_n)) or ((exitcond_flatten_reg_93 = ap_const_lv1_0) and (ap_const_logic_0 = p_hw_input_stencil_stream_to_mul_V_value_V_full_n)));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(exitcond_flatten_fu_81_p2)
    begin
        if ((exitcond_flatten_fu_81_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_0 = ap_enable_reg_pp0_iter0) and (ap_const_logic_0 = ap_enable_reg_pp0_iter1))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    exitcond_flatten_fu_81_p2 <= "1" when (indvar_flatten_reg_70 = ap_const_lv21_1F8C94) else "0";
    indvar_flatten_next_fu_87_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_70) + unsigned(ap_const_lv21_1));

    internal_ap_ready_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    p_hw_input_stencil_stream_V_value_V_blk_n_assign_proc : process(p_hw_input_stencil_stream_V_value_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00000000, exitcond_flatten_reg_93)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (exitcond_flatten_reg_93 = ap_const_lv1_0))) then 
            p_hw_input_stencil_stream_V_value_V_blk_n <= p_hw_input_stencil_stream_V_value_V_empty_n;
        else 
            p_hw_input_stencil_stream_V_value_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_hw_input_stencil_stream_V_value_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_flatten_reg_93, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_flatten_reg_93 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            p_hw_input_stencil_stream_V_value_V_read <= ap_const_logic_1;
        else 
            p_hw_input_stencil_stream_V_value_V_read <= ap_const_logic_0;
        end if; 
    end process;


    p_hw_input_stencil_stream_to_delayed_input_V_value_V_blk_n_assign_proc : process(p_hw_input_stencil_stream_to_delayed_input_V_value_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00000000, exitcond_flatten_reg_93)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (exitcond_flatten_reg_93 = ap_const_lv1_0))) then 
            p_hw_input_stencil_stream_to_delayed_input_V_value_V_blk_n <= p_hw_input_stencil_stream_to_delayed_input_V_value_V_full_n;
        else 
            p_hw_input_stencil_stream_to_delayed_input_V_value_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_hw_input_stencil_stream_to_delayed_input_V_value_V_din <= p_hw_input_stencil_stream_V_value_V_dout;

    p_hw_input_stencil_stream_to_delayed_input_V_value_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_flatten_reg_93, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_flatten_reg_93 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            p_hw_input_stencil_stream_to_delayed_input_V_value_V_write <= ap_const_logic_1;
        else 
            p_hw_input_stencil_stream_to_delayed_input_V_value_V_write <= ap_const_logic_0;
        end if; 
    end process;


    p_hw_input_stencil_stream_to_mul_V_value_V_blk_n_assign_proc : process(p_hw_input_stencil_stream_to_mul_V_value_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00000000, exitcond_flatten_reg_93)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (exitcond_flatten_reg_93 = ap_const_lv1_0))) then 
            p_hw_input_stencil_stream_to_mul_V_value_V_blk_n <= p_hw_input_stencil_stream_to_mul_V_value_V_full_n;
        else 
            p_hw_input_stencil_stream_to_mul_V_value_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_hw_input_stencil_stream_to_mul_V_value_V_din <= p_hw_input_stencil_stream_V_value_V_dout;

    p_hw_input_stencil_stream_to_mul_V_value_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_flatten_reg_93, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_flatten_reg_93 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            p_hw_input_stencil_stream_to_mul_V_value_V_write <= ap_const_logic_1;
        else 
            p_hw_input_stencil_stream_to_mul_V_value_V_write <= ap_const_logic_0;
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
end behav;
