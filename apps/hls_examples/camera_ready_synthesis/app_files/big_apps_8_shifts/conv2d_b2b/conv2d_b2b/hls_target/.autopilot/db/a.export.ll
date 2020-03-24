; ModuleID = '/home/dhuff/Halide-HLS/apps/hls_examples/camera_ready_synthesis/app_files/big_apps_8_shifts/conv2d_b2b/conv2d_b2b/hls_target/.autopilot/db/a.o.2.bc'
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
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_4\00", align 1
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_6\00", align 1
@p_str36 = private unnamed_addr constant [12 x i8] c"hls_label_8\00", align 1
@p_str35 = private unnamed_addr constant [12 x i8] c"hls_label_7\00", align 1
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_5\00", align 1
@p_str26 = private unnamed_addr constant [14 x i8] c"LB1D_shiftreg\00", align 1
@p_str25 = private unnamed_addr constant [11 x i8] c"LB2D_shift\00", align 1
@p_str24 = private unnamed_addr constant [13 x i8] c"hls_label_17\00", align 1
@p_str23 = private unnamed_addr constant [9 x i8] c"LB2D_buf\00", align 1
@p_str22 = private unnamed_addr constant [11 x i8] c"LB_3D_pass\00", align 1
@p_str21 = private unnamed_addr constant [11 x i8] c"LB_4D_pass\00", align 1
@p_str2 = private unnamed_addr constant [9 x i8] c"FIFO_SRL\00", align 1
@p_str1 = private unnamed_addr constant [6 x i8] c"ap_hs\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i72 @llvm.part.select.i72(i72, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

declare i128 @llvm.part.select.i128(i128, i32, i32) nounwind readnone

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
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str35)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %empty_21 = call { i8, i1 } @_ssdm_op_Read.ap_auto.volatile.i8P.i1P(i8* %in_axi_stream_V_value_V, i1* %in_axi_stream_V_last_V)
  %tmp_value_V = extractvalue { i8, i1 } %empty_21, 0
  call void @_ssdm_op_Write.ap_fifo.volatile.i8P(i8* %in_stream_V_value_V, i8 %tmp_value_V)
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str35, i32 %tmp)
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
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %hw_input_V_value_V), !map !134
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %hw_input_V_last_V), !map !138
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %hw_output_V_value_V), !map !142
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %hw_output_V_last_V), !map !146
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @hls_target_str) nounwind
  %p_hw_input_stencil_st = alloca i72, align 8
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([35 x i8]* @p_hw_input_stencil_st, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i72* %p_hw_input_stencil_st, i72* %p_hw_input_stencil_st)
  call void (...)* @_ssdm_op_SpecInterface(i72* %p_hw_input_stencil_st, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i72* %p_hw_input_stencil_st, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_mul_stencil_update_1 = alloca i32, align 4
  %empty_23 = call i32 (...)* @_ssdm_op_SpecChannel([37 x i8]* @p_mul_stencil_update_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i32* %p_mul_stencil_update_1, i32* %p_mul_stencil_update_1)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_mul_stencil_update_1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_mul_stencil_update_1, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_mul_stencil_stream_s = alloca i128, align 8
  %empty_24 = call i32 (...)* @_ssdm_op_SpecChannel([30 x i8]* @p_mul_stencil_stream_s, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i128* %p_mul_stencil_stream_s, i128* %p_mul_stencil_stream_s)
  call void (...)* @_ssdm_op_SpecInterface(i128* %p_mul_stencil_stream_s, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i128* %p_mul_stencil_stream_s, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_p2_mul1_stencil_str = alloca i32, align 4
  %empty_25 = call i32 (...)* @_ssdm_op_SpecChannel([34 x i8]* @p_p2_mul1_stencil_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 1, i32 1, i32* %p_p2_mul1_stencil_str, i32* %p_p2_mul1_stencil_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_p2_mul1_stencil_str, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_p2_mul1_stencil_str, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %hw_input_V_value_V, i1* %hw_input_V_last_V, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %hw_output_V_value_V, i1* %hw_output_V_last_V, [6 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call fastcc void @linebuffer.1(i8* %hw_input_V_value_V, i1* %hw_input_V_last_V, i72* %p_hw_input_stencil_st)
  call fastcc void @Loop_1_proc(i72* %p_hw_input_stencil_st, i32* %p_mul_stencil_update_1)
  call fastcc void @linebuffer.2(i32* %p_mul_stencil_update_1, i128* %p_mul_stencil_stream_s)
  call fastcc void @Loop_2_proc(i128* %p_mul_stencil_stream_s, i32* %p_p2_mul1_stencil_str)
  call fastcc void @Loop_3_proc(i32* %p_p2_mul1_stencil_str, i8* %hw_output_V_value_V, i1* %hw_output_V_last_V)
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
  %empty_26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str25, i32 %tmp_s)
  br label %.preheader

; <label>:0                                       ; preds = %._crit_edge.i.i, %1
  %i_0_i_i = phi i11 [ 0, %1 ], [ %i, %._crit_edge.i.i ]
  %tmp_8 = icmp eq i11 %i_0_i_i, -130
  %empty_27 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1918, i64 1918, i64 1918)
  %i = add i11 %i_0_i_i, 1
  br i1 %tmp_8, label %"linebuffer_1D<1918ul, 2ul, 1ul, 1ul, 1ul, 2ul, int>.exit", label %.critedge.i.i

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str25) nounwind
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str25)
  br label %0

