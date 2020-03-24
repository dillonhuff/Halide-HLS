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
    sc_in< sc_lv<24> > slice_stream_V_value_V_dout;
    sc_in< sc_logic > slice_stream_V_value_V_empty_n;
    sc_out< sc_logic > slice_stream_V_value_V_read;
    sc_out< sc_lv<72> > out_stream_V_value_V_din;
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
    sc_signal< sc_lv<1> > icmp_reg_298;
    sc_signal< sc_lv<11> > i_0_i_i_reg_102;
    sc_signal< sc_lv<1> > tmp_1_fu_113_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > n1_1_fu_119_p2;
    sc_signal< sc_lv<11> > n1_1_reg_284;
    sc_signal< sc_lv<1> > tmp_3_fu_125_p2;
    sc_signal< sc_lv<1> > tmp_3_reg_289;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_flag00011001;
    sc_signal< sc_lv<11> > i_fu_131_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > icmp_fu_147_p2;
    sc_signal< bool > ap_block_pp0_stage0_flag00011011;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_lv<11> > n1_reg_91;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_flag00001001;
    sc_signal< sc_lv<24> > buffer_1_value_V_fu_70;
    sc_signal< sc_lv<24> > buffer_0_value_V_fu_74;
    sc_signal< sc_lv<10> > tmp_fu_137_p4;
    sc_signal< sc_lv<8> > p_Result_5_2_2_fu_221_p4;
    sc_signal< sc_lv<8> > p_Result_5_2_1_fu_211_p4;
    sc_signal< sc_lv<8> > p_Result_5_2_fu_201_p4;
    sc_signal< sc_lv<8> > p_Result_5_1_2_fu_191_p4;
    sc_signal< sc_lv<8> > p_Result_5_1_1_fu_181_p4;
    sc_signal< sc_lv<8> > p_Result_5_1_fu_171_p4;
    sc_signal< sc_lv<8> > tmp_6_fu_167_p1;
    sc_signal< sc_lv<8> > tmp_5_fu_163_p1;
    sc_signal< sc_lv<8> > tmp_4_fu_159_p1;
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
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
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
    void thread_i_fu_131_p2();
    void thread_icmp_fu_147_p2();
    void thread_n1_1_fu_119_p2();
    void thread_out_stream_V_value_V_blk_n();
    void thread_out_stream_V_value_V_din();
    void thread_out_stream_V_value_V_write();
    void thread_p_Result_5_1_1_fu_181_p4();
    void thread_p_Result_5_1_2_fu_191_p4();
    void thread_p_Result_5_1_fu_171_p4();
    void thread_p_Result_5_2_1_fu_211_p4();
    void thread_p_Result_5_2_2_fu_221_p4();
    void thread_p_Result_5_2_fu_201_p4();
    void thread_slice_stream_V_value_V_blk_n();
    void thread_slice_stream_V_value_V_read();
    void thread_tmp_1_fu_113_p2();
    void thread_tmp_3_fu_125_p2();
    void thread_tmp_4_fu_159_p1();
    void thread_tmp_5_fu_163_p1();
    void thread_tmp_6_fu_167_p1();
    void thread_tmp_fu_137_p4();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
