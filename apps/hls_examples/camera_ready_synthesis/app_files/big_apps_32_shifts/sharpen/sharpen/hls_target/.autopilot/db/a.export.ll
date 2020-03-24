; ModuleID = '/home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/big_apps_32_shifts/sharpen/sharpen/hls_target/.autopilot/db/a.o.2.bc'
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
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_7\00", align 1
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_6\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_5\00", align 1
@p_str32 = private unnamed_addr constant [14 x i8] c"LB1D_shiftreg\00", align 1
@p_str31 = private unnamed_addr constant [11 x i8] c"LB2D_shift\00", align 1
@p_str30 = private unnamed_addr constant [12 x i8] c"hls_label_9\00", align 1
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_4\00", align 1
@p_str29 = private unnamed_addr constant [9 x i8] c"LB2D_buf\00", align 1
@p_str28 = private unnamed_addr constant [11 x i8] c"LB_3D_pass\00", align 1
@p_str27 = private unnamed_addr constant [11 x i8] c"LB_4D_pass\00", align 1
@p_str26 = private unnamed_addr constant [12 x i8] c"hls_label_8\00", align 1
@p_str2 = private unnamed_addr constant [9 x i8] c"FIFO_SRL\00", align 1
@p_str1 = private unnamed_addr constant [6 x i8] c"ap_hs\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i96 @llvm.part.select.i96(i96, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i288 @llvm.part.select.i288(i288, i32, i32) nounwind readnone

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc void @linebuffer_Loop_1_pr(i32* %in_axi_stream_V_value_V, i1* %in_axi_stream_V_last_V, i32* %in_stream_V_value_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i32* %in_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader.i

.critedge.exitStub:                               ; preds = %.preheader.i
  ret void

.preheader4.i:                                    ; preds = %.preheader.i
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2073600, i64 2073600, i64 2073600)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str26)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %empty_16 = call { i32, i1 } @_ssdm_op_Read.ap_auto.volatile.i32P.i1P(i32* %in_axi_stream_V_value_V, i1* %in_axi_stream_V_last_V)
  %tmp_value_V = extractvalue { i32, i1 } %empty_16, 0
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %in_stream_V_value_V, i32 %tmp_value_V)
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str26, i32 %tmp)
  br label %.preheader.i

.preheader.i:                                     ; preds = %newFuncRoot, %.preheader4.i
  %indvar_flatten = phi i21 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader4.i ]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -23552
  %indvar_flatten_next = add i21 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.critedge.exitStub, label %.preheader4.i
}

define internal fastcc void @linebuffer.1(i32* %in_axi_stream_V_value_V, i1* %in_axi_stream_V_last_V, i288* %out_stream_V_value_V) {
.preheader5.preheader.critedge:
  call void (...)* @_ssdm_op_SpecInterface(i288* %out_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore(i288* %out_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %in_stream_V_value_V = alloca i32, align 4
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([20 x i8]* @in_stream_OC_V_OC_va, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i32* %in_stream_V_value_V, i32* %in_stream_V_value_V)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* %in_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @linebuffer_Loop_1_pr(i32* %in_axi_stream_V_value_V, i1* %in_axi_stream_V_last_V, i32* %in_stream_V_value_V)
  call fastcc void @linebuffer(i32* %in_stream_V_value_V, i288* %out_stream_V_value_V)
  ret void
}

define internal fastcc void @linebuffer(i32* %in_stream_V_value_V, i288* %out_stream_V_value_V) {
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i288* %out_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore(i32* %in_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i288* %out_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str27) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str27)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str28) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str27, i32 %tmp)
  call fastcc void @call(i32* %in_stream_V_value_V, i288* %out_stream_V_value_V)
  ret void
}

define void @hls_target(i32* %hw_input_V_value_V, i1* %hw_input_V_last_V, i32* %hw_output_V_value_V, i1* %hw_output_V_last_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %hw_input_V_value_V), !map !100
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %hw_input_V_last_V), !map !104
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %hw_output_V_value_V), !map !108
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %hw_output_V_last_V), !map !112
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @hls_target_str) nounwind
  %p_hw_input_stencil_st = alloca i288, align 8
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([35 x i8]* @p_hw_input_stencil_st_2, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i288* %p_hw_input_stencil_st, i288* %p_hw_input_stencil_st)
  call void (...)* @_ssdm_op_SpecInterface(i288* %p_hw_input_stencil_st, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i288* %p_hw_input_stencil_st, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_hw_input_stencil_st_3 = alloca i288, align 8
  %empty_18 = call i32 (...)* @_ssdm_op_SpecChannel([52 x i8]* @p_hw_input_stencil_st_1, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i288* %p_hw_input_stencil_st_3, i288* %p_hw_input_stencil_st_3)
  call void (...)* @_ssdm_op_SpecInterface(i288* %p_hw_input_stencil_st_3, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i288* %p_hw_input_stencil_st_3, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_hw_input_stencil_st_4 = alloca i288, align 8
  %empty_19 = call i32 (...)* @_ssdm_op_SpecChannel([42 x i8]* @p_hw_input_stencil_st, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i288* %p_hw_input_stencil_st_4, i288* %p_hw_input_stencil_st_4)
  call void (...)* @_ssdm_op_SpecInterface(i288* %p_hw_input_stencil_st_4, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i288* %p_hw_input_stencil_st_4, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_delayed_input_stenc = alloca i32, align 4
  %empty_20 = call i32 (...)* @_ssdm_op_SpecChannel([40 x i8]* @p_delayed_input_stenc, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i32* %p_delayed_input_stenc, i32* %p_delayed_input_stenc)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_delayed_input_stenc, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_delayed_input_stenc, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_mul_stencil_stream_s = alloca i32, align 4
  %empty_21 = call i32 (...)* @_ssdm_op_SpecChannel([30 x i8]* @p_mul_stencil_stream_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i32* %p_mul_stencil_stream_s, i32* %p_mul_stencil_stream_s)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_mul_stencil_stream_s, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_mul_stencil_stream_s, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %hw_input_V_value_V, i1* %hw_input_V_last_V, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %hw_output_V_value_V, i1* %hw_output_V_last_V, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call fastcc void @linebuffer.1(i32* %hw_input_V_value_V, i1* %hw_input_V_last_V, i288* %p_hw_input_stencil_st)
  call fastcc void @Loop_1_proc(i288* %p_hw_input_stencil_st, i288* %p_hw_input_stencil_st_3, i288* %p_hw_input_stencil_st_4)
  call fastcc void @Loop_2_proc(i288* %p_hw_input_stencil_st_3, i32* %p_delayed_input_stenc)
  call fastcc void @Loop_3_proc(i288* %p_hw_input_stencil_st_4, i32* %p_mul_stencil_stream_s)
  call fastcc void @Loop_4_proc(i32* %hw_output_V_value_V, i1* %hw_output_V_last_V, i32* %p_mul_stencil_stream_s, i32* %p_delayed_input_stenc)
  ret void
}

define internal fastcc void @call_Loop_LB2D_shift(i96* %slice_stream_V_value_V, i288* %out_stream_V_value_V) {
newFuncRoot:
  %buffer_1_value_V = alloca i96
  %buffer_0_value_V = alloca i96
  call void (...)* @_ssdm_op_SpecMemCore(i96* %slice_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i288* %out_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i96* %slice_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i288* %out_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader

.exitStub:                                        ; preds = %.preheader
  ret void

.preheader:                                       ; preds = %"linebuffer_1D<1920ul, 3ul, 1ul, 1ul, 1ul, 3ul, unsigned int>.exit", %newFuncRoot
  %n1 = phi i11 [ %n1_1, %"linebuffer_1D<1920ul, 3ul, 1ul, 1ul, 1ul, 3ul, unsigned int>.exit" ], [ 0, %newFuncRoot ]
  %tmp_1 = icmp eq i11 %n1, -970
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1078, i64 1078, i64 1078)
  %n1_1 = add i11 %n1, 1
  br i1 %tmp_1, label %.exitStub, label %1

"linebuffer_1D<1920ul, 3ul, 1ul, 1ul, 1ul, 3ul, unsigned int>.exit": ; preds = %0
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str31, i32 %tmp_6)
  br label %.preheader

; <label>:0                                       ; preds = %._crit_edge.i.i, %1
  %i_0_i_i = phi i11 [ 0, %1 ], [ %i, %._crit_edge.i.i ]
  %tmp_3 = icmp eq i11 %i_0_i_i, -128
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920)
  %i = add i11 %i_0_i_i, 1
  br i1 %tmp_3, label %"linebuffer_1D<1920ul, 3ul, 1ul, 1ul, 1ul, 3ul, unsigned int>.exit", label %2

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str31) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str31)
  br label %0

._crit_edge.i.i:                                  ; preds = %2, %.preheader.i.i.preheader.0
  %buffer_1_value_V_lo = load i96* %buffer_1_value_V
  %empty_24 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str32, i32 %tmp_8)
  store i96 %buffer_1_value_V_lo, i96* %buffer_0_value_V
  store i96 %tmp_value_V_1, i96* %buffer_1_value_V
  br label %0

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str32) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str32)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V_1 = call i96 @_ssdm_op_Read.ap_fifo.volatile.i96P(i96* %slice_stream_V_value_V)
  %tmp = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %i_0_i_i, i32 1, i32 10)
  %icmp = icmp eq i10 %tmp, 0
  br i1 %icmp, label %._crit_edge.i.i, label %.preheader.i.i.preheader.0

.preheader.i.i.preheader.0:                       ; preds = %2
  %buffer_1_value_V_lo_1 = load i96* %buffer_1_value_V
  %buffer_0_value_V_lo = load i96* %buffer_0_value_V
  %tmp_2 = trunc i96 %buffer_0_value_V_lo to i32
  %tmp_4 = trunc i96 %buffer_1_value_V_lo_1 to i32
  %tmp_5 = trunc i96 %tmp_value_V_1 to i32
  %p_Result_5_1 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %buffer_0_value_V_lo, i32 32, i32 63)
  %p_Result_5_1_1 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %buffer_1_value_V_lo_1, i32 32, i32 63)
  %p_Result_5_1_2 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %tmp_value_V_1, i32 32, i32 63)
  %p_Result_5_2 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %buffer_0_value_V_lo, i32 64, i32 95)
  %p_Result_5_2_1 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %buffer_1_value_V_lo_1, i32 64, i32 95)
  %p_Result_5_2_2 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %tmp_value_V_1, i32 64, i32 95)
  %tmp_value_V = call i288 @_ssdm_op_BitConcatenate.i288.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %p_Result_5_2_2, i32 %p_Result_5_2_1, i32 %p_Result_5_2, i32 %p_Result_5_1_2, i32 %p_Result_5_1_1, i32 %p_Result_5_1, i32 %tmp_5, i32 %tmp_4, i32 %tmp_2)
  call void @_ssdm_op_Write.ap_fifo.volatile.i288P(i288* %out_stream_V_value_V, i288 %tmp_value_V)
  br label %._crit_edge.i.i
}

define internal fastcc void @call_Loop_LB2D_buf_p(i32* %in_stream_V_value_V, i96* %slice_stream_V_value_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i96* %slice_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* %in_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i96* %slice_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %buffer_0_value_V = alloca [1920 x i32], align 4
  %buffer_1_value_V = alloca [1920 x i32], align 4
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
  %empty_25 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str29, i32 %tmp_5)
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
  %empty_26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str30, i32 %tmp_7)
  br label %2

branch4:                                          ; preds = %._crit_edge
  store i32 %tmp_value_V_2, i32* %buffer_0_value_V_ad, align 4
  br label %._crit_edge31

._crit_edge:                                      ; preds = %4, %.preheader56.preheader.critedge.0
  %tmp_10 = trunc i64 %p_write_idx_1_1 to i1
  br i1 %tmp_10, label %branch5, label %branch4

; <label>:4                                       ; preds = %2
  %col_cast = zext i11 %col to i64
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920)
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str30)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_8 = call i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64 %write_idx_1_1, i32 1, i32 63)
  %icmp1 = icmp ne i63 %tmp_8, 0
  %write_idx_1_3 = add i64 %write_idx_1_1, -2
  %p_write_idx_1_1 = select i1 %icmp1, i64 %write_idx_1_3, i64 %write_idx_1_1
  %tmp_value_V_2 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_stream_V_value_V)
  %buffer_0_value_V_ad = getelementptr [1920 x i32]* %buffer_0_value_V, i64 0, i64 %col_cast
  %buffer_0_value_V_lo = load i32* %buffer_0_value_V_ad, align 4
  %buffer_1_value_V_ad = getelementptr [1920 x i32]* %buffer_1_value_V, i64 0, i64 %col_cast
  %buffer_1_value_V_lo = load i32* %buffer_1_value_V_ad, align 4
  br i1 %icmp, label %._crit_edge, label %.preheader56.preheader.critedge.0

.preheader56.preheader.critedge.0:                ; preds = %4
  %tmp_9 = trunc i64 %p_write_idx_1_1 to i1
  %p_Val2_2_0_phi = select i1 %tmp_9, i32 %buffer_1_value_V_lo, i32 %buffer_0_value_V_lo
  %p_Val2_2_1_phi = select i1 %tmp_9, i32 %buffer_0_value_V_lo, i32 %buffer_1_value_V_lo
  %p_Result_s = call i96 @_ssdm_op_BitConcatenate.i96.i32.i32.i32(i32 %tmp_value_V_2, i32 %p_Val2_2_1_phi, i32 %p_Val2_2_0_phi)
  call void @_ssdm_op_Write.ap_fifo.volatile.i96P(i96* %slice_stream_V_value_V, i96 %p_Result_s)
  br label %._crit_edge

branch5:                                          ; preds = %._crit_edge
  store i32 %tmp_value_V_2, i32* %buffer_1_value_V_ad, align 4
  br label %._crit_edge31
}

define internal fastcc void @call(i32* %in_stream_V_value_V, i288* %out_stream_V_value_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i288* %out_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore(i288* %out_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* %in_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %slice_stream_V_value = alloca i96, align 8
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @slice_stream_OC_V_OC, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i96* %slice_stream_V_value, i96* %slice_stream_V_value)
  call void (...)* @_ssdm_op_SpecInterface(i96* %slice_stream_V_value, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i96* %slice_stream_V_value, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @call_Loop_LB2D_buf_p(i32* %in_stream_V_value_V, i96* %slice_stream_V_value)
  call fastcc void @call_Loop_LB2D_shift(i96* %slice_stream_V_value, i288* %out_stream_V_value_V)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i96P(i96*, i96) {
entry:
  %empty = call i96 @_autotb_FifoWrite_i96(i96* %0, i96 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i288P(i288*, i288) {
entry:
  %empty = call i288 @_autotb_FifoWrite_i288(i288* %0, i288 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.volatile.i32P.i1P(i32*, i1*, i32, i1) {
entry:
  store i32 %2, i32* %0
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

define weak i96 @_ssdm_op_Read.ap_fifo.volatile.i96P(i96*) {
entry:
  %empty = call i96 @_autotb_FifoRead_i96(i96* %0)
  ret i96 %empty
}

define weak i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak i288 @_ssdm_op_Read.ap_fifo.volatile.i288P(i288*) {
entry:
  %empty = call i288 @_autotb_FifoRead_i288(i288* %0)
  ret i288 %empty
}

define weak { i32, i1 } @_ssdm_op_Read.ap_auto.volatile.i32P.i1P(i32*, i1*) {
entry:
  %empty = load i32* %0
  %empty_28 = load i1* %1
  %mrv_0 = insertvalue { i32, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i1 } %mrv_0, i1 %empty_28, 1
  ret { i32, i1 } %mrv1
}

define weak i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_29 = trunc i64 %empty to i63
  ret i63 %empty_29
}

define weak i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96, i32, i32) nounwind readnone {
entry:
  %empty = call i96 @llvm.part.select.i96(i96 %0, i32 %1, i32 %2)
  %empty_30 = trunc i96 %empty to i32
  ret i32 %empty_30
}

define weak i32 @_ssdm_op_PartSelect.i32.i288.i32.i32(i288, i32, i32) nounwind readnone {
entry:
  %empty = call i288 @llvm.part.select.i288(i288 %0, i32 %1, i32 %2)
  %empty_31 = trunc i288 %empty to i32
  ret i32 %empty_31
}

define weak i31 @_ssdm_op_PartSelect.i31.i288.i32.i32(i288, i32, i32) nounwind readnone {
entry:
  %empty = call i288 @llvm.part.select.i288(i288 %0, i32 %1, i32 %2)
  %empty_32 = trunc i288 %empty to i31
  ret i31 %empty_32
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_33 = trunc i32 %empty to i30
  ret i30 %empty_33
}

define weak i30 @_ssdm_op_PartSelect.i30.i288.i32.i32(i288, i32, i32) nounwind readnone {
entry:
  %empty = call i288 @llvm.part.select.i288(i288 %0, i32 %1, i32 %2)
  %empty_34 = trunc i288 %empty to i30
  ret i30 %empty_34
}

define weak i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_35 = trunc i32 %empty to i28
  ret i28 %empty_35
}

define weak i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_36 = trunc i32 %empty to i2
  ret i2 %empty_36
}

define weak i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_37 = trunc i11 %empty to i10
  ret i10 %empty_37
}

declare i1 @_ssdm_op_PartSelect.i1.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i96 @_ssdm_op_BitConcatenate.i96.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_38 = zext i32 %2 to i64
  %empty_39 = shl i64 %empty, 32
  %empty_40 = or i64 %empty_39, %empty_38
  %empty_41 = zext i32 %0 to i96
  %empty_42 = zext i64 %empty_40 to i96
  %empty_43 = shl i96 %empty_41, 64
  %empty_44 = or i96 %empty_43, %empty_42
  ret i96 %empty_44
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone {
entry:
  %empty = zext i31 %0 to i32
  %empty_45 = zext i1 %1 to i32
  %empty_46 = shl i32 %empty, 1
  %empty_47 = or i32 %empty_46, %empty_45
  ret i32 %empty_47
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30, i2) nounwind readnone {
entry:
  %empty = zext i30 %0 to i32
  %empty_48 = zext i2 %1 to i32
  %empty_49 = shl i32 %empty, 2
  %empty_50 = or i32 %empty_49, %empty_48
  ret i32 %empty_50
}

define weak i288 @_ssdm_op_BitConcatenate.i288.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32, i32, i32, i32, i32, i32, i32, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %7 to i64
  %empty_51 = zext i32 %8 to i64
  %empty_52 = shl i64 %empty, 32
  %empty_53 = or i64 %empty_52, %empty_51
  %empty_54 = zext i32 %6 to i96
  %empty_55 = zext i64 %empty_53 to i96
  %empty_56 = shl i96 %empty_54, 64
  %empty_57 = or i96 %empty_56, %empty_55
  %empty_58 = zext i32 %5 to i128
  %empty_59 = zext i96 %empty_57 to i128
  %empty_60 = shl i128 %empty_58, 96
  %empty_61 = or i128 %empty_60, %empty_59
  %empty_62 = zext i32 %4 to i160
  %empty_63 = zext i128 %empty_61 to i160
  %empty_64 = shl i160 %empty_62, 128
  %empty_65 = or i160 %empty_64, %empty_63
  %empty_66 = zext i32 %3 to i192
  %empty_67 = zext i160 %empty_65 to i192
  %empty_68 = shl i192 %empty_66, 160
  %empty_69 = or i192 %empty_68, %empty_67
  %empty_70 = zext i32 %2 to i224
  %empty_71 = zext i192 %empty_69 to i224
  %empty_72 = shl i224 %empty_70, 192
  %empty_73 = or i224 %empty_72, %empty_71
  %empty_74 = zext i32 %1 to i256
  %empty_75 = zext i224 %empty_73 to i256
  %empty_76 = shl i256 %empty_74, 224
  %empty_77 = or i256 %empty_76, %empty_75
  %empty_78 = zext i32 %0 to i288
  %empty_79 = zext i256 %empty_77 to i288
  %empty_80 = shl i288 %empty_78, 256
  %empty_81 = or i288 %empty_80, %empty_79
  ret i288 %empty_81
}

declare void @_ssdm_SpecDependence(...) nounwind

declare i96 @_autotb_FifoWrite_i96(i96*, i96)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i288 @_autotb_FifoWrite_i288(i288*, i288)

declare i96 @_autotb_FifoRead_i96(i96*)

declare i32 @_autotb_FifoRead_i32(i32*)

declare i288 @_autotb_FifoRead_i288(i288*)

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define internal fastcc void @Loop_4_proc(i32* %hw_output_V_value_V, i1* %hw_output_V_last_V, i32* %p_mul_stencil_stream_V_value_V, i32* %p_delayed_input_stencil_stream_V_value_V) {
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
  %p_hw_output_y_scan_2 = add i11 %p_hw_output_y_scan_1, 1
  %tmp_3_mid1 = icmp eq i11 %p_hw_output_y_scan_2, -971
  %tmp_1 = icmp eq i11 %p_hw_output_y_scan_1, -971
  %tmp_3_mid2 = select i1 %exitcond7, i1 %tmp_3_mid1, i1 %tmp_1
  %p_hw_output_y_scan_s = select i1 %exitcond7, i11 %p_hw_output_y_scan_2, i11 %p_hw_output_y_scan_1
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V_4 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %p_mul_stencil_stream_V_value_V)
  %tmp_value_V_5 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %p_delayed_input_stencil_stream_V_value_V)
  %p_s = call i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32 %tmp_value_V_4, i32 4, i32 31)
  %p_438 = zext i28 %p_s to i32
  %p_443 = sub i32 %p_438, %tmp_value_V_5
  %p_439 = sub i32 %tmp_value_V_5, %p_438
  %tmp_11 = call i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32 %p_439, i32 4, i32 31)
  %p_442 = icmp ne i28 %tmp_11, 0
  %tmp_12 = call i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32 %p_443, i32 4, i32 31)
  %p_444 = icmp ne i28 %tmp_12, 0
  %tmp = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %p_439, i32 2, i32 31)
  %tmp_13 = call i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32 %p_439, i32 2, i32 3)
  %tmp_14 = select i1 %p_444, i2 %tmp_13, i2 0
  %tmp_5_cast = zext i2 %tmp_14 to i30
  %p_447 = select i1 %p_442, i30 %tmp, i30 %tmp_5_cast
  %p_447_cast = zext i30 %p_447 to i32
  %p_448 = add i32 %p_447_cast, %tmp_value_V_5
  %tmp_s = icmp eq i11 %p_hw_output_x_scan_s, -131
  %tmp_last_V = and i1 %tmp_s, %tmp_3_mid2
  call void @_ssdm_op_Write.ap_auto.volatile.i32P.i1P(i32* %hw_output_V_value_V, i1* %hw_output_V_last_V, i32 %p_448, i1 %tmp_last_V)
  %empty_82 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_4)
  %p_hw_output_x_scan_1 = add i11 %p_hw_output_x_scan_s, 1
  br label %.preheader

.preheader:                                       ; preds = %newFuncRoot, %.preheader56
  %indvar_flatten = phi i21 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader56 ]
  %p_hw_output_y_scan_1 = phi i11 [ 0, %newFuncRoot ], [ %p_hw_output_y_scan_s, %.preheader56 ]
  %p_hw_output_x_scan_2 = phi i11 [ 0, %newFuncRoot ], [ %p_hw_output_x_scan_1, %.preheader56 ]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -29548
  %indvar_flatten_next = add i21 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.exitStub, label %.preheader56
}

define internal fastcc void @Loop_3_proc(i288* %p_hw_input_stencil_stream_to_mul_V_value_V, i32* %p_mul_stencil_stream_V_value_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_mul_stencil_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i288* %p_hw_input_stencil_stream_to_mul_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_mul_stencil_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i288* %p_hw_input_stencil_stream_to_mul_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader57

.preheader56.exitStub:                            ; preds = %.preheader57
  ret void

.preheader57.preheader:                           ; preds = %.preheader57
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2067604, i64 2067604, i64 2067604)
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V = call i288 @_ssdm_op_Read.ap_fifo.volatile.i288P(i288* %p_hw_input_stencil_stream_to_mul_V_value_V)
  %p_381 = trunc i288 %tmp_value_V to i32
  %p_393 = call i32 @_ssdm_op_PartSelect.i32.i288.i32.i32(i288 %tmp_value_V, i32 64, i32 95)
  %p_417 = call i32 @_ssdm_op_PartSelect.i32.i288.i32.i32(i288 %tmp_value_V, i32 192, i32 223)
  %p_429 = call i32 @_ssdm_op_PartSelect.i32.i288.i32.i32(i288 %tmp_value_V, i32 256, i32 287)
  %tmp_7 = call i31 @_ssdm_op_PartSelect.i31.i288.i32.i32(i288 %tmp_value_V, i32 32, i32 62)
  %p_390 = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp_7, i1 false)
  %tmp_8 = call i31 @_ssdm_op_PartSelect.i31.i288.i32.i32(i288 %tmp_value_V, i32 96, i32 126)
  %p_402 = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp_8, i1 false)
  %tmp_9 = call i30 @_ssdm_op_PartSelect.i30.i288.i32.i32(i288 %tmp_value_V, i32 128, i32 157)
  %p_408 = call i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30 %tmp_9, i2 0)
  %tmp_s = call i31 @_ssdm_op_PartSelect.i31.i288.i32.i32(i288 %tmp_value_V, i32 160, i32 190)
  %p_414 = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp_s, i1 false)
  %tmp_3 = call i31 @_ssdm_op_PartSelect.i31.i288.i32.i32(i288 %tmp_value_V, i32 224, i32 254)
  %p_426 = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp_3, i1 false)
  %tmp1 = add i32 %p_381, %p_390
  %tmp2 = add i32 %p_402, %p_393
  %tmp = add i32 %tmp1, %tmp2
  %tmp4 = add i32 %p_414, %p_408
  %tmp6 = add i32 %p_429, %p_426
  %tmp5 = add i32 %p_417, %tmp6
  %tmp3 = add i32 %tmp4, %tmp5
  %p_433 = add nsw i32 %tmp, %tmp3
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %p_mul_stencil_stream_V_value_V, i32 %p_433)
  %empty_83 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_2)
  br label %.preheader57

.preheader57:                                     ; preds = %newFuncRoot, %.preheader57.preheader
  %indvar_flatten = phi i21 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader57.preheader ]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -29548
  %indvar_flatten_next = add i21 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader56.exitStub, label %.preheader57.preheader
}

define internal fastcc void @Loop_2_proc(i288* %p_hw_input_stencil_stream_to_delayed_input_V_value_V, i32* %p_delayed_input_stencil_stream_V_value_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_delayed_input_stencil_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i288* %p_hw_input_stencil_stream_to_delayed_input_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_delayed_input_stencil_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i288* %p_hw_input_stencil_stream_to_delayed_input_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader58

.exitStub:                                        ; preds = %.preheader58
  ret void

.preheader58.preheader:                           ; preds = %.preheader58
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2067604, i64 2067604, i64 2067604)
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V = call i288 @_ssdm_op_Read.ap_fifo.volatile.i288P(i288* %p_hw_input_stencil_stream_to_delayed_input_V_value_V)
  %p_375 = call i32 @_ssdm_op_PartSelect.i32.i288.i32.i32(i288 %tmp_value_V, i32 256, i32 287)
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %p_delayed_input_stencil_stream_V_value_V, i32 %p_375)
  %empty_84 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_1)
  br label %.preheader58

.preheader58:                                     ; preds = %newFuncRoot, %.preheader58.preheader
  %indvar_flatten = phi i21 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader58.preheader ]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -29548
  %indvar_flatten_next = add i21 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.exitStub, label %.preheader58.preheader
}

define internal fastcc void @Loop_1_proc(i288* %p_hw_input_stencil_stream_V_value_V, i288* %p_hw_input_stencil_stream_to_delayed_input_V_value_V, i288* %p_hw_input_stencil_stream_to_mul_V_value_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i288* %p_hw_input_stencil_stream_to_mul_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i288* %p_hw_input_stencil_stream_to_delayed_input_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i288* %p_hw_input_stencil_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i288* %p_hw_input_stencil_stream_to_mul_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i288* %p_hw_input_stencil_stream_to_delayed_input_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i288* %p_hw_input_stencil_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader59

.exitStub:                                        ; preds = %.preheader59
  ret void

.preheader59.preheader:                           ; preds = %.preheader59
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2067604, i64 2067604, i64 2067604)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V = call i288 @_ssdm_op_Read.ap_fifo.volatile.i288P(i288* %p_hw_input_stencil_stream_V_value_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i288P(i288* %p_hw_input_stencil_stream_to_delayed_input_V_value_V, i288 %tmp_value_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i288P(i288* %p_hw_input_stencil_stream_to_mul_V_value_V, i288 %tmp_value_V)
  %empty_85 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp)
  br label %.preheader59

.preheader59:                                     ; preds = %newFuncRoot, %.preheader59.preheader
  %indvar_flatten = phi i21 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader59.preheader ]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -29548
  %indvar_flatten_next = add i21 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.exitStub, label %.preheader59.preheader
}

