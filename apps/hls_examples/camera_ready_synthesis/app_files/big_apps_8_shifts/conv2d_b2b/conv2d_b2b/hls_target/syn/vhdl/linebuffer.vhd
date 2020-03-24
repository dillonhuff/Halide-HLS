-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity linebuffer is
port (
    in_stream_V_value_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    in_stream_V_value_V_empty_n : IN STD_LOGIC;
    in_stream_V_value_V_read : OUT STD_LOGIC;
    out_stream_V_value_V_din : OUT STD_LOGIC_VECTOR (71 downto 0);
    out_stream_V_value_V_full_n : IN STD_LOGIC;
    out_stream_V_value_V_write : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of linebuffer is 
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv72_0 : STD_LOGIC_VECTOR (71 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';

    signal call_U0_in_stream_V_value_V_read : STD_LOGIC;
    signal call_U0_out_stream_V_value_V_din : STD_LOGIC_VECTOR (71 downto 0);
    signal call_U0_out_stream_V_value_V_write : STD_LOGIC;
    signal call_U0_ap_done : STD_LOGIC;
    signal call_U0_ap_start : STD_LOGIC;
    signal call_U0_ap_ready : STD_LOGIC;
    signal call_U0_ap_idle : STD_LOGIC;
    signal call_U0_ap_continue : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal call_U0_start_full_n : STD_LOGIC;
    signal call_U0_start_write : STD_LOGIC;

    component call IS
    port (
        in_stream_V_value_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        in_stream_V_value_V_empty_n : IN STD_LOGIC;
        in_stream_V_value_V_read : OUT STD_LOGIC;
        out_stream_V_value_V_din : OUT STD_LOGIC_VECTOR (71 downto 0);
        out_stream_V_value_V_full_n : IN STD_LOGIC;
        out_stream_V_value_V_write : OUT STD_LOGIC;
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;



begin
    call_U0 : component call
    port map (
        in_stream_V_value_V_dout => in_stream_V_value_V_dout,
        in_stream_V_value_V_empty_n => in_stream_V_value_V_empty_n,
        in_stream_V_value_V_read => call_U0_in_stream_V_value_V_read,
        out_stream_V_value_V_din => call_U0_out_stream_V_value_V_din,
        out_stream_V_value_V_full_n => out_stream_V_value_V_full_n,
        out_stream_V_value_V_write => call_U0_out_stream_V_value_V_write,
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_done => call_U0_ap_done,
        ap_start => call_U0_ap_start,
        ap_ready => call_U0_ap_ready,
        ap_idle => call_U0_ap_idle,
        ap_continue => call_U0_ap_continue);




    ap_done <= call_U0_ap_done;
    ap_idle <= call_U0_ap_idle;
    ap_ready <= call_U0_ap_ready;
    ap_sync_continue <= ap_continue;
    ap_sync_done <= call_U0_ap_done;
    ap_sync_ready <= call_U0_ap_ready;
    call_U0_ap_continue <= ap_continue;
    call_U0_ap_start <= ap_start;
    call_U0_start_full_n <= ap_const_logic_0;
    call_U0_start_write <= ap_const_logic_0;
    in_stream_V_value_V_read <= call_U0_in_stream_V_value_V_read;
    out_stream_V_value_V_din <= call_U0_out_stream_V_value_V_din;
    out_stream_V_value_V_write <= call_U0_out_stream_V_value_V_write;
end behav;
