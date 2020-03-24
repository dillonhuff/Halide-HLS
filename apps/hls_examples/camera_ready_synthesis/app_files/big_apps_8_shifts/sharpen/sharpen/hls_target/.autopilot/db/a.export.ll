; ModuleID = '/home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/big_apps_8_shifts/sharpen/sharpen/hls_target/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slice_stream_OC_V_OC = internal unnamed_addr constant [23 x i8] c"slice_stream.V.value.V\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@in_stream_OC_V_OC_va = internal unnamed_addr constant [20 x i8] c"in_stream.V.value.V\00"
@hls_target_str = internal unnamed_addr constant [11 x i8] c"hls_target\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_mul_stencil_stream_s = internal unnamed_addr constant [30 x i8] c"_mul_stencil_stream.V.value.V\00"
@p_hw_input_stencil_st_2 = internal unnamed_addr constant [35 x i8] c"_hw_input_stencil_stream.V.value.V\00"
@p_hw_input_stencil_st_1 = internal unnamed_addr constant [52 x i8] c"_hw_input_stencil_stream_to_delayed_input.V.value.V\00"
@p_hw_input_stencil_st = internal unnamed_addr constant [42 x i8] c"_hw_input_stencil_stream_to_mul.V.value.V\00"
@p_delayed_input_stenc = internal unnamed_addr constant [40 x i8] c"_delayed_input_stencil_stream.V.value.V\00"
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_5\00", align 1
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_4\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_7\00", align 1
@p_str32 = private unnamed_addr constant [14 x i8] c"LB1D_shiftreg\00", align 1
@p_str31 = private unnamed_addr constant [11 x i8] c"LB2D_shift\00", align 1
@p_str30 = private unnamed_addr constant [12 x i8] c"hls_label_9\00", align 1
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_6\00", align 1
@p_str29 = private unnamed_addr constant [9 x i8] c"LB2D_buf\00", align 1
@p_str28 = private unnamed_addr constant [11 x i8] c"LB_3D_pass\00", align 1
@p_str27 = private unnamed_addr constant [11 x i8] c"LB_4D_pass\00", align 1
@p_str26 = private unnamed_addr constant [12 x i8] c"hls_label_8\00", align 1
@p_str2 = private unnamed_addr constant [9 x i8] c"FIFO_SRL\00", align 1
@p_str1 = private unnamed_addr constant [6 x i8] c"ap_hs\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare i72 @llvm.part.select.i72(i72, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

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
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2073600, i64 2073600, i64 2073600)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str26)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %empty_19 = call { i8, i1 } @_ssdm_op_Read.ap_auto.volatile.i8P.i1P(i8* %in_axi_stream_V_value_V, i1* %in_axi_stream_V_last_V)
  %tmp_value_V = extractvalue { i8, i1 } %empty_19, 0
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %in_stream_V_value_V, i8 %tmp_value_V)
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str26, i32 %tmp)
  br label %.preheader.i

.preheader.i:                                     ; preds = %newFuncRoot, %.preheader4.i
  %indvar_flatten = phi i21 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader4.i ]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -23552
  %indvar_flatten_next = add i21 %indvar_flatten, 1
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
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str27) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str27)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str28) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str27, i32 %tmp)
  call fastcc void @call(i8* %in_stream_V_value_V, i72* %out_stream_V_value_V)
  ret void
}

