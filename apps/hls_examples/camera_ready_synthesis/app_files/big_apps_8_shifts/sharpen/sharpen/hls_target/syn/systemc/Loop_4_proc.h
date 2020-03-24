// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_4_proc_HH_
#define _Loop_4_proc_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Loop_4_proc : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > hw_output_V_value_V;
    sc_out< sc_logic > hw_output_V_value_V_ap_vld;
    sc_in< sc_logic > hw_output_V_value_V_ap_ack;
    sc_out< sc_lv<1> > hw_output_V_last_V;
    sc_out< sc_logic > hw_output_V_last_V_ap_vld;
    sc_in< sc_logic > hw_output_V_last_V_ap_ack;
    sc_in< sc_lv<32> > p_mul_stencil_stream_V_value_V_dout;
    sc_in< sc_logic > p_mul_stencil_stream_V_value_V_empty_n;
    sc_out< sc_logic > p_mul_stencil_stream_V_value_V_read;
    sc_in< sc_lv<32> > p_delayed_input_stencil_stream_V_value_V_dout;
    sc_in< sc_logic > p_delayed_input_stencil_stream_V_value_V_empty_n;
    sc_out< sc_logic > p_delayed_input_stencil_stream_V_value_V_read;


    // Module declarations
    Loop_4_proc(sc_module_name name);
    SC_HAS_PROCESS(Loop_4_proc);

    ~Loop_4_proc();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > hw_output_V_value_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_flag00000000;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_312;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_exitcond_flatten_reg_312;
    sc_signal< sc_logic > hw_output_V_last_V_blk_n;
    sc_signal< sc_logic > p_mul_stencil_stream_V_value_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > p_delayed_input_stencil_stream_V_value_V_blk_n;
    sc_signal< sc_lv<21> > indvar_flatten_reg_100;
    sc_signal< sc_lv<11> > p_hw_output_y_scan_1_reg_111;
    sc_signal< sc_lv<11> > p_hw_output_x_scan_2_reg_123;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_134_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< sc_logic > ap_sig_ioackin_hw_output_V_value_V_ap_ack;
    sc_signal< bool > ap_block_state5_io;
    sc_signal< bool > ap_block_pp0_stage0_flag00011001;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_exitcond_flatten_reg_312;
    sc_signal< sc_lv<21> > indvar_flatten_next_fu_140_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > exitcond7_fu_146_p2;
    sc_signal< sc_lv<1> > exitcond7_reg_321;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_exitcond7_reg_321;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_exitcond7_reg_321;
    sc_signal< sc_lv<11> > p_hw_output_x_scan_s_fu_152_p3;
    sc_signal< sc_lv<11> > p_hw_output_x_scan_s_reg_327;
    sc_signal< sc_lv<11> > p_hw_output_x_scan_1_fu_160_p2;
    sc_signal< sc_lv<11> > p_hw_output_y_scan_2_fu_166_p2;
    sc_signal< sc_lv<11> > p_hw_output_y_scan_2_reg_337;
    sc_signal< sc_lv<1> > tmp_1_fu_172_p2;
    sc_signal< sc_lv<1> > tmp_1_reg_342;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_tmp_1_reg_342;
    sc_signal< sc_lv<11> > p_hw_output_y_scan_s_fu_178_p3;
    sc_signal< sc_lv<11> > p_hw_output_y_scan_s_reg_347;
    sc_signal< sc_lv<8> > p_471_fu_185_p1;
    sc_signal< sc_lv<8> > p_471_reg_352;
    sc_signal< sc_lv<8> > ap_reg_pp0_iter2_p_471_reg_352;
    sc_signal< sc_lv<8> > p_475_fu_209_p2;
    sc_signal< sc_lv<8> > p_475_reg_357;
    sc_signal< sc_lv<8> > ap_reg_pp0_iter2_p_475_reg_357;
    sc_signal< sc_lv<4> > tmp_12_reg_363;
    sc_signal< sc_lv<4> > tmp_13_reg_368;
    sc_signal< sc_lv<1> > tmp_s_fu_235_p2;
    sc_signal< sc_lv<1> > tmp_s_reg_373;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_tmp_s_reg_373;
    sc_signal< sc_lv<1> > tmp_3_mid1_fu_240_p2;
    sc_signal< sc_lv<1> > tmp_3_mid1_reg_378;
    sc_signal< sc_lv<1> > p_478_fu_245_p2;
    sc_signal< sc_lv<1> > p_478_reg_383;
    sc_signal< sc_lv<1> > p_480_fu_250_p2;
    sc_signal< sc_lv<1> > p_480_reg_388;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_flag00011011;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<11> > p_hw_output_y_scan_1_phi_fu_115_p4;
    sc_signal< bool > ap_block_pp0_stage0_flag00001001;
    sc_signal< sc_logic > ap_reg_ioackin_hw_output_V_value_V_ap_ack;
    sc_signal< sc_logic > ap_reg_ioackin_hw_output_V_last_V_ap_ack;
    sc_signal< sc_lv<4> > p_s_fu_189_p4;
    sc_signal< sc_lv<8> > p_474_fu_199_p1;
    sc_signal< sc_lv<8> > p_479_fu_203_p2;
    sc_signal< sc_lv<2> > tmp_14_fu_269_p4;
    sc_signal< sc_lv<2> > tmp_15_fu_278_p3;
    sc_signal< sc_lv<6> > tmp_fu_260_p4;
    sc_signal< sc_lv<6> > tmp_5_cast_fu_285_p1;
    sc_signal< sc_lv<6> > p_483_fu_289_p3;
    sc_signal< sc_lv<8> > p_483_cast_fu_296_p1;
    sc_signal< sc_lv<1> > tmp_3_mid2_fu_255_p3;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<21> ap_const_lv21_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<21> ap_const_lv21_1F8C94;
    static const sc_lv<21> ap_const_lv21_1;
    static const sc_lv<11> ap_const_lv11_77E;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<11> ap_const_lv11_435;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<11> ap_const_lv11_77D;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<2> ap_const_lv2_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_pp0_stage0_flag00000000();
    void thread_ap_block_pp0_stage0_flag00001001();
    void thread_ap_block_pp0_stage0_flag00011001();
    void thread_ap_block_pp0_stage0_flag00011011();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_io();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_ap_sig_ioackin_hw_output_V_value_V_ap_ack();
    void thread_exitcond7_fu_146_p2();
    void thread_exitcond_flatten_fu_134_p2();
    void thread_hw_output_V_last_V();
    void thread_hw_output_V_last_V_ap_vld();
    void thread_hw_output_V_last_V_blk_n();
    void thread_hw_output_V_value_V();
    void thread_hw_output_V_value_V_ap_vld();
    void thread_hw_output_V_value_V_blk_n();
    void thread_indvar_flatten_next_fu_140_p2();
    void thread_p_471_fu_185_p1();
    void thread_p_474_fu_199_p1();
    void thread_p_475_fu_209_p2();
    void thread_p_478_fu_245_p2();
    void thread_p_479_fu_203_p2();
    void thread_p_480_fu_250_p2();
    void thread_p_483_cast_fu_296_p1();
    void thread_p_483_fu_289_p3();
    void thread_p_delayed_input_stencil_stream_V_value_V_blk_n();
    void thread_p_delayed_input_stencil_stream_V_value_V_read();
    void thread_p_hw_output_x_scan_1_fu_160_p2();
    void thread_p_hw_output_x_scan_s_fu_152_p3();
    void thread_p_hw_output_y_scan_1_phi_fu_115_p4();
    void thread_p_hw_output_y_scan_2_fu_166_p2();
    void thread_p_hw_output_y_scan_s_fu_178_p3();
    void thread_p_mul_stencil_stream_V_value_V_blk_n();
    void thread_p_mul_stencil_stream_V_value_V_read();
    void thread_p_s_fu_189_p4();
    void thread_tmp_14_fu_269_p4();
    void thread_tmp_15_fu_278_p3();
    void thread_tmp_1_fu_172_p2();
    void thread_tmp_3_mid1_fu_240_p2();
    void thread_tmp_3_mid2_fu_255_p3();
    void thread_tmp_5_cast_fu_285_p1();
    void thread_tmp_fu_260_p4();
    void thread_tmp_s_fu_235_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif