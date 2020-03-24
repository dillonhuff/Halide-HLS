; ModuleID = '/home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/paper_apps_8_shifts/conv2d_b2b/conv2d_b2b/hls_target/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slice_stream_OC_V_OC = internal unnamed_addr constant [23 x i8] c"slice_stream.V.value.V\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@in_stream_OC_V_OC_va = internal unnamed_addr constant [20 x i8] c"in_stream.V.value.V\00"
@hls_target_str = internal unnamed_addr constant [11 x i8] c"hls_target\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_p2_mul1_stencil_str = internal unnamed_addr constant [35 x i8] c"_p2_mul1_stencil_stream.V.value.V3\00"
@p_mul_stencil_update_s = internal unnamed_addr constant [37 x i8] c"_mul_stencil_update_stream.V.value.V\00"
@p_mul_stencil_stream_s = internal unnamed_addr constant [30 x i8] c"_mul_stencil_stream.V.value.V\00"
@p_hw_input_stencil_st = internal unnamed_addr constant [35 x i8] c"_hw_input_stencil_stream.V.value.V\00"
@p_str37 = private unnamed_addr constant [14 x i8] c"LB1D_shiftreg\00", align 1
@p_str36 = private unnamed_addr constant [11 x i8] c"LB2D_shift\00", align 1
@p_str35 = private unnamed_addr constant [12 x i8] c"hls_label_8\00", align 1
@p_str34 = private unnamed_addr constant [9 x i8] c"LB2D_buf\00", align 1
@p_str33 = private unnamed_addr constant [12 x i8] c"hls_label_7\00", align 1
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_5\00", align 1
@p_str24 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@p_str22 = private unnamed_addr constant [11 x i8] c"LB_3D_pass\00", align 1
@p_str21 = private unnamed_addr constant [11 x i8] c"LB_4D_pass\00", align 1
@p_str2 = private unnamed_addr constant [9 x i8] c"FIFO_SRL\00", align 1
@p_str1 = private unnamed_addr constant [6 x i8] c"ap_hs\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i72 @llvm.part.select.i72(i72, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i3 @llvm.part.select.i3(i3, i32, i32) nounwind readnone

declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

declare i128 @llvm.part.select.i128(i128, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc void @linebuffer_Loop_1_pr(i8* %in_axi_stream_V_value_V, i1* %in_axi_stream_V_last_V, i8* %in_stream_V_value_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i8* %in_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %in_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader.i

.critedge.exitStub:                               ; preds = %.preheader.i
  ret void

.preheader4.i:                                    ; preds = %.preheader.i
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str33)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %empty_20 = call { i8, i1 } @_ssdm_op_Read.ap_auto.volatile.i8P.i1P(i8* %in_axi_stream_V_value_V, i1* %in_axi_stream_V_last_V)
  %tmp_value_V = extractvalue { i8, i1 } %empty_20, 0
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %in_stream_V_value_V, i8 %tmp_value_V)
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str33, i32 %tmp)
  br label %.preheader.i

.preheader.i:                                     ; preds = %newFuncRoot, %.preheader4.i
  %indvar_flatten = phi i5 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader4.i ]
  %exitcond_flatten = icmp eq i5 %indvar_flatten, -16
  %indvar_flatten_next = add i5 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.critedge.exitStub, label %.preheader4.i
}

define internal fastcc void @linebuffer_Block__pr(i32* %in_stream_V_value_V, i128* %out_stream_V_value_V) {
newFuncRoot:
  %buffer_1_1_value_V_4 = alloca i32
  %buffer_1_1_value_V_9 = alloca i32
  %buffer_1_1_value_V_10 = alloca i32
  %buffer_1_1_value_V_11 = alloca i32
  call void (...)* @_ssdm_op_SpecMemCore(i32* %in_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i128* %out_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i128* %out_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str22)
  br label %.preheader23.i.i.i.i

.preheader23.preheader.i.i.i.i:                   ; preds = %.preheader23.i.i.i.i
  %buffer_1_1_value_V_13 = load i32* %buffer_1_1_value_V_4
  %buffer_1_1_value_V_14 = load i32* %buffer_1_1_value_V_9
  %buffer_1_1_value_V_15 = load i32* %buffer_1_1_value_V_10
  %buffer_1_1_value_V_16 = load i32* %buffer_1_1_value_V_11
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %tmp_1 = icmp eq i2 %idx_0_0_i_i_i_i, -2
  %idx_0_0_i_i_i_i_mid2 = select i1 %tmp_1, i2 0, i2 %idx_0_0_i_i_i_i
  %tmp_7_mid1 = icmp eq i2 %idx_1_0_i_i_i_i, 0
  %tmp_4 = icmp eq i2 %idx_1_0_i_i_i_i, 1
  %tmp_7_mid2 = select i1 %tmp_1, i1 %tmp_7_mid1, i1 %tmp_4
  %idx_s = add i2 1, %idx_1_0_i_i_i_i
  %idx_1_0_i_i_i_i_t_mi = select i1 %tmp_1, i2 %idx_s, i2 %idx_1_0_i_i_i_i
  %tmp = trunc i2 %idx_1_0_i_i_i_i_t_mi to i1
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str24)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V_1 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_stream_V_value_V)
  %tmp_5 = trunc i2 %idx_0_0_i_i_i_i_mid2 to i1
  %buffer_1_1_value_V_1 = select i1 %tmp_5, i32 %tmp_value_V_1, i32 %buffer_1_1_value_V_16
  %buffer_1_1_value_V_2 = select i1 %tmp_5, i32 %buffer_1_1_value_V_15, i32 %tmp_value_V_1
  %buffer_1_1_value_V = select i1 %tmp_5, i32 %tmp_value_V_1, i32 %buffer_1_1_value_V_14
  %buffer_1_1_value_V_3 = select i1 %tmp_5, i32 %buffer_1_1_value_V_13, i32 %tmp_value_V_1
  %buffer_1_1_value_V_5 = select i1 %tmp, i32 %buffer_1_1_value_V_1, i32 %buffer_1_1_value_V_16
  %buffer_1_1_value_V_6 = select i1 %tmp, i32 %buffer_1_1_value_V_2, i32 %buffer_1_1_value_V_15
  %buffer_1_1_value_V_7 = select i1 %tmp, i32 %buffer_1_1_value_V_14, i32 %buffer_1_1_value_V
  %buffer_1_1_value_V_8 = select i1 %tmp, i32 %buffer_1_1_value_V_13, i32 %buffer_1_1_value_V_3
  %tmp_s = icmp eq i2 %idx_0_0_i_i_i_i_mid2, 1
  %or_cond_i_i_i_i = and i1 %tmp_7_mid2, %tmp_s
  store i32 %buffer_1_1_value_V_5, i32* %buffer_1_1_value_V_11
  store i32 %buffer_1_1_value_V_6, i32* %buffer_1_1_value_V_10
  store i32 %buffer_1_1_value_V_7, i32* %buffer_1_1_value_V_9
  store i32 %buffer_1_1_value_V_8, i32* %buffer_1_1_value_V_4
  br i1 %or_cond_i_i_i_i, label %.preheader22.i.i.i.i.preheader.0, label %._crit_edge.i.i.i.i

