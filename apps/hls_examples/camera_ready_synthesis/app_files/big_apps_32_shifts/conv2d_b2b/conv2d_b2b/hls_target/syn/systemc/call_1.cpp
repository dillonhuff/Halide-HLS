// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "call_1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic call_1::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<128> call_1::ap_const_lv128_lc_1 = "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
const sc_logic call_1::ap_const_logic_1 = sc_dt::Log_1;

call_1::call_1(sc_module_name name) : sc_module(name), mVcdFile(0) {
    call_Loop_LB2D_buf_p_1_U0 = new call_Loop_LB2D_buf_p_1("call_Loop_LB2D_buf_p_1_U0");
    call_Loop_LB2D_buf_p_1_U0->ap_clk(ap_clk);
    call_Loop_LB2D_buf_p_1_U0->ap_rst(ap_rst);
    call_Loop_LB2D_buf_p_1_U0->ap_start(call_Loop_LB2D_buf_p_1_U0_ap_start);
    call_Loop_LB2D_buf_p_1_U0->start_full_n(call_Loop_LB2D_buf_p_1_U0_start_full_n);
    call_Loop_LB2D_buf_p_1_U0->ap_ready(call_Loop_LB2D_buf_p_1_U0_ap_ready);
    call_Loop_LB2D_buf_p_1_U0->ap_done(call_Loop_LB2D_buf_p_1_U0_ap_done);
    call_Loop_LB2D_buf_p_1_U0->ap_continue(call_Loop_LB2D_buf_p_1_U0_ap_continue);
    call_Loop_LB2D_buf_p_1_U0->ap_idle(call_Loop_LB2D_buf_p_1_U0_ap_idle);
    call_Loop_LB2D_buf_p_1_U0->start_out(call_Loop_LB2D_buf_p_1_U0_start_out);
    call_Loop_LB2D_buf_p_1_U0->start_write(call_Loop_LB2D_buf_p_1_U0_start_write);
    call_Loop_LB2D_buf_p_1_U0->in_stream_V_value_V_dout(in_stream_V_value_V_dout);
    call_Loop_LB2D_buf_p_1_U0->in_stream_V_value_V_empty_n(in_stream_V_value_V_empty_n);
    call_Loop_LB2D_buf_p_1_U0->in_stream_V_value_V_read(call_Loop_LB2D_buf_p_1_U0_in_stream_V_value_V_read);
    call_Loop_LB2D_buf_p_1_U0->slice_stream_V_value_V_din(call_Loop_LB2D_buf_p_1_U0_slice_stream_V_value_V_din);
    call_Loop_LB2D_buf_p_1_U0->slice_stream_V_value_V_full_n(slice_stream_V_value_full_n);
    call_Loop_LB2D_buf_p_1_U0->slice_stream_V_value_V_write(call_Loop_LB2D_buf_p_1_U0_slice_stream_V_value_V_write);
    call_Loop_LB2D_shift_1_U0 = new call_Loop_LB2D_shift_1("call_Loop_LB2D_shift_1_U0");
    call_Loop_LB2D_shift_1_U0->ap_clk(ap_clk);
    call_Loop_LB2D_shift_1_U0->ap_rst(ap_rst);
    call_Loop_LB2D_shift_1_U0->ap_start(call_Loop_LB2D_shift_1_U0_ap_start);
    call_Loop_LB2D_shift_1_U0->ap_done(call_Loop_LB2D_shift_1_U0_ap_done);
    call_Loop_LB2D_shift_1_U0->ap_continue(call_Loop_LB2D_shift_1_U0_ap_continue);
    call_Loop_LB2D_shift_1_U0->ap_idle(call_Loop_LB2D_shift_1_U0_ap_idle);
    call_Loop_LB2D_shift_1_U0->ap_ready(call_Loop_LB2D_shift_1_U0_ap_ready);
    call_Loop_LB2D_shift_1_U0->slice_stream_V_value_V_dout(slice_stream_V_value_dout);
    call_Loop_LB2D_shift_1_U0->slice_stream_V_value_V_empty_n(slice_stream_V_value_empty_n);
    call_Loop_LB2D_shift_1_U0->slice_stream_V_value_V_read(call_Loop_LB2D_shift_1_U0_slice_stream_V_value_V_read);
    call_Loop_LB2D_shift_1_U0->out_stream_V_value_V_din(call_Loop_LB2D_shift_1_U0_out_stream_V_value_V_din);
    call_Loop_LB2D_shift_1_U0->out_stream_V_value_V_full_n(out_stream_V_value_V_full_n);
    call_Loop_LB2D_shift_1_U0->out_stream_V_value_V_write(call_Loop_LB2D_shift_1_U0_out_stream_V_value_V_write);
    slice_stream_V_value_U = new fifo_w64_d1_S("slice_stream_V_value_U");
    slice_stream_V_value_U->clk(ap_clk);
    slice_stream_V_value_U->reset(ap_rst);
    slice_stream_V_value_U->if_read_ce(ap_var_for_const0);
    slice_stream_V_value_U->if_write_ce(ap_var_for_const0);
    slice_stream_V_value_U->if_din(call_Loop_LB2D_buf_p_1_U0_slice_stream_V_value_V_din);
    slice_stream_V_value_U->if_full_n(slice_stream_V_value_full_n);
    slice_stream_V_value_U->if_write(call_Loop_LB2D_buf_p_1_U0_slice_stream_V_value_V_write);
    slice_stream_V_value_U->if_dout(slice_stream_V_value_dout);
    slice_stream_V_value_U->if_empty_n(slice_stream_V_value_empty_n);
    slice_stream_V_value_U->if_read(call_Loop_LB2D_shift_1_U0_slice_stream_V_value_V_read);
    start_for_call_Log8j_U = new start_for_call_Log8j("start_for_call_Log8j_U");
    start_for_call_Log8j_U->clk(ap_clk);
    start_for_call_Log8j_U->reset(ap_rst);
    start_for_call_Log8j_U->if_read_ce(ap_var_for_const0);
    start_for_call_Log8j_U->if_write_ce(ap_var_for_const0);
    start_for_call_Log8j_U->if_din(start_for_call_Loop_LB2D_shift_1_U0_din);
    start_for_call_Log8j_U->if_full_n(start_for_call_Loop_LB2D_shift_1_U0_full_n);
    start_for_call_Log8j_U->if_write(call_Loop_LB2D_buf_p_1_U0_start_write);
    start_for_call_Log8j_U->if_dout(start_for_call_Loop_LB2D_shift_1_U0_dout);
    start_for_call_Log8j_U->if_empty_n(start_for_call_Loop_LB2D_shift_1_U0_empty_n);
    start_for_call_Log8j_U->if_read(call_Loop_LB2D_shift_1_U0_ap_ready);

    SC_METHOD(thread_ap_done);
    sensitive << ( call_Loop_LB2D_shift_1_U0_ap_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( call_Loop_LB2D_buf_p_1_U0_ap_idle );
    sensitive << ( call_Loop_LB2D_shift_1_U0_ap_idle );

    SC_METHOD(thread_ap_ready);
    sensitive << ( call_Loop_LB2D_buf_p_1_U0_ap_ready );

    SC_METHOD(thread_ap_sync_continue);
    sensitive << ( ap_continue );

    SC_METHOD(thread_ap_sync_done);
    sensitive << ( call_Loop_LB2D_shift_1_U0_ap_done );

    SC_METHOD(thread_ap_sync_ready);
    sensitive << ( call_Loop_LB2D_buf_p_1_U0_ap_ready );

    SC_METHOD(thread_call_Loop_LB2D_buf_p_1_U0_ap_continue);

    SC_METHOD(thread_call_Loop_LB2D_buf_p_1_U0_ap_start);
    sensitive << ( ap_rst );
    sensitive << ( ap_start );

    SC_METHOD(thread_call_Loop_LB2D_buf_p_1_U0_start_full_n);
    sensitive << ( start_for_call_Loop_LB2D_shift_1_U0_full_n );

    SC_METHOD(thread_call_Loop_LB2D_shift_1_U0_ap_continue);
    sensitive << ( ap_continue );

    SC_METHOD(thread_call_Loop_LB2D_shift_1_U0_ap_start);
    sensitive << ( start_for_call_Loop_LB2D_shift_1_U0_empty_n );

    SC_METHOD(thread_call_Loop_LB2D_shift_1_U0_start_full_n);

    SC_METHOD(thread_call_Loop_LB2D_shift_1_U0_start_write);

    SC_METHOD(thread_in_stream_V_value_V_read);
    sensitive << ( call_Loop_LB2D_buf_p_1_U0_in_stream_V_value_V_read );

    SC_METHOD(thread_out_stream_V_value_V_din);
    sensitive << ( call_Loop_LB2D_shift_1_U0_out_stream_V_value_V_din );

    SC_METHOD(thread_out_stream_V_value_V_write);
    sensitive << ( call_Loop_LB2D_shift_1_U0_out_stream_V_value_V_write );

    SC_METHOD(thread_start_for_call_Loop_LB2D_shift_1_U0_din);

    SC_THREAD(thread_ap_var_for_const0);

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "call_1_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, in_stream_V_value_V_dout, "(port)in_stream_V_value_V_dout");
    sc_trace(mVcdFile, in_stream_V_value_V_empty_n, "(port)in_stream_V_value_V_empty_n");
    sc_trace(mVcdFile, in_stream_V_value_V_read, "(port)in_stream_V_value_V_read");
    sc_trace(mVcdFile, out_stream_V_value_V_din, "(port)out_stream_V_value_V_din");
    sc_trace(mVcdFile, out_stream_V_value_V_full_n, "(port)out_stream_V_value_V_full_n");
    sc_trace(mVcdFile, out_stream_V_value_V_write, "(port)out_stream_V_value_V_write");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, call_Loop_LB2D_buf_p_1_U0_ap_start, "call_Loop_LB2D_buf_p_1_U0_ap_start");
    sc_trace(mVcdFile, call_Loop_LB2D_buf_p_1_U0_start_full_n, "call_Loop_LB2D_buf_p_1_U0_start_full_n");
    sc_trace(mVcdFile, call_Loop_LB2D_buf_p_1_U0_ap_ready, "call_Loop_LB2D_buf_p_1_U0_ap_ready");
    sc_trace(mVcdFile, call_Loop_LB2D_buf_p_1_U0_ap_done, "call_Loop_LB2D_buf_p_1_U0_ap_done");
    sc_trace(mVcdFile, call_Loop_LB2D_buf_p_1_U0_ap_continue, "call_Loop_LB2D_buf_p_1_U0_ap_continue");
    sc_trace(mVcdFile, call_Loop_LB2D_buf_p_1_U0_ap_idle, "call_Loop_LB2D_buf_p_1_U0_ap_idle");
    sc_trace(mVcdFile, call_Loop_LB2D_buf_p_1_U0_start_out, "call_Loop_LB2D_buf_p_1_U0_start_out");
    sc_trace(mVcdFile, call_Loop_LB2D_buf_p_1_U0_start_write, "call_Loop_LB2D_buf_p_1_U0_start_write");
    sc_trace(mVcdFile, call_Loop_LB2D_buf_p_1_U0_in_stream_V_value_V_read, "call_Loop_LB2D_buf_p_1_U0_in_stream_V_value_V_read");
    sc_trace(mVcdFile, call_Loop_LB2D_buf_p_1_U0_slice_stream_V_value_V_din, "call_Loop_LB2D_buf_p_1_U0_slice_stream_V_value_V_din");
    sc_trace(mVcdFile, call_Loop_LB2D_buf_p_1_U0_slice_stream_V_value_V_write, "call_Loop_LB2D_buf_p_1_U0_slice_stream_V_value_V_write");
    sc_trace(mVcdFile, call_Loop_LB2D_shift_1_U0_ap_start, "call_Loop_LB2D_shift_1_U0_ap_start");
    sc_trace(mVcdFile, call_Loop_LB2D_shift_1_U0_ap_done, "call_Loop_LB2D_shift_1_U0_ap_done");
    sc_trace(mVcdFile, call_Loop_LB2D_shift_1_U0_ap_continue, "call_Loop_LB2D_shift_1_U0_ap_continue");
    sc_trace(mVcdFile, call_Loop_LB2D_shift_1_U0_ap_idle, "call_Loop_LB2D_shift_1_U0_ap_idle");
    sc_trace(mVcdFile, call_Loop_LB2D_shift_1_U0_ap_ready, "call_Loop_LB2D_shift_1_U0_ap_ready");
    sc_trace(mVcdFile, call_Loop_LB2D_shift_1_U0_slice_stream_V_value_V_read, "call_Loop_LB2D_shift_1_U0_slice_stream_V_value_V_read");
    sc_trace(mVcdFile, call_Loop_LB2D_shift_1_U0_out_stream_V_value_V_din, "call_Loop_LB2D_shift_1_U0_out_stream_V_value_V_din");
    sc_trace(mVcdFile, call_Loop_LB2D_shift_1_U0_out_stream_V_value_V_write, "call_Loop_LB2D_shift_1_U0_out_stream_V_value_V_write");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, slice_stream_V_value_full_n, "slice_stream_V_value_full_n");
    sc_trace(mVcdFile, slice_stream_V_value_dout, "slice_stream_V_value_dout");
    sc_trace(mVcdFile, slice_stream_V_value_empty_n, "slice_stream_V_value_empty_n");
    sc_trace(mVcdFile, ap_sync_done, "ap_sync_done");
    sc_trace(mVcdFile, ap_sync_ready, "ap_sync_ready");
    sc_trace(mVcdFile, start_for_call_Loop_LB2D_shift_1_U0_din, "start_for_call_Loop_LB2D_shift_1_U0_din");
    sc_trace(mVcdFile, start_for_call_Loop_LB2D_shift_1_U0_full_n, "start_for_call_Loop_LB2D_shift_1_U0_full_n");
    sc_trace(mVcdFile, start_for_call_Loop_LB2D_shift_1_U0_dout, "start_for_call_Loop_LB2D_shift_1_U0_dout");
    sc_trace(mVcdFile, start_for_call_Loop_LB2D_shift_1_U0_empty_n, "start_for_call_Loop_LB2D_shift_1_U0_empty_n");
    sc_trace(mVcdFile, call_Loop_LB2D_shift_1_U0_start_full_n, "call_Loop_LB2D_shift_1_U0_start_full_n");
    sc_trace(mVcdFile, call_Loop_LB2D_shift_1_U0_start_write, "call_Loop_LB2D_shift_1_U0_start_write");
