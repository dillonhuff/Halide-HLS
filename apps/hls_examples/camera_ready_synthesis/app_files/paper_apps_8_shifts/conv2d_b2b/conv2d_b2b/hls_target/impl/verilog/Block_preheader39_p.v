// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Block_preheader39_p (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_mul_stencil_stream_V_value_V_dout,
        p_mul_stencil_stream_V_value_V_empty_n,
        p_mul_stencil_stream_V_value_V_read,
        hw_output_V_value_V,
        hw_output_V_value_V_ap_vld,
        hw_output_V_value_V_ap_ack,
        hw_output_V_last_V,
        hw_output_V_last_V_ap_vld,
        hw_output_V_last_V_ap_ack
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [127:0] p_mul_stencil_stream_V_value_V_dout;
input   p_mul_stencil_stream_V_value_V_empty_n;
output   p_mul_stencil_stream_V_value_V_read;
output  [7:0] hw_output_V_value_V;
output   hw_output_V_value_V_ap_vld;
input   hw_output_V_value_V_ap_ack;
output  [0:0] hw_output_V_last_V;
output   hw_output_V_last_V_ap_vld;
input   hw_output_V_last_V_ap_ack;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_mul_stencil_stream_V_value_V_read;
reg hw_output_V_value_V_ap_vld;
reg hw_output_V_last_V_ap_vld;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_mul_stencil_stream_V_value_V_blk_n;
reg    hw_output_V_value_V_blk_n;
wire    ap_CS_fsm_state3;
reg    hw_output_V_last_V_blk_n;
wire   [8:0] p_9_fu_148_p2;
reg   [8:0] p_9_reg_230;
reg    ap_block_state1;
wire   [8:0] tmp_fu_190_p2;
reg   [8:0] tmp_reg_235;
wire   [31:0] p_p2_mul1_stencil_str_din;
wire    p_p2_mul1_stencil_str_full_n;
reg    p_p2_mul1_stencil_str_write;
wire    ap_CS_fsm_state2;
wire   [31:0] p_p2_mul1_stencil_str_dout;
wire    p_p2_mul1_stencil_str_empty_n;
reg    p_p2_mul1_stencil_str_read;
reg    ap_sig_ioackin_hw_output_V_value_V_ap_ack;
reg    ap_reg_ioackin_hw_output_V_value_V_ap_ack;
reg    ap_reg_ioackin_hw_output_V_last_V_ap_ack;
wire   [7:0] p_s_fu_112_p4;
wire   [5:0] tmp_6_fu_126_p4;
wire   [7:0] p_8_fu_136_p3;
wire   [8:0] p_323_cast_fu_144_p1;
wire   [8:0] p_315_cast_fu_122_p1;
wire   [6:0] tmp_7_fu_154_p4;
wire   [7:0] p_10_fu_164_p3;
wire   [7:0] p_11_fu_176_p4;
wire   [8:0] p_339_cast_cast_fu_186_p1;
wire   [8:0] p_331_cast_cast_fu_172_p1;
wire   [9:0] p_324_cast_fu_196_p1;
wire   [9:0] tmp_cast_fu_199_p1;
wire   [9:0] tmp_value_V_6_fu_202_p2;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_reg_ioackin_hw_output_V_value_V_ap_ack = 1'b0;
#0 ap_reg_ioackin_hw_output_V_last_V_ap_ack = 1'b0;
end

fifo_w32_d1_S p_p2_mul1_stencil_str_fifo_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(p_p2_mul1_stencil_str_din),
    .if_full_n(p_p2_mul1_stencil_str_full_n),
    .if_write(p_p2_mul1_stencil_str_write),
    .if_dout(p_p2_mul1_stencil_str_dout),
    .if_empty_n(p_p2_mul1_stencil_str_empty_n),
    .if_read(p_p2_mul1_stencil_str_read)
);

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
        end else if (((1'b1 == ap_CS_fsm_state3) & ~((1'b0 == p_p2_mul1_stencil_str_empty_n) | (1'b0 == ap_sig_ioackin_hw_output_V_value_V_ap_ack)))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_hw_output_V_last_V_ap_ack <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            if (~((1'b0 == p_p2_mul1_stencil_str_empty_n) | (1'b0 == ap_sig_ioackin_hw_output_V_value_V_ap_ack))) begin
                ap_reg_ioackin_hw_output_V_last_V_ap_ack <= 1'b0;
            end else if (((p_p2_mul1_stencil_str_empty_n == 1'b1) & (1'b1 == hw_output_V_last_V_ap_ack))) begin
                ap_reg_ioackin_hw_output_V_last_V_ap_ack <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_hw_output_V_value_V_ap_ack <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            if (~((1'b0 == p_p2_mul1_stencil_str_empty_n) | (1'b0 == ap_sig_ioackin_hw_output_V_value_V_ap_ack))) begin
                ap_reg_ioackin_hw_output_V_value_V_ap_ack <= 1'b0;
            end else if (((p_p2_mul1_stencil_str_empty_n == 1'b1) & (1'b1 == hw_output_V_value_V_ap_ack))) begin
                ap_reg_ioackin_hw_output_V_value_V_ap_ack <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == p_mul_stencil_stream_V_value_V_empty_n)))) begin
        p_9_reg_230 <= p_9_fu_148_p2;
        tmp_reg_235 <= tmp_fu_190_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & ~((1'b0 == p_p2_mul1_stencil_str_empty_n) | (1'b0 == ap_sig_ioackin_hw_output_V_value_V_ap_ack)))) begin
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
    if (((1'b1 == ap_CS_fsm_state3) & ~((1'b0 == p_p2_mul1_stencil_str_empty_n) | (1'b0 == ap_sig_ioackin_hw_output_V_value_V_ap_ack)))) begin
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
    if (((1'b1 == ap_CS_fsm_state3) & (p_p2_mul1_stencil_str_empty_n == 1'b1) & (1'b0 == ap_reg_ioackin_hw_output_V_last_V_ap_ack))) begin
        hw_output_V_last_V_ap_vld = 1'b1;
    end else begin
        hw_output_V_last_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        hw_output_V_last_V_blk_n = hw_output_V_last_V_ap_ack;
    end else begin
        hw_output_V_last_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (p_p2_mul1_stencil_str_empty_n == 1'b1) & (1'b0 == ap_reg_ioackin_hw_output_V_value_V_ap_ack))) begin
        hw_output_V_value_V_ap_vld = 1'b1;
    end else begin
        hw_output_V_value_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        hw_output_V_value_V_blk_n = hw_output_V_value_V_ap_ack;
    end else begin
        hw_output_V_value_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        p_mul_stencil_stream_V_value_V_blk_n = p_mul_stencil_stream_V_value_V_empty_n;
    end else begin
        p_mul_stencil_stream_V_value_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == p_mul_stencil_stream_V_value_V_empty_n)))) begin
        p_mul_stencil_stream_V_value_V_read = 1'b1;
    end else begin
        p_mul_stencil_stream_V_value_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & ~((1'b0 == p_p2_mul1_stencil_str_empty_n) | (1'b0 == ap_sig_ioackin_hw_output_V_value_V_ap_ack)))) begin
        p_p2_mul1_stencil_str_read = 1'b1;
    end else begin
        p_p2_mul1_stencil_str_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (p_p2_mul1_stencil_str_full_n == 1'b1))) begin
        p_p2_mul1_stencil_str_write = 1'b1;
    end else begin
        p_p2_mul1_stencil_str_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == p_mul_stencil_stream_V_value_V_empty_n)))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (p_p2_mul1_stencil_str_full_n == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & ~((1'b0 == p_p2_mul1_stencil_str_empty_n) | (1'b0 == ap_sig_ioackin_hw_output_V_value_V_ap_ack)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state1 = ((1'b0 == ap_start) | (ap_done_reg == 1'b1) | (1'b0 == p_mul_stencil_stream_V_value_V_empty_n));
end

assign hw_output_V_last_V = 1'd1;

assign hw_output_V_value_V = {{p_p2_mul1_stencil_str_dout[10:3]}};

assign p_10_fu_164_p3 = {{tmp_7_fu_154_p4}, {1'd0}};

assign p_11_fu_176_p4 = {{p_mul_stencil_stream_V_value_V_dout[107:100]}};

assign p_315_cast_fu_122_p1 = p_s_fu_112_p4;

assign p_323_cast_fu_144_p1 = p_8_fu_136_p3;

assign p_324_cast_fu_196_p1 = p_9_reg_230;

assign p_331_cast_cast_fu_172_p1 = p_10_fu_164_p3;

assign p_339_cast_cast_fu_186_p1 = p_11_fu_176_p4;

assign p_8_fu_136_p3 = {{tmp_6_fu_126_p4}, {2'd0}};

assign p_9_fu_148_p2 = (p_323_cast_fu_144_p1 + p_315_cast_fu_122_p1);

assign p_p2_mul1_stencil_str_din = tmp_value_V_6_fu_202_p2;

assign p_s_fu_112_p4 = {{p_mul_stencil_stream_V_value_V_dout[11:4]}};

assign tmp_6_fu_126_p4 = {{p_mul_stencil_stream_V_value_V_dout[41:36]}};

assign tmp_7_fu_154_p4 = {{p_mul_stencil_stream_V_value_V_dout[74:68]}};

assign tmp_cast_fu_199_p1 = tmp_reg_235;

assign tmp_fu_190_p2 = (p_339_cast_cast_fu_186_p1 + p_331_cast_cast_fu_172_p1);

assign tmp_value_V_6_fu_202_p2 = (p_324_cast_fu_196_p1 + tmp_cast_fu_199_p1);

endmodule //Block_preheader39_p