define void @hls_target(i8* %hw_input_V_value_V, i1* %hw_input_V_last_V, i8* %hw_output_V_value_V, i1* %hw_output_V_last_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %hw_input_V_value_V), !map !106
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %hw_input_V_last_V), !map !110
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %hw_output_V_value_V), !map !114
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %hw_output_V_last_V), !map !118
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @hls_target_str) nounwind
  %p_hw_input_stencil_st = alloca i72, align 8
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([35 x i8]* @p_hw_input_stencil_st_2, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i72* %p_hw_input_stencil_st, i72* %p_hw_input_stencil_st)
  call void (...)* @_ssdm_op_SpecInterface(i72* %p_hw_input_stencil_st, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i72* %p_hw_input_stencil_st, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_hw_input_stencil_st_3 = alloca i72, align 8
  %empty_21 = call i32 (...)* @_ssdm_op_SpecChannel([52 x i8]* @p_hw_input_stencil_st_1, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i72* %p_hw_input_stencil_st_3, i72* %p_hw_input_stencil_st_3)
  call void (...)* @_ssdm_op_SpecInterface(i72* %p_hw_input_stencil_st_3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i72* %p_hw_input_stencil_st_3, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_hw_input_stencil_st_4 = alloca i72, align 8
  %empty_22 = call i32 (...)* @_ssdm_op_SpecChannel([42 x i8]* @p_hw_input_stencil_st, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i72* %p_hw_input_stencil_st_4, i72* %p_hw_input_stencil_st_4)
  call void (...)* @_ssdm_op_SpecInterface(i72* %p_hw_input_stencil_st_4, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i72* %p_hw_input_stencil_st_4, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_delayed_input_stenc = alloca i32, align 4
  %empty_23 = call i32 (...)* @_ssdm_op_SpecChannel([40 x i8]* @p_delayed_input_stenc, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i32* %p_delayed_input_stenc, i32* %p_delayed_input_stenc)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_delayed_input_stenc, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_delayed_input_stenc, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_mul_stencil_stream_s = alloca i32, align 4
  %empty_24 = call i32 (...)* @_ssdm_op_SpecChannel([30 x i8]* @p_mul_stencil_stream_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i32* %p_mul_stencil_stream_s, i32* %p_mul_stencil_stream_s)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_mul_stencil_stream_s, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_mul_stencil_stream_s, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %hw_input_V_value_V, i1* %hw_input_V_last_V, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %hw_output_V_value_V, i1* %hw_output_V_last_V, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call fastcc void @linebuffer.1(i8* %hw_input_V_value_V, i1* %hw_input_V_last_V, i72* %p_hw_input_stencil_st)
  call fastcc void @Loop_1_proc(i72* %p_hw_input_stencil_st, i72* %p_hw_input_stencil_st_3, i72* %p_hw_input_stencil_st_4)
  call fastcc void @Loop_2_proc(i72* %p_hw_input_stencil_st_3, i32* %p_delayed_input_stenc)
  call fastcc void @Loop_3_proc(i72* %p_hw_input_stencil_st_4, i32* %p_mul_stencil_stream_s)
  call fastcc void @Loop_4_proc(i8* %hw_output_V_value_V, i1* %hw_output_V_last_V, i32* %p_mul_stencil_stream_s, i32* %p_delayed_input_stenc)
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

.preheader:                                       ; preds = %"linebuffer_1D<1920ul, 3ul, 1ul, 1ul, 1ul, 3ul, unsigned char>.exit", %newFuncRoot
  %n1 = phi i11 [ %n1_1, %"linebuffer_1D<1920ul, 3ul, 1ul, 1ul, 1ul, 3ul, unsigned char>.exit" ], [ 0, %newFuncRoot ]
  %tmp_1 = icmp eq i11 %n1, -970
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1078, i64 1078, i64 1078)
  %n1_1 = add i11 %n1, 1
  br i1 %tmp_1, label %.exitStub, label %1

"linebuffer_1D<1920ul, 3ul, 1ul, 1ul, 1ul, 3ul, unsigned char>.exit": ; preds = %0
  %empty_25 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str31, i32 %tmp_6)
  br label %.preheader

; <label>:0                                       ; preds = %._crit_edge.i.i, %1
  %i_0_i_i = phi i11 [ 0, %1 ], [ %i, %._crit_edge.i.i ]
  %tmp_3 = icmp eq i11 %i_0_i_i, -128
  %empty_26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920)
  %i = add i11 %i_0_i_i, 1
  br i1 %tmp_3, label %"linebuffer_1D<1920ul, 3ul, 1ul, 1ul, 1ul, 3ul, unsigned char>.exit", label %2

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str31) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str31)
  br label %0

._crit_edge.i.i:                                  ; preds = %2, %.preheader.i.i.preheader.0
  %buffer_1_value_V_lo = load i24* %buffer_1_value_V
  %empty_27 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str32, i32 %tmp_8)
  store i24 %buffer_1_value_V_lo, i24* %buffer_0_value_V
  store i24 %tmp_value_V_1, i24* %buffer_1_value_V
  br label %0

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str32) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str32)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V_1 = call i24 @_ssdm_op_Read.ap_fifo.volatile.i24P(i24* %slice_stream_V_value_V)
  %tmp = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %i_0_i_i, i32 1, i32 10)
  %icmp = icmp eq i10 %tmp, 0
  br i1 %icmp, label %._crit_edge.i.i, label %.preheader.i.i.preheader.0

