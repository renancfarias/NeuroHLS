; ModuleID = 'C:/Users/renan/Desktop/NeuroHLS/snn_n-mnist_resource_opt/snn_n-mnist_resource_opt/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<ap_uint<10>, 0>" = type { %"struct.ap_uint<10>" }
%"struct.ap_uint<10>" = type { %"struct.ap_int_base<10, false>" }
%"struct.ap_int_base<10, false>" = type { %"struct.ssdm_int<10, false>" }
%"struct.ssdm_int<10, false>" = type { i10 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: noinline willreturn
define void @apatb_snn_mnist_hls_ir(%"class.hls::stream<ap_uint<10>, 0>"* noalias nocapture nonnull dereferenceable(2) %input, %"struct.ap_uint<1>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="10" %output) local_unnamed_addr #1 {
entry:
  %input_copy = alloca i10, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i10* %input_copy, i32 0) ]
  %0 = bitcast %"struct.ap_uint<1>"* %output to [10 x %"struct.ap_uint<1>"]*
  %output_copy = alloca [10 x i1], align 512
  call fastcc void @copy_in(%"class.hls::stream<ap_uint<10>, 0>"* nonnull %input, i10* nonnull align 512 %input_copy, [10 x %"struct.ap_uint<1>"]* nonnull %0, [10 x i1]* nonnull align 512 %output_copy)
  call void @apatb_snn_mnist_hls_hw(i10* %input_copy, [10 x i1]* %output_copy)
  call void @copy_back(%"class.hls::stream<ap_uint<10>, 0>"* %input, i10* %input_copy, [10 x %"struct.ap_uint<1>"]* %0, [10 x i1]* %output_copy)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<ap_uint<10>, 0>"* noalias "unpacked"="0", i10* noalias nocapture align 512 "unpacked"="1.0", [10 x %"struct.ap_uint<1>"]* noalias readonly "unpacked"="2", [10 x i1]* noalias nocapture align 512 "unpacked"="3.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<10>, 0>.35"(i10* align 512 %1, %"class.hls::stream<ap_uint<10>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0a10struct.ap_uint<1>"([10 x i1]* align 512 %3, [10 x %"struct.ap_uint<1>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<10>, 0>"(%"class.hls::stream<ap_uint<10>, 0>"* noalias "unpacked"="0" %dst, i10* noalias nocapture align 512 "unpacked"="1.0" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<10>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<10>, 0>"(%"class.hls::stream<ap_uint<10>, 0>"* nonnull %dst, i10* align 512 %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<10>, 0>"(%"class.hls::stream<ap_uint<10>, 0>"* noalias nocapture "unpacked"="0", i10* noalias nocapture align 512 "unpacked"="1.0") unnamed_addr #4 {
entry:
  %2 = alloca i10
  %3 = alloca %"class.hls::stream<ap_uint<10>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i10* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_2(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i10* %2 to i8*
  %7 = bitcast i10* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %6, i8* %7)
  %8 = bitcast i10* %2 to i16*
  %9 = load i16, i16* %8
  %10 = trunc i16 %9 to i10
  %.ivi = insertvalue %"class.hls::stream<ap_uint<10>, 0>" undef, i10 %10, 0, 0, 0, 0
  store %"class.hls::stream<ap_uint<10>, 0>" %.ivi, %"class.hls::stream<ap_uint<10>, 0>"* %3
  %11 = bitcast %"class.hls::stream<ap_uint<10>, 0>"* %3 to i8*
  %12 = bitcast %"class.hls::stream<ap_uint<10>, 0>"* %0 to i8*
  call void @fpga_fifo_push_2(i8* %11, i8* %12)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a10struct.ap_uint<1>"([10 x i1]* noalias nocapture align 512 "unpacked"="0.0" %dst, [10 x %"struct.ap_uint<1>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #5 {
