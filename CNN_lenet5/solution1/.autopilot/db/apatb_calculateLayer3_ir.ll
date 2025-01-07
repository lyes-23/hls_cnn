; ModuleID = 'C:/Users/TRETEC/OneDrive/Documents/Master2/HLS-FPGA/cnn_hls/CNN_lenet5/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_calculateLayer3_ir(float* noalias nonnull "fpga.decayed.dim.hint"="1014" %Layer2_Neurons_CPU, float* noalias nonnull "fpga.decayed.dim.hint"="7800" %Layer2_Weights_CPU, float* noalias nonnull "fpga.decayed.dim.hint"="1250" %Layer3_Neurons_CPU) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 4056)
  %Layer2_Neurons_CPU_copy = bitcast i8* %malloccall to [1014 x float]*
  %malloccall1 = tail call i8* @malloc(i64 31200)
  %Layer2_Weights_CPU_copy = bitcast i8* %malloccall1 to [7800 x float]*
  %malloccall2 = tail call i8* @malloc(i64 5000)
  %Layer3_Neurons_CPU_copy = bitcast i8* %malloccall2 to [1250 x float]*
  %0 = bitcast float* %Layer2_Neurons_CPU to [1014 x float]*
  %1 = bitcast float* %Layer2_Weights_CPU to [7800 x float]*
  %2 = bitcast float* %Layer3_Neurons_CPU to [1250 x float]*
  call fastcc void @copy_in([1014 x float]* nonnull %0, [1014 x float]* %Layer2_Neurons_CPU_copy, [7800 x float]* nonnull %1, [7800 x float]* %Layer2_Weights_CPU_copy, [1250 x float]* nonnull %2, [1250 x float]* %Layer3_Neurons_CPU_copy)
  call void @apatb_calculateLayer3_hw([1014 x float]* %Layer2_Neurons_CPU_copy, [7800 x float]* %Layer2_Weights_CPU_copy, [1250 x float]* %Layer3_Neurons_CPU_copy)
  call void @copy_back([1014 x float]* %0, [1014 x float]* %Layer2_Neurons_CPU_copy, [7800 x float]* %1, [7800 x float]* %Layer2_Weights_CPU_copy, [1250 x float]* %2, [1250 x float]* %Layer3_Neurons_CPU_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([1014 x float]* noalias readonly, [1014 x float]* noalias, [7800 x float]* noalias readonly, [7800 x float]* noalias, [1250 x float]* noalias readonly, [1250 x float]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1014f32([1014 x float]* %1, [1014 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a7800f32([7800 x float]* %3, [7800 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a1250f32([1250 x float]* %5, [1250 x float]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a1014f32([1014 x float]* noalias %dst, [1014 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1014 x float]* %dst, null
  %1 = icmp eq [1014 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1014f32([1014 x float]* nonnull %dst, [1014 x float]* nonnull %src, i64 1014)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1014f32([1014 x float]* %dst, [1014 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1014 x float]* %src, null
  %1 = icmp eq [1014 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1014 x float], [1014 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1014 x float], [1014 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a7800f32([7800 x float]* noalias %dst, [7800 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [7800 x float]* %dst, null
  %1 = icmp eq [7800 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a7800f32([7800 x float]* nonnull %dst, [7800 x float]* nonnull %src, i64 7800)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a7800f32([7800 x float]* %dst, [7800 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [7800 x float]* %src, null
  %1 = icmp eq [7800 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [7800 x float], [7800 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [7800 x float], [7800 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a1250f32([1250 x float]* noalias %dst, [1250 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1250 x float]* %dst, null
  %1 = icmp eq [1250 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1250f32([1250 x float]* nonnull %dst, [1250 x float]* nonnull %src, i64 1250)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1250f32([1250 x float]* %dst, [1250 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1250 x float]* %src, null
  %1 = icmp eq [1250 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1250 x float], [1250 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1250 x float], [1250 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([1014 x float]* noalias, [1014 x float]* noalias readonly, [7800 x float]* noalias, [7800 x float]* noalias readonly, [1250 x float]* noalias, [1250 x float]* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1014f32([1014 x float]* %0, [1014 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0a7800f32([7800 x float]* %2, [7800 x float]* %3)
  call fastcc void @onebyonecpy_hls.p0a1250f32([1250 x float]* %4, [1250 x float]* %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_calculateLayer3_hw([1014 x float]*, [7800 x float]*, [1250 x float]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([1014 x float]* noalias, [1014 x float]* noalias readonly, [7800 x float]* noalias, [7800 x float]* noalias readonly, [1250 x float]* noalias, [1250 x float]* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1014f32([1014 x float]* %0, [1014 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0a7800f32([7800 x float]* %2, [7800 x float]* %3)
  call fastcc void @onebyonecpy_hls.p0a1250f32([1250 x float]* %4, [1250 x float]* %5)
  ret void
}

define void @calculateLayer3_hw_stub_wrapper([1014 x float]*, [7800 x float]*, [1250 x float]*) #5 {
entry:
  call void @copy_out([1014 x float]* null, [1014 x float]* %0, [7800 x float]* null, [7800 x float]* %1, [1250 x float]* null, [1250 x float]* %2)
  %3 = bitcast [1014 x float]* %0 to float*
  %4 = bitcast [7800 x float]* %1 to float*
  %5 = bitcast [1250 x float]* %2 to float*
  call void @calculateLayer3_hw_stub(float* %3, float* %4, float* %5)
  call void @copy_in([1014 x float]* null, [1014 x float]* %0, [7800 x float]* null, [7800 x float]* %1, [1250 x float]* null, [1250 x float]* %2)
  ret void
}

declare void @calculateLayer3_hw_stub(float*, float*, float*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}