.preheader.i.i.preheader.0:                       ; preds = %2
  %buffer_1_value_V_lo_1 = load i24* %buffer_1_value_V
  %buffer_0_value_V_lo = load i24* %buffer_0_value_V
  %tmp_2 = trunc i24 %buffer_0_value_V_lo to i8
  %tmp_4 = trunc i24 %buffer_1_value_V_lo_1 to i8
  %tmp_5 = trunc i24 %tmp_value_V_1 to i8
  %p_Result_5_1 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %buffer_0_value_V_lo, i32 8, i32 15)
  %p_Result_5_1_1 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %buffer_1_value_V_lo_1, i32 8, i32 15)
  %p_Result_5_1_2 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %tmp_value_V_1, i32 8, i32 15)
  %p_Result_5_2 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %buffer_0_value_V_lo, i32 16, i32 23)
  %p_Result_5_2_1 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %buffer_1_value_V_lo_1, i32 16, i32 23)
  %p_Result_5_2_2 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %tmp_value_V_1, i32 16, i32 23)
  %tmp_value_V = call i72 @_ssdm_op_BitConcatenate.i72.i8.i8.i8.i8.i8.i8.i8.i8.i8(i8 %p_Result_5_2_2, i8 %p_Result_5_2_1, i8 %p_Result_5_2, i8 %p_Result_5_1_2, i8 %p_Result_5_1_1, i8 %p_Result_5_1, i8 %tmp_5, i8 %tmp_4, i8 %tmp_2)
  call void @_ssdm_op_Write.ap_fifo.volatile.i72P(i72* %out_stream_V_value_V, i72 %tmp_value_V)
  br label %._crit_edge.i.i
}

define internal fastcc void @call_Loop_LB2D_buf_p(i8* %in_stream_V_value_V, i24* %slice_stream_V_value_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i24* %slice_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i8* %in_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i24* %slice_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %in_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %buffer_0_value_V = alloca [1920 x i8], align 1
  %buffer_1_value_V = alloca [1920 x i8], align 1
  br label %0

.preheader.exitStub:                              ; preds = %0
  ret void

; <label>:0                                       ; preds = %1, %newFuncRoot
  %write_idx_1 = phi i64 [ 0, %newFuncRoot ], [ %write_idx_1_2, %1 ]
  %row = phi i11 [ 0, %newFuncRoot ], [ %row_1, %1 ]
  %tmp = icmp eq i11 %row, -968
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1080, i64 1080, i64 1080)
  %row_1 = add i11 %row, 1
  br i1 %tmp, label %.preheader.exitStub, label %3

; <label>:1                                       ; preds = %2
  %write_idx_1_2 = add i64 %write_idx_1_1, 1
  %empty_28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str29, i32 %tmp_5)
  br label %0

; <label>:2                                       ; preds = %._crit_edge31, %3
  %write_idx_1_1 = phi i64 [ %write_idx_1, %3 ], [ %p_write_idx_1_1, %._crit_edge31 ]
  %col = phi i11 [ 0, %3 ], [ %col_1, %._crit_edge31 ]
  %tmp_2 = icmp eq i11 %col, -128
  %col_1 = add i11 %col, 1
  br i1 %tmp_2, label %1, label %4

; <label>:3                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str29) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str29)
  %tmp_6 = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %row, i32 1, i32 10)
  %icmp = icmp eq i10 %tmp_6, 0
  br label %2

._crit_edge31:                                    ; preds = %branch5, %branch4
  %empty_29 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str30, i32 %tmp_7)
  br label %2

branch4:                                          ; preds = %._crit_edge
  store i8 %tmp_value_V_2, i8* %buffer_0_value_V_ad, align 1
  br label %._crit_edge31

._crit_edge:                                      ; preds = %4, %.preheader56.preheader.critedge.0
  %tmp_10 = trunc i64 %p_write_idx_1_1 to i1
  br i1 %tmp_10, label %branch5, label %branch4

; <label>:4                                       ; preds = %2
  %col_cast = zext i11 %col to i64
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920)
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_8 = call i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64 %write_idx_1_1, i32 1, i32 63)
  %icmp1 = icmp ne i63 %tmp_8, 0
  %write_idx_1_3 = add i64 %write_idx_1_1, -2
  %p_write_idx_1_1 = select i1 %icmp1, i64 %write_idx_1_3, i64 %write_idx_1_1
  %tmp_value_V_2 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_stream_V_value_V)
  %buffer_0_value_V_ad = getelementptr [1920 x i8]* %buffer_0_value_V, i64 0, i64 %col_cast
  %buffer_0_value_V_lo = load i8* %buffer_0_value_V_ad, align 1
  %buffer_1_value_V_ad = getelementptr [1920 x i8]* %buffer_1_value_V, i64 0, i64 %col_cast
  %buffer_1_value_V_lo = load i8* %buffer_1_value_V_ad, align 1
  br i1 %icmp, label %._crit_edge, label %.preheader56.preheader.critedge.0

.preheader56.preheader.critedge.0:                ; preds = %4
  %tmp_9 = trunc i64 %p_write_idx_1_1 to i1
  %p_Val2_2_0_phi = select i1 %tmp_9, i8 %buffer_1_value_V_lo, i8 %buffer_0_value_V_lo
  %p_Val2_2_1_phi = select i1 %tmp_9, i8 %buffer_0_value_V_lo, i8 %buffer_1_value_V_lo
  %p_Result_s = call i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8 %tmp_value_V_2, i8 %p_Val2_2_1_phi, i8 %p_Val2_2_0_phi)
  call void @_ssdm_op_Write.ap_fifo.volatile.i24P(i24* %slice_stream_V_value_V, i24 %p_Result_s)
  br label %._crit_edge

branch5:                                          ; preds = %._crit_edge
  store i8 %tmp_value_V_2, i8* %buffer_1_value_V_ad, align 1
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

define weak { i8, i1 } @_ssdm_op_Read.ap_auto.volatile.i8P.i1P(i8*, i1*) {
entry:
  %empty = load i8* %0
  %empty_31 = load i1* %1
  %mrv_0 = insertvalue { i8, i1 } undef, i8 %empty, 0
  %mrv1 = insertvalue { i8, i1 } %mrv_0, i1 %empty_31, 1
  ret { i8, i1 } %mrv1
}

define weak i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72, i32, i32) nounwind readnone {
entry:
  %empty = call i72 @llvm.part.select.i72(i72 %0, i32 %1, i32 %2)
  %empty_32 = trunc i72 %empty to i8
  ret i8 %empty_32
}

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_33 = trunc i24 %empty to i8
  ret i8 %empty_33
}

define weak i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72, i32, i32) nounwind readnone {
entry:
  %empty = call i72 @llvm.part.select.i72(i72 %0, i32 %1, i32 %2)
  %empty_34 = trunc i72 %empty to i7
  ret i7 %empty_34
}

define weak i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_35 = trunc i64 %empty to i63
  ret i63 %empty_35
}

define weak i6 @_ssdm_op_PartSelect.i6.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_36 = trunc i8 %empty to i6
  ret i6 %empty_36
}

define weak i6 @_ssdm_op_PartSelect.i6.i72.i32.i32(i72, i32, i32) nounwind readnone {
entry:
  %empty = call i72 @llvm.part.select.i72(i72 %0, i32 %1, i32 %2)
  %empty_37 = trunc i72 %empty to i6
  ret i6 %empty_37
}

define weak i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_38 = trunc i8 %empty to i4
  ret i4 %empty_38
}

define weak i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_39 = trunc i32 %empty to i4
  ret i4 %empty_39
}

define weak i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_40 = trunc i8 %empty to i2
  ret i2 %empty_40
}

define weak i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_41 = trunc i11 %empty to i10
  ret i10 %empty_41
}

declare i1 @_ssdm_op_PartSelect.i1.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone {
entry:
  %empty = zext i7 %0 to i8
  %empty_42 = zext i1 %1 to i8
  %empty_43 = shl i8 %empty, 1
  %empty_44 = or i8 %empty_43, %empty_42
  ret i8 %empty_44
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8
  %empty_45 = zext i2 %1 to i8
  %empty_46 = shl i8 %empty, 2
  %empty_47 = or i8 %empty_46, %empty_45
  ret i8 %empty_47
}

define weak i72 @_ssdm_op_BitConcatenate.i72.i8.i8.i8.i8.i8.i8.i8.i8.i8(i8, i8, i8, i8, i8, i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %7 to i16
  %empty_48 = zext i8 %8 to i16
  %empty_49 = shl i16 %empty, 8
  %empty_50 = or i16 %empty_49, %empty_48
  %empty_51 = zext i8 %6 to i24
  %empty_52 = zext i16 %empty_50 to i24
  %empty_53 = shl i24 %empty_51, 16
  %empty_54 = or i24 %empty_53, %empty_52
  %empty_55 = zext i8 %5 to i32
  %empty_56 = zext i24 %empty_54 to i32
  %empty_57 = shl i32 %empty_55, 24
  %empty_58 = or i32 %empty_57, %empty_56
  %empty_59 = zext i8 %4 to i40
  %empty_60 = zext i32 %empty_58 to i40
  %empty_61 = shl i40 %empty_59, 32
  %empty_62 = or i40 %empty_61, %empty_60
  %empty_63 = zext i8 %3 to i48
  %empty_64 = zext i40 %empty_62 to i48
  %empty_65 = shl i48 %empty_63, 40
  %empty_66 = or i48 %empty_65, %empty_64
  %empty_67 = zext i8 %2 to i56
  %empty_68 = zext i48 %empty_66 to i56
  %empty_69 = shl i56 %empty_67, 48
  %empty_70 = or i56 %empty_69, %empty_68
  %empty_71 = zext i8 %1 to i64
  %empty_72 = zext i56 %empty_70 to i64
  %empty_73 = shl i64 %empty_71, 56
  %empty_74 = or i64 %empty_73, %empty_72
  %empty_75 = zext i8 %0 to i72
  %empty_76 = zext i64 %empty_74 to i72
  %empty_77 = shl i72 %empty_75, 64
  %empty_78 = or i72 %empty_77, %empty_76
  ret i72 %empty_78
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %1 to i16
  %empty_79 = zext i8 %2 to i16
  %empty_80 = shl i16 %empty, 8
  %empty_81 = or i16 %empty_80, %empty_79
  %empty_82 = zext i8 %0 to i24
  %empty_83 = zext i16 %empty_81 to i24
  %empty_84 = shl i24 %empty_82, 16
  %empty_85 = or i24 %empty_84, %empty_83
  ret i24 %empty_85
}

declare void @_ssdm_SpecDependence(...) nounwind

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i72 @_autotb_FifoWrite_i72(i72*, i72)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i24 @_autotb_FifoWrite_i24(i24*, i24)

declare i8 @_autotb_FifoRead_i8(i8*)

declare i72 @_autotb_FifoRead_i72(i72*)

declare i32 @_autotb_FifoRead_i32(i32*)

declare i24 @_autotb_FifoRead_i24(i24*)

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define internal fastcc void @Loop_4_proc(i8* %hw_output_V_value_V, i1* %hw_output_V_last_V, i32* %p_mul_stencil_stream_V_value_V, i32* %p_delayed_input_stencil_stream_V_value_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_mul_stencil_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_delayed_input_stencil_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_mul_stencil_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_delayed_input_stencil_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader

.exitStub:                                        ; preds = %.preheader
  ret void

.preheader56:                                     ; preds = %.preheader
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2067604, i64 2067604, i64 2067604)
  %exitcond7 = icmp eq i11 %p_hw_output_x_scan_2, -130
  %p_hw_output_x_scan_s = select i1 %exitcond7, i11 0, i11 %p_hw_output_x_scan_2
  %p_hw_output_y_scan_2 = add i11 1, %p_hw_output_y_scan_1
  %tmp_3_mid1 = icmp eq i11 %p_hw_output_y_scan_2, -971
  %tmp_1 = icmp eq i11 %p_hw_output_y_scan_1, -971
  %tmp_3_mid2 = select i1 %exitcond7, i1 %tmp_3_mid1, i1 %tmp_1
  %p_hw_output_y_scan_s = select i1 %exitcond7, i11 %p_hw_output_y_scan_2, i11 %p_hw_output_y_scan_1
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V_4 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %p_mul_stencil_stream_V_value_V)
  %tmp_value_V_5 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %p_delayed_input_stencil_stream_V_value_V)
  %p_471 = trunc i32 %tmp_value_V_5 to i8
  %p_s = call i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32 %tmp_value_V_4, i32 4, i32 7)
  %p_474 = zext i4 %p_s to i8
  %p_479 = sub i8 %p_474, %p_471
  %p_475 = sub i8 %p_471, %p_474
  %tmp_12 = call i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8 %p_475, i32 4, i32 7)
  %p_478 = icmp ne i4 %tmp_12, 0
  %tmp_13 = call i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8 %p_479, i32 4, i32 7)
  %p_480 = icmp ne i4 %tmp_13, 0
  %tmp = call i6 @_ssdm_op_PartSelect.i6.i8.i32.i32(i8 %p_475, i32 2, i32 7)
  %tmp_14 = call i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8 %p_475, i32 2, i32 3)
  %tmp_15 = select i1 %p_480, i2 %tmp_14, i2 0
  %tmp_5_cast = zext i2 %tmp_15 to i6
  %p_483 = select i1 %p_478, i6 %tmp, i6 %tmp_5_cast
  %p_483_cast = zext i6 %p_483 to i8
  %p_484 = add i8 %p_483_cast, %p_471
  %tmp_s = icmp eq i11 %p_hw_output_x_scan_s, -131
  %tmp_last_V = and i1 %tmp_s, %tmp_3_mid2
  call void @_ssdm_op_Write.ap_auto.volatile.i8P.i1P(i8* %hw_output_V_value_V, i1* %hw_output_V_last_V, i8 %p_484, i1 %tmp_last_V)
  %empty_86 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_4)
  %p_hw_output_x_scan_1 = add i11 1, %p_hw_output_x_scan_s
  br label %.preheader

.preheader:                                       ; preds = %newFuncRoot, %.preheader56
  %indvar_flatten = phi i21 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader56 ]
  %p_hw_output_y_scan_1 = phi i11 [ 0, %newFuncRoot ], [ %p_hw_output_y_scan_s, %.preheader56 ]
  %p_hw_output_x_scan_2 = phi i11 [ 0, %newFuncRoot ], [ %p_hw_output_x_scan_1, %.preheader56 ]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -29548
  %indvar_flatten_next = add i21 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.exitStub, label %.preheader56
}

define internal fastcc void @Loop_3_proc(i72* %p_hw_input_stencil_stream_to_mul_V_value_V, i32* %p_mul_stencil_stream_V_value_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_mul_stencil_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i72* %p_hw_input_stencil_stream_to_mul_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_mul_stencil_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i72* %p_hw_input_stencil_stream_to_mul_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader57

.preheader56.exitStub:                            ; preds = %.preheader57
  ret void

.preheader57.preheader:                           ; preds = %.preheader57
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2067604, i64 2067604, i64 2067604)
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V = call i72 @_ssdm_op_Read.ap_fifo.volatile.i72P(i72* %p_hw_input_stencil_stream_to_mul_V_value_V)
  %p_399 = trunc i72 %tmp_value_V to i8
  %p_404_cast = zext i8 %p_399 to i9
  %p_415 = call i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72 %tmp_value_V, i32 16, i32 23)
  %p_420_cast_cast = zext i8 %p_415 to i9
  %p_447 = call i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72 %tmp_value_V, i32 48, i32 55)
  %p_452_cast_cast = zext i8 %p_447 to i9
  %p_463 = call i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72 %tmp_value_V, i32 64, i32 71)
  %p_468_cast = zext i8 %p_463 to i12
  %tmp_7 = call i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72 %tmp_value_V, i32 8, i32 14)
  %p_411 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_7, i1 false)
  %p_412_cast = zext i8 %p_411 to i9
  %p_413 = add i9 %p_404_cast, %p_412_cast
  %p_413_cast = zext i9 %p_413 to i10
  %tmp_8 = call i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72 %tmp_value_V, i32 24, i32 30)
  %p_427 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_8, i1 false)
  %p_428_cast_cast = zext i8 %p_427 to i9
  %tmp = add i9 %p_428_cast_cast, %p_420_cast_cast
  %tmp_cast = zext i9 %tmp to i10
  %p_429 = add i10 %p_413_cast, %tmp_cast
  %p_429_cast = zext i10 %p_429 to i11
  %tmp_9 = call i6 @_ssdm_op_PartSelect.i6.i72.i32.i32(i72 %tmp_value_V, i32 32, i32 37)
  %p_435 = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %tmp_9, i2 0)
  %p_436_cast = zext i8 %p_435 to i11
  %tmp_s = call i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72 %tmp_value_V, i32 40, i32 46)
  %p_443 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_s, i1 false)
  %p_444_cast_cast = zext i8 %p_443 to i10
  %tmp_3 = call i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72 %tmp_value_V, i32 56, i32 62)
  %p_459 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_3, i1 false)
  %p_460_cast_cast = zext i8 %p_459 to i9
  %tmp1 = add i11 %p_436_cast, %p_429_cast
  %tmp3 = add i9 %p_460_cast_cast, %p_452_cast_cast
  %tmp3_cast = zext i9 %tmp3 to i10
  %tmp2 = add i10 %p_444_cast_cast, %tmp3_cast
  %tmp2_cast = zext i10 %tmp2 to i11
  %p_461 = add i11 %tmp1, %tmp2_cast
  %p_461_cast = zext i11 %p_461 to i12
  %p_469 = add i12 %p_468_cast, %p_461_cast
  %tmp_value_V_7 = zext i12 %p_469 to i32
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %p_mul_stencil_stream_V_value_V, i32 %tmp_value_V_7)
  %empty_87 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_2)
  br label %.preheader57

