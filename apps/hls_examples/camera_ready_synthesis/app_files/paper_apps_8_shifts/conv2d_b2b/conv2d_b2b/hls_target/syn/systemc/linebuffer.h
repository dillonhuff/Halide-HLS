// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _linebuffer_HH_
#define _linebuffer_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "call.h"

namespace ap_rtl {

struct linebuffer : public sc_module {
    // Port declarations 13
    sc_in< sc_lv<8> > in_stream_V_value_V_dout;
    sc_in< sc_logic > in_stream_V_value_V_empty_n;
    sc_out< sc_logic > in_stream_V_value_V_read;
    sc_out< sc_lv<72> > out_stream_V_value_V_din;
    sc_in< sc_logic > out_stream_V_value_V_full_n;
    sc_out< sc_logic > out_stream_V_value_V_write;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > ap_idle;
    sc_in< sc_logic > ap_continue;


    // Module declarations
    linebuffer(sc_module_name name);
    SC_HAS_PROCESS(linebuffer);

    ~linebuffer();

    sc_trace_file* mVcdFile;

    call* call_U0;
    sc_signal< sc_logic > call_U0_in_stream_V_value_V_read;
    sc_signal< sc_lv<72> > call_U0_out_stream_V_value_V_din;
    sc_signal< sc_logic > call_U0_out_stream_V_value_V_write;
    sc_signal< sc_logic > call_U0_ap_done;
    sc_signal< sc_logic > call_U0_ap_start;
    sc_signal< sc_logic > call_U0_ap_ready;
    sc_signal< sc_logic > call_U0_ap_idle;
    sc_signal< sc_logic > call_U0_ap_continue;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_logic > call_U0_start_full_n;
    sc_signal< sc_logic > call_U0_start_write;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<72> ap_const_lv72_0;
    static const sc_logic ap_const_logic_1;
    // Thread declarations
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_call_U0_ap_continue();
    void thread_call_U0_ap_start();
    void thread_call_U0_start_full_n();
    void thread_call_U0_start_write();
    void thread_in_stream_V_value_V_read();
    void thread_out_stream_V_value_V_din();
    void thread_out_stream_V_value_V_write();
};

}

using namespace ap_rtl;

#endif
