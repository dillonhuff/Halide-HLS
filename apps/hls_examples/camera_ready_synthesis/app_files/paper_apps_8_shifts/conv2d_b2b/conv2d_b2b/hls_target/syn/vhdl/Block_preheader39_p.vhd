-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Block_preheader39_p is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_mul_stencil_stream_V_value_V_dout : IN STD_LOGIC_VECTOR (127 downto 0);
    p_mul_stencil_stream_V_value_V_empty_n : IN STD_LOGIC;
    p_mul_stencil_stream_V_value_V_read : OUT STD_LOGIC;
    hw_output_V_value_V : OUT STD_LOGIC_VECTOR (7 downto 0);
    hw_output_V_value_V_ap_vld : OUT STD_LOGIC;
    hw_output_V_value_V_ap_ack : IN STD_LOGIC;
    hw_output_V_last_V : OUT STD_LOGIC_VECTOR (0 downto 0);
    hw_output_V_last_V_ap_vld : OUT STD_LOGIC;
    hw_output_V_last_V_ap_ack : IN STD_LOGIC );
end;


architecture behav of Block_preheader39_p is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_24 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100100";
    constant ap_const_lv32_29 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_44 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000100";
    constant ap_const_lv32_4A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_64 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100100";
    constant ap_const_lv32_6B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001101011";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal p_mul_stencil_stream_V_value_V_blk_n : STD_LOGIC;
    signal hw_output_V_value_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal hw_output_V_last_V_blk_n : STD_LOGIC;
    signal p_9_fu_148_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_9_reg_230 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal tmp_fu_190_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_reg_235 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_p2_mul1_stencil_str_din : STD_LOGIC_VECTOR (31 downto 0);
    signal p_p2_mul1_stencil_str_full_n : STD_LOGIC;
    signal p_p2_mul1_stencil_str_write : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal p_p2_mul1_stencil_str_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal p_p2_mul1_stencil_str_empty_n : STD_LOGIC;
    signal p_p2_mul1_stencil_str_read : STD_LOGIC;
    signal ap_sig_ioackin_hw_output_V_value_V_ap_ack : STD_LOGIC;
    signal ap_reg_ioackin_hw_output_V_value_V_ap_ack : STD_LOGIC := '0';
    signal ap_reg_ioackin_hw_output_V_last_V_ap_ack : STD_LOGIC := '0';
    signal p_s_fu_112_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_6_fu_126_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal p_8_fu_136_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_323_cast_fu_144_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_315_cast_fu_122_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_7_fu_154_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal p_10_fu_164_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_11_fu_176_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_339_cast_cast_fu_186_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_331_cast_cast_fu_172_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_324_cast_fu_196_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_cast_fu_199_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_value_V_6_fu_202_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);

    component fifo_w32_d1_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    p_p2_mul1_stencil_str_fifo_U : component fifo_w32_d1_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => p_p2_mul1_stencil_str_din,
        if_full_n => p_p2_mul1_stencil_str_full_n,
        if_write => p_p2_mul1_stencil_str_write,
        if_dout => p_p2_mul1_stencil_str_dout,
        if_empty_n => p_p2_mul1_stencil_str_empty_n,
        if_read => p_p2_mul1_stencil_str_read);





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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and not(((ap_const_logic_0 = p_p2_mul1_stencil_str_empty_n) or (ap_const_logic_0 = ap_sig_ioackin_hw_output_V_value_V_ap_ack))))) then 
                    ap_done_reg <= ap_const_logic_1;
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
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                    if (not(((ap_const_logic_0 = p_p2_mul1_stencil_str_empty_n) or (ap_const_logic_0 = ap_sig_ioackin_hw_output_V_value_V_ap_ack)))) then 
                        ap_reg_ioackin_hw_output_V_last_V_ap_ack <= ap_const_logic_0;
                    elsif (((p_p2_mul1_stencil_str_empty_n = ap_const_logic_1) and (ap_const_logic_1 = hw_output_V_last_V_ap_ack))) then 
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
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                    if (not(((ap_const_logic_0 = p_p2_mul1_stencil_str_empty_n) or (ap_const_logic_0 = ap_sig_ioackin_hw_output_V_value_V_ap_ack)))) then 
                        ap_reg_ioackin_hw_output_V_value_V_ap_ack <= ap_const_logic_0;
                    elsif (((p_p2_mul1_stencil_str_empty_n = ap_const_logic_1) and (ap_const_logic_1 = hw_output_V_value_V_ap_ack))) then 
                        ap_reg_ioackin_hw_output_V_value_V_ap_ack <= ap_const_logic_1;
                    end if;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = p_mul_stencil_stream_V_value_V_empty_n))))) then
                p_9_reg_230 <= p_9_fu_148_p2;
                tmp_reg_235 <= tmp_fu_190_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, p_mul_stencil_stream_V_value_V_empty_n, ap_CS_fsm_state3, p_p2_mul1_stencil_str_full_n, ap_CS_fsm_state2, p_p2_mul1_stencil_str_empty_n, ap_sig_ioackin_hw_output_V_value_V_ap_ack)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = p_mul_stencil_stream_V_value_V_empty_n))))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (p_p2_mul1_stencil_str_full_n = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and not(((ap_const_logic_0 = p_p2_mul1_stencil_str_empty_n) or (ap_const_logic_0 = ap_sig_ioackin_hw_output_V_value_V_ap_ack))))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, p_mul_stencil_stream_V_value_V_empty_n)
    begin
                ap_block_state1 <= ((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = p_mul_stencil_stream_V_value_V_empty_n));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state3, p_p2_mul1_stencil_str_empty_n, ap_sig_ioackin_hw_output_V_value_V_ap_ack)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) and not(((ap_const_logic_0 = p_p2_mul1_stencil_str_empty_n) or (ap_const_logic_0 = ap_sig_ioackin_hw_output_V_value_V_ap_ack))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state3, p_p2_mul1_stencil_str_empty_n, ap_sig_ioackin_hw_output_V_value_V_ap_ack)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) and not(((ap_const_logic_0 = p_p2_mul1_stencil_str_empty_n) or (ap_const_logic_0 = ap_sig_ioackin_hw_output_V_value_V_ap_ack))))) then 
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

    hw_output_V_last_V <= ap_const_lv1_1;

    hw_output_V_last_V_ap_vld_assign_proc : process(ap_CS_fsm_state3, p_p2_mul1_stencil_str_empty_n, ap_reg_ioackin_hw_output_V_last_V_ap_ack)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) and (p_p2_mul1_stencil_str_empty_n = ap_const_logic_1) and (ap_const_logic_0 = ap_reg_ioackin_hw_output_V_last_V_ap_ack))) then 
            hw_output_V_last_V_ap_vld <= ap_const_logic_1;
        else 
            hw_output_V_last_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    hw_output_V_last_V_blk_n_assign_proc : process(hw_output_V_last_V_ap_ack, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            hw_output_V_last_V_blk_n <= hw_output_V_last_V_ap_ack;
        else 
            hw_output_V_last_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    hw_output_V_value_V <= p_p2_mul1_stencil_str_dout(10 downto 3);

    hw_output_V_value_V_ap_vld_assign_proc : process(ap_CS_fsm_state3, p_p2_mul1_stencil_str_empty_n, ap_reg_ioackin_hw_output_V_value_V_ap_ack)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) and (p_p2_mul1_stencil_str_empty_n = ap_const_logic_1) and (ap_const_logic_0 = ap_reg_ioackin_hw_output_V_value_V_ap_ack))) then 
            hw_output_V_value_V_ap_vld <= ap_const_logic_1;
        else 
            hw_output_V_value_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    hw_output_V_value_V_blk_n_assign_proc : process(hw_output_V_value_V_ap_ack, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            hw_output_V_value_V_blk_n <= hw_output_V_value_V_ap_ack;
        else 
            hw_output_V_value_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    p_10_fu_164_p3 <= (tmp_7_fu_154_p4 & ap_const_lv1_0);
    p_11_fu_176_p4 <= p_mul_stencil_stream_V_value_V_dout(107 downto 100);
    p_315_cast_fu_122_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_s_fu_112_p4),9));
    p_323_cast_fu_144_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_8_fu_136_p3),9));
    p_324_cast_fu_196_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_9_reg_230),10));
    p_331_cast_cast_fu_172_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_10_fu_164_p3),9));
    p_339_cast_cast_fu_186_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_11_fu_176_p4),9));
    p_8_fu_136_p3 <= (tmp_6_fu_126_p4 & ap_const_lv2_0);
    p_9_fu_148_p2 <= std_logic_vector(unsigned(p_323_cast_fu_144_p1) + unsigned(p_315_cast_fu_122_p1));

    p_mul_stencil_stream_V_value_V_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_mul_stencil_stream_V_value_V_empty_n)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
            p_mul_stencil_stream_V_value_V_blk_n <= p_mul_stencil_stream_V_value_V_empty_n;
        else 
            p_mul_stencil_stream_V_value_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_mul_stencil_stream_V_value_V_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, p_mul_stencil_stream_V_value_V_empty_n)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1) or (ap_const_logic_0 = p_mul_stencil_stream_V_value_V_empty_n))))) then 
            p_mul_stencil_stream_V_value_V_read <= ap_const_logic_1;
        else 
            p_mul_stencil_stream_V_value_V_read <= ap_const_logic_0;
        end if; 
    end process;

    p_p2_mul1_stencil_str_din <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_value_V_6_fu_202_p2),32));

    p_p2_mul1_stencil_str_read_assign_proc : process(ap_CS_fsm_state3, p_p2_mul1_stencil_str_empty_n, ap_sig_ioackin_hw_output_V_value_V_ap_ack)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) and not(((ap_const_logic_0 = p_p2_mul1_stencil_str_empty_n) or (ap_const_logic_0 = ap_sig_ioackin_hw_output_V_value_V_ap_ack))))) then 
            p_p2_mul1_stencil_str_read <= ap_const_logic_1;
        else 
            p_p2_mul1_stencil_str_read <= ap_const_logic_0;
        end if; 
    end process;


    p_p2_mul1_stencil_str_write_assign_proc : process(p_p2_mul1_stencil_str_full_n, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (p_p2_mul1_stencil_str_full_n = ap_const_logic_1))) then 
            p_p2_mul1_stencil_str_write <= ap_const_logic_1;
        else 
            p_p2_mul1_stencil_str_write <= ap_const_logic_0;
        end if; 
    end process;

    p_s_fu_112_p4 <= p_mul_stencil_stream_V_value_V_dout(11 downto 4);
    tmp_6_fu_126_p4 <= p_mul_stencil_stream_V_value_V_dout(41 downto 36);
    tmp_7_fu_154_p4 <= p_mul_stencil_stream_V_value_V_dout(74 downto 68);
    tmp_cast_fu_199_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_reg_235),10));
    tmp_fu_190_p2 <= std_logic_vector(unsigned(p_339_cast_cast_fu_186_p1) + unsigned(p_331_cast_cast_fu_172_p1));
    tmp_value_V_6_fu_202_p2 <= std_logic_vector(unsigned(p_324_cast_fu_196_p1) + unsigned(tmp_cast_fu_199_p1));
end behav;
