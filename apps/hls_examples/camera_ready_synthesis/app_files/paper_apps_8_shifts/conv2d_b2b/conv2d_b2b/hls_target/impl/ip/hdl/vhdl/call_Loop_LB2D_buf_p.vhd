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
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
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
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_flag00000000 : BOOLEAN;
    signal tmp_2_reg_305 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_pp0_iter1_tmp_2_reg_305 : STD_LOGIC_VECTOR (0 downto 0);
    signal slice_stream_V_value_V_blk_n : STD_LOGIC;
    signal icmp_reg_301 : STD_LOGIC_VECTOR (0 downto 0);
    signal write_idx_1_1_reg_154 : STD_LOGIC_VECTOR (63 downto 0);
    signal col_reg_165 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_176_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal row_1_fu_182_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal row_1_reg_296 : STD_LOGIC_VECTOR (2 downto 0);
    signal icmp_fu_198_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_2_fu_204_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011001 : BOOLEAN;
    signal col_1_fu_210_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal icmp1_fu_234_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp1_reg_314 : STD_LOGIC_VECTOR (0 downto 0);
    signal buffer_0_value_V_ad_reg_329 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_reg_pp0_iter1_buffer_0_value_V_ad_reg_329 : STD_LOGIC_VECTOR (1 downto 0);
    signal buffer_1_value_V_ad_reg_334 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_reg_pp0_iter1_buffer_1_value_V_ad_reg_334 : STD_LOGIC_VECTOR (1 downto 0);
    signal p_write_idx_1_1_fu_246_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal p_Val2_3_0_phi_fu_257_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Val2_3_0_phi_reg_344 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Val2_3_1_phi_fu_265_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Val2_3_1_phi_reg_349 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_13_fu_273_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_13_reg_354 : STD_LOGIC_VECTOR (0 downto 0);
    signal write_idx_1_2_fu_286_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_block_pp0_stage0_flag00011011 : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal buffer_0_value_V_address0 : STD_LOGIC_VECTOR (1 downto 0);
    signal buffer_0_value_V_ce0 : STD_LOGIC;
    signal buffer_0_value_V_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_0_value_V_address1 : STD_LOGIC_VECTOR (1 downto 0);
    signal buffer_0_value_V_ce1 : STD_LOGIC;
    signal buffer_0_value_V_we1 : STD_LOGIC;
    signal buffer_1_value_V_address0 : STD_LOGIC_VECTOR (1 downto 0);
    signal buffer_1_value_V_ce0 : STD_LOGIC;
    signal buffer_1_value_V_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal buffer_1_value_V_ce1 : STD_LOGIC;
    signal buffer_1_value_V_we1 : STD_LOGIC;
    signal write_idx_1_reg_131 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal row_reg_143 : STD_LOGIC_VECTOR (2 downto 0);
    signal write_idx_1_1_phi_fu_157_p4 : STD_LOGIC_VECTOR (63 downto 0);
    signal col_cast_fu_216_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_flag00001001 : BOOLEAN;
    signal tmp_10_fu_188_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_11_fu_224_p4 : STD_LOGIC_VECTOR (62 downto 0);
    signal write_idx_1_3_fu_240_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_12_fu_253_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0 : BOOLEAN;
    signal ap_enable_operation_57 : BOOLEAN;
    signal ap_enable_state5_pp0_iter2_stage0 : BOOLEAN;
    signal ap_predicate_op38_load_state3 : BOOLEAN;
    signal ap_enable_operation_38 : BOOLEAN;
    signal ap_enable_state3_pp0_iter0_stage0 : BOOLEAN;
    signal ap_enable_operation_45 : BOOLEAN;
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
        address0 : IN STD_LOGIC_VECTOR (1 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        address1 : IN STD_LOGIC_VECTOR (1 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    buffer_0_value_V_U : component call_Loop_LB2D_bubkb
    generic map (
        DataWidth => 8,
        AddressRange => 4,
        AddressWidth => 2)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => buffer_0_value_V_address0,
        ce0 => buffer_0_value_V_ce0,
        q0 => buffer_0_value_V_q0,
        address1 => buffer_0_value_V_address1,
        ce1 => buffer_0_value_V_ce1,
        we1 => buffer_0_value_V_we1,
        d1 => in_stream_V_value_V_dout);

    buffer_1_value_V_U : component call_Loop_LB2D_bubkb
    generic map (
        DataWidth => 8,
        AddressRange => 4,
        AddressWidth => 2)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => buffer_1_value_V_address0,
        ce0 => buffer_1_value_V_ce0,
        q0 => buffer_1_value_V_q0,
        address1 => ap_reg_pp0_iter1_buffer_1_value_V_ad_reg_334,
        ce1 => buffer_1_value_V_ce1,
        we1 => buffer_1_value_V_we1,
        d1 => in_stream_V_value_V_dout);





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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_176_p2 = ap_const_lv1_1))) then 
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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = tmp_fu_176_p2))) then 
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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = tmp_fu_176_p2))) then 
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


    col_reg_165_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_0 = tmp_2_fu_204_p2))) then 
                col_reg_165 <= col_1_fu_210_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = tmp_fu_176_p2))) then 
                col_reg_165 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    row_reg_143_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                row_reg_143 <= row_1_reg_296;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1))))) then 
                row_reg_143 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    write_idx_1_1_reg_154_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (tmp_2_reg_305 = ap_const_lv1_0))) then 
                write_idx_1_1_reg_154 <= p_write_idx_1_1_fu_246_p3;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = tmp_fu_176_p2))) then 
                write_idx_1_1_reg_154 <= write_idx_1_reg_131;
            end if; 
        end if;
    end process;

    write_idx_1_reg_131_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                write_idx_1_reg_131 <= write_idx_1_2_fu_286_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1))))) then 
                write_idx_1_reg_131 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                ap_reg_pp0_iter1_buffer_0_value_V_ad_reg_329 <= buffer_0_value_V_ad_reg_329;
                ap_reg_pp0_iter1_buffer_1_value_V_ad_reg_334 <= buffer_1_value_V_ad_reg_334;
                ap_reg_pp0_iter1_tmp_2_reg_305 <= tmp_2_reg_305;
                tmp_13_reg_354 <= tmp_13_fu_273_p1;
                tmp_2_reg_305 <= tmp_2_fu_204_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_lv1_0 = tmp_2_fu_204_p2))) then
                buffer_0_value_V_ad_reg_329 <= col_cast_fu_216_p1(2 - 1 downto 0);
                buffer_1_value_V_ad_reg_334 <= col_cast_fu_216_p1(2 - 1 downto 0);
                icmp1_reg_314 <= icmp1_fu_234_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = tmp_fu_176_p2))) then
                icmp_reg_301 <= icmp_fu_198_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_0 = icmp_reg_301) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                p_Val2_3_0_phi_reg_344 <= p_Val2_3_0_phi_fu_257_p3;
                p_Val2_3_1_phi_reg_349 <= p_Val2_3_1_phi_fu_265_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                row_1_reg_296 <= row_1_fu_182_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter2, tmp_fu_176_p2, ap_CS_fsm_state2, tmp_2_fu_204_p2, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00011011)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1))))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_176_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (tmp_2_fu_204_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (tmp_2_fu_204_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)))) then
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

    ap_block_pp0_stage0_flag00001001_assign_proc : process(in_stream_V_value_V_empty_n, slice_stream_V_value_V_full_n, ap_enable_reg_pp0_iter2, ap_reg_pp0_iter1_tmp_2_reg_305, icmp_reg_301)
    begin
                ap_block_pp0_stage0_flag00001001 <= ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (((ap_reg_pp0_iter1_tmp_2_reg_305 = ap_const_lv1_0) and (ap_const_logic_0 = in_stream_V_value_V_empty_n)) or ((ap_const_lv1_0 = icmp_reg_301) and (ap_const_logic_0 = slice_stream_V_value_V_full_n))));
    end process;


    ap_block_pp0_stage0_flag00011001_assign_proc : process(in_stream_V_value_V_empty_n, slice_stream_V_value_V_full_n, ap_enable_reg_pp0_iter2, ap_reg_pp0_iter1_tmp_2_reg_305, icmp_reg_301)
    begin
                ap_block_pp0_stage0_flag00011001 <= ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (((ap_reg_pp0_iter1_tmp_2_reg_305 = ap_const_lv1_0) and (ap_const_logic_0 = in_stream_V_value_V_empty_n)) or ((ap_const_lv1_0 = icmp_reg_301) and (ap_const_logic_0 = slice_stream_V_value_V_full_n))));
    end process;


    ap_block_pp0_stage0_flag00011011_assign_proc : process(in_stream_V_value_V_empty_n, slice_stream_V_value_V_full_n, ap_enable_reg_pp0_iter2, ap_reg_pp0_iter1_tmp_2_reg_305, icmp_reg_301)
    begin
                ap_block_pp0_stage0_flag00011011 <= ((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (((ap_reg_pp0_iter1_tmp_2_reg_305 = ap_const_lv1_0) and (ap_const_logic_0 = in_stream_V_value_V_empty_n)) or ((ap_const_lv1_0 = icmp_reg_301) and (ap_const_logic_0 = slice_stream_V_value_V_full_n))));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state5_pp0_stage0_iter2_assign_proc : process(in_stream_V_value_V_empty_n, slice_stream_V_value_V_full_n, ap_reg_pp0_iter1_tmp_2_reg_305, icmp_reg_301)
    begin
                ap_block_state5_pp0_stage0_iter2 <= (((ap_reg_pp0_iter1_tmp_2_reg_305 = ap_const_lv1_0) and (ap_const_logic_0 = in_stream_V_value_V_empty_n)) or ((ap_const_lv1_0 = icmp_reg_301) and (ap_const_logic_0 = slice_stream_V_value_V_full_n)));
    end process;


    ap_condition_pp0_exit_iter0_state3_assign_proc : process(tmp_2_fu_204_p2)
    begin
        if ((tmp_2_fu_204_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, tmp_fu_176_p2, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_176_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_enable_operation_38_assign_proc : process(ap_predicate_op38_load_state3)
    begin
                ap_enable_operation_38 <= (ap_const_boolean_1 = ap_predicate_op38_load_state3);
    end process;


    ap_enable_operation_45_assign_proc : process(icmp_reg_301)
    begin
                ap_enable_operation_45 <= (ap_const_lv1_0 = icmp_reg_301);
    end process;


    ap_enable_operation_57_assign_proc : process(tmp_13_reg_354)
    begin
                ap_enable_operation_57 <= (ap_const_lv1_0 = tmp_13_reg_354);
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


    ap_enable_state5_pp0_iter2_stage0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_CS_fsm_pp0_stage0)
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_logic_0 = ap_enable_reg_pp0_iter0) and (ap_const_logic_0 = ap_enable_reg_pp0_iter1) and (ap_const_logic_0 = ap_enable_reg_pp0_iter2))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_predicate_op38_load_state3_assign_proc : process(icmp_reg_301, tmp_2_fu_204_p2)
    begin
                ap_predicate_op38_load_state3 <= ((ap_const_lv1_0 = icmp_reg_301) and (ap_const_lv1_0 = tmp_2_fu_204_p2));
    end process;

    ap_ready <= internal_ap_ready;
    buffer_0_value_V_address0 <= col_cast_fu_216_p1(2 - 1 downto 0);
    buffer_0_value_V_address1 <= ap_reg_pp0_iter1_buffer_0_value_V_ad_reg_329;

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


    buffer_0_value_V_we1_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_flag00011001, tmp_13_reg_354)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_lv1_0 = tmp_13_reg_354))) then 
            buffer_0_value_V_we1 <= ap_const_logic_1;
        else 
            buffer_0_value_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    buffer_1_value_V_address0 <= col_cast_fu_216_p1(2 - 1 downto 0);

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


    buffer_1_value_V_we1_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_flag00011001, tmp_13_reg_354)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (tmp_13_reg_354 = ap_const_lv1_1))) then 
            buffer_1_value_V_we1 <= ap_const_logic_1;
        else 
            buffer_1_value_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    col_1_fu_210_p2 <= std_logic_vector(unsigned(col_reg_165) + unsigned(ap_const_lv3_1));
    col_cast_fu_216_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(col_reg_165),64));
    icmp1_fu_234_p2 <= "0" when (tmp_11_fu_224_p4 = ap_const_lv63_0) else "1";
    icmp_fu_198_p2 <= "1" when (tmp_10_fu_188_p4 = ap_const_lv2_0) else "0";

    in_stream_V_value_V_blk_n_assign_proc : process(in_stream_V_value_V_empty_n, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_flag00000000, ap_reg_pp0_iter1_tmp_2_reg_305)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (ap_reg_pp0_iter1_tmp_2_reg_305 = ap_const_lv1_0))) then 
            in_stream_V_value_V_blk_n <= in_stream_V_value_V_empty_n;
        else 
            in_stream_V_value_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    in_stream_V_value_V_read_assign_proc : process(ap_enable_reg_pp0_iter2, ap_reg_pp0_iter1_tmp_2_reg_305, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_reg_pp0_iter1_tmp_2_reg_305 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            in_stream_V_value_V_read <= ap_const_logic_1;
        else 
            in_stream_V_value_V_read <= ap_const_logic_0;
        end if; 
    end process;


    internal_ap_ready_assign_proc : process(tmp_fu_176_p2, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_fu_176_p2 = ap_const_lv1_1))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    p_Val2_3_0_phi_fu_257_p3 <= 
        buffer_1_value_V_q0 when (tmp_12_fu_253_p1(0) = '1') else 
        buffer_0_value_V_q0;
    p_Val2_3_1_phi_fu_265_p3 <= 
        buffer_0_value_V_q0 when (tmp_12_fu_253_p1(0) = '1') else 
        buffer_1_value_V_q0;
    p_write_idx_1_1_fu_246_p3 <= 
        write_idx_1_3_fu_240_p2 when (icmp1_reg_314(0) = '1') else 
        write_idx_1_1_reg_154;

    real_start_assign_proc : process(ap_start, real_start_status_reg)
    begin
        if ((ap_const_logic_1 = real_start_status_reg)) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    row_1_fu_182_p2 <= std_logic_vector(unsigned(row_reg_143) + unsigned(ap_const_lv3_1));

    slice_stream_V_value_V_blk_n_assign_proc : process(slice_stream_V_value_V_full_n, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_flag00000000, icmp_reg_301)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (ap_const_lv1_0 = icmp_reg_301))) then 
            slice_stream_V_value_V_blk_n <= slice_stream_V_value_V_full_n;
        else 
            slice_stream_V_value_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    slice_stream_V_value_V_din <= ((in_stream_V_value_V_dout & p_Val2_3_1_phi_reg_349) & p_Val2_3_0_phi_reg_344);

    slice_stream_V_value_V_write_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_reg_301, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_const_lv1_0 = icmp_reg_301) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            slice_stream_V_value_V_write <= ap_const_logic_1;
        else 
            slice_stream_V_value_V_write <= ap_const_logic_0;
        end if; 
    end process;

    start_out <= real_start;
    start_write <= (ap_start and start_control_reg);
    tmp_10_fu_188_p4 <= row_reg_143(2 downto 1);
    tmp_11_fu_224_p4 <= write_idx_1_1_phi_fu_157_p4(63 downto 1);
    tmp_12_fu_253_p1 <= p_write_idx_1_1_fu_246_p3(1 - 1 downto 0);
    tmp_13_fu_273_p1 <= p_write_idx_1_1_fu_246_p3(1 - 1 downto 0);
    tmp_2_fu_204_p2 <= "1" when (col_reg_165 = ap_const_lv3_4) else "0";
    tmp_fu_176_p2 <= "1" when (row_reg_143 = ap_const_lv3_4) else "0";

    write_idx_1_1_phi_fu_157_p4_assign_proc : process(ap_block_pp0_stage0_flag00000000, tmp_2_reg_305, write_idx_1_1_reg_154, ap_CS_fsm_pp0_stage0, p_write_idx_1_1_fu_246_p3, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (tmp_2_reg_305 = ap_const_lv1_0))) then 
            write_idx_1_1_phi_fu_157_p4 <= p_write_idx_1_1_fu_246_p3;
        else 
            write_idx_1_1_phi_fu_157_p4 <= write_idx_1_1_reg_154;
        end if; 
    end process;

    write_idx_1_2_fu_286_p2 <= std_logic_vector(unsigned(write_idx_1_1_reg_154) + unsigned(ap_const_lv64_1));
    write_idx_1_3_fu_240_p2 <= std_logic_vector(unsigned(write_idx_1_1_reg_154) + unsigned(ap_const_lv64_FFFFFFFFFFFFFFFE));
end behav;