#endif

    }
}

call_1::~call_1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete call_Loop_LB2D_buf_p_1_U0;
    delete call_Loop_LB2D_shift_1_U0;
    delete slice_stream_V_value_U;
    delete start_for_call_Log8j_U;
}

void call_1::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void call_1::thread_ap_done() {
    ap_done = call_Loop_LB2D_shift_1_U0_ap_done.read();
}

void call_1::thread_ap_idle() {
    ap_idle = (call_Loop_LB2D_buf_p_1_U0_ap_idle.read() & call_Loop_LB2D_shift_1_U0_ap_idle.read());
}

void call_1::thread_ap_ready() {
    ap_ready = call_Loop_LB2D_buf_p_1_U0_ap_ready.read();
}

void call_1::thread_ap_sync_continue() {
    ap_sync_continue = ap_continue.read();
}

void call_1::thread_ap_sync_done() {
    ap_sync_done = call_Loop_LB2D_shift_1_U0_ap_done.read();
}

void call_1::thread_ap_sync_ready() {
    ap_sync_ready = call_Loop_LB2D_buf_p_1_U0_ap_ready.read();
}

void call_1::thread_call_Loop_LB2D_buf_p_1_U0_ap_continue() {
    call_Loop_LB2D_buf_p_1_U0_ap_continue = ap_const_logic_1;
}

