; ModuleID = '/home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/paper_apps_8_shifts/conv2d/conv2d/hls_target/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slice_stream_OC_V_OC = internal unnamed_addr constant [23 x i8] c"slice_stream.V.value.V\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@in_stream_OC_V_OC_va = internal unnamed_addr constant [20 x i8] c"in_stream.V.value.V\00"
@hls_target_str = internal unnamed_addr constant [11 x i8] c"hls_target\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_hw_input_stencil_st = internal unnamed_addr constant [35 x i8] c"_hw_input_stencil_stream.V.value.V\00"
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_4\00", align 1
@p_str21 = private unnamed_addr constant [14 x i8] c"LB1D_shiftreg\00", align 1
@p_str20 = private unnamed_addr constant [11 x i8] c"LB2D_shift\00", align 1
@p_str2 = private unnamed_addr constant [9 x i8] c"FIFO_SRL\00", align 1
@p_str19 = private unnamed_addr constant [12 x i8] c"hls_label_6\00", align 1
@p_str18 = private unnamed_addr constant [9 x i8] c"LB2D_buf\00", align 1
@p_str17 = private unnamed_addr constant [11 x i8] c"LB_3D_pass\00", align 1
@p_str16 = private unnamed_addr constant [11 x i8] c"LB_4D_pass\00", align 1
@p_str15 = private unnamed_addr constant [12 x i8] c"hls_label_5\00", align 1
@p_str1 = private unnamed_addr constant [6 x i8] c"ap_hs\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i72 @llvm.part.select.i72(i72, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i3 @llvm.part.select.i3(i3, i32, i32) nounwind readnone

declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

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
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str15)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %empty_16 = call { i8, i1 } @_ssdm_op_Read.ap_auto.volatile.i8P.i1P(i8* %in_axi_stream_V_value_V, i1* %in_axi_stream_V_last_V)
  %tmp_value_V = extractvalue { i8, i1 } %empty_16, 0
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %in_stream_V_value_V, i8 %tmp_value_V)
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str15, i32 %tmp)
  br label %.preheader.i

.preheader.i:                                     ; preds = %newFuncRoot, %.preheader4.i
  %indvar_flatten = phi i5 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader4.i ]
  %exitcond_flatten = icmp eq i5 %indvar_flatten, -16
  %indvar_flatten_next = add i5 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.critedge.exitStub, label %.preheader4.i
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
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str16) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str16)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str17) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str16, i32 %tmp)
  call fastcc void @call(i8* %in_stream_V_value_V, i72* %out_stream_V_value_V)
  ret void
}

define void @hls_target(i8* %hw_input_V_value_V, i1* %hw_input_V_last_V, i8* %hw_output_V_value_V, i1* %hw_output_V_last_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %hw_input_V_value_V), !map !95
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %hw_input_V_last_V), !map !99
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %hw_output_V_value_V), !map !103
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %hw_output_V_last_V), !map !107
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @hls_target_str) nounwind
  %p_hw_input_stencil_st = alloca i72, align 8
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([35 x i8]* @p_hw_input_stencil_st, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i72* %p_hw_input_stencil_st, i72* %p_hw_input_stencil_st)
  call void (...)* @_ssdm_op_SpecInterface(i72* %p_hw_input_stencil_st, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i72* %p_hw_input_stencil_st, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %hw_input_V_value_V, i1* %hw_input_V_last_V, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %hw_output_V_value_V, i1* %hw_output_V_last_V, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call fastcc void @linebuffer.1(i8* %hw_input_V_value_V, i1* %hw_input_V_last_V, i72* %p_hw_input_stencil_st)
  call fastcc void @Loop_1_proc(i72* %p_hw_input_stencil_st, i8* %hw_output_V_value_V, i1* %hw_output_V_last_V)
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
  %tmp_9 = icmp eq i2 %n1, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %n1_1 = add i2 %n1, 1
  br i1 %tmp_9, label %.exitStub, label %1

"linebuffer_1D<4ul, 3ul, 1ul, 1ul, 1ul, 3ul, unsigned char>.exit": ; preds = %0
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str20, i32 %tmp_3)
  br label %.preheader

