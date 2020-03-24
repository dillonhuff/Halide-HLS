// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_1_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_hw_input_stencil_stream_V_value_V_dout,
        p_hw_input_stencil_stream_V_value_V_empty_n,
        p_hw_input_stencil_stream_V_value_V_read,
        hw_output_V_value_V,
        hw_output_V_value_V_ap_vld,
        hw_output_V_value_V_ap_ack,
        hw_output_V_last_V,
        hw_output_V_last_V_ap_vld,
        hw_output_V_last_V_ap_ack
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state7 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [287:0] p_hw_input_stencil_stream_V_value_V_dout;
input   p_hw_input_stencil_stream_V_value_V_empty_n;
output   p_hw_input_stencil_stream_V_value_V_read;
output  [7:0] hw_output_V_value_V;
output   hw_output_V_value_V_ap_vld;
input   hw_output_V_value_V_ap_ack;
output  [0:0] hw_output_V_last_V;
output   hw_output_V_last_V_ap_vld;
input   hw_output_V_last_V_ap_ack;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_hw_input_stencil_stream_V_value_V_read;
reg hw_output_V_value_V_ap_vld;
reg hw_output_V_last_V_ap_vld;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_hw_input_stencil_stream_V_value_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0_flag00000000;
reg   [0:0] exitcond_flatten_reg_465;
reg    hw_output_V_value_V_blk_n;
reg    ap_enable_reg_pp0_iter4;
reg   [0:0] ap_reg_pp0_iter3_exitcond_flatten_reg_465;
reg    hw_output_V_last_V_blk_n;
reg   [20:0] indvar_flatten_reg_126;
reg   [10:0] p_hw_output_y_scan_1_reg_137;
reg   [10:0] p_hw_output_x_scan_2_reg_149;
wire   [0:0] exitcond_flatten_fu_160_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_state6_pp0_stage0_iter4;
reg    ap_sig_ioackin_hw_output_V_value_V_ap_ack;
reg    ap_block_state6_io;
reg    ap_block_pp0_stage0_flag00011001;
reg   [0:0] ap_reg_pp0_iter1_exitcond_flatten_reg_465;
reg   [0:0] ap_reg_pp0_iter2_exitcond_flatten_reg_465;
wire   [20:0] indvar_flatten_next_fu_166_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] exitcond8_fu_172_p2;
reg   [0:0] exitcond8_reg_474;
reg   [0:0] ap_reg_pp0_iter1_exitcond8_reg_474;
reg   [0:0] ap_reg_pp0_iter2_exitcond8_reg_474;
wire   [10:0] p_hw_output_x_scan_s_fu_178_p3;
reg   [10:0] p_hw_output_x_scan_s_reg_480;
wire   [10:0] p_hw_output_x_scan_1_fu_186_p2;
wire   [10:0] p_hw_output_y_scan_2_fu_192_p2;
reg   [10:0] p_hw_output_y_scan_2_reg_490;
wire   [0:0] tmp5_fu_198_p2;
reg   [0:0] tmp5_reg_495;
reg   [0:0] ap_reg_pp0_iter2_tmp5_reg_495;
wire   [10:0] p_hw_output_y_scan_s_fu_204_p3;
reg   [10:0] p_hw_output_y_scan_s_reg_500;
wire   [8:0] p_357_fu_241_p2;
reg   [8:0] p_357_reg_505;
wire   [8:0] tmp1_fu_283_p2;
reg   [8:0] tmp1_reg_510;
reg   [5:0] tmp_4_reg_515;
reg   [5:0] ap_reg_pp0_iter2_tmp_4_reg_515;
reg   [6:0] tmp_5_reg_520;
wire   [8:0] tmp4_fu_345_p2;
reg   [8:0] tmp4_reg_525;
reg   [7:0] p_402_reg_530;
reg   [7:0] ap_reg_pp0_iter2_p_402_reg_530;
reg   [7:0] ap_reg_pp0_iter3_p_402_reg_530;
wire   [0:0] tmp_s_fu_361_p2;
reg   [0:0] tmp_s_reg_535;
reg   [0:0] ap_reg_pp0_iter2_tmp_s_reg_535;
wire   [0:0] tmp_mid1_fu_366_p2;
reg   [0:0] tmp_mid1_reg_540;
wire   [9:0] p_371_fu_377_p2;
reg   [9:0] p_371_reg_545;
wire   [9:0] tmp3_fu_397_p2;
reg   [9:0] tmp3_reg_550;
wire   [10:0] p_399_fu_431_p2;
reg   [10:0] p_399_reg_555;
wire   [0:0] tmp_last_V_fu_437_p2;
reg   [0:0] tmp_last_V_reg_560;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_flag00011011;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg   [10:0] p_hw_output_y_scan_1_phi_fu_141_p4;
reg    ap_block_pp0_stage0_flag00001001;
reg    ap_reg_ioackin_hw_output_V_value_V_ap_ack;
reg    ap_reg_ioackin_hw_output_V_last_V_ap_ack;
wire   [7:0] p_346_fu_211_p1;
wire   [6:0] tmp_2_fu_219_p4;
wire   [7:0] p_355_fu_229_p3;
wire   [8:0] p_356_cast_fu_237_p1;
wire   [8:0] p_349_cast_fu_215_p1;
wire   [7:0] p_360_fu_247_p4;
wire   [6:0] tmp_3_fu_261_p4;
wire   [7:0] p_369_fu_271_p3;
wire   [8:0] p_370_cast_cast_fu_279_p1;
wire   [8:0] p_363_cast_cast_fu_257_p1;
wire   [7:0] p_388_fu_309_p4;
wire   [6:0] tmp_6_fu_323_p4;
wire   [7:0] p_397_fu_333_p3;
wire   [8:0] p_398_cast_cast_fu_341_p1;
wire   [8:0] p_391_cast_cast_fu_319_p1;
wire   [9:0] p_357_cast_fu_371_p1;
wire   [9:0] tmp1_cast_fu_374_p1;
wire   [7:0] p_383_fu_383_p3;
wire   [9:0] p_384_cast_cast_fu_390_p1;
wire   [9:0] tmp4_cast_fu_394_p1;
wire   [7:0] p_376_fu_411_p3;
wire   [10:0] p_377_cast_fu_418_p1;
wire   [10:0] p_371_cast_fu_408_p1;
wire   [10:0] tmp2_fu_422_p2;
wire   [10:0] tmp3_cast_fu_428_p1;
wire   [0:0] tmp_mid2_fu_403_p3;
wire   [11:0] p_405_cast_fu_445_p1;
wire   [11:0] p_399_cast_fu_442_p1;
wire   [11:0] p_406_fu_448_p2;
wire    ap_CS_fsm_state7;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_reg_ioackin_hw_output_V_value_V_ap_ack = 1'b0;
#0 ap_reg_ioackin_hw_output_V_last_V_ap_ack = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state2 ^ 1'b1);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_hw_output_V_last_V_ap_ack <= 1'b0;
    end else begin
        if (((1'b1 == ap_enable_reg_pp0_iter4) & (1'd0 == ap_reg_pp0_iter3_exitcond_flatten_reg_465))) begin
            if ((ap_block_pp0_stage0_flag00011001 == 1'b0)) begin
                ap_reg_ioackin_hw_output_V_last_V_ap_ack <= 1'b0;
            end else if (((ap_block_pp0_stage0_flag00001001 == 1'b0) & (1'b1 == hw_output_V_last_V_ap_ack))) begin
                ap_reg_ioackin_hw_output_V_last_V_ap_ack <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_hw_output_V_value_V_ap_ack <= 1'b0;
    end else begin
        if (((1'b1 == ap_enable_reg_pp0_iter4) & (1'd0 == ap_reg_pp0_iter3_exitcond_flatten_reg_465))) begin
            if ((ap_block_pp0_stage0_flag00011001 == 1'b0)) begin
                ap_reg_ioackin_hw_output_V_value_V_ap_ack <= 1'b0;
            end else if (((ap_block_pp0_stage0_flag00001001 == 1'b0) & (1'b1 == hw_output_V_value_V_ap_ack))) begin
                ap_reg_ioackin_hw_output_V_value_V_ap_ack <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'd0 == exitcond_flatten_fu_160_p2))) begin
        indvar_flatten_reg_126 <= indvar_flatten_next_fu_166_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        indvar_flatten_reg_126 <= 21'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'd0 == exitcond_flatten_fu_160_p2))) begin
        p_hw_output_x_scan_2_reg_149 <= p_hw_output_x_scan_1_fu_186_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        p_hw_output_x_scan_2_reg_149 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == ap_reg_pp0_iter1_exitcond_flatten_reg_465) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        p_hw_output_y_scan_1_reg_137 <= p_hw_output_y_scan_s_reg_500;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        p_hw_output_y_scan_1_reg_137 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        ap_reg_pp0_iter1_exitcond8_reg_474 <= exitcond8_reg_474;
        ap_reg_pp0_iter1_exitcond_flatten_reg_465 <= exitcond_flatten_reg_465;
        exitcond_flatten_reg_465 <= exitcond_flatten_fu_160_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_block_pp0_stage0_flag00011001 == 1'b0)) begin
        ap_reg_pp0_iter2_exitcond8_reg_474 <= ap_reg_pp0_iter1_exitcond8_reg_474;
        ap_reg_pp0_iter2_exitcond_flatten_reg_465 <= ap_reg_pp0_iter1_exitcond_flatten_reg_465;
        ap_reg_pp0_iter2_p_402_reg_530 <= p_402_reg_530;
        ap_reg_pp0_iter2_tmp5_reg_495 <= tmp5_reg_495;
        ap_reg_pp0_iter2_tmp_4_reg_515 <= tmp_4_reg_515;
        ap_reg_pp0_iter2_tmp_s_reg_535 <= tmp_s_reg_535;
        ap_reg_pp0_iter3_exitcond_flatten_reg_465 <= ap_reg_pp0_iter2_exitcond_flatten_reg_465;
        ap_reg_pp0_iter3_p_402_reg_530 <= ap_reg_pp0_iter2_p_402_reg_530;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == exitcond_flatten_fu_160_p2))) begin
        exitcond8_reg_474 <= exitcond8_fu_172_p2;
        p_hw_output_x_scan_s_reg_480 <= p_hw_output_x_scan_s_fu_178_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_465 == 1'd0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        p_357_reg_505 <= p_357_fu_241_p2;
        p_402_reg_530 <= {{p_hw_input_stencil_stream_V_value_V_dout[263:256]}};
        p_hw_output_y_scan_2_reg_490 <= p_hw_output_y_scan_2_fu_192_p2;
        tmp1_reg_510 <= tmp1_fu_283_p2;
        tmp4_reg_525 <= tmp4_fu_345_p2;
        tmp_4_reg_515 <= {{p_hw_input_stencil_stream_V_value_V_dout[133:128]}};
        tmp_5_reg_520 <= {{p_hw_input_stencil_stream_V_value_V_dout[166:160]}};
        tmp_s_reg_535 <= tmp_s_fu_361_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == ap_reg_pp0_iter1_exitcond_flatten_reg_465))) begin
        p_371_reg_545 <= p_371_fu_377_p2;
        tmp3_reg_550 <= tmp3_fu_397_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == ap_reg_pp0_iter2_exitcond_flatten_reg_465))) begin
        p_399_reg_555 <= p_399_fu_431_p2;
        tmp_last_V_reg_560 <= tmp_last_V_fu_437_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_flatten_reg_465 == 1'd0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        p_hw_output_y_scan_s_reg_500 <= p_hw_output_y_scan_s_fu_204_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_465 == 1'd0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == exitcond8_reg_474))) begin
        tmp5_reg_495 <= tmp5_fu_198_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == ap_reg_pp0_iter1_exitcond_flatten_reg_465) & (ap_reg_pp0_iter1_exitcond8_reg_474 == 1'd1))) begin
        tmp_mid1_reg_540 <= tmp_mid1_fu_366_p2;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_160_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1) & (1'b0 == ap_enable_reg_pp0_iter2) & (1'b0 == ap_enable_reg_pp0_iter3) & (1'b0 == ap_enable_reg_pp0_iter4))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_hw_output_V_value_V_ap_ack)) begin
        ap_sig_ioackin_hw_output_V_value_V_ap_ack = hw_output_V_value_V_ap_ack;
    end else begin
        ap_sig_ioackin_hw_output_V_value_V_ap_ack = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_enable_reg_pp0_iter4) & (1'd0 == ap_reg_pp0_iter3_exitcond_flatten_reg_465) & (ap_block_pp0_stage0_flag00001001 == 1'b0) & (1'b0 == ap_reg_ioackin_hw_output_V_last_V_ap_ack))) begin
        hw_output_V_last_V_ap_vld = 1'b1;
    end else begin
        hw_output_V_last_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00000000 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter4) & (1'd0 == ap_reg_pp0_iter3_exitcond_flatten_reg_465))) begin
        hw_output_V_last_V_blk_n = hw_output_V_last_V_ap_ack;
    end else begin
        hw_output_V_last_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_enable_reg_pp0_iter4) & (1'd0 == ap_reg_pp0_iter3_exitcond_flatten_reg_465) & (ap_block_pp0_stage0_flag00001001 == 1'b0) & (1'b0 == ap_reg_ioackin_hw_output_V_value_V_ap_ack))) begin
        hw_output_V_value_V_ap_vld = 1'b1;
    end else begin
        hw_output_V_value_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00000000 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter4) & (1'd0 == ap_reg_pp0_iter3_exitcond_flatten_reg_465))) begin
        hw_output_V_value_V_blk_n = hw_output_V_value_V_ap_ack;
    end else begin
        hw_output_V_value_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00000000 == 1'b0) & (exitcond_flatten_reg_465 == 1'd0))) begin
        p_hw_input_stencil_stream_V_value_V_blk_n = p_hw_input_stencil_stream_V_value_V_empty_n;
    end else begin
        p_hw_input_stencil_stream_V_value_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_flatten_reg_465 == 1'd0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        p_hw_input_stencil_stream_V_value_V_read = 1'b1;
    end else begin
        p_hw_input_stencil_stream_V_value_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00000000 == 1'b0) & (1'd0 == ap_reg_pp0_iter1_exitcond_flatten_reg_465) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        p_hw_output_y_scan_1_phi_fu_141_p4 = p_hw_output_y_scan_s_reg_500;
    end else begin
        p_hw_output_y_scan_1_phi_fu_141_p4 = p_hw_output_y_scan_1_reg_137;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b1 == ap_enable_reg_pp0_iter4) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0)) & ~((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (exitcond_flatten_fu_160_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b1 == ap_enable_reg_pp0_iter4) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (exitcond_flatten_fu_160_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0_flag00000000 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_flag00001001 = ((1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_flatten_reg_465 == 1'd0) & (1'b0 == p_hw_input_stencil_stream_V_value_V_empty_n));
end

always @ (*) begin
    ap_block_pp0_stage0_flag00011001 = (((1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_flatten_reg_465 == 1'd0) & (1'b0 == p_hw_input_stencil_stream_V_value_V_empty_n)) | ((1'b1 == ap_enable_reg_pp0_iter4) & (1'b1 == ap_block_state6_io)));
end

always @ (*) begin
    ap_block_pp0_stage0_flag00011011 = (((1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_flatten_reg_465 == 1'd0) & (1'b0 == p_hw_input_stencil_stream_V_value_V_empty_n)) | ((1'b1 == ap_enable_reg_pp0_iter4) & (1'b1 == ap_block_state6_io)));
end

always @ (*) begin
    ap_block_state1 = ((1'b0 == ap_start) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((exitcond_flatten_reg_465 == 1'd0) & (1'b0 == p_hw_input_stencil_stream_V_value_V_empty_n));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_io = ((1'd0 == ap_reg_pp0_iter3_exitcond_flatten_reg_465) & (1'b0 == ap_sig_ioackin_hw_output_V_value_V_ap_ack));
end

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign exitcond8_fu_172_p2 = ((p_hw_output_x_scan_2_reg_149 == 11'd1918) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_160_p2 = ((indvar_flatten_reg_126 == 21'd2067604) ? 1'b1 : 1'b0);

assign hw_output_V_last_V = tmp_last_V_reg_560;

assign hw_output_V_value_V = {{p_406_fu_448_p2[11:4]}};

assign indvar_flatten_next_fu_166_p2 = (indvar_flatten_reg_126 + 21'd1);

assign p_346_fu_211_p1 = p_hw_input_stencil_stream_V_value_V_dout[7:0];

assign p_349_cast_fu_215_p1 = p_346_fu_211_p1;

assign p_355_fu_229_p3 = {{tmp_2_fu_219_p4}, {1'd0}};

assign p_356_cast_fu_237_p1 = p_355_fu_229_p3;

assign p_357_cast_fu_371_p1 = p_357_reg_505;

assign p_357_fu_241_p2 = (p_356_cast_fu_237_p1 + p_349_cast_fu_215_p1);

assign p_360_fu_247_p4 = {{p_hw_input_stencil_stream_V_value_V_dout[71:64]}};

assign p_363_cast_cast_fu_257_p1 = p_360_fu_247_p4;

assign p_369_fu_271_p3 = {{tmp_3_fu_261_p4}, {1'd0}};

assign p_370_cast_cast_fu_279_p1 = p_369_fu_271_p3;

assign p_371_cast_fu_408_p1 = p_371_reg_545;

assign p_371_fu_377_p2 = (p_357_cast_fu_371_p1 + tmp1_cast_fu_374_p1);

assign p_376_fu_411_p3 = {{ap_reg_pp0_iter2_tmp_4_reg_515}, {2'd0}};

assign p_377_cast_fu_418_p1 = p_376_fu_411_p3;

assign p_383_fu_383_p3 = {{tmp_5_reg_520}, {1'd0}};

assign p_384_cast_cast_fu_390_p1 = p_383_fu_383_p3;

assign p_388_fu_309_p4 = {{p_hw_input_stencil_stream_V_value_V_dout[199:192]}};

assign p_391_cast_cast_fu_319_p1 = p_388_fu_309_p4;

assign p_397_fu_333_p3 = {{tmp_6_fu_323_p4}, {1'd0}};

assign p_398_cast_cast_fu_341_p1 = p_397_fu_333_p3;

assign p_399_cast_fu_442_p1 = p_399_reg_555;

assign p_399_fu_431_p2 = (tmp2_fu_422_p2 + tmp3_cast_fu_428_p1);

assign p_405_cast_fu_445_p1 = ap_reg_pp0_iter3_p_402_reg_530;

assign p_406_fu_448_p2 = (p_405_cast_fu_445_p1 + p_399_cast_fu_442_p1);

assign p_hw_output_x_scan_1_fu_186_p2 = (11'd1 + p_hw_output_x_scan_s_fu_178_p3);

assign p_hw_output_x_scan_s_fu_178_p3 = ((exitcond8_fu_172_p2[0:0] === 1'b1) ? 11'd0 : p_hw_output_x_scan_2_reg_149);

assign p_hw_output_y_scan_2_fu_192_p2 = (11'd1 + p_hw_output_y_scan_1_phi_fu_141_p4);

assign p_hw_output_y_scan_s_fu_204_p3 = ((exitcond8_reg_474[0:0] === 1'b1) ? p_hw_output_y_scan_2_fu_192_p2 : p_hw_output_y_scan_1_phi_fu_141_p4);

assign tmp1_cast_fu_374_p1 = tmp1_reg_510;

assign tmp1_fu_283_p2 = (p_370_cast_cast_fu_279_p1 + p_363_cast_cast_fu_257_p1);

assign tmp2_fu_422_p2 = (p_377_cast_fu_418_p1 + p_371_cast_fu_408_p1);

assign tmp3_cast_fu_428_p1 = tmp3_reg_550;

assign tmp3_fu_397_p2 = (p_384_cast_cast_fu_390_p1 + tmp4_cast_fu_394_p1);

assign tmp4_cast_fu_394_p1 = tmp4_reg_525;

assign tmp4_fu_345_p2 = (p_398_cast_cast_fu_341_p1 + p_391_cast_cast_fu_319_p1);

assign tmp5_fu_198_p2 = ((p_hw_output_y_scan_1_phi_fu_141_p4 == 11'd1077) ? 1'b1 : 1'b0);

assign tmp_2_fu_219_p4 = {{p_hw_input_stencil_stream_V_value_V_dout[38:32]}};

assign tmp_3_fu_261_p4 = {{p_hw_input_stencil_stream_V_value_V_dout[102:96]}};

assign tmp_6_fu_323_p4 = {{p_hw_input_stencil_stream_V_value_V_dout[230:224]}};

assign tmp_last_V_fu_437_p2 = (ap_reg_pp0_iter2_tmp_s_reg_535 & tmp_mid2_fu_403_p3);

assign tmp_mid1_fu_366_p2 = ((p_hw_output_y_scan_2_reg_490 == 11'd1077) ? 1'b1 : 1'b0);

assign tmp_mid2_fu_403_p3 = ((ap_reg_pp0_iter2_exitcond8_reg_474[0:0] === 1'b1) ? tmp_mid1_reg_540 : ap_reg_pp0_iter2_tmp5_reg_495);

assign tmp_s_fu_361_p2 = ((p_hw_output_x_scan_s_reg_480 == 11'd1917) ? 1'b1 : 1'b0);

endmodule //Loop_1_proc