void call_1::thread_call_Loop_LB2D_buf_p_1_U0_ap_start() {
    if ( ap_rst.read() == ap_const_logic_1) {
        call_Loop_LB2D_buf_p_1_U0_ap_start = ap_const_logic_0;
    } else {
        call_Loop_LB2D_buf_p_1_U0_ap_start = ap_start.read();
    }
}

void call_1::thread_call_Loop_LB2D_buf_p_1_U0_start_full_n() {
    call_Loop_LB2D_buf_p_1_U0_start_full_n = (ap_const_logic_0 | start_for_call_Loop_LB2D_shift_1_U0_full_n.read());
}

void call_1::thread_call_Loop_LB2D_shift_1_U0_ap_continue() {
    call_Loop_LB2D_shift_1_U0_ap_continue = ap_continue.read();
}

void call_1::thread_call_Loop_LB2D_shift_1_U0_ap_start() {
    call_Loop_LB2D_shift_1_U0_ap_start = start_for_call_Loop_LB2D_shift_1_U0_empty_n.read();
}

void call_1::thread_call_Loop_LB2D_shift_1_U0_start_full_n() {
    call_Loop_LB2D_shift_1_U0_start_full_n = ap_const_logic_0;
}

void call_1::thread_call_Loop_LB2D_shift_1_U0_start_write() {
    call_Loop_LB2D_shift_1_U0_start_write = ap_const_logic_0;
}

void call_1::thread_in_stream_V_value_V_read() {
    in_stream_V_value_V_read = call_Loop_LB2D_buf_p_1_U0_in_stream_V_value_V_read.read();
}

void call_1::thread_out_stream_V_value_V_din() {
    out_stream_V_value_V_din = call_Loop_LB2D_shift_1_U0_out_stream_V_value_V_din.read();
}

void call_1::thread_out_stream_V_value_V_write() {
    out_stream_V_value_V_write = call_Loop_LB2D_shift_1_U0_out_stream_V_value_V_write.read();
}

void call_1::thread_start_for_call_Loop_LB2D_shift_1_U0_din() {
    start_for_call_Loop_LB2D_shift_1_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

}
