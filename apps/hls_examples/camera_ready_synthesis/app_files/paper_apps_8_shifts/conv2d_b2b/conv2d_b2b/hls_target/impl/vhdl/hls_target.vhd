-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity hls_target is
port (
    hw_input_V_value_V : IN STD_LOGIC_VECTOR (7 downto 0);
    hw_input_V_last_V : IN STD_LOGIC_VECTOR (0 downto 0);
    hw_output_V_value_V : OUT STD_LOGIC_VECTOR (7 downto 0);
    hw_output_V_last_V : OUT STD_LOGIC_VECTOR (0 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    hw_input_V_value_V_ap_vld : IN STD_LOGIC;
    hw_input_V_value_V_ap_ack : OUT STD_LOGIC;
    hw_input_V_last_V_ap_vld : IN STD_LOGIC;
    hw_input_V_last_V_ap_ack : OUT STD_LOGIC;
    hw_output_V_value_V_ap_vld : OUT STD_LOGIC;
    hw_output_V_value_V_ap_ack : IN STD_LOGIC;
    hw_output_V_last_V_ap_vld : OUT STD_LOGIC;
    hw_output_V_last_V_ap_ack : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC );
end;


architecture behav of hls_target is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "hls_target,hls_ip_2017_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=5.600000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.935000,HLS_SYN_LAT=33,HLS_SYN_TPT=34,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1563,HLS_SYN_LUT=1504}";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal linebuffer_1_U0_ap_start : STD_LOGIC;
    signal linebuffer_1_U0_start_full_n : STD_LOGIC;
    signal linebuffer_1_U0_ap_ready : STD_LOGIC;
    signal linebuffer_1_U0_start_out : STD_LOGIC;
    signal linebuffer_1_U0_start_write : STD_LOGIC;
    signal linebuffer_1_U0_out_stream_V_value_V_din : STD_LOGIC_VECTOR (71 downto 0);
    signal linebuffer_1_U0_out_stream_V_value_V_write : STD_LOGIC;
    signal linebuffer_1_U0_in_axi_stream_V_value_V_ap_ack : STD_LOGIC;
    signal linebuffer_1_U0_in_axi_stream_V_last_V_ap_ack : STD_LOGIC;
    signal linebuffer_1_U0_ap_done : STD_LOGIC;
    signal linebuffer_1_U0_ap_idle : STD_LOGIC;
    signal linebuffer_1_U0_ap_continue : STD_LOGIC;
    signal Loop_1_proc_U0_ap_start : STD_LOGIC;
    signal Loop_1_proc_U0_start_full_n : STD_LOGIC;
    signal Loop_1_proc_U0_ap_ready : STD_LOGIC;
    signal Loop_1_proc_U0_ap_done : STD_LOGIC;
    signal Loop_1_proc_U0_ap_continue : STD_LOGIC;
    signal Loop_1_proc_U0_ap_idle : STD_LOGIC;
    signal Loop_1_proc_U0_start_out : STD_LOGIC;
    signal Loop_1_proc_U0_start_write : STD_LOGIC;
    signal Loop_1_proc_U0_p_hw_input_stencil_stream_V_value_V_read : STD_LOGIC;
    signal Loop_1_proc_U0_p_mul_stencil_update_stream_V_value_V_din : STD_LOGIC_VECTOR (31 downto 0);
    signal Loop_1_proc_U0_p_mul_stencil_update_stream_V_value_V_write : STD_LOGIC;
    signal linebuffer_2_U0_ap_start : STD_LOGIC;
    signal linebuffer_2_U0_start_full_n : STD_LOGIC;
    signal linebuffer_2_U0_ap_ready : STD_LOGIC;
    signal linebuffer_2_U0_start_out : STD_LOGIC;
    signal linebuffer_2_U0_start_write : STD_LOGIC;
    signal linebuffer_2_U0_in_stream_V_value_V_read : STD_LOGIC;
    signal linebuffer_2_U0_out_stream_V_value_V_din : STD_LOGIC_VECTOR (127 downto 0);
    signal linebuffer_2_U0_out_stream_V_value_V_write : STD_LOGIC;
    signal linebuffer_2_U0_ap_done : STD_LOGIC;
    signal linebuffer_2_U0_ap_idle : STD_LOGIC;
    signal linebuffer_2_U0_ap_continue : STD_LOGIC;
    signal Block_preheader39_p_U0_ap_start : STD_LOGIC;
    signal Block_preheader39_p_U0_ap_done : STD_LOGIC;
    signal Block_preheader39_p_U0_ap_continue : STD_LOGIC;
    signal Block_preheader39_p_U0_ap_idle : STD_LOGIC;
    signal Block_preheader39_p_U0_ap_ready : STD_LOGIC;
    signal Block_preheader39_p_U0_p_mul_stencil_stream_V_value_V_read : STD_LOGIC;
    signal Block_preheader39_p_U0_hw_output_V_value_V : STD_LOGIC_VECTOR (7 downto 0);
    signal Block_preheader39_p_U0_hw_output_V_value_V_ap_vld : STD_LOGIC;
    signal Block_preheader39_p_U0_hw_output_V_last_V : STD_LOGIC_VECTOR (0 downto 0);
    signal Block_preheader39_p_U0_hw_output_V_last_V_ap_vld : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal p_hw_input_stencil_st_full_n : STD_LOGIC;
    signal p_hw_input_stencil_st_dout : STD_LOGIC_VECTOR (71 downto 0);
    signal p_hw_input_stencil_st_empty_n : STD_LOGIC;
    signal p_mul_stencil_update_1_full_n : STD_LOGIC;
    signal p_mul_stencil_update_1_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal p_mul_stencil_update_1_empty_n : STD_LOGIC;
    signal p_mul_stencil_stream_s_full_n : STD_LOGIC;
    signal p_mul_stencil_stream_s_dout : STD_LOGIC_VECTOR (127 downto 0);
    signal p_mul_stencil_stream_s_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal start_for_Loop_1_proc_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_Loop_1_proc_U0_full_n : STD_LOGIC;
    signal start_for_Loop_1_proc_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_Loop_1_proc_U0_empty_n : STD_LOGIC;
    signal start_for_linebuffer_2_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_linebuffer_2_U0_full_n : STD_LOGIC;
    signal start_for_linebuffer_2_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_linebuffer_2_U0_empty_n : STD_LOGIC;
    signal start_for_Block_preheader39_p_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_Block_preheader39_p_U0_full_n : STD_LOGIC;
    signal start_for_Block_preheader39_p_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_Block_preheader39_p_U0_empty_n : STD_LOGIC;
    signal Block_preheader39_p_U0_start_full_n : STD_LOGIC;
    signal Block_preheader39_p_U0_start_write : STD_LOGIC;

    component linebuffer_1 IS
    port (
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        in_axi_stream_V_value_V : IN STD_LOGIC_VECTOR (7 downto 0);
        in_axi_stream_V_last_V : IN STD_LOGIC_VECTOR (0 downto 0);
        out_stream_V_value_V_din : OUT STD_LOGIC_VECTOR (71 downto 0);
        out_stream_V_value_V_full_n : IN STD_LOGIC;
        out_stream_V_value_V_write : OUT STD_LOGIC;
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        in_axi_stream_V_value_V_ap_vld : IN STD_LOGIC;
        in_axi_stream_V_value_V_ap_ack : OUT STD_LOGIC;
        in_axi_stream_V_last_V_ap_vld : IN STD_LOGIC;
        in_axi_stream_V_last_V_ap_ack : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;


    component Loop_1_proc IS
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
    end component;


    component linebuffer_2 IS
    port (
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        in_stream_V_value_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        in_stream_V_value_V_empty_n : IN STD_LOGIC;
        in_stream_V_value_V_read : OUT STD_LOGIC;
        out_stream_V_value_V_din : OUT STD_LOGIC_VECTOR (127 downto 0);
        out_stream_V_value_V_full_n : IN STD_LOGIC;
        out_stream_V_value_V_write : OUT STD_LOGIC;
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;


    component Block_preheader39_p IS
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
    end component;


    component fifo_w72_d1_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (71 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (71 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component fifo_w32_d1_S_x IS
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


    component fifo_w128_d1_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (127 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (127 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_Loop_1_fYi IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_linebufg8j IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_Block_phbi IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    linebuffer_1_U0 : component linebuffer_1
    port map (
        ap_start => linebuffer_1_U0_ap_start,
        start_full_n => linebuffer_1_U0_start_full_n,
        ap_ready => linebuffer_1_U0_ap_ready,
        start_out => linebuffer_1_U0_start_out,
        start_write => linebuffer_1_U0_start_write,
        in_axi_stream_V_value_V => hw_input_V_value_V,
        in_axi_stream_V_last_V => hw_input_V_last_V,
        out_stream_V_value_V_din => linebuffer_1_U0_out_stream_V_value_V_din,
        out_stream_V_value_V_full_n => p_hw_input_stencil_st_full_n,
        out_stream_V_value_V_write => linebuffer_1_U0_out_stream_V_value_V_write,
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        in_axi_stream_V_value_V_ap_vld => hw_input_V_value_V_ap_vld,
        in_axi_stream_V_value_V_ap_ack => linebuffer_1_U0_in_axi_stream_V_value_V_ap_ack,
        in_axi_stream_V_last_V_ap_vld => hw_input_V_last_V_ap_vld,
        in_axi_stream_V_last_V_ap_ack => linebuffer_1_U0_in_axi_stream_V_last_V_ap_ack,
        ap_done => linebuffer_1_U0_ap_done,
        ap_idle => linebuffer_1_U0_ap_idle,
        ap_continue => linebuffer_1_U0_ap_continue);

    Loop_1_proc_U0 : component Loop_1_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => Loop_1_proc_U0_ap_start,
        start_full_n => Loop_1_proc_U0_start_full_n,
        ap_ready => Loop_1_proc_U0_ap_ready,
        ap_done => Loop_1_proc_U0_ap_done,
        ap_continue => Loop_1_proc_U0_ap_continue,
        ap_idle => Loop_1_proc_U0_ap_idle,
        start_out => Loop_1_proc_U0_start_out,
        start_write => Loop_1_proc_U0_start_write,
        p_hw_input_stencil_stream_V_value_V_dout => p_hw_input_stencil_st_dout,
        p_hw_input_stencil_stream_V_value_V_empty_n => p_hw_input_stencil_st_empty_n,
        p_hw_input_stencil_stream_V_value_V_read => Loop_1_proc_U0_p_hw_input_stencil_stream_V_value_V_read,
        p_mul_stencil_update_stream_V_value_V_din => Loop_1_proc_U0_p_mul_stencil_update_stream_V_value_V_din,
        p_mul_stencil_update_stream_V_value_V_full_n => p_mul_stencil_update_1_full_n,
        p_mul_stencil_update_stream_V_value_V_write => Loop_1_proc_U0_p_mul_stencil_update_stream_V_value_V_write);

    linebuffer_2_U0 : component linebuffer_2
    port map (
        ap_start => linebuffer_2_U0_ap_start,
        start_full_n => linebuffer_2_U0_start_full_n,
        ap_ready => linebuffer_2_U0_ap_ready,
        start_out => linebuffer_2_U0_start_out,
        start_write => linebuffer_2_U0_start_write,
        in_stream_V_value_V_dout => p_mul_stencil_update_1_dout,
        in_stream_V_value_V_empty_n => p_mul_stencil_update_1_empty_n,
        in_stream_V_value_V_read => linebuffer_2_U0_in_stream_V_value_V_read,
        out_stream_V_value_V_din => linebuffer_2_U0_out_stream_V_value_V_din,
        out_stream_V_value_V_full_n => p_mul_stencil_stream_s_full_n,
        out_stream_V_value_V_write => linebuffer_2_U0_out_stream_V_value_V_write,
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_done => linebuffer_2_U0_ap_done,
        ap_idle => linebuffer_2_U0_ap_idle,
        ap_continue => linebuffer_2_U0_ap_continue);

    Block_preheader39_p_U0 : component Block_preheader39_p
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => Block_preheader39_p_U0_ap_start,
        ap_done => Block_preheader39_p_U0_ap_done,
        ap_continue => Block_preheader39_p_U0_ap_continue,
        ap_idle => Block_preheader39_p_U0_ap_idle,
        ap_ready => Block_preheader39_p_U0_ap_ready,
        p_mul_stencil_stream_V_value_V_dout => p_mul_stencil_stream_s_dout,
        p_mul_stencil_stream_V_value_V_empty_n => p_mul_stencil_stream_s_empty_n,
        p_mul_stencil_stream_V_value_V_read => Block_preheader39_p_U0_p_mul_stencil_stream_V_value_V_read,
        hw_output_V_value_V => Block_preheader39_p_U0_hw_output_V_value_V,
        hw_output_V_value_V_ap_vld => Block_preheader39_p_U0_hw_output_V_value_V_ap_vld,
        hw_output_V_value_V_ap_ack => hw_output_V_value_V_ap_ack,
        hw_output_V_last_V => Block_preheader39_p_U0_hw_output_V_last_V,
        hw_output_V_last_V_ap_vld => Block_preheader39_p_U0_hw_output_V_last_V_ap_vld,
        hw_output_V_last_V_ap_ack => hw_output_V_last_V_ap_ack);

    p_hw_input_stencil_st_U : component fifo_w72_d1_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => linebuffer_1_U0_out_stream_V_value_V_din,
        if_full_n => p_hw_input_stencil_st_full_n,
        if_write => linebuffer_1_U0_out_stream_V_value_V_write,
        if_dout => p_hw_input_stencil_st_dout,
        if_empty_n => p_hw_input_stencil_st_empty_n,
        if_read => Loop_1_proc_U0_p_hw_input_stencil_stream_V_value_V_read);

    p_mul_stencil_update_1_U : component fifo_w32_d1_S_x
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => Loop_1_proc_U0_p_mul_stencil_update_stream_V_value_V_din,
        if_full_n => p_mul_stencil_update_1_full_n,
        if_write => Loop_1_proc_U0_p_mul_stencil_update_stream_V_value_V_write,
        if_dout => p_mul_stencil_update_1_dout,
        if_empty_n => p_mul_stencil_update_1_empty_n,
        if_read => linebuffer_2_U0_in_stream_V_value_V_read);

    p_mul_stencil_stream_s_U : component fifo_w128_d1_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => linebuffer_2_U0_out_stream_V_value_V_din,
        if_full_n => p_mul_stencil_stream_s_full_n,
        if_write => linebuffer_2_U0_out_stream_V_value_V_write,
        if_dout => p_mul_stencil_stream_s_dout,
        if_empty_n => p_mul_stencil_stream_s_empty_n,
        if_read => Block_preheader39_p_U0_p_mul_stencil_stream_V_value_V_read);

    start_for_Loop_1_fYi_U : component start_for_Loop_1_fYi
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_Loop_1_proc_U0_din,
        if_full_n => start_for_Loop_1_proc_U0_full_n,
        if_write => linebuffer_1_U0_start_write,
        if_dout => start_for_Loop_1_proc_U0_dout,
        if_empty_n => start_for_Loop_1_proc_U0_empty_n,
        if_read => Loop_1_proc_U0_ap_ready);

    start_for_linebufg8j_U : component start_for_linebufg8j
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_linebuffer_2_U0_din,
        if_full_n => start_for_linebuffer_2_U0_full_n,
        if_write => Loop_1_proc_U0_start_write,
        if_dout => start_for_linebuffer_2_U0_dout,
        if_empty_n => start_for_linebuffer_2_U0_empty_n,
        if_read => linebuffer_2_U0_ap_ready);

    start_for_Block_phbi_U : component start_for_Block_phbi
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_Block_preheader39_p_U0_din,
        if_full_n => start_for_Block_preheader39_p_U0_full_n,
        if_write => linebuffer_2_U0_start_write,
        if_dout => start_for_Block_preheader39_p_U0_dout,
        if_empty_n => start_for_Block_preheader39_p_U0_empty_n,
        if_read => Block_preheader39_p_U0_ap_ready);




    Block_preheader39_p_U0_ap_continue <= ap_const_logic_1;
    Block_preheader39_p_U0_ap_start <= start_for_Block_preheader39_p_U0_empty_n;
    Block_preheader39_p_U0_start_full_n <= ap_const_logic_0;
    Block_preheader39_p_U0_start_write <= ap_const_logic_0;
    Loop_1_proc_U0_ap_continue <= ap_const_logic_1;
    Loop_1_proc_U0_ap_start <= start_for_Loop_1_proc_U0_empty_n;
    Loop_1_proc_U0_start_full_n <= (ap_const_logic_0 or start_for_linebuffer_2_U0_full_n);
    ap_done <= Block_preheader39_p_U0_ap_done;
    ap_idle <= (linebuffer_1_U0_ap_idle and Loop_1_proc_U0_ap_idle and linebuffer_2_U0_ap_idle and Block_preheader39_p_U0_ap_idle);
    ap_ready <= linebuffer_1_U0_ap_ready;
    ap_sync_continue <= ap_const_logic_1;
    ap_sync_done <= Block_preheader39_p_U0_ap_done;
    ap_sync_ready <= linebuffer_1_U0_ap_ready;
    hw_input_V_last_V_ap_ack <= linebuffer_1_U0_in_axi_stream_V_last_V_ap_ack;
    hw_input_V_value_V_ap_ack <= linebuffer_1_U0_in_axi_stream_V_value_V_ap_ack;
    hw_output_V_last_V <= Block_preheader39_p_U0_hw_output_V_last_V;
    hw_output_V_last_V_ap_vld <= Block_preheader39_p_U0_hw_output_V_last_V_ap_vld;
    hw_output_V_value_V <= Block_preheader39_p_U0_hw_output_V_value_V;
    hw_output_V_value_V_ap_vld <= Block_preheader39_p_U0_hw_output_V_value_V_ap_vld;
    linebuffer_1_U0_ap_continue <= ap_const_logic_1;
    linebuffer_1_U0_ap_start <= ap_start;
    linebuffer_1_U0_start_full_n <= (start_for_Loop_1_proc_U0_full_n or ap_const_logic_0);
    linebuffer_2_U0_ap_continue <= ap_const_logic_1;
    linebuffer_2_U0_ap_start <= start_for_linebuffer_2_U0_empty_n;
    linebuffer_2_U0_start_full_n <= (ap_const_logic_0 or start_for_Block_preheader39_p_U0_full_n);
    start_for_Block_preheader39_p_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_Loop_1_proc_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_linebuffer_2_U0_din <= (0=>ap_const_logic_1, others=>'-');
end behav;
