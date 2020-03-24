; ModuleID = '/home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/big_apps_32_shifts/conv2d_b2b/conv2d_b2b/hls_target/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slice_stream_OC_V_OC = internal unnamed_addr constant [23 x i8] c"slice_stream.V.value.V\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@in_stream_OC_V_OC_va = internal unnamed_addr constant [20 x i8] c"in_stream.V.value.V\00"
@hls_target_str = internal unnamed_addr constant [11 x i8] c"hls_target\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_p2_mul1_stencil_str = internal unnamed_addr constant [34 x i8] c"_p2_mul1_stencil_stream.V.value.V\00"
@p_mul_stencil_update_s = internal unnamed_addr constant [37 x i8] c"_mul_stencil_update_stream.V.value.V\00"
@p_mul_stencil_stream_s = internal unnamed_addr constant [30 x i8] c"_mul_stencil_stream.V.value.V\00"
@p_hw_input_stencil_st = internal unnamed_addr constant [35 x i8] c"_hw_input_stencil_stream.V.value.V\00"
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_5\00", align 1
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_6\00", align 1
@p_str36 = private unnamed_addr constant [12 x i8] c"hls_label_8\00", align 1
@p_str35 = private unnamed_addr constant [12 x i8] c"hls_label_7\00", align 1
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_4\00", align 1
@p_str26 = private unnamed_addr constant [14 x i8] c"LB1D_shiftreg\00", align 1
@p_str25 = private unnamed_addr constant [11 x i8] c"LB2D_shift\00", align 1
@p_str24 = private unnamed_addr constant [13 x i8] c"hls_label_17\00", align 1
@p_str23 = private unnamed_addr constant [9 x i8] c"LB2D_buf\00", align 1
@p_str22 = private unnamed_addr constant [11 x i8] c"LB_3D_pass\00", align 1
@p_str21 = private unnamed_addr constant [11 x i8] c"LB_4D_pass\00", align 1
@p_str2 = private unnamed_addr constant [9 x i8] c"FIFO_SRL\00", align 1
@p_str1 = private unnamed_addr constant [6 x i8] c"ap_hs\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i96 @llvm.part.select.i96(i96, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i288 @llvm.part.select.i288(i288, i32, i32) nounwind readnone

declare i128 @llvm.part.select.i128(i128, i32, i32) nounwind readnone

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
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str35)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %empty_20 = call { i32, i1 } @_ssdm_op_Read.ap_auto.volatile.i32P.i1P(i32* %in_axi_stream_V_value_V, i1* %in_axi_stream_V_last_V)
  %tmp_value_V = extractvalue { i32, i1 } %empty_20, 0
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %in_stream_V_value_V, i32 %tmp_value_V)
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str35, i32 %tmp)
  br label %.preheader.i

.preheader.i:                                     ; preds = %newFuncRoot, %.preheader4.i
  %indvar_flatten = phi i21 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader4.i ]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -23552
  %indvar_flatten_next = add i21 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.critedge.exitStub, label %.preheader4.i
}

define internal fastcc void @linebuffer.2(i32* %in_stream_V_value_V, i128* %out_stream_V_value_V) {
  call void (...)* @_ssdm_op_SpecInterface(i128* %out_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore(i128* %out_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* %in_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str21) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str21)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str22) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str21, i32 %tmp)
  call fastcc void @call.1(i32* %in_stream_V_value_V, i128* %out_stream_V_value_V)
  ret void
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
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str21) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str21)
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str22) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str21, i32 %tmp)
  call fastcc void @call(i32* %in_stream_V_value_V, i288* %out_stream_V_value_V)
  ret void
}

define void @hls_target(i32* %hw_input_V_value_V, i1* %hw_input_V_last_V, i32* %hw_output_V_value_V, i1* %hw_output_V_last_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %hw_input_V_value_V), !map !124
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %hw_input_V_last_V), !map !128
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %hw_output_V_value_V), !map !132
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %hw_output_V_last_V), !map !136
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @hls_target_str) nounwind
  %p_hw_input_stencil_st = alloca i288, align 8
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([35 x i8]* @p_hw_input_stencil_st, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i288* %p_hw_input_stencil_st, i288* %p_hw_input_stencil_st)
  call void (...)* @_ssdm_op_SpecInterface(i288* %p_hw_input_stencil_st, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i288* %p_hw_input_stencil_st, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_mul_stencil_update_1 = alloca i32, align 4
  %empty_22 = call i32 (...)* @_ssdm_op_SpecChannel([37 x i8]* @p_mul_stencil_update_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i32* %p_mul_stencil_update_1, i32* %p_mul_stencil_update_1)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_mul_stencil_update_1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_mul_stencil_update_1, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_mul_stencil_stream_s = alloca i128, align 8
  %empty_23 = call i32 (...)* @_ssdm_op_SpecChannel([30 x i8]* @p_mul_stencil_stream_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i128* %p_mul_stencil_stream_s, i128* %p_mul_stencil_stream_s)
  call void (...)* @_ssdm_op_SpecInterface(i128* %p_mul_stencil_stream_s, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i128* %p_mul_stencil_stream_s, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_p2_mul1_stencil_str = alloca i32, align 4
  %empty_24 = call i32 (...)* @_ssdm_op_SpecChannel([34 x i8]* @p_p2_mul1_stencil_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i32* %p_p2_mul1_stencil_str, i32* %p_p2_mul1_stencil_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_p2_mul1_stencil_str, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_p2_mul1_stencil_str, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %hw_input_V_value_V, i1* %hw_input_V_last_V, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %hw_output_V_value_V, i1* %hw_output_V_last_V, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call fastcc void @linebuffer.1(i32* %hw_input_V_value_V, i1* %hw_input_V_last_V, i288* %p_hw_input_stencil_st)
  call fastcc void @Loop_1_proc(i288* %p_hw_input_stencil_st, i32* %p_mul_stencil_update_1)
  call fastcc void @linebuffer.2(i32* %p_mul_stencil_update_1, i128* %p_mul_stencil_stream_s)
  call fastcc void @Loop_2_proc(i128* %p_mul_stencil_stream_s, i32* %p_p2_mul1_stencil_str)
  call fastcc void @Loop_3_proc(i32* %p_p2_mul1_stencil_str, i32* %hw_output_V_value_V, i1* %hw_output_V_last_V)
  ret void
}

define internal fastcc void @call_Loop_LB2D_shift.1(i64* %slice_stream_V_value_V, i128* %out_stream_V_value_V) {
newFuncRoot:
  %buffer_0_value_V = alloca i64
  call void (...)* @_ssdm_op_SpecMemCore(i64* %slice_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i128* %out_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i64* %slice_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i128* %out_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader

.exitStub:                                        ; preds = %.preheader
  ret void

.preheader:                                       ; preds = %"linebuffer_1D<1918ul, 2ul, 1ul, 1ul, 1ul, 2ul, int>.exit", %newFuncRoot
  %n1 = phi i11 [ %n1_1, %"linebuffer_1D<1918ul, 2ul, 1ul, 1ul, 1ul, 2ul, int>.exit" ], [ 0, %newFuncRoot ]
  %tmp_6 = icmp eq i11 %n1, -971
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1077, i64 1077, i64 1077)
  %n1_1 = add i11 %n1, 1
  br i1 %tmp_6, label %.exitStub, label %1

"linebuffer_1D<1918ul, 2ul, 1ul, 1ul, 1ul, 2ul, int>.exit": ; preds = %0
  %empty_25 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str25, i32 %tmp_s)
  br label %.preheader

; <label>:0                                       ; preds = %._crit_edge.i.i, %1
  %i_0_i_i = phi i11 [ 0, %1 ], [ %i, %._crit_edge.i.i ]
  %tmp_8 = icmp eq i11 %i_0_i_i, -130
  %empty_26 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1918, i64 1918, i64 1918)
  %i = add i11 %i_0_i_i, 1
  br i1 %tmp_8, label %"linebuffer_1D<1918ul, 2ul, 1ul, 1ul, 1ul, 2ul, int>.exit", label %.critedge.i.i

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str25) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str25)
  br label %0

._crit_edge.i.i:                                  ; preds = %.preheader.i.i.preheader.0, %.critedge.i.i
  %empty_27 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str26, i32 %tmp_7)
  store i64 %tmp_value_V_1, i64* %buffer_0_value_V
  br label %0

.critedge.i.i:                                    ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str26) nounwind
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str26)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V_1 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* %slice_stream_V_value_V)
  %tmp_9 = icmp eq i11 %i_0_i_i, 0
  br i1 %tmp_9, label %._crit_edge.i.i, label %.preheader.i.i.preheader.0

.preheader.i.i.preheader.0:                       ; preds = %.critedge.i.i
  %buffer_0_value_V_lo = load i64* %buffer_0_value_V
  %tmp = trunc i64 %buffer_0_value_V_lo to i32
  %tmp_1 = trunc i64 %tmp_value_V_1 to i32
  %p_Result_11_1 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %buffer_0_value_V_lo, i32 32, i32 63)
  %p_Result_11_1_1 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %tmp_value_V_1, i32 32, i32 63)
  %tmp_value_V = call i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32 %p_Result_11_1_1, i32 %p_Result_11_1, i32 %tmp_1, i32 %tmp)
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* %out_stream_V_value_V, i128 %tmp_value_V)
  br label %._crit_edge.i.i
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
  %empty_28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str25, i32 %tmp_s)
  br label %.preheader

; <label>:0                                       ; preds = %._crit_edge.i.i, %1
  %i_0_i_i = phi i11 [ 0, %1 ], [ %i, %._crit_edge.i.i ]
  %tmp_3 = icmp eq i11 %i_0_i_i, -128
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920)
  %i = add i11 %i_0_i_i, 1
  br i1 %tmp_3, label %"linebuffer_1D<1920ul, 3ul, 1ul, 1ul, 1ul, 3ul, unsigned int>.exit", label %2

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str25) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str25)
  br label %0

._crit_edge.i.i:                                  ; preds = %2, %.preheader.i.i.preheader.0
  %buffer_1_value_V_lo = load i96* %buffer_1_value_V
  %empty_30 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str26, i32 %tmp_4)
  store i96 %buffer_1_value_V_lo, i96* %buffer_0_value_V
  store i96 %tmp_value_V_2, i96* %buffer_1_value_V
  br label %0

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str26) nounwind
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str26)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V_2 = call i96 @_ssdm_op_Read.ap_fifo.volatile.i96P(i96* %slice_stream_V_value_V)
  %tmp = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %i_0_i_i, i32 1, i32 10)
  %icmp = icmp eq i10 %tmp, 0
  br i1 %icmp, label %._crit_edge.i.i, label %.preheader.i.i.preheader.0

.preheader.i.i.preheader.0:                       ; preds = %2
  %buffer_1_value_V_lo_1 = load i96* %buffer_1_value_V
  %buffer_0_value_V_lo = load i96* %buffer_0_value_V
  %tmp_2 = trunc i96 %buffer_0_value_V_lo to i32
  %tmp_5 = trunc i96 %buffer_1_value_V_lo_1 to i32
  %tmp_6 = trunc i96 %tmp_value_V_2 to i32
  %p_Result_5_1 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %buffer_0_value_V_lo, i32 32, i32 63)
  %p_Result_5_1_1 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %buffer_1_value_V_lo_1, i32 32, i32 63)
  %p_Result_5_1_2 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %tmp_value_V_2, i32 32, i32 63)
  %p_Result_5_2 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %buffer_0_value_V_lo, i32 64, i32 95)
  %p_Result_5_2_1 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %buffer_1_value_V_lo_1, i32 64, i32 95)
  %p_Result_5_2_2 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %tmp_value_V_2, i32 64, i32 95)
  %tmp_value_V = call i288 @_ssdm_op_BitConcatenate.i288.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32 %p_Result_5_2_2, i32 %p_Result_5_2_1, i32 %p_Result_5_2, i32 %p_Result_5_1_2, i32 %p_Result_5_1_1, i32 %p_Result_5_1, i32 %tmp_6, i32 %tmp_5, i32 %tmp_2)
  call void @_ssdm_op_Write.ap_fifo.volatile.i288P(i288* %out_stream_V_value_V, i288 %tmp_value_V)
  br label %._crit_edge.i.i
}

define internal fastcc void @call_Loop_LB2D_buf_p.1(i32* %in_stream_V_value_V, i64* %slice_stream_V_value_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i64* %slice_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* %in_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i64* %slice_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %buffer_0_value_V = alloca [1918 x i32], align 4
  br label %0

.preheader.exitStub:                              ; preds = %0
  ret void

; <label>:0                                       ; preds = %1, %newFuncRoot
  %row = phi i11 [ 0, %newFuncRoot ], [ %row_1, %1 ]
  %tmp = icmp eq i11 %row, -970
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1078, i64 1078, i64 1078)
  %row_1 = add i11 %row, 1
  br i1 %tmp, label %.preheader.exitStub, label %3

; <label>:1                                       ; preds = %2
  %empty_31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str23, i32 %tmp_8)
  br label %0

; <label>:2                                       ; preds = %._crit_edge, %3
  %col = phi i11 [ 0, %3 ], [ %col_1, %._crit_edge ]
  %tmp_7 = icmp eq i11 %col, -130
  %col_1 = add i11 %col, 1
  br i1 %tmp_7, label %1, label %4

; <label>:3                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str23) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str23)
  %tmp_s = icmp eq i11 %row, 0
  br label %2

._crit_edge:                                      ; preds = %.preheader57, %4
  %buffer_0_value_V_ad = getelementptr [1918 x i32]* %buffer_0_value_V, i64 0, i64 %col_cast
  store i32 %tmp_value_V_3, i32* %buffer_0_value_V_ad, align 4
  %empty_32 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str24, i32 %tmp_9)
  br label %2

; <label>:4                                       ; preds = %2
  %col_cast = zext i11 %col to i64
  %empty_33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1918, i64 1918, i64 1918)
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str24)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V_3 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_stream_V_value_V)
  br i1 %tmp_s, label %._crit_edge, label %.preheader57

.preheader57:                                     ; preds = %4
  %buffer_0_value_V_ad_1 = getelementptr [1918 x i32]* %buffer_0_value_V, i64 0, i64 %col_cast
  %p_Val2_s = load i32* %buffer_0_value_V_ad_1, align 4
  %p_Result_s = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %tmp_value_V_3, i32 %p_Val2_s)
  call void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64* %slice_stream_V_value_V, i64 %p_Result_s)
  br label %._crit_edge
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
  %empty_34 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str23, i32 %tmp_5)
  br label %0

; <label>:2                                       ; preds = %._crit_edge31, %3
  %write_idx_1_1 = phi i64 [ %write_idx_1, %3 ], [ %p_write_idx_1_1, %._crit_edge31 ]
  %col = phi i11 [ 0, %3 ], [ %col_1, %._crit_edge31 ]
  %tmp_2 = icmp eq i11 %col, -128
  %col_1 = add i11 %col, 1
  br i1 %tmp_2, label %1, label %4

; <label>:3                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str23) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str23)
  %tmp_7 = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %row, i32 1, i32 10)
  %icmp = icmp eq i10 %tmp_7, 0
  br label %2

._crit_edge31:                                    ; preds = %branch5, %branch4
  %empty_35 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str36, i32 %tmp_6)
  br label %2

branch4:                                          ; preds = %._crit_edge
  store i32 %tmp_value_V_4, i32* %buffer_0_value_V_ad, align 4
  br label %._crit_edge31

._crit_edge:                                      ; preds = %4, %.preheader56.preheader.critedge.0_ifconv
  %buffer_0_value_V_ad = getelementptr [1920 x i32]* %buffer_0_value_V, i64 0, i64 %col_cast
  %buffer_1_value_V_ad = getelementptr [1920 x i32]* %buffer_1_value_V, i64 0, i64 %col_cast
  %tmp_10 = trunc i64 %p_write_idx_1_1 to i1
  br i1 %tmp_10, label %branch5, label %branch4

; <label>:4                                       ; preds = %2
  %col_cast = zext i11 %col to i64
  %empty_36 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920)
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str36)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_8 = call i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64 %write_idx_1_1, i32 1, i32 63)
  %icmp1 = icmp ne i63 %tmp_8, 0
  %write_idx_1_3 = add i64 %write_idx_1_1, -2
  %p_write_idx_1_1 = select i1 %icmp1, i64 %write_idx_1_3, i64 %write_idx_1_1
  %tmp_value_V_4 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %in_stream_V_value_V)
  br i1 %icmp, label %._crit_edge, label %.preheader56.preheader.critedge.0_ifconv

.preheader56.preheader.critedge.0_ifconv:         ; preds = %4
  %tmp_9 = trunc i64 %p_write_idx_1_1 to i1
  %buffer_0_value_V_ad_2 = getelementptr [1920 x i32]* %buffer_0_value_V, i64 0, i64 %col_cast
  %buffer_1_value_V_ad_1 = getelementptr [1920 x i32]* %buffer_1_value_V, i64 0, i64 %col_cast
  %buffer_1_value_V_lo = load i32* %buffer_1_value_V_ad_1, align 4
  %buffer_0_value_V_lo = load i32* %buffer_0_value_V_ad_2, align 4
  %p_Val2_2_0_phi = select i1 %tmp_9, i32 %buffer_1_value_V_lo, i32 %buffer_0_value_V_lo
  %p_Val2_2_1_phi = select i1 %tmp_9, i32 %buffer_0_value_V_lo, i32 %buffer_1_value_V_lo
  %p_Result_s = call i96 @_ssdm_op_BitConcatenate.i96.i32.i32.i32(i32 %tmp_value_V_4, i32 %p_Val2_2_1_phi, i32 %p_Val2_2_0_phi)
  call void @_ssdm_op_Write.ap_fifo.volatile.i96P(i96* %slice_stream_V_value_V, i96 %p_Result_s)
  br label %._crit_edge

branch5:                                          ; preds = %._crit_edge
  store i32 %tmp_value_V_4, i32* %buffer_1_value_V_ad, align 4
  br label %._crit_edge31
}

define internal fastcc void @call.1(i32* %in_stream_V_value_V, i128* %out_stream_V_value_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i128* %out_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore(i32* %in_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i128* %out_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %slice_stream_V_value = alloca i64, align 8
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([23 x i8]* @slice_stream_OC_V_OC, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i64* %slice_stream_V_value, i64* %slice_stream_V_value)
  call void (...)* @_ssdm_op_SpecInterface(i64* %slice_stream_V_value, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i64* %slice_stream_V_value, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @call_Loop_LB2D_buf_p.1(i32* %in_stream_V_value_V, i64* %slice_stream_V_value)
  call fastcc void @call_Loop_LB2D_shift.1(i64* %slice_stream_V_value, i128* %out_stream_V_value_V)
  ret void
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

define weak void @_ssdm_op_Write.ap_fifo.volatile.i64P(i64*, i64) {
entry:
  %empty = call i64 @_autotb_FifoWrite_i64(i64* %0, i64 %1)
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

define weak void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128*, i128) {
entry:
  %empty = call i128 @_autotb_FifoWrite_i128(i128* %0, i128 %1)
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

define weak i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64*) {
entry:
  %empty = call i64 @_autotb_FifoRead_i64(i64* %0)
  ret i64 %empty
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

define weak i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128*) {
entry:
  %empty = call i128 @_autotb_FifoRead_i128(i128* %0)
  ret i128 %empty
}

define weak { i32, i1 } @_ssdm_op_Read.ap_auto.volatile.i32P.i1P(i32*, i1*) {
entry:
  %empty = load i32* %0
  %empty_37 = load i1* %1
  %mrv_0 = insertvalue { i32, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i1 } %mrv_0, i1 %empty_37, 1
  ret { i32, i1 } %mrv1
}

define weak i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_38 = trunc i64 %empty to i63
  ret i63 %empty_38
}

define weak i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96, i32, i32) nounwind readnone {
entry:
  %empty = call i96 @llvm.part.select.i96(i96 %0, i32 %1, i32 %2)
  %empty_39 = trunc i96 %empty to i32
  ret i32 %empty_39
}

define weak i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_40 = trunc i64 %empty to i32
  ret i32 %empty_40
}

define weak i32 @_ssdm_op_PartSelect.i32.i288.i32.i32(i288, i32, i32) nounwind readnone {
entry:
  %empty = call i288 @llvm.part.select.i288(i288 %0, i32 %1, i32 %2)
  %empty_41 = trunc i288 %empty to i32
  ret i32 %empty_41
}

define weak i31 @_ssdm_op_PartSelect.i31.i288.i32.i32(i288, i32, i32) nounwind readnone {
entry:
  %empty = call i288 @llvm.part.select.i288(i288 %0, i32 %1, i32 %2)
  %empty_42 = trunc i288 %empty to i31
  ret i31 %empty_42
}

define weak i30 @_ssdm_op_PartSelect.i30.i288.i32.i32(i288, i32, i32) nounwind readnone {
entry:
  %empty = call i288 @llvm.part.select.i288(i288 %0, i32 %1, i32 %2)
  %empty_43 = trunc i288 %empty to i30
  ret i30 %empty_43
}

define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_44 = trunc i32 %empty to i29
  ret i29 %empty_44
}

define weak i28 @_ssdm_op_PartSelect.i28.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_45 = trunc i128 %empty to i28
  ret i28 %empty_45
}

define weak i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_46 = trunc i11 %empty to i10
  ret i10 %empty_46
}

declare i1 @_ssdm_op_PartSelect.i1.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i96 @_ssdm_op_BitConcatenate.i96.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_47 = zext i32 %2 to i64
  %empty_48 = shl i64 %empty, 32
  %empty_49 = or i64 %empty_48, %empty_47
  %empty_50 = zext i32 %0 to i96
  %empty_51 = zext i64 %empty_49 to i96
  %empty_52 = shl i96 %empty_50, 64
  %empty_53 = or i96 %empty_52, %empty_51
  ret i96 %empty_53
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %0 to i64
  %empty_54 = zext i32 %1 to i64
  %empty_55 = shl i64 %empty, 32
  %empty_56 = or i64 %empty_55, %empty_54
  ret i64 %empty_56
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone {
entry:
  %empty = zext i31 %0 to i32
  %empty_57 = zext i1 %1 to i32
  %empty_58 = shl i32 %empty, 1
  %empty_59 = or i32 %empty_58, %empty_57
  ret i32 %empty_59
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30, i2) nounwind readnone {
entry:
  %empty = zext i30 %0 to i32
  %empty_60 = zext i2 %1 to i32
  %empty_61 = shl i32 %empty, 2
  %empty_62 = or i32 %empty_61, %empty_60
  ret i32 %empty_62
}

define weak i30 @_ssdm_op_BitConcatenate.i30.i28.i2(i28, i2) nounwind readnone {
entry:
  %empty = zext i28 %0 to i30
  %empty_63 = zext i2 %1 to i30
  %empty_64 = shl i30 %empty, 2
  %empty_65 = or i30 %empty_64, %empty_63
  ret i30 %empty_65
}

define weak i29 @_ssdm_op_BitConcatenate.i29.i28.i1(i28, i1) nounwind readnone {
entry:
  %empty = zext i28 %0 to i29
  %empty_66 = zext i1 %1 to i29
  %empty_67 = shl i29 %empty, 1
  %empty_68 = or i29 %empty_67, %empty_66
  ret i29 %empty_68
}

define weak i288 @_ssdm_op_BitConcatenate.i288.i32.i32.i32.i32.i32.i32.i32.i32.i32(i32, i32, i32, i32, i32, i32, i32, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %7 to i64
  %empty_69 = zext i32 %8 to i64
  %empty_70 = shl i64 %empty, 32
  %empty_71 = or i64 %empty_70, %empty_69
  %empty_72 = zext i32 %6 to i96
  %empty_73 = zext i64 %empty_71 to i96
  %empty_74 = shl i96 %empty_72, 64
  %empty_75 = or i96 %empty_74, %empty_73
  %empty_76 = zext i32 %5 to i128
  %empty_77 = zext i96 %empty_75 to i128
  %empty_78 = shl i128 %empty_76, 96
  %empty_79 = or i128 %empty_78, %empty_77
  %empty_80 = zext i32 %4 to i160
  %empty_81 = zext i128 %empty_79 to i160
  %empty_82 = shl i160 %empty_80, 128
  %empty_83 = or i160 %empty_82, %empty_81
  %empty_84 = zext i32 %3 to i192
  %empty_85 = zext i160 %empty_83 to i192
  %empty_86 = shl i192 %empty_84, 160
  %empty_87 = or i192 %empty_86, %empty_85
  %empty_88 = zext i32 %2 to i224
  %empty_89 = zext i192 %empty_87 to i224
  %empty_90 = shl i224 %empty_88, 192
  %empty_91 = or i224 %empty_90, %empty_89
  %empty_92 = zext i32 %1 to i256
  %empty_93 = zext i224 %empty_91 to i256
  %empty_94 = shl i256 %empty_92, 224
  %empty_95 = or i256 %empty_94, %empty_93
  %empty_96 = zext i32 %0 to i288
  %empty_97 = zext i256 %empty_95 to i288
  %empty_98 = shl i288 %empty_96, 256
  %empty_99 = or i288 %empty_98, %empty_97
  ret i288 %empty_99
}

define weak i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32, i32, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %2 to i64
  %empty_100 = zext i32 %3 to i64
  %empty_101 = shl i64 %empty, 32
  %empty_102 = or i64 %empty_101, %empty_100
  %empty_103 = zext i32 %1 to i96
  %empty_104 = zext i64 %empty_102 to i96
  %empty_105 = shl i96 %empty_103, 64
  %empty_106 = or i96 %empty_105, %empty_104
  %empty_107 = zext i32 %0 to i128
  %empty_108 = zext i96 %empty_106 to i128
  %empty_109 = shl i128 %empty_107, 96
  %empty_110 = or i128 %empty_109, %empty_108
  ret i128 %empty_110
}

declare void @_ssdm_SpecDependence(...) nounwind

declare i96 @_autotb_FifoWrite_i96(i96*, i96)

declare i64 @_autotb_FifoWrite_i64(i64*, i64)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i288 @_autotb_FifoWrite_i288(i288*, i288)

declare i128 @_autotb_FifoWrite_i128(i128*, i128)

declare i96 @_autotb_FifoRead_i96(i96*)

declare i64 @_autotb_FifoRead_i64(i64*)

declare i32 @_autotb_FifoRead_i32(i32*)

declare i288 @_autotb_FifoRead_i288(i288*)

declare i128 @_autotb_FifoRead_i128(i128*)

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define internal fastcc void @Loop_3_proc(i32* %p_p2_mul1_stencil_stream_V_value_V, i32* %hw_output_V_value_V, i1* %hw_output_V_last_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_p2_mul1_stencil_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_p2_mul1_stencil_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader

.exitStub:                                        ; preds = %.preheader
  ret void

.preheader37:                                     ; preds = %.preheader
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2064609, i64 2064609, i64 2064609)
  %exitcond7 = icmp eq i11 %p_hw_output_x_scan_2, -131
  %p_hw_output_x_scan_s = select i1 %exitcond7, i11 0, i11 %p_hw_output_x_scan_2
  %p_hw_output_y_scan_2 = add i11 %p_hw_output_y_scan_1, 1
  %tmp_7_mid1 = icmp eq i11 %p_hw_output_y_scan_2, -972
  %tmp_1 = icmp eq i11 %p_hw_output_y_scan_1, -972
  %tmp_7_mid2 = select i1 %exitcond7, i1 %tmp_7_mid1, i1 %tmp_1
  %p_hw_output_y_scan_s = select i1 %exitcond7, i11 %p_hw_output_y_scan_2, i11 %p_hw_output_y_scan_1
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V_5 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %p_p2_mul1_stencil_stream_V_value_V)
  %tmp_3 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %tmp_value_V_5, i32 3, i32 31)
  %p_405 = sext i29 %tmp_3 to i32
  %tmp_2 = icmp eq i11 %p_hw_output_x_scan_s, -132
  %tmp_last_V = and i1 %tmp_2, %tmp_7_mid2
  call void @_ssdm_op_Write.ap_auto.volatile.i32P.i1P(i32* %hw_output_V_value_V, i1* %hw_output_V_last_V, i32 %p_405, i1 %tmp_last_V)
  %empty_111 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_s)
  %p_hw_output_x_scan_1 = add i11 %p_hw_output_x_scan_s, 1
  br label %.preheader

.preheader:                                       ; preds = %newFuncRoot, %.preheader37
  %indvar_flatten = phi i21 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader37 ]
  %p_hw_output_y_scan_1 = phi i11 [ 0, %newFuncRoot ], [ %p_hw_output_y_scan_s, %.preheader37 ]
  %p_hw_output_x_scan_2 = phi i11 [ 0, %newFuncRoot ], [ %p_hw_output_x_scan_1, %.preheader37 ]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -32543
  %indvar_flatten_next = add i21 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.exitStub, label %.preheader37
}

define internal fastcc void @Loop_2_proc(i128* %p_mul_stencil_stream_V_value_V, i32* %p_p2_mul1_stencil_stream_V_value_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_p2_mul1_stencil_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i128* %p_mul_stencil_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_p2_mul1_stencil_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i128* %p_mul_stencil_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader38

.preheader37.exitStub:                            ; preds = %.preheader38
  ret void

.preheader38.preheader:                           ; preds = %.preheader38
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2064609, i64 2064609, i64 2064609)
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V = call i128 @_ssdm_op_Read.ap_fifo.volatile.i128P(i128* %p_mul_stencil_stream_V_value_V)
  %tmp_6 = call i28 @_ssdm_op_PartSelect.i28.i128.i32.i32(i128 %tmp_value_V, i32 4, i32 31)
  %p_382_cast_cast = sext i28 %tmp_6 to i29
  %tmp_3 = call i28 @_ssdm_op_PartSelect.i28.i128.i32.i32(i128 %tmp_value_V, i32 36, i32 63)
  %p_390 = call i30 @_ssdm_op_BitConcatenate.i30.i28.i2(i28 %tmp_3, i2 0)
  %p_390_cast = sext i30 %p_390 to i31
  %tmp_4 = call i28 @_ssdm_op_PartSelect.i28.i128.i32.i32(i128 %tmp_value_V, i32 68, i32 95)
  %p_396 = call i29 @_ssdm_op_BitConcatenate.i29.i28.i1(i28 %tmp_4, i1 false)
  %p_396_cast_cast = sext i29 %p_396 to i31
  %tmp_2 = call i28 @_ssdm_op_PartSelect.i28.i128.i32.i32(i128 %tmp_value_V, i32 100, i32 127)
  %p_400_cast_cast = sext i28 %tmp_2 to i29
  %tmp = add i31 %p_396_cast_cast, %p_390_cast
  %tmp1 = add i29 %p_400_cast_cast, %p_382_cast_cast
  %tmp1_cast = sext i29 %tmp1 to i31
  %p_403 = add i31 %tmp, %tmp1_cast
  %tmp_value_V_7 = sext i31 %p_403 to i32
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %p_p2_mul1_stencil_stream_V_value_V, i32 %tmp_value_V_7)
  %empty_112 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_1)
  br label %.preheader38

.preheader38:                                     ; preds = %newFuncRoot, %.preheader38.preheader
  %indvar_flatten = phi i21 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader38.preheader ]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -32543
  %indvar_flatten_next = add i21 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader37.exitStub, label %.preheader38.preheader
}

define internal fastcc void @Loop_1_proc(i288* %p_hw_input_stencil_stream_V_value_V, i32* %p_mul_stencil_update_stream_V_value_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_mul_stencil_update_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i288* %p_hw_input_stencil_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_mul_stencil_update_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i288* %p_hw_input_stencil_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader39

.exitStub:                                        ; preds = %.preheader39
  ret void

.preheader39.preheader:                           ; preds = %.preheader39
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2067604, i64 2067604, i64 2067604)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V = call i288 @_ssdm_op_Read.ap_fifo.volatile.i288P(i288* %p_hw_input_stencil_stream_V_value_V)
  %p_327 = trunc i288 %tmp_value_V to i32
  %p_339 = call i32 @_ssdm_op_PartSelect.i32.i288.i32.i32(i288 %tmp_value_V, i32 64, i32 95)
  %p_363 = call i32 @_ssdm_op_PartSelect.i32.i288.i32.i32(i288 %tmp_value_V, i32 192, i32 223)
  %p_375 = call i32 @_ssdm_op_PartSelect.i32.i288.i32.i32(i288 %tmp_value_V, i32 256, i32 287)
  %tmp_5 = call i31 @_ssdm_op_PartSelect.i31.i288.i32.i32(i288 %tmp_value_V, i32 32, i32 62)
  %p_336 = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp_5, i1 false)
  %tmp_6 = call i31 @_ssdm_op_PartSelect.i31.i288.i32.i32(i288 %tmp_value_V, i32 96, i32 126)
  %p_348 = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp_6, i1 false)
  %tmp_7 = call i30 @_ssdm_op_PartSelect.i30.i288.i32.i32(i288 %tmp_value_V, i32 128, i32 157)
  %p_354 = call i32 @_ssdm_op_BitConcatenate.i32.i30.i2(i30 %tmp_7, i2 0)
  %tmp_8 = call i31 @_ssdm_op_PartSelect.i31.i288.i32.i32(i288 %tmp_value_V, i32 160, i32 190)
  %p_360 = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp_8, i1 false)
  %tmp_9 = call i31 @_ssdm_op_PartSelect.i31.i288.i32.i32(i288 %tmp_value_V, i32 224, i32 254)
  %p_372 = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp_9, i1 false)
  %tmp2 = add i32 %p_327, %p_336
  %tmp3 = add i32 %p_348, %p_339
  %tmp1 = add i32 %tmp2, %tmp3
  %tmp5 = add i32 %p_360, %p_354
  %tmp7 = add i32 %p_375, %p_372
  %tmp6 = add i32 %p_363, %tmp7
  %tmp4 = add i32 %tmp5, %tmp6
  %p_379 = add nsw i32 %tmp1, %tmp4
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %p_mul_stencil_update_stream_V_value_V, i32 %p_379)
  %empty_113 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp)
  br label %.preheader39

.preheader39:                                     ; preds = %newFuncRoot, %.preheader39.preheader
  %indvar_flatten = phi i21 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader39.preheader ]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -29548
  %indvar_flatten_next = add i21 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.exitStub, label %.preheader39.preheader
}