; <label>:0                                       ; preds = %._crit_edge.i.i, %1
  %i_0_i_i = phi i3 [ 0, %1 ], [ %i, %._crit_edge.i.i ]
  %tmp_4 = icmp eq i3 %i_0_i_i, -4
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %i = add i3 %i_0_i_i, 1
  br i1 %tmp_4, label %"linebuffer_1D<4ul, 3ul, 1ul, 1ul, 1ul, 3ul, unsigned char>.exit", label %2

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str20) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str20)
  br label %0

._crit_edge.i.i:                                  ; preds = %2, %.preheader.i.i.preheader.0
  %buffer_1_value_V_lo = load i24* %buffer_1_value_V
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str21, i32 %tmp_7)
  store i24 %buffer_1_value_V_lo, i24* %buffer_0_value_V
  store i24 %tmp_value_V_1, i24* %buffer_1_value_V
  br label %0

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str21) nounwind
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str21)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V_1 = call i24 @_ssdm_op_Read.ap_fifo.volatile.i24P(i24* %slice_stream_V_value_V)
  %tmp = call i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3 %i_0_i_i, i32 1, i32 2)
  %icmp = icmp eq i2 %tmp, 0
  br i1 %icmp, label %._crit_edge.i.i, label %.preheader.i.i.preheader.0

.preheader.i.i.preheader.0:                       ; preds = %2
  %buffer_1_value_V_lo_1 = load i24* %buffer_1_value_V
  %buffer_0_value_V_lo = load i24* %buffer_0_value_V
  %tmp_1 = trunc i24 %buffer_0_value_V_lo to i8
  %tmp_2 = trunc i24 %buffer_1_value_V_lo_1 to i8
  %tmp_5 = trunc i24 %tmp_value_V_1 to i8
  %p_Result_5_1 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %buffer_0_value_V_lo, i32 8, i32 15)
  %p_Result_5_1_1 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %buffer_1_value_V_lo_1, i32 8, i32 15)
  %p_Result_5_1_2 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %tmp_value_V_1, i32 8, i32 15)
  %p_Result_5_2 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %buffer_0_value_V_lo, i32 16, i32 23)
  %p_Result_5_2_1 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %buffer_1_value_V_lo_1, i32 16, i32 23)
  %p_Result_5_2_2 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %tmp_value_V_1, i32 16, i32 23)
  %tmp_value_V = call i72 @_ssdm_op_BitConcatenate.i72.i8.i8.i8.i8.i8.i8.i8.i8.i8(i8 %p_Result_5_2_2, i8 %p_Result_5_2_1, i8 %p_Result_5_2, i8 %p_Result_5_1_2, i8 %p_Result_5_1_1, i8 %p_Result_5_1, i8 %tmp_5, i8 %tmp_2, i8 %tmp_1)
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
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str18, i32 %tmp_2)
  br label %0

; <label>:2                                       ; preds = %._crit_edge33, %3
  %write_idx_1_1 = phi i64 [ %write_idx_1, %3 ], [ %p_write_idx_1_1, %._crit_edge33 ]
  %col = phi i3 [ 0, %3 ], [ %col_1, %._crit_edge33 ]
  %tmp_1 = icmp eq i3 %col, -4
  %col_1 = add i3 %col, 1
  br i1 %tmp_1, label %1, label %4

; <label>:3                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str18) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str18)
  %tmp_6 = call i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3 %row, i32 1, i32 2)
  %icmp = icmp eq i2 %tmp_6, 0
  br label %2

._crit_edge33:                                    ; preds = %branch5, %branch4
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str19, i32 %tmp_5)
  br label %2

branch4:                                          ; preds = %._crit_edge
  store i8 %tmp_value_V_2, i8* %buffer_0_value_V_ad, align 1
  br label %._crit_edge33

._crit_edge:                                      ; preds = %4, %.preheader56.preheader.critedge.0
  %tmp_9 = trunc i64 %p_write_idx_1_1 to i1
  br i1 %tmp_9, label %branch5, label %branch4

; <label>:4                                       ; preds = %2
  %col_cast = zext i3 %col to i64
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str19)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_7 = call i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64 %write_idx_1_1, i32 1, i32 63)
  %icmp1 = icmp ne i63 %tmp_7, 0
  %write_idx_1_3 = add i64 %write_idx_1_1, -2
  %p_write_idx_1_1 = select i1 %icmp1, i64 %write_idx_1_3, i64 %write_idx_1_1
  %tmp_value_V_2 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_stream_V_value_V)
  %buffer_0_value_V_ad = getelementptr [4 x i8]* %buffer_0_value_V, i64 0, i64 %col_cast
  %buffer_0_value_V_lo = load i8* %buffer_0_value_V_ad, align 1
  %buffer_1_value_V_ad = getelementptr [4 x i8]* %buffer_1_value_V, i64 0, i64 %col_cast
  %buffer_1_value_V_lo = load i8* %buffer_1_value_V_ad, align 1
  br i1 %icmp, label %._crit_edge, label %.preheader56.preheader.critedge.0

.preheader56.preheader.critedge.0:                ; preds = %4
  %tmp_8 = trunc i64 %p_write_idx_1_1 to i1
  %p_Val2_2_0_phi = select i1 %tmp_8, i8 %buffer_1_value_V_lo, i8 %buffer_0_value_V_lo
  %p_Val2_2_1_phi = select i1 %tmp_8, i8 %buffer_0_value_V_lo, i8 %buffer_1_value_V_lo
  %p_Result_s = call i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8 %tmp_value_V_2, i8 %p_Val2_2_1_phi, i8 %p_Val2_2_0_phi)
  call void @_ssdm_op_Write.ap_fifo.volatile.i24P(i24* %slice_stream_V_value_V, i24 %p_Result_s)
  br label %._crit_edge

branch5:                                          ; preds = %._crit_edge
  store i8 %tmp_value_V_2, i8* %buffer_1_value_V_ad, align 1
  br label %._crit_edge33
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

define weak void @_ssdm_op_Write.ap_fifo.volatile.i24P(i24*, i24) {
entry:
  %empty = call i24 @_autotb_FifoWrite_i24(i24* %0, i24 %1)
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

define weak i24 @_ssdm_op_Read.ap_fifo.volatile.i24P(i24*) {
entry:
  %empty = call i24 @_autotb_FifoRead_i24(i24* %0)
  ret i24 %empty
}

define weak { i8, i1 } @_ssdm_op_Read.ap_auto.volatile.i8P.i1P(i8*, i1*) {
entry:
  %empty = load i8* %0
  %empty_24 = load i1* %1
  %mrv_0 = insertvalue { i8, i1 } undef, i8 %empty, 0
  %mrv1 = insertvalue { i8, i1 } %mrv_0, i1 %empty_24, 1
  ret { i8, i1 } %mrv1
}

define weak i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72, i32, i32) nounwind readnone {
entry:
  %empty = call i72 @llvm.part.select.i72(i72 %0, i32 %1, i32 %2)
  %empty_25 = trunc i72 %empty to i8
  ret i8 %empty_25
}

define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_26 = trunc i24 %empty to i8
  ret i8 %empty_26
}

define weak i8 @_ssdm_op_PartSelect.i8.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2)
  %empty_27 = trunc i12 %empty to i8
  ret i8 %empty_27
}

define weak i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72, i32, i32) nounwind readnone {
entry:
  %empty = call i72 @llvm.part.select.i72(i72 %0, i32 %1, i32 %2)
  %empty_28 = trunc i72 %empty to i7
  ret i7 %empty_28
}

define weak i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_29 = trunc i64 %empty to i63
  ret i63 %empty_29
}

define weak i6 @_ssdm_op_PartSelect.i6.i72.i32.i32(i72, i32, i32) nounwind readnone {
entry:
  %empty = call i72 @llvm.part.select.i72(i72 %0, i32 %1, i32 %2)
  %empty_30 = trunc i72 %empty to i6
  ret i6 %empty_30
}

define weak i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone {
entry:
  %empty = call i3 @llvm.part.select.i3(i3 %0, i32 %1, i32 %2)
  %empty_31 = trunc i3 %empty to i2
  ret i2 %empty_31
}

declare i1 @_ssdm_op_PartSelect.i1.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone {
entry:
  %empty = zext i7 %0 to i8
  %empty_32 = zext i1 %1 to i8
  %empty_33 = shl i8 %empty, 1
  %empty_34 = or i8 %empty_33, %empty_32
  ret i8 %empty_34
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8
  %empty_35 = zext i2 %1 to i8
  %empty_36 = shl i8 %empty, 2
  %empty_37 = or i8 %empty_36, %empty_35
  ret i8 %empty_37
}

define weak i72 @_ssdm_op_BitConcatenate.i72.i8.i8.i8.i8.i8.i8.i8.i8.i8(i8, i8, i8, i8, i8, i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %7 to i16
  %empty_38 = zext i8 %8 to i16
  %empty_39 = shl i16 %empty, 8
  %empty_40 = or i16 %empty_39, %empty_38
  %empty_41 = zext i8 %6 to i24
  %empty_42 = zext i16 %empty_40 to i24
  %empty_43 = shl i24 %empty_41, 16
  %empty_44 = or i24 %empty_43, %empty_42
  %empty_45 = zext i8 %5 to i32
  %empty_46 = zext i24 %empty_44 to i32
  %empty_47 = shl i32 %empty_45, 24
  %empty_48 = or i32 %empty_47, %empty_46
  %empty_49 = zext i8 %4 to i40
  %empty_50 = zext i32 %empty_48 to i40
  %empty_51 = shl i40 %empty_49, 32
  %empty_52 = or i40 %empty_51, %empty_50
  %empty_53 = zext i8 %3 to i48
  %empty_54 = zext i40 %empty_52 to i48
  %empty_55 = shl i48 %empty_53, 40
  %empty_56 = or i48 %empty_55, %empty_54
  %empty_57 = zext i8 %2 to i56
  %empty_58 = zext i48 %empty_56 to i56
  %empty_59 = shl i56 %empty_57, 48
  %empty_60 = or i56 %empty_59, %empty_58
  %empty_61 = zext i8 %1 to i64
  %empty_62 = zext i56 %empty_60 to i64
  %empty_63 = shl i64 %empty_61, 56
  %empty_64 = or i64 %empty_63, %empty_62
  %empty_65 = zext i8 %0 to i72
  %empty_66 = zext i64 %empty_64 to i72
  %empty_67 = shl i72 %empty_65, 64
  %empty_68 = or i72 %empty_67, %empty_66
  ret i72 %empty_68
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %1 to i16
  %empty_69 = zext i8 %2 to i16
  %empty_70 = shl i16 %empty, 8
  %empty_71 = or i16 %empty_70, %empty_69
  %empty_72 = zext i8 %0 to i24
  %empty_73 = zext i16 %empty_71 to i24
  %empty_74 = shl i24 %empty_72, 16
  %empty_75 = or i24 %empty_74, %empty_73
  ret i24 %empty_75
}

declare void @_ssdm_SpecDependence(...) nounwind

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i72 @_autotb_FifoWrite_i72(i72*, i72)

declare i24 @_autotb_FifoWrite_i24(i24*, i24)

declare i8 @_autotb_FifoRead_i8(i8*)

declare i72 @_autotb_FifoRead_i72(i72*)

declare i24 @_autotb_FifoRead_i24(i24*)

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define internal fastcc void @Loop_1_proc(i72* %p_hw_input_stencil_stream_V_value_V, i8* %hw_output_V_value_V, i1* %hw_output_V_last_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i72* %p_hw_input_stencil_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i72* %p_hw_input_stencil_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader

.exitStub:                                        ; preds = %.preheader
  ret void

.preheader.preheader:                             ; preds = %.preheader
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %exitcond8 = icmp eq i2 %p_hw_output_x_scan_2, -2
  %p_hw_output_x_scan_s = select i1 %exitcond8, i2 0, i2 %p_hw_output_x_scan_2
  %tmp_mid1 = icmp eq i2 %p_hw_output_y_scan_1, 0
  %tmp5 = icmp eq i2 %p_hw_output_y_scan_1, 1
  %tmp_mid2 = select i1 %exitcond8, i1 %tmp_mid1, i1 %tmp5
  %p_hw_output_y_scan_2 = add i2 1, %p_hw_output_y_scan_1
  %p_hw_output_y_scan_s = select i1 %exitcond8, i2 %p_hw_output_y_scan_2, i2 %p_hw_output_y_scan_1
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V = call i72 @_ssdm_op_Read.ap_fifo.volatile.i72P(i72* %p_hw_input_stencil_stream_V_value_V)
  %p_309 = trunc i72 %tmp_value_V to i8
  %p_312_cast = zext i8 %p_309 to i9
  %p_321 = call i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72 %tmp_value_V, i32 16, i32 23)
  %p_324_cast_cast = zext i8 %p_321 to i9
  %p_345 = call i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72 %tmp_value_V, i32 48, i32 55)
  %p_348_cast_cast = zext i8 %p_345 to i9
  %p_357 = call i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72 %tmp_value_V, i32 64, i32 71)
  %p_360_cast = zext i8 %p_357 to i12
  %tmp_2 = call i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72 %tmp_value_V, i32 8, i32 14)
  %p_317 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_2, i1 false)
  %p_318_cast = zext i8 %p_317 to i9
  %p_319 = add i9 %p_312_cast, %p_318_cast
  %p_319_cast = zext i9 %p_319 to i10
  %tmp_3 = call i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72 %tmp_value_V, i32 24, i32 30)
  %p_329 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_3, i1 false)
  %p_330_cast_cast = zext i8 %p_329 to i9
  %tmp1 = add i9 %p_330_cast_cast, %p_324_cast_cast
  %tmp1_cast = zext i9 %tmp1 to i10
  %p_331 = add i10 %p_319_cast, %tmp1_cast
  %p_331_cast = zext i10 %p_331 to i11
  %tmp_4 = call i6 @_ssdm_op_PartSelect.i6.i72.i32.i32(i72 %tmp_value_V, i32 32, i32 37)
  %p_335 = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %tmp_4, i2 0)
  %p_336_cast = zext i8 %p_335 to i11
  %tmp_5 = call i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72 %tmp_value_V, i32 40, i32 46)
  %p_341 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_5, i1 false)
  %p_342_cast_cast = zext i8 %p_341 to i10
  %tmp_6 = call i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72 %tmp_value_V, i32 56, i32 62)
  %p_353 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_6, i1 false)
  %p_354_cast_cast = zext i8 %p_353 to i9
  %tmp2 = add i11 %p_336_cast, %p_331_cast
  %tmp4 = add i9 %p_354_cast_cast, %p_348_cast_cast
  %tmp4_cast = zext i9 %tmp4 to i10
  %tmp3 = add i10 %p_342_cast_cast, %tmp4_cast
  %tmp3_cast = zext i10 %tmp3 to i11
  %p_355 = add i11 %tmp2, %tmp3_cast
  %p_355_cast = zext i11 %p_355 to i12
  %p_361 = add i12 %p_360_cast, %p_355_cast
  %p_364 = call i8 @_ssdm_op_PartSelect.i8.i12.i32.i32(i12 %p_361, i32 4, i32 11)
  %tmp_s = icmp eq i2 %p_hw_output_x_scan_s, 1
  %tmp_last_V = and i1 %tmp_s, %tmp_mid2
  call void @_ssdm_op_Write.ap_auto.volatile.i8P.i1P(i8* %hw_output_V_value_V, i1* %hw_output_V_last_V, i8 %p_364, i1 %tmp_last_V)
  %empty_76 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_1)
  %p_hw_output_x_scan_1 = add i2 1, %p_hw_output_x_scan_s
  br label %.preheader

.preheader:                                       ; preds = %newFuncRoot, %.preheader.preheader
  %indvar_flatten = phi i3 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader.preheader ]
  %p_hw_output_y_scan_1 = phi i2 [ 0, %newFuncRoot ], [ %p_hw_output_y_scan_s, %.preheader.preheader ]
  %p_hw_output_x_scan_2 = phi i2 [ 0, %newFuncRoot ], [ %p_hw_output_x_scan_1, %.preheader.preheader ]
  %exitcond_flatten = icmp eq i3 %indvar_flatten, -4
  %indvar_flatten_next = add i3 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.exitStub, label %.preheader.preheader
}

