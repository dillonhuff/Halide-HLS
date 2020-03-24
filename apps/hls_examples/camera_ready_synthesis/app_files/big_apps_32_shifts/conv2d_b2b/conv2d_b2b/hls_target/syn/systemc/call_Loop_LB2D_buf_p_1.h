// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _call_Loop_LB2D_buf_p_1_HH_
#define _call_Loop_LB2D_buf_p_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "call_Loop_LB2D_bufYi.h"

namespace ap_rtl {

struct call_Loop_LB2D_buf_p_1 : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<32> > in_stream_V_value_V_dout;
    sc_in< sc_logic > in_stream_V_value_V_empty_n;
    sc_out< sc_logic > in_stream_V_value_V_read;
    sc_out< sc_lv<64> > slice_stream_V_value_V_din;
    sc_in< sc_logic > slice_stream_V_value_V_full_n;
    sc_out< sc_logic > slice_stream_V_value_V_write;


    // Module declarations
    call_Loop_LB2D_buf_p_1(sc_module_name name);
    SC_HAS_PROCESS(call_Loop_LB2D_buf_p_1);

    ~call_Loop_LB2D_buf_p_1();

    sc_trace_file* mVcdFile;

    call_Loop_LB2D_bufYi* buffer_0_value_V_U;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > real_start_status_reg;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > start_control_reg;
    sc_signal< sc_logic > in_stream_V_value_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_flag00000000;
    sc_signal< sc_logic > slice_stream_V_value_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<1> > tmp_s_reg_171;
    sc_signal< sc_lv<11> > col_reg_109;
    sc_signal< sc_lv<1> > tmp_fu_120_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > row_1_fu_126_p2;
    sc_signal< sc_lv<11> > row_1_reg_166;
    sc_signal< sc_lv<1> > tmp_s_fu_132_p2;
    sc_signal< sc_lv<1> > tmp_7_fu_138_p2;
    sc_signal< sc_lv<1> > tmp_7_reg_175;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_flag00011001;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_tmp_7_reg_175;
    sc_signal< sc_lv<11> > col_1_fu_144_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<64> > col_cast_fu_150_p1;
    sc_signal< sc_lv<64> > col_cast_reg_184;
    sc_signal< sc_lv<64> > ap_reg_pp0_iter1_col_cast_reg_184;
    sc_signal< sc_lv<32> > tmp_value_V_3_reg_194;
    sc_signal< sc_lv<32> > buffer_0_value_V_q0;
    sc_signal< sc_lv<32> > p_Val2_s_reg_200;
    sc_signal< bool > ap_block_pp0_stage0_flag00011011;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_lv<11> > buffer_0_value_V_address0;
    sc_signal< sc_logic > buffer_0_value_V_ce0;
    sc_signal< sc_lv<11> > buffer_0_value_V_address1;
    sc_signal< sc_logic > buffer_0_value_V_ce1;
    sc_signal< sc_logic > buffer_0_value_V_we1;
    sc_signal< sc_lv<11> > row_reg_98;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< bool > ap_block_pp0_stage0_flag00001001;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0;
    sc_signal< bool > ap_enable_operation_40;
    sc_signal< bool > ap_enable_state5_pp0_iter2_stage0;
    sc_signal< bool > ap_predicate_op30_load_state3;
    sc_signal< bool > ap_enable_operation_30;
    sc_signal< bool > ap_enable_state3_pp0_iter0_stage0;
    sc_signal< bool > ap_enable_operation_32;
    sc_signal< bool > ap_enable_state4_pp0_iter1_stage0;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state6;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<11> ap_const_lv11_436;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<11> ap_const_lv11_77E;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_pp0();
    void thread_ap_block_pp0_stage0_flag00000000();
    void thread_ap_block_pp0_stage0_flag00001001();
    void thread_ap_block_pp0_stage0_flag00011001();
    void thread_ap_block_pp0_stage0_flag00011011();
    void thread_ap_block_state1();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state5_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_operation_30();
    void thread_ap_enable_operation_32();
    void thread_ap_enable_operation_40();
    void thread_ap_enable_pp0();
    void thread_ap_enable_state3_pp0_iter0_stage0();
    void thread_ap_enable_state4_pp0_iter1_stage0();
    void thread_ap_enable_state5_pp0_iter2_stage0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_predicate_op30_load_state3();
    void thread_ap_ready();
    void thread_buffer_0_value_V_address0();
    void thread_buffer_0_value_V_address1();
    void thread_buffer_0_value_V_ce0();
    void thread_buffer_0_value_V_ce1();
    void thread_buffer_0_value_V_we1();
    void thread_col_1_fu_144_p2();
    void thread_col_cast_fu_150_p1();
    void thread_in_stream_V_value_V_blk_n();
    void thread_in_stream_V_value_V_read();
    void thread_internal_ap_ready();
    void thread_real_start();
    void thread_row_1_fu_126_p2();
    void thread_slice_stream_V_value_V_blk_n();
    void thread_slice_stream_V_value_V_din();
    void thread_slice_stream_V_value_V_write();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_7_fu_138_p2();
    void thread_tmp_fu_120_p2();
    void thread_tmp_s_fu_132_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif