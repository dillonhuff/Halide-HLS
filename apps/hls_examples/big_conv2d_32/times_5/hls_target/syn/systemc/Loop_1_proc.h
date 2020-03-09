// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_1_proc_HH_
#define _Loop_1_proc_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Loop_1_proc : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<288> > p_hw_input_stencil_stream_V_value_V_dout;
    sc_in< sc_logic > p_hw_input_stencil_stream_V_value_V_empty_n;
    sc_out< sc_logic > p_hw_input_stencil_stream_V_value_V_read;
    sc_out< sc_lv<32> > hw_output_V_value_V;
    sc_out< sc_logic > hw_output_V_value_V_ap_vld;
    sc_in< sc_logic > hw_output_V_value_V_ap_ack;
    sc_out< sc_lv<1> > hw_output_V_last_V;
    sc_out< sc_logic > hw_output_V_last_V_ap_vld;
    sc_in< sc_logic > hw_output_V_last_V_ap_ack;


    // Module declarations
    Loop_1_proc(sc_module_name name);
    SC_HAS_PROCESS(Loop_1_proc);

    ~Loop_1_proc();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > p_hw_input_stencil_stream_V_value_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_flag00000000;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_405;
    sc_signal< sc_logic > hw_output_V_value_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter3_exitcond_flatten_reg_405;
    sc_signal< sc_logic > hw_output_V_last_V_blk_n;
    sc_signal< sc_lv<21> > indvar_flatten_reg_126;
    sc_signal< sc_lv<11> > p_hw_output_y_scan_1_reg_137;
    sc_signal< sc_lv<11> > p_hw_output_x_scan_2_reg_149;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_160_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< sc_logic > ap_sig_ioackin_hw_output_V_value_V_ap_ack;
    sc_signal< bool > ap_block_state6_io;
    sc_signal< bool > ap_block_pp0_stage0_flag00011001;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_exitcond_flatten_reg_405;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_exitcond_flatten_reg_405;
    sc_signal< sc_lv<21> > indvar_flatten_next_fu_166_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > exitcond_fu_172_p2;
    sc_signal< sc_lv<1> > exitcond_reg_414;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_exitcond_reg_414;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_exitcond_reg_414;
    sc_signal< sc_lv<11> > p_hw_output_x_scan_s_fu_178_p3;
    sc_signal< sc_lv<11> > p_hw_output_x_scan_s_reg_420;
    sc_signal< sc_lv<11> > p_hw_output_x_scan_1_fu_186_p2;
    sc_signal< sc_lv<11> > p_hw_output_y_scan_2_fu_192_p2;
    sc_signal< sc_lv<11> > p_hw_output_y_scan_2_reg_430;
    sc_signal< sc_lv<1> > tmp8_fu_198_p2;
    sc_signal< sc_lv<1> > tmp8_reg_435;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_tmp8_reg_435;
    sc_signal< sc_lv<11> > p_hw_output_y_scan_s_fu_204_p3;
    sc_signal< sc_lv<11> > p_hw_output_y_scan_s_reg_440;
    sc_signal< sc_lv<32> > p_345_fu_211_p1;
    sc_signal< sc_lv<32> > p_345_reg_445;
    sc_signal< sc_lv<32> > p_357_reg_450;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter2_p_357_reg_450;
    sc_signal< sc_lv<32> > p_381_reg_455;
    sc_signal< sc_lv<32> > p_393_reg_460;
    sc_signal< sc_lv<31> > tmp_2_reg_465;
    sc_signal< sc_lv<31> > tmp_4_reg_470;
    sc_signal< sc_lv<31> > ap_reg_pp0_iter2_tmp_4_reg_470;
    sc_signal< sc_lv<30> > tmp_5_reg_475;
    sc_signal< sc_lv<31> > tmp_6_reg_480;
    sc_signal< sc_lv<31> > tmp_7_reg_485;
    sc_signal< sc_lv<1> > tmp_s_fu_295_p2;
    sc_signal< sc_lv<1> > tmp_s_reg_490;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_tmp_s_reg_490;
    sc_signal< sc_lv<1> > tmp_mid1_fu_300_p2;
    sc_signal< sc_lv<1> > tmp_mid1_reg_495;
    sc_signal< sc_lv<32> > tmp2_fu_333_p2;
    sc_signal< sc_lv<32> > tmp2_reg_500;
    sc_signal< sc_lv<32> > tmp5_fu_338_p2;
    sc_signal< sc_lv<32> > tmp5_reg_505;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter3_tmp5_reg_505;
    sc_signal< sc_lv<32> > tmp6_fu_349_p2;
    sc_signal< sc_lv<32> > tmp6_reg_510;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter3_tmp6_reg_510;
    sc_signal< sc_lv<32> > tmp1_fu_371_p2;
    sc_signal< sc_lv<32> > tmp1_reg_515;
    sc_signal< sc_lv<1> > tmp_last_V_fu_376_p2;
    sc_signal< sc_lv<1> > tmp_last_V_reg_520;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_flag00011011;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<11> > p_hw_output_y_scan_1_phi_fu_141_p4;
    sc_signal< bool > ap_block_pp0_stage0_flag00001001;
    sc_signal< sc_logic > ap_reg_ioackin_hw_output_V_value_V_ap_ack;
    sc_signal< sc_logic > ap_reg_ioackin_hw_output_V_last_V_ap_ack;
    sc_signal< sc_lv<32> > p_353_fu_305_p3;
    sc_signal< sc_lv<32> > p_377_fu_319_p3;
    sc_signal< sc_lv<32> > p_371_fu_312_p3;
    sc_signal< sc_lv<32> > p_389_fu_326_p3;
    sc_signal< sc_lv<32> > tmp7_fu_344_p2;
    sc_signal< sc_lv<32> > p_365_fu_359_p3;
    sc_signal< sc_lv<32> > tmp3_fu_366_p2;
    sc_signal< sc_lv<1> > tmp_mid2_fu_354_p3;
    sc_signal< sc_lv<32> > tmp4_fu_381_p2;
    sc_signal< sc_lv<32> > p_397_fu_385_p2;
    sc_signal< sc_lv<28> > tmp_3_fu_390_p4;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state7;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<21> ap_const_lv21_0;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<21> ap_const_lv21_1F8C94;
    static const sc_lv<21> ap_const_lv21_1;
    static const sc_lv<11> ap_const_lv11_77E;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<11> ap_const_lv11_435;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_5F;
    static const sc_lv<32> ap_const_lv32_C0;
    static const sc_lv<32> ap_const_lv32_DF;
    static const sc_lv<32> ap_const_lv32_100;
    static const sc_lv<32> ap_const_lv32_11F;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_3E;
    static const sc_lv<32> ap_const_lv32_60;
    static const sc_lv<32> ap_const_lv32_7E;
    static const sc_lv<32> ap_const_lv32_80;
    static const sc_lv<32> ap_const_lv32_9D;
    static const sc_lv<32> ap_const_lv32_A0;
    static const sc_lv<32> ap_const_lv32_BE;
    static const sc_lv<32> ap_const_lv32_E0;
    static const sc_lv<32> ap_const_lv32_FE;
    static const sc_lv<11> ap_const_lv11_77D;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state7();
    void thread_ap_block_pp0_stage0_flag00000000();
    void thread_ap_block_pp0_stage0_flag00001001();
    void thread_ap_block_pp0_stage0_flag00011001();
    void thread_ap_block_pp0_stage0_flag00011011();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_io();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_ap_sig_ioackin_hw_output_V_value_V_ap_ack();
    void thread_exitcond_flatten_fu_160_p2();
    void thread_exitcond_fu_172_p2();
    void thread_hw_output_V_last_V();
    void thread_hw_output_V_last_V_ap_vld();
    void thread_hw_output_V_last_V_blk_n();
    void thread_hw_output_V_value_V();
    void thread_hw_output_V_value_V_ap_vld();
    void thread_hw_output_V_value_V_blk_n();
    void thread_indvar_flatten_next_fu_166_p2();
    void thread_p_345_fu_211_p1();
    void thread_p_353_fu_305_p3();
    void thread_p_365_fu_359_p3();
    void thread_p_371_fu_312_p3();
    void thread_p_377_fu_319_p3();
    void thread_p_389_fu_326_p3();
    void thread_p_397_fu_385_p2();
    void thread_p_hw_input_stencil_stream_V_value_V_blk_n();
    void thread_p_hw_input_stencil_stream_V_value_V_read();
    void thread_p_hw_output_x_scan_1_fu_186_p2();
    void thread_p_hw_output_x_scan_s_fu_178_p3();
    void thread_p_hw_output_y_scan_1_phi_fu_141_p4();
    void thread_p_hw_output_y_scan_2_fu_192_p2();
    void thread_p_hw_output_y_scan_s_fu_204_p3();
    void thread_tmp1_fu_371_p2();
    void thread_tmp2_fu_333_p2();
    void thread_tmp3_fu_366_p2();
    void thread_tmp4_fu_381_p2();
    void thread_tmp5_fu_338_p2();
    void thread_tmp6_fu_349_p2();
    void thread_tmp7_fu_344_p2();
    void thread_tmp8_fu_198_p2();
    void thread_tmp_3_fu_390_p4();
    void thread_tmp_last_V_fu_376_p2();
    void thread_tmp_mid1_fu_300_p2();
    void thread_tmp_mid2_fu_354_p3();
    void thread_tmp_s_fu_295_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