.preheader23.i.i.i.i:                             ; preds = %newFuncRoot, %._crit_edge.i.i.i.i
  %indvar_flatten = phi i3 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %._crit_edge.i.i.i.i ]
  %idx_1_0_i_i_i_i = phi i2 [ 0, %newFuncRoot ], [ %idx_1_0_i_i_i_i_t_mi, %._crit_edge.i.i.i.i ]
  %idx_0_0_i_i_i_i = phi i2 [ 0, %newFuncRoot ], [ %idx_0, %._crit_edge.i.i.i.i ]
  %exitcond_flatten = icmp eq i3 %indvar_flatten, -4
  %indvar_flatten_next = add i3 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %"linebuffer_4D<2ul, 2ul, 1ul, 1ul, 1ul, 1ul, 1ul, 2ul, 2ul, 1ul, 1ul, int>.exit", label %.preheader23.preheader.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.preheader22.i.i.i.i.preheader.0, %.preheader23.preheader.i.i.i.i
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str24, i32 %tmp_3)
  %idx_0 = add i2 %idx_0_0_i_i_i_i_mid2, 1
  br label %.preheader23.i.i.i.i

.preheader22.i.i.i.i.preheader.0:                 ; preds = %.preheader23.preheader.i.i.i.i
  %tmp_value_V = call i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32 %buffer_1_1_value_V_5, i32 %buffer_1_1_value_V_6, i32 %buffer_1_1_value_V_7, i32 %buffer_1_1_value_V_8)
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* %out_stream_V_value_V, i128 %tmp_value_V)
  br label %._crit_edge.i.i.i.i

"linebuffer_4D<2ul, 2ul, 1ul, 1ul, 1ul, 1ul, 1ul, 2ul, 2ul, 1ul, 1ul, int>.exit": ; preds = %.preheader23.i.i.i.i
  %empty_23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str22, i32 %tmp_2)
  ret void
}

define internal fastcc void @linebuffer.2(i32* %in_stream_V_value_V, i128* %out_stream_V_value_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i128* %out_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore(i128* %out_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* %in_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str21) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str22) nounwind
  call fastcc void @linebuffer_Block__pr(i32* %in_stream_V_value_V, i128* %out_stream_V_value_V)
  ret void
}

define internal fastcc void @linebuffer.1(i8* %in_axi_stream_V_value_V, i1* %in_axi_stream_V_last_V, i72* %out_stream_V_value_V) {
.preheader5.preheader.critedge:
  call void (...)* @_ssdm_op_SpecInterface(i72* %out_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore(i72* %out_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %in_stream_V_value_V = alloca i8, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @in_stream_OC_V_OC_va, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i8* %in_stream_V_value_V, i8* %in_stream_V_value_V)
  call void (...)* @_ssdm_op_SpecInterface(i8* %in_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i8* %in_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @linebuffer_Loop_1_pr(i8* %in_axi_stream_V_value_V, i1* %in_axi_stream_V_last_V, i8* %in_stream_V_value_V)
  call fastcc void @linebuffer(i8* %in_stream_V_value_V, i72* %out_stream_V_value_V)
  ret void
}

define internal fastcc void @linebuffer(i8* %in_stream_V_value_V, i72* %out_stream_V_value_V) {
  call void (...)* @_ssdm_op_SpecInterface(i8* %in_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i72* %out_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore(i8* %in_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i72* %out_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str21) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str21)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str22) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str21, i32 %tmp)
  call fastcc void @call(i8* %in_stream_V_value_V, i72* %out_stream_V_value_V)
  ret void
}