._crit_edge.i.i:                                  ; preds = %.preheader.i.i.preheader.0, %.critedge.i.i
  %empty_28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str26, i32 %tmp_1)
  store i64 %tmp_value_V_1, i64* %buffer_0_value_V
  br label %0

.critedge.i.i:                                    ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str26) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str26)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V_1 = call i64 @_ssdm_op_Read.ap_fifo.volatile.i64P(i64* %slice_stream_V_value_V)
  %tmp_9 = icmp eq i11 %i_0_i_i, 0
  br i1 %tmp_9, label %._crit_edge.i.i, label %.preheader.i.i.preheader.0

.preheader.i.i.preheader.0:                       ; preds = %.critedge.i.i
  %buffer_0_value_V_lo = load i64* %buffer_0_value_V
  %tmp = trunc i64 %buffer_0_value_V_lo to i32
  %tmp_2 = trunc i64 %tmp_value_V_1 to i32
  %p_Result_11_1 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %buffer_0_value_V_lo, i32 32, i32 63)
  %p_Result_11_1_1 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %tmp_value_V_1, i32 32, i32 63)
  %tmp_value_V = call i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32 %p_Result_11_1_1, i32 %p_Result_11_1, i32 %tmp_2, i32 %tmp)
  call void @_ssdm_op_Write.ap_fifo.volatile.i128P(i128* %out_stream_V_value_V, i128 %tmp_value_V)
  br label %._crit_edge.i.i
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
  %empty_29 = call i32 (...)* @_ssdm_op_SpecRegionEnd([11 x i8]* @p_str25, i32 %tmp_7)
  br label %.preheader

; <label>:0                                       ; preds = %._crit_edge.i.i, %1
  %i_0_i_i = phi i11 [ 0, %1 ], [ %i, %._crit_edge.i.i ]
  %tmp_3 = icmp eq i11 %i_0_i_i, -128
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920)
  %i = add i11 %i_0_i_i, 1
  br i1 %tmp_3, label %"linebuffer_1D<1920ul, 3ul, 1ul, 1ul, 1ul, 3ul, unsigned char>.exit", label %2

; <label>:1                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([11 x i8]* @p_str25) nounwind
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([11 x i8]* @p_str25)
  br label %0

._crit_edge.i.i:                                  ; preds = %2, %.preheader.i.i.preheader.0
  %buffer_1_value_V_lo = load i24* %buffer_1_value_V
  %empty_31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str26, i32 %tmp_9)
  store i24 %buffer_1_value_V_lo, i24* %buffer_0_value_V
  store i24 %tmp_value_V_2, i24* %buffer_1_value_V
  br label %0

; <label>:2                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str26) nounwind
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str26)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V_2 = call i24 @_ssdm_op_Read.ap_fifo.volatile.i24P(i24* %slice_stream_V_value_V)
  %tmp = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %i_0_i_i, i32 1, i32 10)
  %icmp = icmp eq i10 %tmp, 0
  br i1 %icmp, label %._crit_edge.i.i, label %.preheader.i.i.preheader.0

.preheader.i.i.preheader.0:                       ; preds = %2
  %buffer_1_value_V_lo_1 = load i24* %buffer_1_value_V
  %buffer_0_value_V_lo = load i24* %buffer_0_value_V
  %tmp_4 = trunc i24 %buffer_0_value_V_lo to i8
  %tmp_5 = trunc i24 %buffer_1_value_V_lo_1 to i8
  %tmp_6 = trunc i24 %tmp_value_V_2 to i8
  %p_Result_5_1 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %buffer_0_value_V_lo, i32 8, i32 15)
  %p_Result_5_1_1 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %buffer_1_value_V_lo_1, i32 8, i32 15)
  %p_Result_5_1_2 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %tmp_value_V_2, i32 8, i32 15)
  %p_Result_5_2 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %buffer_0_value_V_lo, i32 16, i32 23)
  %p_Result_5_2_1 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %buffer_1_value_V_lo_1, i32 16, i32 23)
  %p_Result_5_2_2 = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %tmp_value_V_2, i32 16, i32 23)
  %tmp_value_V = call i72 @_ssdm_op_BitConcatenate.i72.i8.i8.i8.i8.i8.i8.i8.i8.i8(i8 %p_Result_5_2_2, i8 %p_Result_5_2_1, i8 %p_Result_5_2, i8 %p_Result_5_1_2, i8 %p_Result_5_1_1, i8 %p_Result_5_1, i8 %tmp_6, i8 %tmp_5, i8 %tmp_4)
  call void @_ssdm_op_Write.ap_fifo.volatile.i72P(i72* %out_stream_V_value_V, i72 %tmp_value_V)
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
  %empty_32 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str23, i32 %tmp_2)
  br label %0

