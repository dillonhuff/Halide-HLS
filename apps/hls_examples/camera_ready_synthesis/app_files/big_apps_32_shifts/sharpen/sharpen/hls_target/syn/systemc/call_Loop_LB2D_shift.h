// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _call_Loop_LB2D_shift_HH_
#define _call_Loop_LB2D_shift_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct call_Loop_LB2D_shift : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<96> > slice_stream_V_value_V_dout;
    sc_in< sc_logic > slice_stream_V_value_V_empty_n;
    sc_out< sc_logic > slice_stream_V_value_V_read;
    sc_out< sc_lv<288> > out_stream_V_value_V_din;
    sc_in< sc_logic > out_stream_V_value_V_full_n;
    sc_out< sc_logic > out_stream_V_value_V_write;


    // Module declarations
    call_Loop_LB2D_shift(sc_module_name name);
    SC_HAS_PROCESS(call_Loop_LB2D_shift);

    ~call_Loop_LB2D_shift();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > slice_stream_V_value_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_flag00000000;
    sc_signal< sc_logic > out_stream_V_value_V_blk_n;
    sc_signal< sc_lv<1> > icmp_reg_300;
    sc_signal< sc_lv<11> > i_0_i_i_reg_104;
    sc_signal< sc_lv<1> > tmp_1_fu_115_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > n1_1_fu_121_p2;
    sc_signal< sc_lv<11> > n1_1_reg_286;
    sc_signal< sc_lv<1> > tmp_3_fu_127_p2;
    sc_signal< sc_lv<1> > tmp_3_reg_291;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_flag00011001;
    sc_signal< sc_lv<11> > i_fu_133_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > icmp_fu_149_p2;
    sc_signal< bool > ap_block_pp0_stage0_flag00011011;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_lv<11> > n1_reg_93;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_flag00001001;
    sc_signal< sc_lv<96> > buffer_1_value_V_fu_72;
    sc_signal< sc_lv<96> > buffer_0_value_V_fu_76;
    sc_signal< sc_lv<10> > tmp_fu_139_p4;
    sc_signal< sc_lv<32> > p_Result_5_2_2_fu_223_p4;
    sc_signal< sc_lv<32> > p_Result_5_2_1_fu_213_p4;
    sc_signal< sc_lv<32> > p_Result_5_2_fu_203_p4;
    sc_signal< sc_lv<32> > p_Result_5_1_2_fu_193_p4;
    sc_signal< sc_lv<32> > p_Result_5_1_1_fu_183_p4;
    sc_signal< sc_lv<32> > p_Result_5_1_fu_173_p4;
    sc_signal< sc_lv<32> > tmp_5_fu_169_p1;
    sc_signal< sc_lv<32> > tmp_4_fu_165_p1;
    sc_signal< sc_lv<32> > tmp_2_fu_161_p1;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<11> ap_const_lv11_436;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<11> ap_const_lv11_780;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_5F;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0_flag00000000();
    void thread_ap_block_pp0_stage0_flag00001001();
    void thread_ap_block_pp0_stage0_flag00011001();
    void thread_ap_block_pp0_stage0_flag00011011();
    void thread_ap_block_state1();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_i_fu_133_p2();
    void thread_icmp_fu_149_p2();
    void thread_n1_1_fu_121_p2();
    void thread_out_stream_V_value_V_blk_n();
    void thread_out_stream_V_value_V_din();
    void thread_out_stream_V_value_V_write();
    void thread_p_Result_5_1_1_fu_183_p4();
    void thread_p_Result_5_1_2_fu_193_p4();
    void thread_p_Result_5_1_fu_173_p4();
    void thread_p_Result_5_2_1_fu_213_p4();
    void thread_p_Result_5_2_2_fu_223_p4();
    void thread_p_Result_5_2_fu_203_p4();
    void thread_slice_stream_V_value_V_blk_n();
    void thread_slice_stream_V_value_V_read();
    void thread_tmp_1_fu_115_p2();
    void thread_tmp_2_fu_161_p1();
    void thread_tmp_3_fu_127_p2();
    void thread_tmp_4_fu_165_p1();
    void thread_tmp_5_fu_169_p1();
    void thread_tmp_fu_139_p4();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