.preheader57:                                     ; preds = %newFuncRoot, %.preheader57.preheader
  %indvar_flatten = phi i21 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader57.preheader ]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -29548
  %indvar_flatten_next = add i21 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader56.exitStub, label %.preheader57.preheader
}

define internal fastcc void @Loop_2_proc(i72* %p_hw_input_stencil_stream_to_delayed_input_V_value_V, i32* %p_delayed_input_stencil_stream_V_value_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_delayed_input_stencil_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i72* %p_hw_input_stencil_stream_to_delayed_input_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_delayed_input_stencil_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i72* %p_hw_input_stencil_stream_to_delayed_input_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader58

.exitStub:                                        ; preds = %.preheader58
  ret void

.preheader58.preheader:                           ; preds = %.preheader58
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2067604, i64 2067604, i64 2067604)
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V = call i72 @_ssdm_op_Read.ap_fifo.volatile.i72P(i72* %p_hw_input_stencil_stream_to_delayed_input_V_value_V)
  %p_391 = call i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72 %tmp_value_V, i32 64, i32 71)
  %p_396 = zext i8 %p_391 to i32
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %p_delayed_input_stencil_stream_V_value_V, i32 %p_396)
  %empty_88 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_1)
  br label %.preheader58

.preheader58:                                     ; preds = %newFuncRoot, %.preheader58.preheader
  %indvar_flatten = phi i21 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader58.preheader ]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -29548
  %indvar_flatten_next = add i21 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.exitStub, label %.preheader58.preheader
}

define internal fastcc void @Loop_1_proc(i72* %p_hw_input_stencil_stream_V_value_V, i72* %p_hw_input_stencil_stream_to_delayed_input_V_value_V, i72* %p_hw_input_stencil_stream_to_mul_V_value_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i72* %p_hw_input_stencil_stream_to_mul_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i72* %p_hw_input_stencil_stream_to_delayed_input_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i72* %p_hw_input_stencil_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i72* %p_hw_input_stencil_stream_to_mul_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i72* %p_hw_input_stencil_stream_to_delayed_input_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i72* %p_hw_input_stencil_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader59

.exitStub:                                        ; preds = %.preheader59
  ret void

.preheader59.preheader:                           ; preds = %.preheader59
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2067604, i64 2067604, i64 2067604)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V = call i72 @_ssdm_op_Read.ap_fifo.volatile.i72P(i72* %p_hw_input_stencil_stream_V_value_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i72P(i72* %p_hw_input_stencil_stream_to_delayed_input_V_value_V, i72 %tmp_value_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i72P(i72* %p_hw_input_stencil_stream_to_mul_V_value_V, i72 %tmp_value_V)
  %empty_89 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp)
  br label %.preheader59

.preheader59:                                     ; preds = %newFuncRoot, %.preheader59.preheader
  %indvar_flatten = phi i21 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader59.preheader ]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -29548
  %indvar_flatten_next = add i21 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.exitStub, label %.preheader59.preheader
}