; <label>:2                                       ; preds = %._crit_edge, %3
  %col = phi i11 [ 0, %3 ], [ %col_1, %._crit_edge ]
  %tmp_7 = icmp eq i11 %col, -130
  %col_1 = add i11 %col, 1
  br i1 %tmp_7, label %1, label %4

; <label>:3                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str23) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str23)
  %tmp_s = icmp eq i11 %row, 0
  br label %2

._crit_edge:                                      ; preds = %.preheader57, %4
  %buffer_0_value_V_ad = getelementptr [1918 x i32]* %buffer_0_value_V, i64 0, i64 %col_cast
  store i32 %tmp_value_V_3, i32* %buffer_0_value_V_ad, align 4
  %empty_33 = call i32 (...)* @_ssdm_op_SpecRegionEnd([13 x i8]* @p_str24, i32 %tmp_3)
  br label %2

; <label>:4                                       ; preds = %2
  %col_cast = zext i11 %col to i64
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1918, i64 1918, i64 1918)
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([13 x i8]* @p_str24)
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
  %empty_35 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str23, i32 %tmp_6)
  br label %0

; <label>:2                                       ; preds = %._crit_edge31, %3
  %write_idx_1_1 = phi i64 [ %write_idx_1, %3 ], [ %p_write_idx_1_1, %._crit_edge31 ]
  %col = phi i11 [ 0, %3 ], [ %col_1, %._crit_edge31 ]
  %tmp_2 = icmp eq i11 %col, -128
  %col_1 = add i11 %col, 1
  br i1 %tmp_2, label %1, label %4

; <label>:3                                       ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str23) nounwind
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str23)
  %tmp_7 = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %row, i32 1, i32 10)
  %icmp = icmp eq i10 %tmp_7, 0
  br label %2

._crit_edge31:                                    ; preds = %branch5, %branch4
  %empty_36 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str36, i32 %tmp_8)
  br label %2

branch4:                                          ; preds = %._crit_edge
  store i8 %tmp_value_V_4, i8* %buffer_0_value_V_ad, align 1
  br label %._crit_edge31

._crit_edge:                                      ; preds = %4, %.preheader56.preheader.critedge.0_ifconv
  %buffer_0_value_V_ad = getelementptr [1920 x i8]* %buffer_0_value_V, i64 0, i64 %col_cast
  %buffer_1_value_V_ad = getelementptr [1920 x i8]* %buffer_1_value_V, i64 0, i64 %col_cast
  %tmp_11 = trunc i64 %p_write_idx_1_1 to i1
  br i1 %tmp_11, label %branch5, label %branch4

; <label>:4                                       ; preds = %2
  %col_cast = zext i11 %col to i64
  %empty_37 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1920, i64 1920, i64 1920)
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str36)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_9 = call i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64 %write_idx_1_1, i32 1, i32 63)
  %icmp1 = icmp ne i63 %tmp_9, 0
  %write_idx_1_3 = add i64 %write_idx_1_1, -2
  %p_write_idx_1_1 = select i1 %icmp1, i64 %write_idx_1_3, i64 %write_idx_1_1
  %tmp_value_V_4 = call i8 @_ssdm_op_Read.ap_fifo.volatile.i8P(i8* %in_stream_V_value_V)
  br i1 %icmp, label %._crit_edge, label %.preheader56.preheader.critedge.0_ifconv