define void @hls_target(i8* %hw_input_V_value_V, i1* %hw_input_V_last_V, i8* %hw_output_V_value_V, i1* %hw_output_V_last_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %hw_input_V_value_V), !map !119
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %hw_input_V_last_V), !map !123
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %hw_output_V_value_V), !map !127
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %hw_output_V_last_V), !map !131
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @hls_target_str) nounwind
  %p_hw_input_stencil_st = alloca i72, align 8
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([35 x i8]* @p_hw_input_stencil_st, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i72* %p_hw_input_stencil_st, i72* %p_hw_input_stencil_st)
  call void (...)* @_ssdm_op_SpecInterface(i72* %p_hw_input_stencil_st, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i72* %p_hw_input_stencil_st, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_mul_stencil_update_1 = alloca i32, align 4
  %empty_24 = call i32 (...)* @_ssdm_op_SpecChannel([37 x i8]* @p_mul_stencil_update_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i32* %p_mul_stencil_update_1, i32* %p_mul_stencil_update_1)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_mul_stencil_update_1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_mul_stencil_update_1, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_mul_stencil_stream_s = alloca i128, align 8
  %empty_25 = call i32 (...)* @_ssdm_op_SpecChannel([30 x i8]* @p_mul_stencil_stream_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i128* %p_mul_stencil_stream_s, i128* %p_mul_stencil_stream_s)
  call void (...)* @_ssdm_op_SpecInterface(i128* %p_mul_stencil_stream_s, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i128* %p_mul_stencil_stream_s, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* null, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %hw_input_V_value_V, i1* %hw_input_V_last_V, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %hw_output_V_value_V, i1* %hw_output_V_last_V, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call fastcc void @linebuffer.1(i8* %hw_input_V_value_V, i1* %hw_input_V_last_V, i72* %p_hw_input_stencil_st)
  call fastcc void @Loop_1_proc(i72* %p_hw_input_stencil_st, i32* %p_mul_stencil_update_1)
  call fastcc void @linebuffer.2(i32* %p_mul_stencil_update_1, i128* %p_mul_stencil_stream_s)
  call fastcc void @Block_.preheader39.p(i128* %p_mul_stencil_stream_s, i8* %hw_output_V_value_V, i1* %hw_output_V_last_V)
  ret void
}

define internal fastcc void @call_Loop_LB2D_shift(i24* %slice_stream_V_value_V, i72* %out_stream_V_value_V) {
newFuncRoot:
  %buffer_1_value_V = alloca i24
  %buffer_0_value_V = alloca i24
  call void (...)* @_ssdm_op_SpecMemCore(i24* %slice_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i72* %out_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i24* %slice_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i72* %out_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader

.exitStub:                                        ; preds = %.preheader
  ret void

.preheader:                                       ; preds = %"linebuffer_1D<4ul, 3ul, 1ul, 1ul, 1ul, 3ul, unsigned char>.exit", %newFuncRoot
  %n1 = phi i2 [ %n1_1, %"linebuffer_1D<4ul, 3ul, 1ul, 1ul, 1ul, 3ul, unsigned char>.exit" ], [ 0, %newFuncRoot ]
  %tmp_1 = icmp eq i2 %n1, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %n1_1 = add i2 %n1, 1
  br i1 %tmp_1, label %.exitStub, label %1

"linebuffer_1D<4ul, 3ul, 1ul, 1ul, 1ul, 3ul, unsigned char>.exit": ; preds = %0
  %empty_26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str36, i32 %tmp_5)
  br label %.preheader

; <label>:0                                       ; preds = %._crit_edge.i.i, %1
  %i_0_i_i = phi i3 [ 0, %1 ], [ %i, %._crit_edge.i.i ]
  %tmp_3 = icmp eq i3 %i_0_i_i, -4
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i = add i3 %i_0_i_i, 1
  br i1 %tmp_3, label %"linebuffer_1D<4ul, 3ul, 1ul, 1ul, 1ul, 3ul, unsigned char>.exit", label %2

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str36) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str36)
  br label %0

._crit_edge.i.i:                                  ; preds = %2, %.preheader.i.i.preheader.0
  %buffer_1_value_V_lo = load i24* %buffer_1_value_V
  %empty_28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str37, i32 %tmp_8)
  store i24 %buffer_1_value_V_lo, i24* %buffer_0_value_V
  store i24 %tmp_value_V_2, i24* %buffer_1_value_V
  br label %0

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str37) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str37)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V_2 = call i24 @_ssdm_op_Read.ap_fifo.volatile.i24P(i24* %slice_stream_V_value_V)
  %tmp = call i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3 %i_0_i_i, i32 1, i32 2)
  %icmp = icmp eq i2 %tmp, 0
  br i1 %icmp, label %._crit_edge.i.i, label %.preheader.i.i.preheader.0

.preheader.i.i.preheader.0:                       ; preds = %2
  %buffer_1_value_V_lo_1 = load i24* %buffer_1_value_V
  %buffer_0_value_V_lo = load i24* %buffer_0_value_V
  %tmp_6 = trunc i24 %buffer_0_value_V_lo to i8
  %tmp_7 = trunc i24 %buffer_1_value_V_lo_1 to i8
  %tmp_9 = trunc i24 %tmp_value_V_2 to i8
  %p_Result_6_1 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %buffer_0_value_V_lo, i32 8, i32 15)
  %p_Result_6_1_1 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %buffer_1_value_V_lo_1, i32 8, i32 15)
  %p_Result_6_1_2 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %tmp_value_V_2, i32 8, i32 15)
  %p_Result_6_2 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %buffer_0_value_V_lo, i32 16, i32 23)
  %p_Result_6_2_1 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %buffer_1_value_V_lo_1, i32 16, i32 23)
  %p_Result_6_2_2 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %tmp_value_V_2, i32 16, i32 23)
  %tmp_value_V = call i72 @_ssdm_op_BitConcatenate.i72.i8.i8.i8.i8.i8.i8.i8.i8.i8(i8 %p_Result_6_2_2, i8 %p_Result_6_2_1, i8 %p_Result_6_2, i8 %p_Result_6_1_2, i8 %p_Result_6_1_1, i8 %p_Result_6_1, i8 %tmp_9, i8 %tmp_7, i8 %tmp_6)
  call void @_ssdm_op_Write.ap_fifo.volatile.i72P(i72* %out_stream_V_value_V, i72 %tmp_value_V)
  br label %._crit_edge.i.i
}

define internal fastcc void @call_Loop_LB2D_buf_p(i8* %in_stream_V_value_V, i24* %slice_stream_V_value_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i24* %slice_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i8* %in_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i24* %slice_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %in_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %buffer_0_value_V = alloca [4 x i8], align 1
  %buffer_1_value_V = alloca [4 x i8], align 1
  br label %0

.preheader.exitStub:                              ; preds = %0
  ret void

; <label>:0                                       ; preds = %1, %newFuncRoot
  %write_idx_1 = phi i64 [ 0, %newFuncRoot ], [ %write_idx_1_2, %1 ]
  %row = phi i3 [ 0, %newFuncRoot ], [ %row_1, %1 ]
  %tmp = icmp eq i3 %row, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %row_1 = add i3 %row, 1
  br i1 %tmp, label %.preheader.exitStub, label %3

; <label>:1                                       ; preds = %2
  %write_idx_1_2 = add i64 %write_idx_1_1, 1
  %empty_29 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str34, i32 %tmp_4)
  br label %0

; <label>:2                                       ; preds = %._crit_edge31, %3
  %write_idx_1_1 = phi i64 [ %write_idx_1, %3 ], [ %p_write_idx_1_1, %._crit_edge31 ]
  %col = phi i3 [ 0, %3 ], [ %col_1, %._crit_edge31 ]
  %tmp_2 = icmp eq i3 %col, -4
  %col_1 = add i3 %col, 1
  br i1 %tmp_2, label %1, label %4

; <label>:3                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str34) nounwind
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str34)
  %tmp_10 = call i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3 %row, i32 1, i32 2)
  %icmp = icmp eq i2 %tmp_10, 0
  br label %2

._crit_edge31:                                    ; preds = %branch5, %branch4
  %empty_30 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str35, i32 %tmp_6)
  br label %2

branch4:                                          ; preds = %._crit_edge
  store i8 %tmp_value_V_3, i8* %buffer_0_value_V_ad, align 1
  br label %._crit_edge31

._crit_edge:                                      ; preds = %4, %.preheader56.preheader.critedge.0_ifconv
  %buffer_0_value_V_ad = getelementptr [4 x i8]* %buffer_0_value_V, i64 0, i64 %col_cast
  %buffer_1_value_V_ad = getelementptr [4 x i8]* %buffer_1_value_V, i64 0, i64 %col_cast
  %tmp_13 = trunc i64 %p_write_idx_1_1 to i1
  br i1 %tmp_13, label %branch5, label %branch4

; <label>:4                                       ; preds = %2
  %col_cast = zext i3 %col to i64
  %empty_31 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str35)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_11 = call i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64 %write_idx_1_1, i32 1, i32 63)
  %icmp1 = icmp ne i63 %tmp_11, 0
  %write_idx_1_3 = add i64 %write_idx_1_1, -2
  %p_write_idx_1_1 = select i1 %icmp1, i64 %write_idx_1_3, i64 %write_idx_1_1
  %tmp_value_V_3 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_stream_V_value_V)
  br i1 %icmp, label %._crit_edge, label %.preheader56.preheader.critedge.0_ifconv

.preheader56.preheader.critedge.0_ifconv:         ; preds = %4
  %tmp_12 = trunc i64 %p_write_idx_1_1 to i1
  %buffer_0_value_V_ad_1 = getelementptr [4 x i8]* %buffer_0_value_V, i64 0, i64 %col_cast
  %buffer_1_value_V_ad_1 = getelementptr [4 x i8]* %buffer_1_value_V, i64 0, i64 %col_cast
  %buffer_1_value_V_lo = load i8* %buffer_1_value_V_ad_1, align 1
  %buffer_0_value_V_lo = load i8* %buffer_0_value_V_ad_1, align 1
  %p_Val2_3_0_phi = select i1 %tmp_12, i8 %buffer_1_value_V_lo, i8 %buffer_0_value_V_lo
  %p_Val2_3_1_phi = select i1 %tmp_12, i8 %buffer_0_value_V_lo, i8 %buffer_1_value_V_lo
  %p_Result_s = call i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8 %tmp_value_V_3, i8 %p_Val2_3_1_phi, i8 %p_Val2_3_0_phi)
  call void @_ssdm_op_Write.ap_fifo.volatile.i24P(i24* %slice_stream_V_value_V, i24 %p_Result_s)
  br label %._crit_edge

branch5:                                          ; preds = %._crit_edge
  store i8 %tmp_value_V_3, i8* %buffer_1_value_V_ad, align 1
  br label %._crit_edge31
}

define internal fastcc void @call(i8* %in_stream_V_value_V, i72* %out_stream_V_value_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i72* %out_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %in_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore(i72* %out_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i8* %in_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %slice_stream_V_value = alloca i24, align 4
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @slice_stream_OC_V_OC, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i24* %slice_stream_V_value, i24* %slice_stream_V_value)
  call void (...)* @_ssdm_op_SpecInterface(i24* %slice_stream_V_value, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i24* %slice_stream_V_value, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @call_Loop_LB2D_buf_p(i8* %in_stream_V_value_V, i24* %slice_stream_V_value)
  call fastcc void @call_Loop_LB2D_shift(i24* %slice_stream_V_value, i72* %out_stream_V_value_V)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8*, i8) {
entry:
  %empty = call i8 @_autotb_FifoWrite_i8(i8* %0, i8 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i72P(i72*, i72) {
entry:
  %empty = call i72 @_autotb_FifoWrite_i72(i72* %0, i72 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i24P(i24*, i24) {
entry:
  %empty = call i24 @_autotb_FifoWrite_i24(i24* %0, i24 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128*, i128) {
entry:
  %empty = call i128 @_autotb_FifoWrite_i128(i128* %0, i128 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.volatile.i8P.i1P(i8*, i1*, i8, i1) {
entry:
  store i8 %2, i8* %0
  store i1 %3, i1* %1
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8*) {
entry:
  %empty = call i8 @_autotb_FifoRead_i8(i8* %0)
  ret i8 %empty
}

define weak i72 @_ssdm_op_Read.ap_fifo.volatile.i72P(i72*) {
entry:
  %empty = call i72 @_autotb_FifoRead_i72(i72* %0)
  ret i72 %empty
}

define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak i24 @_ssdm_op_Read.ap_fifo.volatile.i24P(i24*) {
entry:
  %empty = call i24 @_autotb_FifoRead_i24(i24* %0)
  ret i24 %empty
}

define weak i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128*) {
entry:
  %empty = call i128 @_autotb_FifoRead_i128(i128* %0)
  ret i128 %empty
}

define weak { i8, i1 } @_ssdm_op_Read.ap_auto.volatile.i8P.i1P(i8*, i1*) {
entry:
  %empty = load i8* %0
  %empty_32 = load i1* %1
  %mrv_0 = insertvalue { i8, i1 } undef, i8 %empty, 0
  %mrv1 = insertvalue { i8, i1 } %mrv_0, i1 %empty_32, 1
  ret { i8, i1 } %mrv1
}

define weak i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72, i32, i32) nounwind readnone {
entry:
  %empty = call i72 @llvm.part.select.i72(i72 %0, i32 %1, i32 %2)
  %empty_33 = trunc i72 %empty to i8
  ret i8 %empty_33
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_34 = trunc i32 %empty to i8
  ret i8 %empty_34
}

define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_35 = trunc i24 %empty to i8
  ret i8 %empty_35
}

define weak i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_36 = trunc i128 %empty to i8
  ret i8 %empty_36
}

define weak i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72, i32, i32) nounwind readnone {
entry:
  %empty = call i72 @llvm.part.select.i72(i72 %0, i32 %1, i32 %2)
  %empty_37 = trunc i72 %empty to i7
  ret i7 %empty_37
}

define weak i7 @_ssdm_op_PartSelect.i7.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_38 = trunc i128 %empty to i7
  ret i7 %empty_38
}

define weak i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_39 = trunc i64 %empty to i63
  ret i63 %empty_39
}

define weak i6 @_ssdm_op_PartSelect.i6.i72.i32.i32(i72, i32, i32) nounwind readnone {
entry:
  %empty = call i72 @llvm.part.select.i72(i72 %0, i32 %1, i32 %2)
  %empty_40 = trunc i72 %empty to i6
  ret i6 %empty_40
}

define weak i6 @_ssdm_op_PartSelect.i6.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_41 = trunc i128 %empty to i6
  ret i6 %empty_41
}

define weak i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone {
entry:
  %empty = call i3 @llvm.part.select.i3(i3 %0, i32 %1, i32 %2)
  %empty_42 = trunc i3 %empty to i2
  ret i2 %empty_42
}

declare i1 @_ssdm_op_PartSelect.i1.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone {
entry:
  %empty = zext i7 %0 to i8
  %empty_43 = zext i1 %1 to i8
  %empty_44 = shl i8 %empty, 1
  %empty_45 = or i8 %empty_44, %empty_43
  ret i8 %empty_45
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8
  %empty_46 = zext i2 %1 to i8
  %empty_47 = shl i8 %empty, 2
  %empty_48 = or i8 %empty_47, %empty_46
  ret i8 %empty_48
}

define weak i72 @_ssdm_op_BitConcatenate.i72.i8.i8.i8.i8.i8.i8.i8.i8.i8(i8, i8, i8, i8, i8, i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %7 to i16
  %empty_49 = zext i8 %8 to i16
  %empty_50 = shl i16 %empty, 8
  %empty_51 = or i16 %empty_50, %empty_49
  %empty_52 = zext i8 %6 to i24
  %empty_53 = zext i16 %empty_51 to i24
  %empty_54 = shl i24 %empty_52, 16
  %empty_55 = or i24 %empty_54, %empty_53
  %empty_56 = zext i8 %5 to i32
  %empty_57 = zext i24 %empty_55 to i32
  %empty_58 = shl i32 %empty_56, 24
  %empty_59 = or i32 %empty_58, %empty_57
  %empty_60 = zext i8 %4 to i40
  %empty_61 = zext i32 %empty_59 to i40
  %empty_62 = shl i40 %empty_60, 32
  %empty_63 = or i40 %empty_62, %empty_61
  %empty_64 = zext i8 %3 to i48
  %empty_65 = zext i40 %empty_63 to i48
  %empty_66 = shl i48 %empty_64, 40
  %empty_67 = or i48 %empty_66, %empty_65
  %empty_68 = zext i8 %2 to i56
  %empty_69 = zext i48 %empty_67 to i56
  %empty_70 = shl i56 %empty_68, 48
  %empty_71 = or i56 %empty_70, %empty_69
  %empty_72 = zext i8 %1 to i64
  %empty_73 = zext i56 %empty_71 to i64
  %empty_74 = shl i64 %empty_72, 56
  %empty_75 = or i64 %empty_74, %empty_73
  %empty_76 = zext i8 %0 to i72
  %empty_77 = zext i64 %empty_75 to i72
  %empty_78 = shl i72 %empty_76, 64
  %empty_79 = or i72 %empty_78, %empty_77
  ret i72 %empty_79
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %1 to i16
  %empty_80 = zext i8 %2 to i16
  %empty_81 = shl i16 %empty, 8
  %empty_82 = or i16 %empty_81, %empty_80
  %empty_83 = zext i8 %0 to i24
  %empty_84 = zext i16 %empty_82 to i24
  %empty_85 = shl i24 %empty_83, 16
  %empty_86 = or i24 %empty_85, %empty_84
  ret i24 %empty_86
}

define weak i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32, i32, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %2 to i64
  %empty_87 = zext i32 %3 to i64
  %empty_88 = shl i64 %empty, 32
  %empty_89 = or i64 %empty_88, %empty_87
  %empty_90 = zext i32 %1 to i96
  %empty_91 = zext i64 %empty_89 to i96
  %empty_92 = shl i96 %empty_90, 64
  %empty_93 = or i96 %empty_92, %empty_91
  %empty_94 = zext i32 %0 to i128
  %empty_95 = zext i96 %empty_93 to i128
  %empty_96 = shl i128 %empty_94, 96
  %empty_97 = or i128 %empty_96, %empty_95
  ret i128 %empty_97
}

declare void @_ssdm_SpecDependence(...) nounwind

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i72 @_autotb_FifoWrite_i72(i72*, i72)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i24 @_autotb_FifoWrite_i24(i24*, i24)

declare i128 @_autotb_FifoWrite_i128(i128*, i128)

declare i8 @_autotb_FifoRead_i8(i8*)

declare i72 @_autotb_FifoRead_i72(i72*)

declare i32 @_autotb_FifoRead_i32(i32*)

declare i24 @_autotb_FifoRead_i24(i24*)

declare i128 @_autotb_FifoRead_i128(i128*)

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define internal fastcc void @Loop_1_proc(i72* %p_hw_input_stencil_stream_V_value_V, i32* %p_mul_stencil_update_stream_V_value_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_mul_stencil_update_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i72* %p_hw_input_stencil_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_mul_stencil_update_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i72* %p_hw_input_stencil_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader40

.preheader39.preheader.0.exitStub:                ; preds = %.preheader40
  ret void

.preheader40.preheader:                           ; preds = %.preheader40
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V = call i72 @_ssdm_op_Read.ap_fifo.volatile.i72P(i72* %p_hw_input_stencil_stream_V_value_V)
  %p_238 = trunc i72 %tmp_value_V to i8
  %p_243_cast = zext i8 %p_238 to i9
  %p_254 = call i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72 %tmp_value_V, i32 16, i32 23)
  %p_259_cast_cast = zext i8 %p_254 to i9
  %p_286 = call i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72 %tmp_value_V, i32 48, i32 55)
  %p_291_cast_cast = zext i8 %p_286 to i9
  %p_302 = call i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72 %tmp_value_V, i32 64, i32 71)
  %p_307_cast = zext i8 %p_302 to i12
  %tmp_1 = call i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72 %tmp_value_V, i32 8, i32 14)
  %p_250 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_1, i1 false)
  %p_251_cast = zext i8 %p_250 to i9
  %p_252 = add i9 %p_243_cast, %p_251_cast
  %p_252_cast = zext i9 %p_252 to i10
  %tmp_2 = call i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72 %tmp_value_V, i32 24, i32 30)
  %p_266 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_2, i1 false)
  %p_267_cast_cast = zext i8 %p_266 to i9
  %tmp1 = add i9 %p_267_cast_cast, %p_259_cast_cast
  %tmp1_cast = zext i9 %tmp1 to i10
  %p_268 = add i10 %p_252_cast, %tmp1_cast
  %p_268_cast = zext i10 %p_268 to i11
  %tmp_3 = call i6 @_ssdm_op_PartSelect.i6.i72.i32.i32(i72 %tmp_value_V, i32 32, i32 37)
  %p_274 = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %tmp_3, i2 0)
  %p_275_cast = zext i8 %p_274 to i11
  %tmp_4 = call i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72 %tmp_value_V, i32 40, i32 46)
  %p_282 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_4, i1 false)
  %p_283_cast_cast = zext i8 %p_282 to i10
  %tmp_5 = call i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72 %tmp_value_V, i32 56, i32 62)
  %p_298 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_5, i1 false)
  %p_299_cast_cast = zext i8 %p_298 to i9
  %tmp2 = add i11 %p_275_cast, %p_268_cast
  %tmp4 = add i9 %p_299_cast_cast, %p_291_cast_cast
  %tmp4_cast = zext i9 %tmp4 to i10
  %tmp3 = add i10 %p_283_cast_cast, %tmp4_cast
  %tmp3_cast = zext i10 %tmp3 to i11
  %p_300 = add i11 %tmp2, %tmp3_cast
  %p_300_cast = zext i11 %p_300 to i12
  %p_308 = add i12 %p_307_cast, %p_300_cast
  %tmp_value_V_5 = zext i12 %p_308 to i32
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %p_mul_stencil_update_stream_V_value_V, i32 %tmp_value_V_5)
  %empty_98 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp)
  br label %.preheader40

.preheader40:                                     ; preds = %newFuncRoot, %.preheader40.preheader
  %indvar_flatten = phi i3 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader40.preheader ]
  %exitcond_flatten = icmp eq i3 %indvar_flatten, -4
  %indvar_flatten_next = add i3 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader39.preheader.0.exitStub, label %.preheader40.preheader
}

define internal fastcc void @Block_.preheader39.p(i128* %p_mul_stencil_stream_V_value_V, i8* %hw_output_V_value_V, i1* %hw_output_V_last_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i128* %p_mul_stencil_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i128* %p_mul_stencil_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_p2_mul1_stencil_str = alloca i32, align 4
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([35 x i8]* @p_p2_mul1_stencil_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i32* %p_p2_mul1_stencil_str, i32* %p_p2_mul1_stencil_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_p2_mul1_stencil_str, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_p2_mul1_stencil_str, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_99 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  %tmp_value_V = call i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128* %p_mul_stencil_stream_V_value_V)
  %p_s = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %tmp_value_V, i32 4, i32 11)
  %p_315_cast = zext i8 %p_s to i9
  %tmp_6 = call i6 @_ssdm_op_PartSelect.i6.i128.i32.i32(i128 %tmp_value_V, i32 36, i32 41)
  %p_8 = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %tmp_6, i2 0)
  %p_323_cast = zext i8 %p_8 to i9
  %p_9 = add i9 %p_323_cast, %p_315_cast
  %p_324_cast = zext i9 %p_9 to i10
  %tmp_7 = call i7 @_ssdm_op_PartSelect.i7.i128.i32.i32(i128 %tmp_value_V, i32 68, i32 74)
  %p_10 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_7, i1 false)
  %p_331_cast_cast = zext i8 %p_10 to i9
  %p_11 = call i8 @_ssdm_op_PartSelect.i8.i128.i32.i32(i128 %tmp_value_V, i32 100, i32 107)
  %p_339_cast_cast = zext i8 %p_11 to i9
  %tmp = add i9 %p_339_cast_cast, %p_331_cast_cast
  %tmp_cast = zext i9 %tmp to i10
  %tmp_value_V_6 = add i10 %p_324_cast, %tmp_cast
  %tmp_value_V_7 = zext i10 %tmp_value_V_6 to i32
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %p_p2_mul1_stencil_str, i32 %tmp_value_V_7)
  %empty_100 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  %empty_101 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  %tmp_value_V_8 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %p_p2_mul1_stencil_str)
  %tmp_value_V_9 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_value_V_8, i32 3, i32 10)
  call void @_ssdm_op_Write.ap_auto.volatile.i8P.i1P(i8* %hw_output_V_value_V, i1* %hw_output_V_last_V, i8 %tmp_value_V_9, i1 true)
  %empty_102 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  ret void
}

!opencl.kernels = !{!0, !7, !13, !13, !16, !16, !22, !16, !16, !25, !16, !16, !16, !16, !16, !16, !16, !16, !16, !27, !29, !35, !38, !38, !44, !47, !47, !16, !16, !29, !16, !48, !16, !29, !35, !51, !51, !53, !53, !53, !16, !16, !16, !16, !16, !16, !16, !16, !16, !29, !16, !29, !35, !56, !56, !58, !58, !58, !16, !16, !16, !16, !16, !16, !16, !16, !16, !60, !60, !60, !60, !60, !63, !65, !53, !66, !68, !68, !70, !73, !16, !16, !16, !66, !75, !13, !13, !76, !29, !29, !16, !77, !16, !29, !35, !79, !79, !81, !81, !81, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !83, !86, !86, !86, !86, !86, !88, !88, !90, !92, !94, !94, !16, !16, !16, !16, !95, !97, !97, !16, !98, !100, !102, !104, !105, !107, !107, !16, !16, !27, !108, !108, !29, !35, !109, !109, !16, !16, !16, !16, !16, !16, !16, !16, !16, !111, !16, !16, !16, !16}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!112}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<AxiPackedStencil<uint8_t, 1, 1> > &", metadata !"hls::stream<AxiPackedStencil<uint8_t, 1, 1> > &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"hw_input", metadata !"hw_output"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct AxiPackedStencil<uchar, 1, 1, 1, 1> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!16 = metadata !{null, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !6}
!17 = metadata !{metadata !"kernel_arg_addr_space"}
!18 = metadata !{metadata !"kernel_arg_access_qual"}
!19 = metadata !{metadata !"kernel_arg_type"}
!20 = metadata !{metadata !"kernel_arg_type_qual"}
!21 = metadata !{metadata !"kernel_arg_name"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !24, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!25 = metadata !{null, metadata !8, metadata !9, metadata !26, metadata !11, metadata !24, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !15, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!29 = metadata !{null, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !6}
!30 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!31 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"size_t", metadata !"size_t", metadata !"size_t", metadata !"size_t"}
!33 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"index_0", metadata !"index_1", metadata !"index_2", metadata !"index_3"}
!35 = metadata !{null, metadata !1, metadata !2, metadata !36, metadata !4, metadata !37, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!38 = metadata !{null, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !6}
!39 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!40 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int", metadata !"int"}
!42 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!43 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!44 = metadata !{null, metadata !8, metadata !9, metadata !45, metadata !11, metadata !46, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"uchar"}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"in"}
!47 = metadata !{null, metadata !8, metadata !9, metadata !45, metadata !11, metadata !15, metadata !6}
!48 = metadata !{null, metadata !1, metadata !2, metadata !49, metadata !4, metadata !50, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<32> &", metadata !"int &"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out"}
!51 = metadata !{null, metadata !39, metadata !40, metadata !52, metadata !42, metadata !43, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!53 = metadata !{null, metadata !8, metadata !9, metadata !54, metadata !11, metadata !55, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!55 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!56 = metadata !{null, metadata !39, metadata !40, metadata !57, metadata !42, metadata !43, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<128, false>*", metadata !"int", metadata !"int"}
!58 = metadata !{null, metadata !8, metadata !9, metadata !59, metadata !11, metadata !55, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<128, false> &"}
!60 = metadata !{null, metadata !1, metadata !2, metadata !61, metadata !4, metadata !62, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"stream<PackedStencil<int, 1UL, 1UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<int, 2UL, 2UL, 1UL, 1UL> > &"}
!62 = metadata !{metadata !"kernel_arg_name", metadata !"in_stream", metadata !"out_stream"}
!63 = metadata !{null, metadata !8, metadata !9, metadata !64, metadata !11, metadata !12, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<int, 2, 2, 1, 1> &"}
!65 = metadata !{null, metadata !8, metadata !9, metadata !54, metadata !11, metadata !15, metadata !6}
!66 = metadata !{null, metadata !8, metadata !9, metadata !67, metadata !11, metadata !15, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!68 = metadata !{null, metadata !8, metadata !9, metadata !67, metadata !11, metadata !69, metadata !6}
!69 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!70 = metadata !{null, metadata !8, metadata !9, metadata !71, metadata !11, metadata !72, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<int, 1, 1, 1, 1> &"}
!72 = metadata !{metadata !"kernel_arg_name", metadata !""}
!73 = metadata !{null, metadata !8, metadata !9, metadata !74, metadata !11, metadata !24, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!75 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !46, metadata !6}
!76 = metadata !{null, metadata !8, metadata !9, metadata !71, metadata !11, metadata !12, metadata !6}
!77 = metadata !{null, metadata !1, metadata !2, metadata !78, metadata !4, metadata !50, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<8> &", metadata !"uchar &"}
!79 = metadata !{null, metadata !39, metadata !40, metadata !80, metadata !42, metadata !43, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<72, false>*", metadata !"int", metadata !"int"}
!81 = metadata !{null, metadata !8, metadata !9, metadata !82, metadata !11, metadata !55, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<72, false> &"}
!83 = metadata !{null, metadata !1, metadata !2, metadata !84, metadata !4, metadata !85, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"stream<AxiPackedStencil<uchar, 1UL, 1UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uchar, 3UL, 3UL, 1UL, 1UL> > &"}
!85 = metadata !{metadata !"kernel_arg_name", metadata !"in_axi_stream", metadata !"out_stream"}
!86 = metadata !{null, metadata !1, metadata !2, metadata !87, metadata !4, metadata !62, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"stream<PackedStencil<uchar, 1UL, 1UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uchar, 3UL, 3UL, 1UL, 1UL> > &"}
!88 = metadata !{null, metadata !1, metadata !2, metadata !89, metadata !4, metadata !62, metadata !6}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"stream<PackedStencil<uchar, 1UL, 3UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uchar, 3UL, 3UL, 1UL, 1UL> > &"}
!90 = metadata !{null, metadata !8, metadata !9, metadata !91, metadata !11, metadata !12, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uchar, 3, 3, 1, 1> &"}
!92 = metadata !{null, metadata !8, metadata !9, metadata !93, metadata !11, metadata !15, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<24, false> &"}
!94 = metadata !{null, metadata !8, metadata !9, metadata !93, metadata !11, metadata !55, metadata !6}
!95 = metadata !{null, metadata !8, metadata !9, metadata !96, metadata !11, metadata !15, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &"}
!97 = metadata !{null, metadata !8, metadata !9, metadata !96, metadata !11, metadata !69, metadata !6}
!98 = metadata !{null, metadata !8, metadata !9, metadata !99, metadata !11, metadata !72, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uchar, 1, 3, 1, 1> &"}
!100 = metadata !{null, metadata !8, metadata !9, metadata !101, metadata !11, metadata !24, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<24> &"}
!102 = metadata !{null, metadata !8, metadata !9, metadata !103, metadata !11, metadata !72, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uchar, 1, 1, 1, 1> &"}
!104 = metadata !{null, metadata !8, metadata !9, metadata !99, metadata !11, metadata !12, metadata !6}
!105 = metadata !{null, metadata !8, metadata !9, metadata !106, metadata !11, metadata !15, metadata !6}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<8, false> &"}
!107 = metadata !{null, metadata !8, metadata !9, metadata !106, metadata !11, metadata !55, metadata !6}
!108 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !69, metadata !6}
!109 = metadata !{null, metadata !39, metadata !40, metadata !110, metadata !42, metadata !43, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int", metadata !"int"}
!111 = metadata !{null, metadata !8, metadata !9, metadata !103, metadata !11, metadata !12, metadata !6}
!112 = metadata !{metadata !113, [1 x i32]* @llvm_global_ctors_0}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 31, metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{metadata !"llvm.global_ctors.0", metadata !117, metadata !"", i32 0, i32 31}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 0, i32 1}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 7, metadata !121}
!121 = metadata !{metadata !122}
!122 = metadata !{metadata !"hw_input.V.value.V", metadata !117, metadata !"uint8", i32 0, i32 7}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 0, i32 0, metadata !125}
!125 = metadata !{metadata !126}
!126 = metadata !{metadata !"hw_input.V.last.V", metadata !117, metadata !"uint1", i32 0, i32 0}
!127 = metadata !{metadata !128}
!128 = metadata !{i32 0, i32 7, metadata !129}
!129 = metadata !{metadata !130}
!130 = metadata !{metadata !"hw_output.V.value.V", metadata !117, metadata !"uint8", i32 0, i32 7}
!131 = metadata !{metadata !132}
!132 = metadata !{i32 0, i32 0, metadata !133}
!133 = metadata !{metadata !134}
!134 = metadata !{metadata !"hw_output.V.last.V", metadata !117, metadata !"uint1", i32 0, i32 0}