!opencl.kernels = !{!0, !7, !13, !13, !16, !16, !22, !16, !16, !25, !16, !16, !16, !16, !16, !16, !16, !16, !16, !27, !29, !35, !38, !38, !44, !47, !47, !16, !16, !29, !16, !48, !16, !29, !51, !51, !51, !16, !16, !16, !16, !16, !29, !16, !29, !35, !54, !54, !56, !56, !56, !16, !16, !16, !16, !16, !16, !16, !16, !16, !58, !58, !58, !58, !58, !61, !61, !63, !65, !67, !67, !16, !16, !16, !16, !68, !70, !70, !16, !72, !75, !77, !79, !80, !51, !27, !81, !81, !29, !35, !82, !82, !16, !16, !16, !16, !16, !16, !16, !16, !16, !84, !13, !13, !85, !29, !29, !16, !86, !29, !35, !88, !88, !90, !90, !90, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !92, !95, !95, !95, !95, !95, !97, !97, !99, !101, !103, !103, !16, !16, !16, !16, !104, !106, !106, !16, !107, !109, !111, !113, !80, !27, !81, !81, !29, !35, !114, !114, !16, !16, !16, !16, !16, !16, !16, !16, !16, !116, !16, !16, !16, !16}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!117}

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
!54 = metadata !{null, metadata !39, metadata !40, metadata !55, metadata !42, metadata !43, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<128, false>*", metadata !"int", metadata !"int"}
!56 = metadata !{null, metadata !8, metadata !9, metadata !57, metadata !11, metadata !53, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<128, false> &"}
!58 = metadata !{null, metadata !1, metadata !2, metadata !59, metadata !4, metadata !60, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"stream<PackedStencil<int, 1UL, 1UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<int, 2UL, 2UL, 1UL, 1UL> > &"}
!60 = metadata !{metadata !"kernel_arg_name", metadata !"in_stream", metadata !"out_stream"}
!61 = metadata !{null, metadata !1, metadata !2, metadata !62, metadata !4, metadata !60, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"stream<PackedStencil<int, 1UL, 2UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<int, 2UL, 2UL, 1UL, 1UL> > &"}
!63 = metadata !{null, metadata !8, metadata !9, metadata !64, metadata !11, metadata !12, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<int, 2, 2, 1, 1> &"}
!65 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !15, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!67 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !53, metadata !6}
!68 = metadata !{null, metadata !8, metadata !9, metadata !69, metadata !11, metadata !15, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!70 = metadata !{null, metadata !8, metadata !9, metadata !69, metadata !11, metadata !71, metadata !6}
!71 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!72 = metadata !{null, metadata !8, metadata !9, metadata !73, metadata !11, metadata !74, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<int, 1, 2, 1, 1> &"}
!74 = metadata !{metadata !"kernel_arg_name", metadata !""}
!75 = metadata !{null, metadata !8, metadata !9, metadata !76, metadata !11, metadata !24, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<64> &"}
!77 = metadata !{null, metadata !8, metadata !9, metadata !78, metadata !11, metadata !74, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<int, 1, 1, 1, 1> &"}
!79 = metadata !{null, metadata !8, metadata !9, metadata !73, metadata !11, metadata !12, metadata !6}
!80 = metadata !{null, metadata !8, metadata !9, metadata !52, metadata !11, metadata !15, metadata !6}
!81 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !71, metadata !6}
!82 = metadata !{null, metadata !39, metadata !40, metadata !83, metadata !42, metadata !43, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!84 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !46, metadata !6}
!85 = metadata !{null, metadata !8, metadata !9, metadata !78, metadata !11, metadata !12, metadata !6}
!86 = metadata !{null, metadata !1, metadata !2, metadata !87, metadata !4, metadata !50, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<32> &", metadata !"uint &"}
!88 = metadata !{null, metadata !39, metadata !40, metadata !89, metadata !42, metadata !43, metadata !6}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<288, false>*", metadata !"int", metadata !"int"}
!90 = metadata !{null, metadata !8, metadata !9, metadata !91, metadata !11, metadata !53, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<288, false> &"}
!92 = metadata !{null, metadata !1, metadata !2, metadata !93, metadata !4, metadata !94, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"stream<AxiPackedStencil<uint, 1UL, 1UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uint, 3UL, 3UL, 1UL, 1UL> > &"}
!94 = metadata !{metadata !"kernel_arg_name", metadata !"in_axi_stream", metadata !"out_stream"}
!95 = metadata !{null, metadata !1, metadata !2, metadata !96, metadata !4, metadata !60, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"stream<PackedStencil<uint, 1UL, 1UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uint, 3UL, 3UL, 1UL, 1UL> > &"}
!97 = metadata !{null, metadata !1, metadata !2, metadata !98, metadata !4, metadata !60, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"stream<PackedStencil<uint, 1UL, 3UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uint, 3UL, 3UL, 1UL, 1UL> > &"}
!99 = metadata !{null, metadata !8, metadata !9, metadata !100, metadata !11, metadata !12, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uint, 3, 3, 1, 1> &"}
!101 = metadata !{null, metadata !8, metadata !9, metadata !102, metadata !11, metadata !15, metadata !6}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<96, false> &"}
!103 = metadata !{null, metadata !8, metadata !9, metadata !102, metadata !11, metadata !53, metadata !6}
!104 = metadata !{null, metadata !8, metadata !9, metadata !105, metadata !11, metadata !15, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<96, false> &"}
!106 = metadata !{null, metadata !8, metadata !9, metadata !105, metadata !11, metadata !71, metadata !6}
!107 = metadata !{null, metadata !8, metadata !9, metadata !108, metadata !11, metadata !74, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uint, 1, 3, 1, 1> &"}
!109 = metadata !{null, metadata !8, metadata !9, metadata !110, metadata !11, metadata !24, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<96> &"}
!111 = metadata !{null, metadata !8, metadata !9, metadata !112, metadata !11, metadata !74, metadata !6}
!112 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uint, 1, 1, 1, 1> &"}
!113 = metadata !{null, metadata !8, metadata !9, metadata !108, metadata !11, metadata !12, metadata !6}
!114 = metadata !{null, metadata !39, metadata !40, metadata !115, metadata !42, metadata !43, metadata !6}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<96, false>*", metadata !"int", metadata !"int"}
!116 = metadata !{null, metadata !8, metadata !9, metadata !112, metadata !11, metadata !12, metadata !6}
!117 = metadata !{metadata !118, [1 x i32]* @llvm_global_ctors_0}
!118 = metadata !{metadata !119}
!119 = metadata !{i32 0, i32 31, metadata !120}
!120 = metadata !{metadata !121}
!121 = metadata !{metadata !"llvm.global_ctors.0", metadata !122, metadata !"", i32 0, i32 31}
!122 = metadata !{metadata !123}
!123 = metadata !{i32 0, i32 0, i32 1}
!124 = metadata !{metadata !125}
!125 = metadata !{i32 0, i32 31, metadata !126}
!126 = metadata !{metadata !127}
!127 = metadata !{metadata !"hw_input.V.value.V", metadata !122, metadata !"uint32", i32 0, i32 31}
!128 = metadata !{metadata !129}
!129 = metadata !{i32 0, i32 0, metadata !130}
!130 = metadata !{metadata !131}
!131 = metadata !{metadata !"hw_input.V.last.V", metadata !122, metadata !"uint1", i32 0, i32 0}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 0, i32 31, metadata !134}
!134 = metadata !{metadata !135}
!135 = metadata !{metadata !"hw_output.V.value.V", metadata !122, metadata !"uint32", i32 0, i32 31}
!136 = metadata !{metadata !137}
!137 = metadata !{i32 0, i32 0, metadata !138}
!138 = metadata !{metadata !139}
!139 = metadata !{metadata !"hw_output.V.last.V", metadata !122, metadata !"uint1", i32 0, i32 0}