.preheader56.preheader.critedge.0_ifconv:         ; preds = %4
  %tmp_10 = trunc i64 %p_write_idx_1_1 to i1
  %buffer_0_value_V_ad_2 = getelementptr [1920 x i8]* %buffer_0_value_V, i64 0, i64 %col_cast
  %buffer_1_value_V_ad_1 = getelementptr [1920 x i8]* %buffer_1_value_V, i64 0, i64 %col_cast
  %buffer_1_value_V_lo = load i8* %buffer_1_value_V_ad_1, align 1
  %buffer_0_value_V_lo = load i8* %buffer_0_value_V_ad_2, align 1
  %p_Val2_2_0_phi = select i1 %tmp_10, i8 %buffer_1_value_V_lo, i8 %buffer_0_value_V_lo
  %p_Val2_2_1_phi = select i1 %tmp_10, i8 %buffer_0_value_V_lo, i8 %buffer_1_value_V_lo
  %p_Result_s = call i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8 %tmp_value_V_4, i8 %p_Val2_2_1_phi, i8 %p_Val2_2_0_phi)
  call void @_ssdm_op_Write.ap_fifo.volatile.i24P(i24* %slice_stream_V_value_V, i24 %p_Result_s)
  br label %._crit_edge

branch5:                                          ; preds = %._crit_edge
  store i8 %tmp_value_V_4, i8* %buffer_1_value_V_ad, align 1
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
  %empty_38 = load i1* %1
  %mrv_0 = insertvalue { i8, i1 } undef, i8 %empty, 0
  %mrv1 = insertvalue { i8, i1 } %mrv_0, i1 %empty_38, 1
  ret { i8, i1 } %mrv1
}

define weak i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72, i32, i32) nounwind readnone {
entry:
  %empty = call i72 @llvm.part.select.i72(i72 %0, i32 %1, i32 %2)
  %empty_39 = trunc i72 %empty to i8
  ret i8 %empty_39
}

define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_40 = trunc i24 %empty to i8
  ret i8 %empty_40
}

define weak i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72, i32, i32) nounwind readnone {
entry:
  %empty = call i72 @llvm.part.select.i72(i72 %0, i32 %1, i32 %2)
  %empty_41 = trunc i72 %empty to i7
  ret i7 %empty_41
}

define weak i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_42 = trunc i64 %empty to i63
  ret i63 %empty_42
}

define weak i6 @_ssdm_op_PartSelect.i6.i72.i32.i32(i72, i32, i32) nounwind readnone {
entry:
  %empty = call i72 @llvm.part.select.i72(i72 %0, i32 %1, i32 %2)
  %empty_43 = trunc i72 %empty to i6
  ret i6 %empty_43
}

define weak i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_44 = trunc i32 %empty to i5
  ret i5 %empty_44
}

define weak i4 @_ssdm_op_PartSelect.i4.i128.i32.i32(i128, i32, i32) nounwind readnone {
entry:
  %empty = call i128 @llvm.part.select.i128(i128 %0, i32 %1, i32 %2)
  %empty_45 = trunc i128 %empty to i4
  ret i4 %empty_45
}

define weak i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_46 = trunc i64 %empty to i32
  ret i32 %empty_46
}

define weak i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_47 = trunc i11 %empty to i10
  ret i10 %empty_47
}

declare i1 @_ssdm_op_PartSelect.i1.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone {
entry:
  %empty = zext i7 %0 to i8
  %empty_48 = zext i1 %1 to i8
  %empty_49 = shl i8 %empty, 1
  %empty_50 = or i8 %empty_49, %empty_48
  ret i8 %empty_50
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6, i2) nounwind readnone {
entry:
  %empty = zext i6 %0 to i8
  %empty_51 = zext i2 %1 to i8
  %empty_52 = shl i8 %empty, 2
  %empty_53 = or i8 %empty_52, %empty_51
  ret i8 %empty_53
}