!opencl.kernels = !{!0, !7, !13, !13, !16, !16, !22, !16, !16, !25, !16, !16, !16, !16, !16, !16, !16, !16, !16, !27, !29, !35, !38, !38, !44, !47, !47, !16, !16, !29, !16, !48, !16, !29, !35, !51, !51, !53, !53, !53, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !56, !58, !13, !13, !59, !29, !29, !16, !61, !16, !29, !35, !63, !63, !65, !65, !65, !16, !16, !16, !16, !16, !16, !67, !16, !16, !16, !16, !16, !69, !72, !72, !72, !72, !72, !75, !75, !77, !79, !79, !16, !16, !16, !16, !80, !82, !82, !16, !84, !87, !89, !91, !92, !94, !94, !16, !16, !27, !95, !95, !29, !35, !96, !96, !16, !16, !16, !16, !16, !16, !16, !16, !16, !98, !16, !16, !16, !16}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!99}

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
!56 = metadata !{null, metadata !8, metadata !9, metadata !57, metadata !11, metadata !15, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!58 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !46, metadata !6}
!59 = metadata !{null, metadata !8, metadata !9, metadata !60, metadata !11, metadata !12, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<int, 1, 1, 1, 1> &"}
!61 = metadata !{null, metadata !1, metadata !2, metadata !62, metadata !4, metadata !50, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<8> &", metadata !"uchar &"}
!63 = metadata !{null, metadata !39, metadata !40, metadata !64, metadata !42, metadata !43, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<72, false>*", metadata !"int", metadata !"int"}
!65 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !55, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<72, false> &"}
!67 = metadata !{null, metadata !8, metadata !9, metadata !68, metadata !11, metadata !12, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uchar, 3, 3, 1, 1> &"}
!69 = metadata !{null, metadata !1, metadata !2, metadata !70, metadata !4, metadata !71, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"stream<AxiPackedStencil<uchar, 1UL, 1UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uchar, 3UL, 3UL, 1UL, 1UL> > &"}
!71 = metadata !{metadata !"kernel_arg_name", metadata !"in_axi_stream", metadata !"out_stream"}
!72 = metadata !{null, metadata !1, metadata !2, metadata !73, metadata !4, metadata !74, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"stream<PackedStencil<uchar, 1UL, 1UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uchar, 3UL, 3UL, 1UL, 1UL> > &"}
!74 = metadata !{metadata !"kernel_arg_name", metadata !"in_stream", metadata !"out_stream"}
!75 = metadata !{null, metadata !1, metadata !2, metadata !76, metadata !4, metadata !74, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"stream<PackedStencil<uchar, 1UL, 3UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uchar, 3UL, 3UL, 1UL, 1UL> > &"}
!77 = metadata !{null, metadata !8, metadata !9, metadata !78, metadata !11, metadata !15, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<24, false> &"}
!79 = metadata !{null, metadata !8, metadata !9, metadata !78, metadata !11, metadata !55, metadata !6}
!80 = metadata !{null, metadata !8, metadata !9, metadata !81, metadata !11, metadata !15, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &"}
!82 = metadata !{null, metadata !8, metadata !9, metadata !81, metadata !11, metadata !83, metadata !6}
!83 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!84 = metadata !{null, metadata !8, metadata !9, metadata !85, metadata !11, metadata !86, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uchar, 1, 3, 1, 1> &"}
!86 = metadata !{metadata !"kernel_arg_name", metadata !""}
!87 = metadata !{null, metadata !8, metadata !9, metadata !88, metadata !11, metadata !24, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<24> &"}
!89 = metadata !{null, metadata !8, metadata !9, metadata !90, metadata !11, metadata !86, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uchar, 1, 1, 1, 1> &"}
!91 = metadata !{null, metadata !8, metadata !9, metadata !85, metadata !11, metadata !12, metadata !6}
!92 = metadata !{null, metadata !8, metadata !9, metadata !93, metadata !11, metadata !15, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<8, false> &"}
!94 = metadata !{null, metadata !8, metadata !9, metadata !93, metadata !11, metadata !55, metadata !6}
!95 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !83, metadata !6}
!96 = metadata !{null, metadata !39, metadata !40, metadata !97, metadata !42, metadata !43, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int", metadata !"int"}
!98 = metadata !{null, metadata !8, metadata !9, metadata !90, metadata !11, metadata !12, metadata !6}
!99 = metadata !{metadata !100, [1 x i32]* @llvm_global_ctors_0}
!100 = metadata !{metadata !101}
!101 = metadata !{i32 0, i32 31, metadata !102}
!102 = metadata !{metadata !103}
!103 = metadata !{metadata !"llvm.global_ctors.0", metadata !104, metadata !"", i32 0, i32 31}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 0, i32 1}
!106 = metadata !{metadata !107}
!107 = metadata !{i32 0, i32 7, metadata !108}
!108 = metadata !{metadata !109}
!109 = metadata !{metadata !"hw_input.V.value.V", metadata !104, metadata !"uint8", i32 0, i32 7}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 0, i32 0, metadata !112}
!112 = metadata !{metadata !113}
!113 = metadata !{metadata !"hw_input.V.last.V", metadata !104, metadata !"uint1", i32 0, i32 0}
!114 = metadata !{metadata !115}
!115 = metadata !{i32 0, i32 7, metadata !116}
!116 = metadata !{metadata !117}
!117 = metadata !{metadata !"hw_output.V.value.V", metadata !104, metadata !"uint8", i32 0, i32 7}
!118 = metadata !{metadata !119}
!119 = metadata !{i32 0, i32 0, metadata !120}
!120 = metadata !{metadata !121}
!121 = metadata !{metadata !"hw_output.V.last.V", metadata !104, metadata !"uint1", i32 0, i32 0}