!opencl.kernels = !{!0, !7, !13, !13, !16, !16, !22, !16, !16, !25, !16, !16, !16, !16, !16, !16, !16, !16, !16, !27, !29, !35, !38, !38, !44, !47, !47, !16, !16, !29, !29, !16, !48, !16, !29, !35, !51, !51, !53, !53, !53, !16, !16, !16, !16, !16, !16, !16, !16, !16, !56, !59, !59, !59, !59, !59, !62, !62, !64, !66, !68, !68, !16, !16, !16, !16, !69, !71, !71, !16, !73, !76, !78, !80, !81, !83, !83, !16, !16, !27, !84, !84, !29, !35, !85, !85, !16, !16, !16, !16, !16, !16, !16, !16, !16, !87, !16, !16, !16, !16}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!88}

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
!49 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<8> &", metadata !"uchar &"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out"}
!51 = metadata !{null, metadata !39, metadata !40, metadata !52, metadata !42, metadata !43, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<72, false>*", metadata !"int", metadata !"int"}
!53 = metadata !{null, metadata !8, metadata !9, metadata !54, metadata !11, metadata !55, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<72, false> &"}
!55 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!56 = metadata !{null, metadata !1, metadata !2, metadata !57, metadata !4, metadata !58, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"stream<AxiPackedStencil<uchar, 1UL, 1UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uchar, 3UL, 3UL, 1UL, 1UL> > &"}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"in_axi_stream", metadata !"out_stream"}
!59 = metadata !{null, metadata !1, metadata !2, metadata !60, metadata !4, metadata !61, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"stream<PackedStencil<uchar, 1UL, 1UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uchar, 3UL, 3UL, 1UL, 1UL> > &"}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"in_stream", metadata !"out_stream"}
!62 = metadata !{null, metadata !1, metadata !2, metadata !63, metadata !4, metadata !61, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"stream<PackedStencil<uchar, 1UL, 3UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uchar, 3UL, 3UL, 1UL, 1UL> > &"}
!64 = metadata !{null, metadata !8, metadata !9, metadata !65, metadata !11, metadata !12, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uchar, 3, 3, 1, 1> &"}
!66 = metadata !{null, metadata !8, metadata !9, metadata !67, metadata !11, metadata !15, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<24, false> &"}
!68 = metadata !{null, metadata !8, metadata !9, metadata !67, metadata !11, metadata !55, metadata !6}
!69 = metadata !{null, metadata !8, metadata !9, metadata !70, metadata !11, metadata !15, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &"}
!71 = metadata !{null, metadata !8, metadata !9, metadata !70, metadata !11, metadata !72, metadata !6}
!72 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!73 = metadata !{null, metadata !8, metadata !9, metadata !74, metadata !11, metadata !75, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uchar, 1, 3, 1, 1> &"}
!75 = metadata !{metadata !"kernel_arg_name", metadata !""}
!76 = metadata !{null, metadata !8, metadata !9, metadata !77, metadata !11, metadata !24, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<24> &"}
!78 = metadata !{null, metadata !8, metadata !9, metadata !79, metadata !11, metadata !75, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uchar, 1, 1, 1, 1> &"}
!80 = metadata !{null, metadata !8, metadata !9, metadata !74, metadata !11, metadata !12, metadata !6}
!81 = metadata !{null, metadata !8, metadata !9, metadata !82, metadata !11, metadata !15, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<8, false> &"}
!83 = metadata !{null, metadata !8, metadata !9, metadata !82, metadata !11, metadata !55, metadata !6}
!84 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !72, metadata !6}
!85 = metadata !{null, metadata !39, metadata !40, metadata !86, metadata !42, metadata !43, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int", metadata !"int"}
!87 = metadata !{null, metadata !8, metadata !9, metadata !79, metadata !11, metadata !12, metadata !6}
!88 = metadata !{metadata !89, [1 x i32]* @llvm_global_ctors_0}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 0, i32 31, metadata !91}
!91 = metadata !{metadata !92}
!92 = metadata !{metadata !"llvm.global_ctors.0", metadata !93, metadata !"", i32 0, i32 31}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 0, i32 1}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 0, i32 7, metadata !97}
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !"hw_input.V.value.V", metadata !93, metadata !"uint8", i32 0, i32 7}
!99 = metadata !{metadata !100}
!100 = metadata !{i32 0, i32 0, metadata !101}
!101 = metadata !{metadata !102}
!102 = metadata !{metadata !"hw_input.V.last.V", metadata !93, metadata !"uint1", i32 0, i32 0}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 0, i32 7, metadata !105}
!105 = metadata !{metadata !106}
!106 = metadata !{metadata !"hw_output.V.value.V", metadata !93, metadata !"uint8", i32 0, i32 7}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 0, i32 0, metadata !109}
!109 = metadata !{metadata !110}
!110 = metadata !{metadata !"hw_output.V.last.V", metadata !93, metadata !"uint1", i32 0, i32 0}