entry:
  %0 = icmp eq [10 x %"struct.ap_uint<1>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a10struct.ap_uint<1>"([10 x i1]* %dst, [10 x %"struct.ap_uint<1>"]* nonnull %src, i64 10)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a10struct.ap_uint<1>"([10 x i1]* nocapture "unpacked"="0.0" %dst, [10 x %"struct.ap_uint<1>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #6 {
entry:
  %0 = icmp eq [10 x %"struct.ap_uint<1>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [10 x %"struct.ap_uint<1>"], [10 x %"struct.ap_uint<1>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [10 x i1], [10 x i1]* %dst, i64 0, i64 %for.loop.idx2
  %1 = bitcast i1* %src.addr.0.0.05 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i1
  store i1 %3, i1* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<ap_uint<10>, 0>"* noalias "unpacked"="0", i10* noalias nocapture align 512 "unpacked"="1.0", [10 x %"struct.ap_uint<1>"]* noalias "unpacked"="2", [10 x i1]* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #7 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<10>, 0>"(%"class.hls::stream<ap_uint<10>, 0>"* %0, i10* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a10struct.ap_uint<1>.25"([10 x %"struct.ap_uint<1>"]* %2, [10 x i1]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a10struct.ap_uint<1>.25"([10 x %"struct.ap_uint<1>"]* noalias "unpacked"="0" %dst, [10 x i1]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #5 {
entry:
  %0 = icmp eq [10 x %"struct.ap_uint<1>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a10struct.ap_uint<1>.28"([10 x %"struct.ap_uint<1>"]* nonnull %dst, [10 x i1]* %src, i64 10)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a10struct.ap_uint<1>.28"([10 x %"struct.ap_uint<1>"]* "unpacked"="0" %dst, [10 x i1]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #6 {
entry:
  %0 = icmp eq [10 x %"struct.ap_uint<1>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [10 x i1], [10 x i1]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [10 x %"struct.ap_uint<1>"], [10 x %"struct.ap_uint<1>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = bitcast i1* %src.addr.0.0.05 to i8*
  %2 = load i8, i8* %1
  %3 = trunc i8 %2 to i1
  store i1 %3, i1* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<10>, 0>.35"(i10* noalias nocapture align 512 "unpacked"="0.0" %dst, %"class.hls::stream<ap_uint<10>, 0>"* noalias "unpacked"="1" %src) unnamed_addr #3 {
entry:
  %0 = icmp eq %"class.hls::stream<ap_uint<10>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<10>, 0>.38"(i10* align 512 %dst, %"class.hls::stream<ap_uint<10>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<ap_uint<10>, 0>.38"(i10* noalias nocapture align 512 "unpacked"="0.0", %"class.hls::stream<ap_uint<10>, 0>"* noalias nocapture "unpacked"="1") unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream<ap_uint<10>, 0>"
  %3 = alloca i10
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<ap_uint<10>, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_2(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<ap_uint<10>, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<ap_uint<10>, 0>"* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<ap_uint<10>, 0>", %"class.hls::stream<ap_uint<10>, 0>"* %2
  %.evi = extractvalue %"class.hls::stream<ap_uint<10>, 0>" %8, 0, 0, 0, 0
  store i10 %.evi, i10* %3
  %9 = bitcast i10* %3 to i8*
  %10 = bitcast i10* %0 to i8*
  call void @fpga_fifo_push_2(i8* %9, i8* %10)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_snn_mnist_hls_hw(i10*, [10 x i1]*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<ap_uint<10>, 0>"* noalias "unpacked"="0", i10* noalias nocapture align 512 "unpacked"="1.0", [10 x %"struct.ap_uint<1>"]* noalias "unpacked"="2", [10 x i1]* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #7 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<ap_uint<10>, 0>"(%"class.hls::stream<ap_uint<10>, 0>"* %0, i10* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a10struct.ap_uint<1>.25"([10 x %"struct.ap_uint<1>"]* %2, [10 x i1]* align 512 %3)
  ret void
}

declare void @snn_mnist_hls_hw_stub(%"class.hls::stream<ap_uint<10>, 0>"* noalias nocapture nonnull, %"struct.ap_uint<1>"* noalias nocapture nonnull)

define void @snn_mnist_hls_hw_stub_wrapper(i10*, [10 x i1]*) #8 {
entry:
  %2 = call i8* @malloc(i64 2)
  %3 = bitcast i8* %2 to %"class.hls::stream<ap_uint<10>, 0>"*
  %4 = call i8* @malloc(i64 10)
  %5 = bitcast i8* %4 to [10 x %"struct.ap_uint<1>"]*
  call void @copy_out(%"class.hls::stream<ap_uint<10>, 0>"* %3, i10* %0, [10 x %"struct.ap_uint<1>"]* %5, [10 x i1]* %1)
  %6 = bitcast [10 x %"struct.ap_uint<1>"]* %5 to %"struct.ap_uint<1>"*
  call void @snn_mnist_hls_hw_stub(%"class.hls::stream<ap_uint<10>, 0>"* %3, %"struct.ap_uint<1>"* %6)
  call void @copy_in(%"class.hls::stream<ap_uint<10>, 0>"* %3, i10* %0, [10 x %"struct.ap_uint<1>"]* %5, [10 x i1]* %1)
  call void @free(i8* %2)
  call void @free(i8* %4)
  ret void
}

declare i1 @fpga_fifo_not_empty_2(i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #7 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #8 = { "fpga.wrapper.func"="stub" }
attributes #9 = { inaccessiblememonly nounwind willreturn "xlx.port.bitwidth"="16" "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
