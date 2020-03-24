// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_3_proc_HH_
#define _Loop_3_proc_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Loop_3_proc : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<288> > p_hw_input_stencil_stream_to_mul_V_value_V_dout;
    sc_in< sc_logic > p_hw_input_stencil_stream_to_mul_V_value_V_empty_n;
    sc_out< sc_logic > p_hw_input_stencil_stream_to_mul_V_value_V_read;
    sc_out< sc_lv<32> > p_mul_stencil_stream_V_value_V_din;
    sc_in< sc_logic > p_mul_stencil_stream_V_value_V_full_n;
    sc_out< sc_logic > p_mul_stencil_stream_V_value_V_write;


    // Module declarations
    Loop_3_proc(sc_module_name name);
    SC_HAS_PROCESS(Loop_3_proc);

    ~Loop_3_proc();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > p_hw_input_stencil_stream_to_mul_V_value_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_flag00000000;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_287;
    sc_signal< sc_logic > p_mul_stencil_stream_V_value_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter4_exitcond_flatten_reg_287;
    sc_signal< sc_lv<21> > indvar_flatten_reg_105;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_116_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter5;
    sc_signal< bool > ap_block_pp0_stage0_flag00011001;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_exitcond_flatten_reg_287;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_exitcond_flatten_reg_287;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter3_exitcond_flatten_reg_287;
    sc_signal< sc_lv<21> > indvar_flatten_next_fu_122_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<32> > p_381_fu_128_p1;
    sc_signal< sc_lv<32> > p_381_reg_296;
    sc_signal< sc_lv<32> > p_393_reg_301;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter2_p_393_reg_301;
    sc_signal< sc_lv<32> > p_417_reg_306;
    sc_signal< sc_lv<32> > p_429_reg_311;
    sc_signal< sc_lv<31> > tmp_7_reg_316;
    sc_signal< sc_lv<31> > tmp_8_reg_321;
    sc_signal< sc_lv<31> > ap_reg_pp0_iter2_tmp_8_reg_321;
    sc_signal< sc_lv<30> > tmp_9_reg_326;
    sc_signal< sc_lv<31> > tmp_s_reg_331;
    sc_signal< sc_lv<31> > tmp_3_reg_336;
    sc_signal< sc_lv<32> > tmp1_fu_240_p2;
    sc_signal< sc_lv<32> > tmp1_reg_341;
    sc_signal< sc_lv<32> > tmp4_fu_245_p2;
    sc_signal< sc_lv<32> > tmp4_reg_346;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter3_tmp4_reg_346;
    sc_signal< sc_lv<32> > tmp5_fu_256_p2;
    sc_signal< sc_lv<32> > tmp5_reg_351;
    sc_signal< sc_lv<32> > ap_reg_pp0_iter3_tmp5_reg_351;
    sc_signal< sc_lv<32> > tmp_fu_273_p2;
    sc_signal< sc_lv<32> > tmp_reg_356;
    sc_signal< sc_lv<32> > p_433_fu_282_p2;
    sc_signal< sc_lv<32> > p_433_reg_361;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_flag00011011;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< bool > ap_block_pp0_stage0_flag00001001;
    sc_signal< sc_lv<32> > p_390_fu_212_p3;
    sc_signal< sc_lv<32> > p_414_fu_226_p3;
    sc_signal< sc_lv<32> > p_408_fu_219_p3;
    sc_signal< sc_lv<32> > p_426_fu_233_p3;
    sc_signal< sc_lv<32> > tmp6_fu_251_p2;
    sc_signal< sc_lv<32> > p_402_fu_261_p3;
    sc_signal< sc_lv<32> > tmp2_fu_268_p2;
    sc_signal< sc_lv<32> > tmp3_fu_278_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state8;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<21> ap_const_lv21_0;
    static const sc_lv<21> ap_const_lv21_1F8C94;
    static const sc_lv<21> ap_const_lv21_1;
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
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_pp0_stage0_flag00000000();
    void thread_ap_block_pp0_stage0_flag00001001();
    void thread_ap_block_pp0_stage0_flag00011001();
    void thread_ap_block_pp0_stage0_flag00011011();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_block_state7_pp0_stage0_iter5();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_exitcond_flatten_fu_116_p2();
    void thread_indvar_flatten_next_fu_122_p2();
    void thread_p_381_fu_128_p1();
    void thread_p_390_fu_212_p3();
    void thread_p_402_fu_261_p3();
    void thread_p_408_fu_219_p3();
    void thread_p_414_fu_226_p3();
    void thread_p_426_fu_233_p3();
    void thread_p_433_fu_282_p2();
    void thread_p_hw_input_stencil_stream_to_mul_V_value_V_blk_n();
    void thread_p_hw_input_stencil_stream_to_mul_V_value_V_read();
    void thread_p_mul_stencil_stream_V_value_V_blk_n();
    void thread_p_mul_stencil_stream_V_value_V_din();
    void thread_p_mul_stencil_stream_V_value_V_write();
    void thread_tmp1_fu_240_p2();
    void thread_tmp2_fu_268_p2();
    void thread_tmp3_fu_278_p2();
    void thread_tmp4_fu_245_p2();
    void thread_tmp5_fu_256_p2();
    void thread_tmp6_fu_251_p2();
    void thread_tmp_fu_273_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