define weak i72 @_ssdm_op_BitConcatenate.i72.i8.i8.i8.i8.i8.i8.i8.i8.i8(i8, i8, i8, i8, i8, i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %7 to i16
  %empty_54 = zext i8 %8 to i16
  %empty_55 = shl i16 %empty, 8
  %empty_56 = or i16 %empty_55, %empty_54
  %empty_57 = zext i8 %6 to i24
  %empty_58 = zext i16 %empty_56 to i24
  %empty_59 = shl i24 %empty_57, 16
  %empty_60 = or i24 %empty_59, %empty_58
  %empty_61 = zext i8 %5 to i32
  %empty_62 = zext i24 %empty_60 to i32
  %empty_63 = shl i32 %empty_61, 24
  %empty_64 = or i32 %empty_63, %empty_62
  %empty_65 = zext i8 %4 to i40
  %empty_66 = zext i32 %empty_64 to i40
  %empty_67 = shl i40 %empty_65, 32
  %empty_68 = or i40 %empty_67, %empty_66
  %empty_69 = zext i8 %3 to i48
  %empty_70 = zext i40 %empty_68 to i48
  %empty_71 = shl i48 %empty_69, 40
  %empty_72 = or i48 %empty_71, %empty_70
  %empty_73 = zext i8 %2 to i56
  %empty_74 = zext i48 %empty_72 to i56
  %empty_75 = shl i56 %empty_73, 48
  %empty_76 = or i56 %empty_75, %empty_74
  %empty_77 = zext i8 %1 to i64
  %empty_78 = zext i56 %empty_76 to i64
  %empty_79 = shl i64 %empty_77, 56
  %empty_80 = or i64 %empty_79, %empty_78
  %empty_81 = zext i8 %0 to i72
  %empty_82 = zext i64 %empty_80 to i72
  %empty_83 = shl i72 %empty_81, 64
  %empty_84 = or i72 %empty_83, %empty_82
  ret i72 %empty_84
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %0 to i64
  %empty_85 = zext i32 %1 to i64
  %empty_86 = shl i64 %empty, 32
  %empty_87 = or i64 %empty_86, %empty_85
  ret i64 %empty_87
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4, i2) nounwind readnone {
entry:
  %empty = zext i4 %0 to i6
  %empty_88 = zext i2 %1 to i6
  %empty_89 = shl i6 %empty, 2
  %empty_90 = or i6 %empty_89, %empty_88
  ret i6 %empty_90
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5
  %empty_91 = zext i1 %1 to i5
  %empty_92 = shl i5 %empty, 1
  %empty_93 = or i5 %empty_92, %empty_91
  ret i5 %empty_93
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i8.i8.i8(i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %1 to i16
  %empty_94 = zext i8 %2 to i16
  %empty_95 = shl i16 %empty, 8
  %empty_96 = or i16 %empty_95, %empty_94
  %empty_97 = zext i8 %0 to i24
  %empty_98 = zext i16 %empty_96 to i24
  %empty_99 = shl i24 %empty_97, 16
  %empty_100 = or i24 %empty_99, %empty_98
  ret i24 %empty_100
}

define weak i128 @_ssdm_op_BitConcatenate.i128.i32.i32.i32.i32(i32, i32, i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %2 to i64
  %empty_101 = zext i32 %3 to i64
  %empty_102 = shl i64 %empty, 32
  %empty_103 = or i64 %empty_102, %empty_101
  %empty_104 = zext i32 %1 to i96
  %empty_105 = zext i64 %empty_103 to i96
  %empty_106 = shl i96 %empty_104, 64
  %empty_107 = or i96 %empty_106, %empty_105
  %empty_108 = zext i32 %0 to i128
  %empty_109 = zext i96 %empty_107 to i128
  %empty_110 = shl i128 %empty_108, 96
  %empty_111 = or i128 %empty_110, %empty_109
  ret i128 %empty_111
}

declare void @_ssdm_SpecDependence(...) nounwind

declare i8 @_autotb_FifoWrite_i8(i8*, i8)

declare i72 @_autotb_FifoWrite_i72(i72*, i72)

declare i64 @_autotb_FifoWrite_i64(i64*, i64)

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i24 @_autotb_FifoWrite_i24(i24*, i24)

declare i128 @_autotb_FifoWrite_i128(i128*, i128)

declare i8 @_autotb_FifoRead_i8(i8*)

declare i72 @_autotb_FifoRead_i72(i72*)

declare i64 @_autotb_FifoRead_i64(i64*)

declare i32 @_autotb_FifoRead_i32(i32*)

declare i24 @_autotb_FifoRead_i24(i24*)

declare i128 @_autotb_FifoRead_i128(i128*)

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define internal fastcc void @Loop_3_proc(i32* %p_p2_mul1_stencil_stream_V_value_V, i8* %hw_output_V_value_V, i1* %hw_output_V_last_V) {
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
  %tmp_s = icmp eq i11 %p_hw_output_y_scan_1, -972
  %tmp_7_mid2 = select i1 %exitcond7, i1 %tmp_7_mid1, i1 %tmp_s
  %p_hw_output_y_scan_s = select i1 %exitcond7, i11 %p_hw_output_y_scan_2, i11 %p_hw_output_y_scan_1
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V_5 = call i32 @_ssdm_op_Read.ap_fifo.volatile.i32P(i32* %p_p2_mul1_stencil_stream_V_value_V)
  %p_s = call i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32 %tmp_value_V_5, i32 3, i32 7)
  %p_440 = zext i5 %p_s to i8
  %tmp_2 = icmp eq i11 %p_hw_output_x_scan_s, -132
  %tmp_last_V = and i1 %tmp_2, %tmp_7_mid2
  call void @_ssdm_op_Write.ap_auto.volatile.i8P.i1P(i8* %hw_output_V_value_V, i1* %hw_output_V_last_V, i8 %p_440, i1 %tmp_last_V)
  %empty_112 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_5)
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
  %tmp_2 = call i4 @_ssdm_op_PartSelect.i4.i128.i32.i32(i128 %tmp_value_V, i32 4, i32 7)
  %p_406_cast_cast = zext i4 %tmp_2 to i5
  %tmp_3 = call i4 @_ssdm_op_PartSelect.i4.i128.i32.i32(i128 %tmp_value_V, i32 36, i32 39)
  %p_415 = call i6 @_ssdm_op_BitConcatenate.i6.i4.i2(i4 %tmp_3, i2 0)
  %p_416_cast = zext i6 %p_415 to i7
  %tmp_4 = call i4 @_ssdm_op_PartSelect.i4.i128.i32.i32(i128 %tmp_value_V, i32 68, i32 71)
  %p_425 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %tmp_4, i1 false)
  %p_426_cast = zext i5 %p_425 to i7
  %tmp_5 = call i4 @_ssdm_op_PartSelect.i4.i128.i32.i32(i128 %tmp_value_V, i32 100, i32 103)
  %p_436_cast_cast = zext i4 %tmp_5 to i5
  %tmp = add i5 %p_436_cast_cast, %p_406_cast_cast
  %tmp_cast = zext i5 %tmp to i7
  %tmp1 = add i7 %p_426_cast, %p_416_cast
  %p_437 = add i7 %tmp_cast, %tmp1
  %tmp_value_V_7 = zext i7 %p_437 to i32
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %p_p2_mul1_stencil_stream_V_value_V, i32 %tmp_value_V_7)
  %empty_113 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_1)
  br label %.preheader38

