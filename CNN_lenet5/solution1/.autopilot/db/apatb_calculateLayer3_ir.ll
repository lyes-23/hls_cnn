; ModuleID = 'C:/Users/TRETEC/OneDrive/Documents/Master2/HLS-FPGA/cnn_hls/CNN_lenet5/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 5, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 5, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: noinline
define void @apatb_calculateLayer3_ir(%"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1014" %Layer2_Neurons_CPU, %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="7800" %Layer2_Weights_CPU, %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="1250" %Layer3_Neurons_CPU) local_unnamed_addr #0 {
entry:
  %Layer2_Neurons_CPU_copy = alloca [1014 x i16], align 512
  %malloccall = call i8* @malloc(i64 15600)
  %Layer2_Weights_CPU_copy = bitcast i8* %malloccall to [7800 x i16]*
  %Layer3_Neurons_CPU_copy = alloca [1250 x i16], align 512
  %0 = bitcast %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"* %Layer2_Neurons_CPU to [1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]*
  %1 = bitcast %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"* %Layer2_Weights_CPU to [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]*
  %2 = bitcast %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"* %Layer3_Neurons_CPU to [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]*
  call fastcc void @copy_in([1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* nonnull %0, [1014 x i16]* nonnull align 512 %Layer2_Neurons_CPU_copy, [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* nonnull %1, [7800 x i16]* %Layer2_Weights_CPU_copy, [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* nonnull %2, [1250 x i16]* nonnull align 512 %Layer3_Neurons_CPU_copy)
  call void @apatb_calculateLayer3_hw([1014 x i16]* %Layer2_Neurons_CPU_copy, [7800 x i16]* %Layer2_Weights_CPU_copy, [1250 x i16]* %Layer3_Neurons_CPU_copy)
  call void @copy_back([1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %0, [1014 x i16]* %Layer2_Neurons_CPU_copy, [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %1, [7800 x i16]* %Layer2_Weights_CPU_copy, [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %2, [1250 x i16]* %Layer3_Neurons_CPU_copy)
  call void @free(i8* %malloccall)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="0", [1014 x i16]* noalias nocapture align 512 "unpacked"="1.0", [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="2", [7800 x i16]* noalias nocapture "unpacked"="3.0", [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="4", [1250 x i16]* noalias nocapture align 512 "unpacked"="5.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1014struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"([1014 x i16]* align 512 %1, [1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a7800struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.135"([7800 x i16]* %3, [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a1250struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"([1250 x i16]* align 512 %5, [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a1014struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"([1014 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1014struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"([1014 x i16]* %dst, [1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 1014)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1014struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"([1014 x i16]* nocapture "unpacked"="0.0" %dst, [1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"], [1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [1014 x i16], [1014 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a7800struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"([7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [7800 x i16]* noalias nocapture readonly "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a7800struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"([7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [7800 x i16]* %src, i64 7800)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a7800struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"([7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [7800 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [7800 x i16], [7800 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"], [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a1250struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"([1250 x i16]* noalias nocapture align 512 "unpacked"="0.0" %dst, [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1250struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"([1250 x i16]* %dst, [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 1250)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1250struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"([1250 x i16]* nocapture "unpacked"="0.0" %dst, [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"], [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [1250 x i16], [1250 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [1014 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0", [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="2", [7800 x i16]* noalias nocapture readonly "unpacked"="3.0", [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="4", [1250 x i16]* noalias nocapture readonly align 512 "unpacked"="5.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1014struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.146"([1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %0, [1014 x i16]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a7800struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"([7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %2, [7800 x i16]* %3)
  call fastcc void @"onebyonecpy_hls.p0a1250struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.125"([1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %4, [1250 x i16]* align 512 %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a1250struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.125"([1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [1250 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1250struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.128"([1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [1250 x i16]* %src, i64 1250)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1250struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.128"([1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [1250 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1250 x i16], [1250 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"], [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a7800struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.135"([7800 x i16]* noalias nocapture "unpacked"="0.0" %dst, [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a7800struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.138"([7800 x i16]* %dst, [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 7800)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a7800struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.138"([7800 x i16]* nocapture "unpacked"="0.0" %dst, [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"], [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [7800 x i16], [7800 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a1014struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.146"([1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [1014 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1014struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.149"([1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [1014 x i16]* %src, i64 1014)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1014struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.149"([1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [1014 x i16]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1014 x i16], [1014 x i16]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"], [1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %1, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_calculateLayer3_hw([1014 x i16]*, [7800 x i16]*, [1250 x i16]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [1014 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0", [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="2", [7800 x i16]* noalias nocapture readonly "unpacked"="3.0", [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="4", [1250 x i16]* noalias nocapture readonly align 512 "unpacked"="5.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1250struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>.125"([1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %4, [1250 x i16]* align 512 %5)
  ret void
}

define void @calculateLayer3_hw_stub_wrapper([1014 x i16]*, [7800 x i16]*, [1250 x i16]*) #5 {
entry:
  %3 = alloca [1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]
  %malloccall = tail call i8* @malloc(i64 15600)
  %4 = bitcast i8* %malloccall to [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]*
  %5 = alloca [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]
  call void @copy_out([1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %3, [1014 x i16]* %0, [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %4, [7800 x i16]* %1, [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %5, [1250 x i16]* %2)
  %6 = bitcast [1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %3 to %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"*
  %7 = bitcast [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %4 to %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"*
  %8 = bitcast [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %5 to %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"*
  call void @calculateLayer3_hw_stub(%"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"* %6, %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"* %7, %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"* %8)
  call void @copy_in([1014 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %3, [1014 x i16]* %0, [7800 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %4, [7800 x i16]* %1, [1250 x %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"]* %5, [1250 x i16]* %2)
  ret void
}

declare void @calculateLayer3_hw_stub(%"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<16, 5, AP_TRN, AP_WRAP, 0>"*)

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
