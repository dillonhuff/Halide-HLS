-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity call_Loop_LB2D_buf_p is
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
    in_stream_V_value_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    in_stream_V_value_V_empty_n : IN STD_LOGIC;
    in_stream_V_value_V_read : OUT STD_LOGIC;
    slice_stream_V_value_V_din : OUT STD_LOGIC_VECTOR (23 downto 0);
    slice_stream_V_value_V_full_n : IN STD_LOGIC;
    slice_stream_V_value_V_write : OUT STD_LOGIC );
end;


architecture behav of call_Loop_LB2D_buf_p is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv11_438 : STD_LOGIC_VECTOR (10 downto 0) := "10000111000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv11_780 : STD_LOGIC_VECTOR (10 downto 0) := "11110000000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv63_0 : STD_LOGIC_VECTOR (62 downto 0) := "000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv64_FFFFFFFFFFFFFFFE : STD_LOGIC_VECTOR (63 downto 0) := "1111111111111111111111111111111111111111111111111111111111111110";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";

    signal real_start : STD_LOGIC;
    signal real_start_status_reg : STD_LOGIC := '0';
    signal internal_ap_ready : STD_LOGIC;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal start_once_reg : STD_LOGIC := '0';
    signal start_control_reg : STD_LOGIC := '0';
    signal in_stream_V_value_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_flag00000000 : BOOLEAN;
    signal tmp_2_reg_290 : STD_LOGIC_VECTOR (0 downto 0);
    signal slice_stream_V_value_V_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal icmp_reg_286 : STD_LOGIC_VECTOR (0 downto 0);
    signal write_idx_1_1_reg_146 : STD_LOGIC_VECTOR (63 downto 0);
    signal col_reg_157 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_fu_168_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal row_1_fu_174_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal row_1_reg_281 : STD_LOGIC_VECTOR (10 downto 0);
    signal icmp_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_fu_196_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011001 : BOOLEAN;
    signal col_1_fu_202_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal icmp1_fu_224_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp1_reg_299 : STD_LOGIC_VECTOR (0 downto 0);
    signal buffer_0_value_V_ad_reg_304 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_reg_pp0_iter1_buffer_0_value_V_ad_reg_304 : STD_LOGIC_VECTOR (10 downto 0);
    signal buffer_1_value_V_ad_reg_310 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_reg_pp0_iter1_buffer_1_value_V_ad_reg_310 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_write_idx_1_1_fu_236_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_value_V_2_reg_321 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_0_value_V_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_0_value_V_lo_reg_328 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_1_value_V_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_1_value_V_lo_reg_334 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_9_fu_243_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_9_reg_340 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_10_fu_247_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_10_reg_346 : STD_LOGIC_VECTOR (0 downto 0);
    signal write_idx_1_2_fu_271_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_block_pp0_stage0_flag00011011 : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal buffer_0_value_V_address0 : STD_LOGIC_VECTOR (10 downto 0);
    signal buffer_0_value_V_ce0 : STD_LOGIC;
    signal buffer_0_value_V_address1 : STD_LOGIC_VECTOR (10 downto 0);
    signal buffer_0_value_V_ce1 : STD_LOGIC;
    signal buffer_0_value_V_we1 : STD_LOGIC;
    signal buffer_1_value_V_address0 : STD_LOGIC_VECTOR (10 downto 0);
    signal buffer_1_value_V_ce0 : STD_LOGIC;
    signal buffer_1_value_V_ce1 : STD_LOGIC;
    signal buffer_1_value_V_we1 : STD_LOGIC;
    signal write_idx_1_reg_123 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal row_reg_135 : STD_LOGIC_VECTOR (10 downto 0);
    signal write_idx_1_1_phi_fu_149_p4 : STD_LOGIC_VECTOR (63 downto 0);
    signal col_cast_fu_208_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_flag00001001 : BOOLEAN;
    signal tmp_6_fu_180_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_8_fu_214_p4 : STD_LOGIC_VECTOR (62 downto 0);
    signal write_idx_1_3_fu_230_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Val2_2_1_phi_fu_256_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Val2_2_0_phi_fu_251_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0 : BOOLEAN;
    signal ap_enable_operation_55 : BOOLEAN;
    signal ap_enable_state5_pp0_iter2_stage0 : BOOLEAN;
    signal ap_enable_operation_35 : BOOLEAN;
    signal ap_enable_state3_pp0_iter0_stage0 : BOOLEAN;
    signal ap_enable_operation_42 : BOOLEAN;
    signal ap_enable_state4_pp0_iter1_stage0 : BOOLEAN;
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component call_Loop_LB2D_bubkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (10 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        address1 : IN STD_LOGIC_VECTOR (10 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    buffer_0_value_V_U : component call_Loop_LB2D_bubkb
    generic map (
        DataWidth => 8,
        AddressRange => 1920,
        AddressWidth => 11)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => buffer_0_value_V_address0,
        ce0 => buffer_0_value_V_ce0,
        q0 => buffer_0_value_V_q0,
        address1 => buffer_0_value_V_address1,
        ce1 => buffer_0_value_V_ce1,
        we1 => buffer_0_value_V_we1,
        d1 => tmp_value_V_2_reg_321);

    buffer_1_value_V_U : component call_Loop_LB2D_bubkb
    generic map (
        DataWidth => 8,
        AddressRange => 1920,
        AddressWidth => 11)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => buffer_1_value_V_address0,
        ce0 => buffer_1_value_V_ce0,
        q0 => buffer_1_value_V_q0,
        address1 => ap_reg_pp0_iter1_buffer_1_value_V_ad_reg_310,
        ce1 => buffer_1_value_V_ce1,
        we1 => buffer_1_value_V_we1,
        d1 => tmp_value_V_2_reg_321);





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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_168_p2 = ap_const_lv1_1))) then 
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
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = tmp_fu_168_p2))) then 
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
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state3 xor ap_const_logic_1);
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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = tmp_fu_168_p2))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
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


    col_reg_157_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_0 = tmp_2_fu_196_p2))) then 
                col_reg_157 <= col_1_fu_202_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = tmp_fu_168_p2))) then 
                col_reg_157 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;

    row_reg_135_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                row_reg_135 <= row_1_reg_281;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1))))) then 
                row_reg_135 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;

    write_idx_1_1_reg_146_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (tmp_2_reg_290 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
                write_idx_1_1_reg_146 <= p_write_idx_1_1_fu_236_p3;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = tmp_fu_168_p2))) then 
                write_idx_1_1_reg_146 <= write_idx_1_reg_123;
            end if; 
        end if;
    end process;

    write_idx_1_reg_123_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                write_idx_1_reg_123 <= write_idx_1_2_fu_271_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1))))) then 
                write_idx_1_reg_123 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                ap_reg_pp0_iter1_buffer_0_value_V_ad_reg_304 <= buffer_0_value_V_ad_reg_304;
                ap_reg_pp0_iter1_buffer_1_value_V_ad_reg_310 <= buffer_1_value_V_ad_reg_310;
                tmp_10_reg_346 <= tmp_10_fu_247_p1;
                tmp_2_reg_290 <= tmp_2_fu_196_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_lv1_0 = tmp_2_fu_196_p2))) then
                buffer_0_value_V_ad_reg_304 <= col_cast_fu_208_p1(11 - 1 downto 0);
                buffer_1_value_V_ad_reg_310 <= col_cast_fu_208_p1(11 - 1 downto 0);
                icmp1_reg_299 <= icmp1_fu_224_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (tmp_2_reg_290 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                buffer_0_value_V_lo_reg_328 <= buffer_0_value_V_q0;
                buffer_1_value_V_lo_reg_334 <= buffer_1_value_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = tmp_fu_168_p2))) then
                icmp_reg_286 <= icmp_fu_190_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                row_1_reg_281 <= row_1_fu_174_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_lv1_0 = icmp_reg_286) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                tmp_9_reg_340 <= tmp_9_fu_243_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (tmp_2_reg_290 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                tmp_value_V_2_reg_321 <= in_stream_V_value_V_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, tmp_fu_168_p2, ap_CS_fsm_state2, tmp_2_fu_196_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_flag00011011)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1))))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_168_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (tmp_2_fu_196_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (tmp_2_fu_196_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state6 <= ap_CS_fsm(3);

    ap_block_pp0_assign_proc : process(ap_block_pp0_stage0_flag00011011)
    begin
                ap_block_pp0 <= (ap_const_boolean_1 = ap_block_pp0_stage0_flag00011011);
    end process;

        ap_block_pp0_stage0_flag00000000 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_flag00001001_assign_proc : process(in_stream_V_value_V_empty_n, slice_stream_V_value_V_full_n, ap_enable_reg_pp0_iter1, tmp_2_reg_290, ap_enable_reg_pp0_iter2, icmp_reg_286)
    begin
                ap_block_pp0_stage0_flag00001001 <= (((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (tmp_2_reg_290 = ap_const_lv1_0) and (ap_const_logic_0 = in_stream_V_value_V_empty_n)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = icmp_reg_286) and (ap_const_logic_0 = slice_stream_V_value_V_full_n)));
    end process;


    ap_block_pp0_stage0_flag00011001_assign_proc : process(in_stream_V_value_V_empty_n, slice_stream_V_value_V_full_n, ap_enable_reg_pp0_iter1, tmp_2_reg_290, ap_enable_reg_pp0_iter2, icmp_reg_286)
    begin
                ap_block_pp0_stage0_flag00011001 <= (((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (tmp_2_reg_290 = ap_const_lv1_0) and (ap_const_logic_0 = in_stream_V_value_V_empty_n)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = icmp_reg_286) and (ap_const_logic_0 = slice_stream_V_value_V_full_n)));
    end process;


    ap_block_pp0_stage0_flag00011011_assign_proc : process(in_stream_V_value_V_empty_n, slice_stream_V_value_V_full_n, ap_enable_reg_pp0_iter1, tmp_2_reg_290, ap_enable_reg_pp0_iter2, icmp_reg_286)
    begin
                ap_block_pp0_stage0_flag00011011 <= (((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (tmp_2_reg_290 = ap_const_lv1_0) and (ap_const_logic_0 = in_stream_V_value_V_empty_n)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = icmp_reg_286) and (ap_const_logic_0 = slice_stream_V_value_V_full_n)));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_pp0_stage0_iter1_assign_proc : process(in_stream_V_value_V_empty_n, tmp_2_reg_290)
    begin
                ap_block_state4_pp0_stage0_iter1 <= ((tmp_2_reg_290 = ap_const_lv1_0) and (ap_const_logic_0 = in_stream_V_value_V_empty_n));
    end process;


    ap_block_state5_pp0_stage0_iter2_assign_proc : process(slice_stream_V_value_V_full_n, icmp_reg_286)
    begin
                ap_block_state5_pp0_stage0_iter2 <= ((ap_const_lv1_0 = icmp_reg_286) and (ap_const_logic_0 = slice_stream_V_value_V_full_n));
    end process;


    ap_condition_pp0_exit_iter0_state3_assign_proc : process(tmp_2_fu_196_p2)
    begin
        if ((tmp_2_fu_196_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, tmp_fu_168_p2, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_168_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_enable_operation_35_assign_proc : process(tmp_2_fu_196_p2)
    begin
                ap_enable_operation_35 <= (ap_const_lv1_0 = tmp_2_fu_196_p2);
    end process;


    ap_enable_operation_42_assign_proc : process(tmp_2_reg_290)
    begin
                ap_enable_operation_42 <= (tmp_2_reg_290 = ap_const_lv1_0);
    end process;


    ap_enable_operation_55_assign_proc : process(tmp_10_reg_346)
    begin
                ap_enable_operation_55 <= (ap_const_lv1_0 = tmp_10_reg_346);
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_state3_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0)
    begin
                ap_enable_state3_pp0_iter0_stage0 <= ((ap_CS_fsm_pp0_stage0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1));
    end process;


    ap_enable_state4_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1)
    begin
                ap_enable_state4_pp0_iter1_stage0 <= ((ap_CS_fsm_pp0_stage0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_enable_state5_pp0_iter2_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter2)
    begin
                ap_enable_state5_pp0_iter2_stage0 <= ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_CS_fsm_pp0_stage0 = ap_const_logic_1));
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = real_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_0 = ap_enable_reg_pp0_iter0) and (ap_const_logic_0 = ap_enable_reg_pp0_iter1) and (ap_const_logic_0 = ap_enable_reg_pp0_iter2))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    buffer_0_value_V_address0 <= col_cast_fu_208_p1(11 - 1 downto 0);
    buffer_0_value_V_address1 <= ap_reg_pp0_iter1_buffer_0_value_V_ad_reg_304;

    buffer_0_value_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) then 
            buffer_0_value_V_ce0 <= ap_const_logic_1;
        else 
            buffer_0_value_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    buffer_0_value_V_ce1_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            buffer_0_value_V_ce1 <= ap_const_logic_1;
        else 
            buffer_0_value_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    buffer_0_value_V_we1_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_flag00011001, tmp_10_reg_346)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_lv1_0 = tmp_10_reg_346))) then 
            buffer_0_value_V_we1 <= ap_const_logic_1;
        else 
            buffer_0_value_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    buffer_1_value_V_address0 <= col_cast_fu_208_p1(11 - 1 downto 0);

    buffer_1_value_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) then 
            buffer_1_value_V_ce0 <= ap_const_logic_1;
        else 
            buffer_1_value_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    buffer_1_value_V_ce1_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            buffer_1_value_V_ce1 <= ap_const_logic_1;
        else 
            buffer_1_value_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    buffer_1_value_V_we1_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_flag00011001, tmp_10_reg_346)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (tmp_10_reg_346 = ap_const_lv1_1))) then 
            buffer_1_value_V_we1 <= ap_const_logic_1;
        else 
            buffer_1_value_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    col_1_fu_202_p2 <= std_logic_vector(unsigned(col_reg_157) + unsigned(ap_const_lv11_1));
    col_cast_fu_208_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(col_reg_157),64));
    icmp1_fu_224_p2 <= "0" when (tmp_8_fu_214_p4 = ap_const_lv63_0) else "1";
    icmp_fu_190_p2 <= "1" when (tmp_6_fu_180_p4 = ap_const_lv10_0) else "0";

    in_stream_V_value_V_blk_n_assign_proc : process(in_stream_V_value_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00000000, tmp_2_reg_290)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (tmp_2_reg_290 = ap_const_lv1_0))) then 
            in_stream_V_value_V_blk_n <= in_stream_V_value_V_empty_n;
        else 
            in_stream_V_value_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    in_stream_V_value_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, tmp_2_reg_290, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (tmp_2_reg_290 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            in_stream_V_value_V_read <= ap_const_logic_1;
        else 
            in_stream_V_value_V_read <= ap_const_logic_0;
        end if; 
    end process;


    internal_ap_ready_assign_proc : process(tmp_fu_168_p2, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_168_p2 = ap_const_lv1_1))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    p_Val2_2_0_phi_fu_251_p3 <= 
        buffer_1_value_V_lo_reg_334 when (tmp_9_reg_340(0) = '1') else 
        buffer_0_value_V_lo_reg_328;
    p_Val2_2_1_phi_fu_256_p3 <= 
        buffer_0_value_V_lo_reg_328 when (tmp_9_reg_340(0) = '1') else 
        buffer_1_value_V_lo_reg_334;
    p_write_idx_1_1_fu_236_p3 <= 
        write_idx_1_3_fu_230_p2 when (icmp1_reg_299(0) = '1') else 
        write_idx_1_1_reg_146;

    real_start_assign_proc : process(ap_start, real_start_status_reg)
    begin
        if ((ap_const_logic_1 = real_start_status_reg)) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    row_1_fu_174_p2 <= std_logic_vector(unsigned(row_reg_135) + unsigned(ap_const_lv11_1));

    slice_stream_V_value_V_blk_n_assign_proc : process(slice_stream_V_value_V_full_n, ap_block_pp0_stage0_flag00000000, ap_enable_reg_pp0_iter2, icmp_reg_286)
    begin
        if (((ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = icmp_reg_286))) then 
            slice_stream_V_value_V_blk_n <= slice_stream_V_value_V_full_n;
        else 
            slice_stream_V_value_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    slice_stream_V_value_V_din <= ((tmp_value_V_2_reg_321 & p_Val2_2_1_phi_fu_256_p3) & p_Val2_2_0_phi_fu_251_p3);

    slice_stream_V_value_V_write_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_reg_286, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = icmp_reg_286) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            slice_stream_V_value_V_write <= ap_const_logic_1;
        else 
            slice_stream_V_value_V_write <= ap_const_logic_0;
        end if; 
    end process;

    start_out <= real_start;
    start_write <= (ap_start and start_control_reg);
    tmp_10_fu_247_p1 <= p_write_idx_1_1_fu_236_p3(1 - 1 downto 0);
    tmp_2_fu_196_p2 <= "1" when (col_reg_157 = ap_const_lv11_780) else "0";
    tmp_6_fu_180_p4 <= row_reg_135(10 downto 1);
    tmp_8_fu_214_p4 <= write_idx_1_1_phi_fu_149_p4(63 downto 1);
    tmp_9_fu_243_p1 <= p_write_idx_1_1_fu_236_p3(1 - 1 downto 0);
    tmp_fu_168_p2 <= "1" when (row_reg_135 = ap_const_lv11_438) else "0";

    write_idx_1_1_phi_fu_149_p4_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00000000, tmp_2_reg_290, write_idx_1_1_reg_146, p_write_idx_1_1_fu_236_p3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (tmp_2_reg_290 = ap_const_lv1_0))) then 
            write_idx_1_1_phi_fu_149_p4 <= p_write_idx_1_1_fu_236_p3;
        else 
            write_idx_1_1_phi_fu_149_p4 <= write_idx_1_1_reg_146;
        end if; 
    end process;

    write_idx_1_2_fu_271_p2 <= std_logic_vector(unsigned(write_idx_1_1_reg_146) + unsigned(ap_const_lv64_1));
    write_idx_1_3_fu_230_p2 <= std_logic_vector(unsigned(write_idx_1_1_reg_146) + unsigned(ap_const_lv64_FFFFFFFFFFFFFFFE));
end behav;