!opencl.kernels = !{!0, !7, !13, !13, !16, !16, !22, !16, !16, !25, !16, !16, !16, !16, !16, !16, !16, !16, !16, !27, !29, !35, !38, !38, !44, !47, !47, !16, !16, !29, !16, !48, !16, !29, !51, !51, !51, !16, !16, !16, !16, !16, !16, !54, !13, !13, !55, !29, !29, !16, !57, !29, !35, !59, !59, !61, !61, !61, !16, !16, !16, !16, !16, !16, !63, !16, !16, !16, !16, !16, !65, !68, !68, !68, !68, !68, !71, !71, !73, !75, !75, !16, !16, !16, !16, !76, !78, !78, !16, !80, !83, !85, !87, !88, !51, !27, !89, !89, !29, !35, !90, !90, !16, !16, !16, !16, !16, !16, !16, !16, !16, !92, !16, !16, !16, !16}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!93}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<AxiPackedStencil<uint32_t, 1, 1> > &", metadata !"hls::stream<AxiPackedStencil<uint32_t, 1, 1> > &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"hw_input", metadata !"hw_output"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct AxiPackedStencil<uint, 1, 1, 1, 1> &"}
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
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !15, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
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
!41 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!42 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!43 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!44 = metadata !{null, metadata !8, metadata !9, metadata !45, metadata !11, metadata !46, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"in"}
!47 = metadata !{null, metadata !8, metadata !9, metadata !45, metadata !11, metadata !15, metadata !6}
!48 = metadata !{null, metadata !1, metadata !2, metadata !49, metadata !4, metadata !50, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<32> &", metadata !"int &"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out"}
!51 = metadata !{null, metadata !8, metadata !9, metadata !52, metadata !11, metadata !53, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!54 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !46, metadata !6}
!55 = metadata !{null, metadata !8, metadata !9, metadata !56, metadata !11, metadata !12, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<int, 1, 1, 1, 1> &"}
!57 = metadata !{null, metadata !1, metadata !2, metadata !58, metadata !4, metadata !50, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<32> &", metadata !"uint &"}
!59 = metadata !{null, metadata !39, metadata !40, metadata !60, metadata !42, metadata !43, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<288, false>*", metadata !"int", metadata !"int"}
!61 = metadata !{null, metadata !8, metadata !9, metadata !62, metadata !11, metadata !53, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<288, false> &"}
!63 = metadata !{null, metadata !8, metadata !9, metadata !64, metadata !11, metadata !12, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uint, 3, 3, 1, 1> &"}
!65 = metadata !{null, metadata !1, metadata !2, metadata !66, metadata !4, metadata !67, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"stream<AxiPackedStencil<uint, 1UL, 1UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uint, 3UL, 3UL, 1UL, 1UL> > &"}
!67 = metadata !{metadata !"kernel_arg_name", metadata !"in_axi_stream", metadata !"out_stream"}
!68 = metadata !{null, metadata !1, metadata !2, metadata !69, metadata !4, metadata !70, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"stream<PackedStencil<uint, 1UL, 1UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uint, 3UL, 3UL, 1UL, 1UL> > &"}
!70 = metadata !{metadata !"kernel_arg_name", metadata !"in_stream", metadata !"out_stream"}
!71 = metadata !{null, metadata !1, metadata !2, metadata !72, metadata !4, metadata !70, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"stream<PackedStencil<uint, 1UL, 3UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uint, 3UL, 3UL, 1UL, 1UL> > &"}
!73 = metadata !{null, metadata !8, metadata !9, metadata !74, metadata !11, metadata !15, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<96, false> &"}
!75 = metadata !{null, metadata !8, metadata !9, metadata !74, metadata !11, metadata !53, metadata !6}
!76 = metadata !{null, metadata !8, metadata !9, metadata !77, metadata !11, metadata !15, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<96, false> &"}
!78 = metadata !{null, metadata !8, metadata !9, metadata !77, metadata !11, metadata !79, metadata !6}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!80 = metadata !{null, metadata !8, metadata !9, metadata !81, metadata !11, metadata !82, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uint, 1, 3, 1, 1> &"}
!82 = metadata !{metadata !"kernel_arg_name", metadata !""}
!83 = metadata !{null, metadata !8, metadata !9, metadata !84, metadata !11, metadata !24, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<96> &"}
!85 = metadata !{null, metadata !8, metadata !9, metadata !86, metadata !11, metadata !82, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uint, 1, 1, 1, 1> &"}
!87 = metadata !{null, metadata !8, metadata !9, metadata !81, metadata !11, metadata !12, metadata !6}
!88 = metadata !{null, metadata !8, metadata !9, metadata !52, metadata !11, metadata !15, metadata !6}
!89 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !79, metadata !6}
!90 = metadata !{null, metadata !39, metadata !40, metadata !91, metadata !42, metadata !43, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<96, false>*", metadata !"int", metadata !"int"}
!92 = metadata !{null, metadata !8, metadata !9, metadata !86, metadata !11, metadata !12, metadata !6}
!93 = metadata !{metadata !94, [1 x i32]* @llvm_global_ctors_0}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 31, metadata !96}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !"llvm.global_ctors.0", metadata !98, metadata !"", i32 0, i32 31}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 0, i32 1}
!100 = metadata !{metadata !101}
!101 = metadata !{i32 0, i32 31, metadata !102}
!102 = metadata !{metadata !103}
!103 = metadata !{metadata !"hw_input.V.value.V", metadata !98, metadata !"uint32", i32 0, i32 31}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 0, metadata !106}
!106 = metadata !{metadata !107}
!107 = metadata !{metadata !"hw_input.V.last.V", metadata !98, metadata !"uint1", i32 0, i32 0}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 0, i32 31, metadata !110}
!110 = metadata !{metadata !111}
!111 = metadata !{metadata !"hw_output.V.value.V", metadata !98, metadata !"uint32", i32 0, i32 31}
!112 = metadata !{metadata !113}
!113 = metadata !{i32 0, i32 0, metadata !114}
!114 = metadata !{metadata !115}
!115 = metadata !{metadata !"hw_output.V.last.V", metadata !98, metadata !"uint1", i32 0, i32 0}
