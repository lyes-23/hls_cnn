; ModuleID = 'C:/Users/TRETEC/OneDrive/Documents/Master2/HLS-FPGA/cnn_hls/CNN_lenet5/solution8/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_cnn_lenet_ir(float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="841" "maxi" %Layer1_Neurons_CPU, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="156" "maxi" %Layer1_Weights_CPU, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="7800" "maxi" %Layer2_Weights_CPU, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="125100" "maxi" %Layer3_Weights_CPU, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="100" "maxi" %Layer4_Neurons_CPU) local_unnamed_addr #0 {
entry:
  %Layer1_Neurons_CPU_copy = alloca [841 x float], align 512
  %Layer1_Weights_CPU_copy = alloca [156 x float], align 512
  %malloccall = tail call i8* @malloc(i64 31200)
  %Layer2_Weights_CPU_copy = bitcast i8* %malloccall to [7800 x float]*
  %malloccall1 = tail call i8* @malloc(i64 500400)
  %Layer3_Weights_CPU_copy = bitcast i8* %malloccall1 to [125100 x float]*
  %Layer4_Neurons_CPU_copy = alloca [100 x float], align 512
  %0 = bitcast float* %Layer1_Neurons_CPU to [841 x float]*
  %1 = bitcast float* %Layer1_Weights_CPU to [156 x float]*
  %2 = bitcast float* %Layer2_Weights_CPU to [7800 x float]*
  %3 = bitcast float* %Layer3_Weights_CPU to [125100 x float]*
  %4 = bitcast float* %Layer4_Neurons_CPU to [100 x float]*
  call fastcc void @copy_in([841 x float]* nonnull %0, [841 x float]* nonnull align 512 %Layer1_Neurons_CPU_copy, [156 x float]* nonnull %1, [156 x float]* nonnull align 512 %Layer1_Weights_CPU_copy, [7800 x float]* nonnull %2, [7800 x float]* %Layer2_Weights_CPU_copy, [125100 x float]* nonnull %3, [125100 x float]* %Layer3_Weights_CPU_copy, [100 x float]* nonnull %4, [100 x float]* nonnull align 512 %Layer4_Neurons_CPU_copy)
  call void @apatb_cnn_lenet_hw([841 x float]* %Layer1_Neurons_CPU_copy, [156 x float]* %Layer1_Weights_CPU_copy, [7800 x float]* %Layer2_Weights_CPU_copy, [125100 x float]* %Layer3_Weights_CPU_copy, [100 x float]* %Layer4_Neurons_CPU_copy)
  call void @copy_back([841 x float]* %0, [841 x float]* %Layer1_Neurons_CPU_copy, [156 x float]* %1, [156 x float]* %Layer1_Weights_CPU_copy, [7800 x float]* %2, [7800 x float]* %Layer2_Weights_CPU_copy, [125100 x float]* %3, [125100 x float]* %Layer3_Weights_CPU_copy, [100 x float]* %4, [100 x float]* %Layer4_Neurons_CPU_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([841 x float]* noalias readonly, [841 x float]* noalias align 512, [156 x float]* noalias readonly, [156 x float]* noalias align 512, [7800 x float]* noalias readonly, [7800 x float]* noalias, [125100 x float]* noalias readonly, [125100 x float]* noalias, [100 x float]* noalias readonly, [100 x float]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a841f32([841 x float]* align 512 %1, [841 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a156f32([156 x float]* align 512 %3, [156 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a7800f32([7800 x float]* %5, [7800 x float]* %4)
  call fastcc void @onebyonecpy_hls.p0a125100f32([125100 x float]* %7, [125100 x float]* %6)
  call fastcc void @onebyonecpy_hls.p0a100f32([100 x float]* align 512 %9, [100 x float]* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a841f32([841 x float]* noalias align 512 %dst, [841 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [841 x float]* %dst, null
  %1 = icmp eq [841 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a841f32([841 x float]* nonnull %dst, [841 x float]* nonnull %src, i64 841)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a841f32([841 x float]* %dst, [841 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [841 x float]* %src, null
  %1 = icmp eq [841 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [841 x float], [841 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [841 x float], [841 x float]* %src, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @onebyonecpy_hls.p0a156f32([156 x float]* noalias align 512 %dst, [156 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [156 x float]* %dst, null
  %1 = icmp eq [156 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a156f32([156 x float]* nonnull %dst, [156 x float]* nonnull %src, i64 156)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a156f32([156 x float]* %dst, [156 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [156 x float]* %src, null
  %1 = icmp eq [156 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [156 x float], [156 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [156 x float], [156 x float]* %src, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @onebyonecpy_hls.p0a125100f32([125100 x float]* noalias %dst, [125100 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [125100 x float]* %dst, null
  %1 = icmp eq [125100 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a125100f32([125100 x float]* nonnull %dst, [125100 x float]* nonnull %src, i64 125100)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a125100f32([125100 x float]* %dst, [125100 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [125100 x float]* %src, null
  %1 = icmp eq [125100 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [125100 x float], [125100 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [125100 x float], [125100 x float]* %src, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @onebyonecpy_hls.p0a100f32([100 x float]* noalias align 512 %dst, [100 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [100 x float]* %dst, null
  %1 = icmp eq [100 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a100f32([100 x float]* nonnull %dst, [100 x float]* nonnull %src, i64 100)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a100f32([100 x float]* %dst, [100 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [100 x float]* %src, null
  %1 = icmp eq [100 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100 x float], [100 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [100 x float], [100 x float]* %src, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @copy_out([841 x float]* noalias, [841 x float]* noalias readonly align 512, [156 x float]* noalias, [156 x float]* noalias readonly align 512, [7800 x float]* noalias, [7800 x float]* noalias readonly, [125100 x float]* noalias, [125100 x float]* noalias readonly, [100 x float]* noalias, [100 x float]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a841f32([841 x float]* %0, [841 x float]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a156f32([156 x float]* %2, [156 x float]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a7800f32([7800 x float]* %4, [7800 x float]* %5)
  call fastcc void @onebyonecpy_hls.p0a125100f32([125100 x float]* %6, [125100 x float]* %7)
  call fastcc void @onebyonecpy_hls.p0a100f32([100 x float]* %8, [100 x float]* align 512 %9)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_cnn_lenet_hw([841 x float]*, [156 x float]*, [7800 x float]*, [125100 x float]*, [100 x float]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([841 x float]* noalias, [841 x float]* noalias readonly align 512, [156 x float]* noalias, [156 x float]* noalias readonly align 512, [7800 x float]* noalias, [7800 x float]* noalias readonly, [125100 x float]* noalias, [125100 x float]* noalias readonly, [100 x float]* noalias, [100 x float]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100f32([100 x float]* %8, [100 x float]* align 512 %9)
  ret void
}

define void @cnn_lenet_hw_stub_wrapper([841 x float]*, [156 x float]*, [7800 x float]*, [125100 x float]*, [100 x float]*) #5 {
entry:
  call void @copy_out([841 x float]* null, [841 x float]* %0, [156 x float]* null, [156 x float]* %1, [7800 x float]* null, [7800 x float]* %2, [125100 x float]* null, [125100 x float]* %3, [100 x float]* null, [100 x float]* %4)
  %5 = bitcast [841 x float]* %0 to float*
  %6 = bitcast [156 x float]* %1 to float*
  %7 = bitcast [7800 x float]* %2 to float*
  %8 = bitcast [125100 x float]* %3 to float*
  %9 = bitcast [100 x float]* %4 to float*
  call void @cnn_lenet_hw_stub(float* %5, float* %6, float* %7, float* %8, float* %9)
  call void @copy_in([841 x float]* null, [841 x float]* %0, [156 x float]* null, [156 x float]* %1, [7800 x float]* null, [7800 x float]* %2, [125100 x float]* null, [125100 x float]* %3, [100 x float]* null, [100 x float]* %4)
  ret void
}

declare void @cnn_lenet_hw_stub(float*, float*, float*, float*, float*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