.preheader38:                                     ; preds = %newFuncRoot, %.preheader38.preheader
  %indvar_flatten = phi i21 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader38.preheader ]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -32543
  %indvar_flatten_next = add i21 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader37.exitStub, label %.preheader38.preheader
}

define internal fastcc void @Loop_1_proc(i72* %p_hw_input_stencil_stream_V_value_V, i32* %p_mul_stencil_update_stream_V_value_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecMemCore(i32* %p_mul_stencil_update_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecMemCore(i72* %p_hw_input_stencil_stream_V_value_V, [1 x i8]* @p_str, [9 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %p_mul_stencil_update_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i72* %p_hw_input_stencil_stream_V_value_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %.preheader39

.exitStub:                                        ; preds = %.preheader39
  ret void

.preheader39.preheader:                           ; preds = %.preheader39
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2067604, i64 2067604, i64 2067604)
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_value_V = call i72 @_ssdm_op_Read.ap_fifo.volatile.i72P(i72* %p_hw_input_stencil_stream_V_value_V)
  %p_327 = trunc i72 %tmp_value_V to i8
  %p_332_cast = zext i8 %p_327 to i9
  %p_343 = call i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72 %tmp_value_V, i32 16, i32 23)
  %p_348_cast_cast = zext i8 %p_343 to i9
  %p_375 = call i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72 %tmp_value_V, i32 48, i32 55)
  %p_380_cast_cast = zext i8 %p_375 to i9
  %p_391 = call i8 @_ssdm_op_PartSelect.i8.i72.i32.i32(i72 %tmp_value_V, i32 64, i32 71)
  %p_396_cast = zext i8 %p_391 to i12
  %tmp_6 = call i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72 %tmp_value_V, i32 8, i32 14)
  %p_339 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_6, i1 false)
  %p_340_cast = zext i8 %p_339 to i9
  %p_341 = add i9 %p_332_cast, %p_340_cast
  %p_341_cast = zext i9 %p_341 to i10
  %tmp_7 = call i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72 %tmp_value_V, i32 24, i32 30)
  %p_355 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_7, i1 false)
  %p_356_cast_cast = zext i8 %p_355 to i9
  %tmp1 = add i9 %p_356_cast_cast, %p_348_cast_cast
  %tmp1_cast = zext i9 %tmp1 to i10
  %p_357 = add i10 %p_341_cast, %tmp1_cast
  %p_357_cast = zext i10 %p_357 to i11
  %tmp_8 = call i6 @_ssdm_op_PartSelect.i6.i72.i32.i32(i72 %tmp_value_V, i32 32, i32 37)
  %p_363 = call i8 @_ssdm_op_BitConcatenate.i8.i6.i2(i6 %tmp_8, i2 0)
  %p_364_cast = zext i8 %p_363 to i11
  %tmp_9 = call i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72 %tmp_value_V, i32 40, i32 46)
  %p_371 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_9, i1 false)
  %p_372_cast_cast = zext i8 %p_371 to i10
  %tmp_s = call i7 @_ssdm_op_PartSelect.i7.i72.i32.i32(i72 %tmp_value_V, i32 56, i32 62)
  %p_387 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_s, i1 false)
  %p_388_cast_cast = zext i8 %p_387 to i9
  %tmp2 = add i11 %p_364_cast, %p_357_cast
  %tmp4 = add i9 %p_388_cast_cast, %p_380_cast_cast
  %tmp4_cast = zext i9 %tmp4 to i10
  %tmp3 = add i10 %p_372_cast_cast, %tmp4_cast
  %tmp3_cast = zext i10 %tmp3 to i11
  %p_389 = add i11 %tmp2, %tmp3_cast
  %p_389_cast = zext i11 %p_389 to i12
  %p_397 = add i12 %p_396_cast, %p_389_cast
  %tmp_value_V_9 = zext i12 %p_397 to i32
  call void @_ssdm_op_Write.ap_fifo.volatile.i32P(i32* %p_mul_stencil_update_stream_V_value_V, i32 %tmp_value_V_9)
  %empty_114 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp)
  br label %.preheader39

.preheader39:                                     ; preds = %newFuncRoot, %.preheader39.preheader
  %indvar_flatten = phi i21 [ 0, %newFuncRoot ], [ %indvar_flatten_next, %.preheader39.preheader ]
  %exitcond_flatten = icmp eq i21 %indvar_flatten, -29548
  %indvar_flatten_next = add i21 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.exitStub, label %.preheader39.preheader
}

!opencl.kernels = !{!0, !7, !13, !13, !16, !16, !22, !16, !16, !25, !16, !16, !16, !16, !16, !16, !16, !16, !16, !27, !29, !35, !38, !38, !44, !47, !47, !16, !16, !29, !16, !48, !16, !29, !35, !51, !51, !53, !53, !53, !16, !16, !16, !16, !16, !16, !16, !16, !16, !29, !16, !29, !35, !56, !56, !58, !58, !58, !16, !16, !16, !16, !16, !16, !16, !16, !16, !60, !60, !60, !60, !60, !63, !63, !65, !67, !69, !69, !16, !16, !16, !16, !70, !72, !72, !16, !74, !77, !79, !81, !83, !84, !53, !85, !87, !87, !29, !35, !88, !88, !16, !16, !16, !16, !16, !16, !16, !16, !16, !85, !90, !13, !13, !91, !29, !29, !16, !92, !16, !29, !35, !94, !94, !96, !96, !96, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !98, !101, !101, !101, !101, !101, !103, !103, !105, !107, !109, !109, !16, !16, !16, !16, !110, !112, !112, !16, !113, !115, !117, !119, !120, !122, !122, !16, !16, !27, !123, !123, !29, !35, !124, !124, !16, !16, !16, !16, !16, !16, !16, !16, !16, !126, !16, !16, !16, !16}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!127}

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
!63 = metadata !{null, metadata !1, metadata !2, metadata !64, metadata !4, metadata !62, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"stream<PackedStencil<int, 1UL, 2UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<int, 2UL, 2UL, 1UL, 1UL> > &"}
!65 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !12, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<int, 2, 2, 1, 1> &"}
!67 = metadata !{null, metadata !8, metadata !9, metadata !68, metadata !11, metadata !15, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!69 = metadata !{null, metadata !8, metadata !9, metadata !68, metadata !11, metadata !55, metadata !6}
!70 = metadata !{null, metadata !8, metadata !9, metadata !71, metadata !11, metadata !15, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!72 = metadata !{null, metadata !8, metadata !9, metadata !71, metadata !11, metadata !73, metadata !6}
!73 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!74 = metadata !{null, metadata !8, metadata !9, metadata !75, metadata !11, metadata !76, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<int, 1, 2, 1, 1> &"}
!76 = metadata !{metadata !"kernel_arg_name", metadata !""}
!77 = metadata !{null, metadata !8, metadata !9, metadata !78, metadata !11, metadata !24, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<64> &"}
!79 = metadata !{null, metadata !8, metadata !9, metadata !80, metadata !11, metadata !76, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<int, 1, 1, 1, 1> &"}
!81 = metadata !{null, metadata !8, metadata !9, metadata !82, metadata !11, metadata !24, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!83 = metadata !{null, metadata !8, metadata !9, metadata !75, metadata !11, metadata !12, metadata !6}
!84 = metadata !{null, metadata !8, metadata !9, metadata !54, metadata !11, metadata !15, metadata !6}
!85 = metadata !{null, metadata !8, metadata !9, metadata !86, metadata !11, metadata !15, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!87 = metadata !{null, metadata !8, metadata !9, metadata !86, metadata !11, metadata !73, metadata !6}
!88 = metadata !{null, metadata !39, metadata !40, metadata !89, metadata !42, metadata !43, metadata !6}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!90 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !46, metadata !6}
!91 = metadata !{null, metadata !8, metadata !9, metadata !80, metadata !11, metadata !12, metadata !6}
!92 = metadata !{null, metadata !1, metadata !2, metadata !93, metadata !4, metadata !50, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<8> &", metadata !"uchar &"}
!94 = metadata !{null, metadata !39, metadata !40, metadata !95, metadata !42, metadata !43, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<72, false>*", metadata !"int", metadata !"int"}
!96 = metadata !{null, metadata !8, metadata !9, metadata !97, metadata !11, metadata !55, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<72, false> &"}
!98 = metadata !{null, metadata !1, metadata !2, metadata !99, metadata !4, metadata !100, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"stream<AxiPackedStencil<uchar, 1UL, 1UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uchar, 3UL, 3UL, 1UL, 1UL> > &"}
!100 = metadata !{metadata !"kernel_arg_name", metadata !"in_axi_stream", metadata !"out_stream"}
!101 = metadata !{null, metadata !1, metadata !2, metadata !102, metadata !4, metadata !62, metadata !6}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"stream<PackedStencil<uchar, 1UL, 1UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uchar, 3UL, 3UL, 1UL, 1UL> > &"}
!103 = metadata !{null, metadata !1, metadata !2, metadata !104, metadata !4, metadata !62, metadata !6}
!104 = metadata !{metadata !"kernel_arg_type", metadata !"stream<PackedStencil<uchar, 1UL, 3UL, 1UL, 1UL> > &", metadata !"stream<PackedStencil<uchar, 3UL, 3UL, 1UL, 1UL> > &"}
!105 = metadata !{null, metadata !8, metadata !9, metadata !106, metadata !11, metadata !12, metadata !6}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uchar, 3, 3, 1, 1> &"}
!107 = metadata !{null, metadata !8, metadata !9, metadata !108, metadata !11, metadata !15, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<24, false> &"}
!109 = metadata !{null, metadata !8, metadata !9, metadata !108, metadata !11, metadata !55, metadata !6}
!110 = metadata !{null, metadata !8, metadata !9, metadata !111, metadata !11, metadata !15, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &"}
!112 = metadata !{null, metadata !8, metadata !9, metadata !111, metadata !11, metadata !73, metadata !6}
!113 = metadata !{null, metadata !8, metadata !9, metadata !114, metadata !11, metadata !76, metadata !6}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uchar, 1, 3, 1, 1> &"}
!115 = metadata !{null, metadata !8, metadata !9, metadata !116, metadata !11, metadata !24, metadata !6}
!116 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<24> &"}
!117 = metadata !{null, metadata !8, metadata !9, metadata !118, metadata !11, metadata !76, metadata !6}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"const struct PackedStencil<uchar, 1, 1, 1, 1> &"}
!119 = metadata !{null, metadata !8, metadata !9, metadata !114, metadata !11, metadata !12, metadata !6}
!120 = metadata !{null, metadata !8, metadata !9, metadata !121, metadata !11, metadata !15, metadata !6}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<8, false> &"}
!122 = metadata !{null, metadata !8, metadata !9, metadata !121, metadata !11, metadata !55, metadata !6}
!123 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !73, metadata !6}
!124 = metadata !{null, metadata !39, metadata !40, metadata !125, metadata !42, metadata !43, metadata !6}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<24, false>*", metadata !"int", metadata !"int"}
!126 = metadata !{null, metadata !8, metadata !9, metadata !118, metadata !11, metadata !12, metadata !6}
!127 = metadata !{metadata !128, [1 x i32]* @llvm_global_ctors_0}
!128 = metadata !{metadata !129}
!129 = metadata !{i32 0, i32 31, metadata !130}
!130 = metadata !{metadata !131}
!131 = metadata !{metadata !"llvm.global_ctors.0", metadata !132, metadata !"", i32 0, i32 31}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 0, i32 0, i32 1}
!134 = metadata !{metadata !135}
!135 = metadata !{i32 0, i32 7, metadata !136}
!136 = metadata !{metadata !137}
!137 = metadata !{metadata !"hw_input.V.value.V", metadata !132, metadata !"uint8", i32 0, i32 7}
!138 = metadata !{metadata !139}
!139 = metadata !{i32 0, i32 0, metadata !140}
!140 = metadata !{metadata !141}
!141 = metadata !{metadata !"hw_input.V.last.V", metadata !132, metadata !"uint1", i32 0, i32 0}
!142 = metadata !{metadata !143}
!143 = metadata !{i32 0, i32 7, metadata !144}
!144 = metadata !{metadata !145}
!145 = metadata !{metadata !"hw_output.V.value.V", metadata !132, metadata !"uint8", i32 0, i32 7}
!146 = metadata !{metadata !147}
!147 = metadata !{i32 0, i32 0, metadata !148}
!148 = metadata !{metadata !149}
!149 = metadata !{metadata !"hw_output.V.last.V", metadata !132, metadata !"uint1", i32 0, i32 0}
