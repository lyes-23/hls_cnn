; ModuleID = 'C:/Users/TRETEC/OneDrive/Documents/Master2/HLS-FPGA/cnn_hls/CNN_lenet5/solution4/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_calculateLayer3_ir(float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1014" %Layer2_Neurons_CPU, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="7800" "partition" %Layer2_Weights_CPU, float* noalias nocapture nonnull "fpga.decayed.dim.hint"="1250" %Layer3_Neurons_CPU) local_unnamed_addr #1 {
entry:
  %malloccall = tail call i8* @malloc(i64 4056)
  %Layer2_Neurons_CPU_copy = bitcast i8* %malloccall to [1014 x float]*
  %malloccall1_0 = call i8* @malloc(i64 400)
  %malloccall1_1 = call i8* @malloc(i64 400)
  %malloccall1_2 = call i8* @malloc(i64 400)
  %malloccall1_3 = call i8* @malloc(i64 400)
  %malloccall1_4 = call i8* @malloc(i64 400)
  %malloccall1_5 = call i8* @malloc(i64 400)
  %malloccall1_6 = call i8* @malloc(i64 400)
  %malloccall1_7 = call i8* @malloc(i64 400)
  %malloccall1_8 = call i8* @malloc(i64 400)
  %malloccall1_9 = call i8* @malloc(i64 400)
  %malloccall1_10 = call i8* @malloc(i64 400)
  %malloccall1_11 = call i8* @malloc(i64 400)
  %malloccall1_12 = call i8* @malloc(i64 400)
  %malloccall1_13 = call i8* @malloc(i64 400)
  %malloccall1_14 = call i8* @malloc(i64 400)
  %malloccall1_15 = call i8* @malloc(i64 400)
  %malloccall1_16 = call i8* @malloc(i64 400)
  %malloccall1_17 = call i8* @malloc(i64 400)
  %malloccall1_18 = call i8* @malloc(i64 400)
  %malloccall1_19 = call i8* @malloc(i64 400)
  %malloccall1_20 = call i8* @malloc(i64 400)
  %malloccall1_21 = call i8* @malloc(i64 400)
  %malloccall1_22 = call i8* @malloc(i64 400)
  %malloccall1_23 = call i8* @malloc(i64 400)
  %malloccall1_24 = call i8* @malloc(i64 400)
  %malloccall1_25 = call i8* @malloc(i64 400)
  %malloccall1_26 = call i8* @malloc(i64 400)
  %malloccall1_27 = call i8* @malloc(i64 400)
  %malloccall1_28 = call i8* @malloc(i64 400)
  %malloccall1_29 = call i8* @malloc(i64 400)
  %malloccall1_30 = call i8* @malloc(i64 400)
  %malloccall1_31 = call i8* @malloc(i64 400)
  %malloccall1_32 = call i8* @malloc(i64 400)
  %malloccall1_33 = call i8* @malloc(i64 400)
  %malloccall1_34 = call i8* @malloc(i64 400)
  %malloccall1_35 = call i8* @malloc(i64 400)
  %malloccall1_36 = call i8* @malloc(i64 400)
  %malloccall1_37 = call i8* @malloc(i64 400)
  %malloccall1_38 = call i8* @malloc(i64 400)
  %malloccall1_39 = call i8* @malloc(i64 400)
  %malloccall1_40 = call i8* @malloc(i64 400)
  %malloccall1_41 = call i8* @malloc(i64 400)
  %malloccall1_42 = call i8* @malloc(i64 400)
  %malloccall1_43 = call i8* @malloc(i64 400)
  %malloccall1_44 = call i8* @malloc(i64 400)
  %malloccall1_45 = call i8* @malloc(i64 400)
  %malloccall1_46 = call i8* @malloc(i64 400)
  %malloccall1_47 = call i8* @malloc(i64 400)
  %malloccall1_48 = call i8* @malloc(i64 400)
  %malloccall1_49 = call i8* @malloc(i64 400)
  %malloccall1_50 = call i8* @malloc(i64 400)
  %malloccall1_51 = call i8* @malloc(i64 400)
  %malloccall1_52 = call i8* @malloc(i64 400)
  %malloccall1_53 = call i8* @malloc(i64 400)
  %malloccall1_54 = call i8* @malloc(i64 400)
  %malloccall1_55 = call i8* @malloc(i64 400)
  %malloccall1_56 = call i8* @malloc(i64 400)
  %malloccall1_57 = call i8* @malloc(i64 400)
  %malloccall1_58 = call i8* @malloc(i64 400)
  %malloccall1_59 = call i8* @malloc(i64 400)
  %malloccall1_60 = call i8* @malloc(i64 400)
  %malloccall1_61 = call i8* @malloc(i64 400)
  %malloccall1_62 = call i8* @malloc(i64 400)
  %malloccall1_63 = call i8* @malloc(i64 400)
  %malloccall1_64 = call i8* @malloc(i64 400)
  %malloccall1_65 = call i8* @malloc(i64 400)
  %malloccall1_66 = call i8* @malloc(i64 400)
  %malloccall1_67 = call i8* @malloc(i64 400)
  %malloccall1_68 = call i8* @malloc(i64 400)
  %malloccall1_69 = call i8* @malloc(i64 400)
  %malloccall1_70 = call i8* @malloc(i64 400)
  %malloccall1_71 = call i8* @malloc(i64 400)
  %malloccall1_72 = call i8* @malloc(i64 400)
  %malloccall1_73 = call i8* @malloc(i64 400)
  %malloccall1_74 = call i8* @malloc(i64 400)
  %malloccall1_75 = call i8* @malloc(i64 400)
  %malloccall1_76 = call i8* @malloc(i64 400)
  %malloccall1_77 = call i8* @malloc(i64 400)
  %Layer2_Weights_CPU_copy_0 = bitcast i8* %malloccall1_0 to [100 x float]*
  %Layer2_Weights_CPU_copy_1 = bitcast i8* %malloccall1_1 to [100 x float]*
  %Layer2_Weights_CPU_copy_2 = bitcast i8* %malloccall1_2 to [100 x float]*
  %Layer2_Weights_CPU_copy_3 = bitcast i8* %malloccall1_3 to [100 x float]*
  %Layer2_Weights_CPU_copy_4 = bitcast i8* %malloccall1_4 to [100 x float]*
  %Layer2_Weights_CPU_copy_5 = bitcast i8* %malloccall1_5 to [100 x float]*
  %Layer2_Weights_CPU_copy_6 = bitcast i8* %malloccall1_6 to [100 x float]*
  %Layer2_Weights_CPU_copy_7 = bitcast i8* %malloccall1_7 to [100 x float]*
  %Layer2_Weights_CPU_copy_8 = bitcast i8* %malloccall1_8 to [100 x float]*
  %Layer2_Weights_CPU_copy_9 = bitcast i8* %malloccall1_9 to [100 x float]*
  %Layer2_Weights_CPU_copy_10 = bitcast i8* %malloccall1_10 to [100 x float]*
  %Layer2_Weights_CPU_copy_11 = bitcast i8* %malloccall1_11 to [100 x float]*
  %Layer2_Weights_CPU_copy_12 = bitcast i8* %malloccall1_12 to [100 x float]*
  %Layer2_Weights_CPU_copy_13 = bitcast i8* %malloccall1_13 to [100 x float]*
  %Layer2_Weights_CPU_copy_14 = bitcast i8* %malloccall1_14 to [100 x float]*
  %Layer2_Weights_CPU_copy_15 = bitcast i8* %malloccall1_15 to [100 x float]*
  %Layer2_Weights_CPU_copy_16 = bitcast i8* %malloccall1_16 to [100 x float]*
  %Layer2_Weights_CPU_copy_17 = bitcast i8* %malloccall1_17 to [100 x float]*
  %Layer2_Weights_CPU_copy_18 = bitcast i8* %malloccall1_18 to [100 x float]*
  %Layer2_Weights_CPU_copy_19 = bitcast i8* %malloccall1_19 to [100 x float]*
  %Layer2_Weights_CPU_copy_20 = bitcast i8* %malloccall1_20 to [100 x float]*
  %Layer2_Weights_CPU_copy_21 = bitcast i8* %malloccall1_21 to [100 x float]*
  %Layer2_Weights_CPU_copy_22 = bitcast i8* %malloccall1_22 to [100 x float]*
  %Layer2_Weights_CPU_copy_23 = bitcast i8* %malloccall1_23 to [100 x float]*
  %Layer2_Weights_CPU_copy_24 = bitcast i8* %malloccall1_24 to [100 x float]*
  %Layer2_Weights_CPU_copy_25 = bitcast i8* %malloccall1_25 to [100 x float]*
  %Layer2_Weights_CPU_copy_26 = bitcast i8* %malloccall1_26 to [100 x float]*
  %Layer2_Weights_CPU_copy_27 = bitcast i8* %malloccall1_27 to [100 x float]*
  %Layer2_Weights_CPU_copy_28 = bitcast i8* %malloccall1_28 to [100 x float]*
  %Layer2_Weights_CPU_copy_29 = bitcast i8* %malloccall1_29 to [100 x float]*
  %Layer2_Weights_CPU_copy_30 = bitcast i8* %malloccall1_30 to [100 x float]*
  %Layer2_Weights_CPU_copy_31 = bitcast i8* %malloccall1_31 to [100 x float]*
  %Layer2_Weights_CPU_copy_32 = bitcast i8* %malloccall1_32 to [100 x float]*
  %Layer2_Weights_CPU_copy_33 = bitcast i8* %malloccall1_33 to [100 x float]*
  %Layer2_Weights_CPU_copy_34 = bitcast i8* %malloccall1_34 to [100 x float]*
  %Layer2_Weights_CPU_copy_35 = bitcast i8* %malloccall1_35 to [100 x float]*
  %Layer2_Weights_CPU_copy_36 = bitcast i8* %malloccall1_36 to [100 x float]*
  %Layer2_Weights_CPU_copy_37 = bitcast i8* %malloccall1_37 to [100 x float]*
  %Layer2_Weights_CPU_copy_38 = bitcast i8* %malloccall1_38 to [100 x float]*
  %Layer2_Weights_CPU_copy_39 = bitcast i8* %malloccall1_39 to [100 x float]*
  %Layer2_Weights_CPU_copy_40 = bitcast i8* %malloccall1_40 to [100 x float]*
  %Layer2_Weights_CPU_copy_41 = bitcast i8* %malloccall1_41 to [100 x float]*
  %Layer2_Weights_CPU_copy_42 = bitcast i8* %malloccall1_42 to [100 x float]*
  %Layer2_Weights_CPU_copy_43 = bitcast i8* %malloccall1_43 to [100 x float]*
  %Layer2_Weights_CPU_copy_44 = bitcast i8* %malloccall1_44 to [100 x float]*
  %Layer2_Weights_CPU_copy_45 = bitcast i8* %malloccall1_45 to [100 x float]*
  %Layer2_Weights_CPU_copy_46 = bitcast i8* %malloccall1_46 to [100 x float]*
  %Layer2_Weights_CPU_copy_47 = bitcast i8* %malloccall1_47 to [100 x float]*
  %Layer2_Weights_CPU_copy_48 = bitcast i8* %malloccall1_48 to [100 x float]*
  %Layer2_Weights_CPU_copy_49 = bitcast i8* %malloccall1_49 to [100 x float]*
  %Layer2_Weights_CPU_copy_50 = bitcast i8* %malloccall1_50 to [100 x float]*
  %Layer2_Weights_CPU_copy_51 = bitcast i8* %malloccall1_51 to [100 x float]*
  %Layer2_Weights_CPU_copy_52 = bitcast i8* %malloccall1_52 to [100 x float]*
  %Layer2_Weights_CPU_copy_53 = bitcast i8* %malloccall1_53 to [100 x float]*
  %Layer2_Weights_CPU_copy_54 = bitcast i8* %malloccall1_54 to [100 x float]*
  %Layer2_Weights_CPU_copy_55 = bitcast i8* %malloccall1_55 to [100 x float]*
  %Layer2_Weights_CPU_copy_56 = bitcast i8* %malloccall1_56 to [100 x float]*
  %Layer2_Weights_CPU_copy_57 = bitcast i8* %malloccall1_57 to [100 x float]*
  %Layer2_Weights_CPU_copy_58 = bitcast i8* %malloccall1_58 to [100 x float]*
  %Layer2_Weights_CPU_copy_59 = bitcast i8* %malloccall1_59 to [100 x float]*
  %Layer2_Weights_CPU_copy_60 = bitcast i8* %malloccall1_60 to [100 x float]*
  %Layer2_Weights_CPU_copy_61 = bitcast i8* %malloccall1_61 to [100 x float]*
  %Layer2_Weights_CPU_copy_62 = bitcast i8* %malloccall1_62 to [100 x float]*
  %Layer2_Weights_CPU_copy_63 = bitcast i8* %malloccall1_63 to [100 x float]*
  %Layer2_Weights_CPU_copy_64 = bitcast i8* %malloccall1_64 to [100 x float]*
  %Layer2_Weights_CPU_copy_65 = bitcast i8* %malloccall1_65 to [100 x float]*
  %Layer2_Weights_CPU_copy_66 = bitcast i8* %malloccall1_66 to [100 x float]*
  %Layer2_Weights_CPU_copy_67 = bitcast i8* %malloccall1_67 to [100 x float]*
  %Layer2_Weights_CPU_copy_68 = bitcast i8* %malloccall1_68 to [100 x float]*
  %Layer2_Weights_CPU_copy_69 = bitcast i8* %malloccall1_69 to [100 x float]*
  %Layer2_Weights_CPU_copy_70 = bitcast i8* %malloccall1_70 to [100 x float]*
  %Layer2_Weights_CPU_copy_71 = bitcast i8* %malloccall1_71 to [100 x float]*
  %Layer2_Weights_CPU_copy_72 = bitcast i8* %malloccall1_72 to [100 x float]*
  %Layer2_Weights_CPU_copy_73 = bitcast i8* %malloccall1_73 to [100 x float]*
  %Layer2_Weights_CPU_copy_74 = bitcast i8* %malloccall1_74 to [100 x float]*
  %Layer2_Weights_CPU_copy_75 = bitcast i8* %malloccall1_75 to [100 x float]*
  %Layer2_Weights_CPU_copy_76 = bitcast i8* %malloccall1_76 to [100 x float]*
  %Layer2_Weights_CPU_copy_77 = bitcast i8* %malloccall1_77 to [100 x float]*
  %malloccall2 = tail call i8* @malloc(i64 5000)
  %Layer3_Neurons_CPU_copy = bitcast i8* %malloccall2 to [1250 x float]*
  %0 = bitcast float* %Layer2_Neurons_CPU to [1014 x float]*
  %1 = bitcast float* %Layer2_Weights_CPU to [7800 x float]*
  %2 = bitcast float* %Layer3_Neurons_CPU to [1250 x float]*
  call void @copy_in([1014 x float]* nonnull %0, [1014 x float]* %Layer2_Neurons_CPU_copy, [7800 x float]* nonnull %1, [100 x float]* %Layer2_Weights_CPU_copy_0, [100 x float]* %Layer2_Weights_CPU_copy_1, [100 x float]* %Layer2_Weights_CPU_copy_2, [100 x float]* %Layer2_Weights_CPU_copy_3, [100 x float]* %Layer2_Weights_CPU_copy_4, [100 x float]* %Layer2_Weights_CPU_copy_5, [100 x float]* %Layer2_Weights_CPU_copy_6, [100 x float]* %Layer2_Weights_CPU_copy_7, [100 x float]* %Layer2_Weights_CPU_copy_8, [100 x float]* %Layer2_Weights_CPU_copy_9, [100 x float]* %Layer2_Weights_CPU_copy_10, [100 x float]* %Layer2_Weights_CPU_copy_11, [100 x float]* %Layer2_Weights_CPU_copy_12, [100 x float]* %Layer2_Weights_CPU_copy_13, [100 x float]* %Layer2_Weights_CPU_copy_14, [100 x float]* %Layer2_Weights_CPU_copy_15, [100 x float]* %Layer2_Weights_CPU_copy_16, [100 x float]* %Layer2_Weights_CPU_copy_17, [100 x float]* %Layer2_Weights_CPU_copy_18, [100 x float]* %Layer2_Weights_CPU_copy_19, [100 x float]* %Layer2_Weights_CPU_copy_20, [100 x float]* %Layer2_Weights_CPU_copy_21, [100 x float]* %Layer2_Weights_CPU_copy_22, [100 x float]* %Layer2_Weights_CPU_copy_23, [100 x float]* %Layer2_Weights_CPU_copy_24, [100 x float]* %Layer2_Weights_CPU_copy_25, [100 x float]* %Layer2_Weights_CPU_copy_26, [100 x float]* %Layer2_Weights_CPU_copy_27, [100 x float]* %Layer2_Weights_CPU_copy_28, [100 x float]* %Layer2_Weights_CPU_copy_29, [100 x float]* %Layer2_Weights_CPU_copy_30, [100 x float]* %Layer2_Weights_CPU_copy_31, [100 x float]* %Layer2_Weights_CPU_copy_32, [100 x float]* %Layer2_Weights_CPU_copy_33, [100 x float]* %Layer2_Weights_CPU_copy_34, [100 x float]* %Layer2_Weights_CPU_copy_35, [100 x float]* %Layer2_Weights_CPU_copy_36, [100 x float]* %Layer2_Weights_CPU_copy_37, [100 x float]* %Layer2_Weights_CPU_copy_38, [100 x float]* %Layer2_Weights_CPU_copy_39, [100 x float]* %Layer2_Weights_CPU_copy_40, [100 x float]* %Layer2_Weights_CPU_copy_41, [100 x float]* %Layer2_Weights_CPU_copy_42, [100 x float]* %Layer2_Weights_CPU_copy_43, [100 x float]* %Layer2_Weights_CPU_copy_44, [100 x float]* %Layer2_Weights_CPU_copy_45, [100 x float]* %Layer2_Weights_CPU_copy_46, [100 x float]* %Layer2_Weights_CPU_copy_47, [100 x float]* %Layer2_Weights_CPU_copy_48, [100 x float]* %Layer2_Weights_CPU_copy_49, [100 x float]* %Layer2_Weights_CPU_copy_50, [100 x float]* %Layer2_Weights_CPU_copy_51, [100 x float]* %Layer2_Weights_CPU_copy_52, [100 x float]* %Layer2_Weights_CPU_copy_53, [100 x float]* %Layer2_Weights_CPU_copy_54, [100 x float]* %Layer2_Weights_CPU_copy_55, [100 x float]* %Layer2_Weights_CPU_copy_56, [100 x float]* %Layer2_Weights_CPU_copy_57, [100 x float]* %Layer2_Weights_CPU_copy_58, [100 x float]* %Layer2_Weights_CPU_copy_59, [100 x float]* %Layer2_Weights_CPU_copy_60, [100 x float]* %Layer2_Weights_CPU_copy_61, [100 x float]* %Layer2_Weights_CPU_copy_62, [100 x float]* %Layer2_Weights_CPU_copy_63, [100 x float]* %Layer2_Weights_CPU_copy_64, [100 x float]* %Layer2_Weights_CPU_copy_65, [100 x float]* %Layer2_Weights_CPU_copy_66, [100 x float]* %Layer2_Weights_CPU_copy_67, [100 x float]* %Layer2_Weights_CPU_copy_68, [100 x float]* %Layer2_Weights_CPU_copy_69, [100 x float]* %Layer2_Weights_CPU_copy_70, [100 x float]* %Layer2_Weights_CPU_copy_71, [100 x float]* %Layer2_Weights_CPU_copy_72, [100 x float]* %Layer2_Weights_CPU_copy_73, [100 x float]* %Layer2_Weights_CPU_copy_74, [100 x float]* %Layer2_Weights_CPU_copy_75, [100 x float]* %Layer2_Weights_CPU_copy_76, [100 x float]* %Layer2_Weights_CPU_copy_77, [1250 x float]* nonnull %2, [1250 x float]* %Layer3_Neurons_CPU_copy)
  %_0 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_0, i64 0, i64 0
  %_1 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_1, i64 0, i64 0
  %_2 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_2, i64 0, i64 0
  %_3 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_3, i64 0, i64 0
  %_4 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_4, i64 0, i64 0
  %_5 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_5, i64 0, i64 0
  %_6 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_6, i64 0, i64 0
  %_7 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_7, i64 0, i64 0
  %_8 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_8, i64 0, i64 0
  %_9 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_9, i64 0, i64 0
  %_10 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_10, i64 0, i64 0
  %_11 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_11, i64 0, i64 0
  %_12 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_12, i64 0, i64 0
  %_13 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_13, i64 0, i64 0
  %_14 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_14, i64 0, i64 0
  %_15 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_15, i64 0, i64 0
  %_16 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_16, i64 0, i64 0
  %_17 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_17, i64 0, i64 0
  %_18 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_18, i64 0, i64 0
  %_19 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_19, i64 0, i64 0
  %_20 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_20, i64 0, i64 0
  %_21 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_21, i64 0, i64 0
  %_22 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_22, i64 0, i64 0
  %_23 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_23, i64 0, i64 0
  %_24 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_24, i64 0, i64 0
  %_25 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_25, i64 0, i64 0
  %_26 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_26, i64 0, i64 0
  %_27 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_27, i64 0, i64 0
  %_28 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_28, i64 0, i64 0
  %_29 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_29, i64 0, i64 0
  %_30 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_30, i64 0, i64 0
  %_31 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_31, i64 0, i64 0
  %_32 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_32, i64 0, i64 0
  %_33 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_33, i64 0, i64 0
  %_34 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_34, i64 0, i64 0
  %_35 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_35, i64 0, i64 0
  %_36 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_36, i64 0, i64 0
  %_37 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_37, i64 0, i64 0
  %_38 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_38, i64 0, i64 0
  %_39 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_39, i64 0, i64 0
  %_40 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_40, i64 0, i64 0
  %_41 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_41, i64 0, i64 0
  %_42 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_42, i64 0, i64 0
  %_43 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_43, i64 0, i64 0
  %_44 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_44, i64 0, i64 0
  %_45 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_45, i64 0, i64 0
  %_46 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_46, i64 0, i64 0
  %_47 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_47, i64 0, i64 0
  %_48 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_48, i64 0, i64 0
  %_49 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_49, i64 0, i64 0
  %_50 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_50, i64 0, i64 0
  %_51 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_51, i64 0, i64 0
  %_52 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_52, i64 0, i64 0
  %_53 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_53, i64 0, i64 0
  %_54 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_54, i64 0, i64 0
  %_55 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_55, i64 0, i64 0
  %_56 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_56, i64 0, i64 0
  %_57 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_57, i64 0, i64 0
  %_58 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_58, i64 0, i64 0
  %_59 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_59, i64 0, i64 0
  %_60 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_60, i64 0, i64 0
  %_61 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_61, i64 0, i64 0
  %_62 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_62, i64 0, i64 0
  %_63 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_63, i64 0, i64 0
  %_64 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_64, i64 0, i64 0
  %_65 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_65, i64 0, i64 0
  %_66 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_66, i64 0, i64 0
  %_67 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_67, i64 0, i64 0
  %_68 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_68, i64 0, i64 0
  %_69 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_69, i64 0, i64 0
  %_70 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_70, i64 0, i64 0
  %_71 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_71, i64 0, i64 0
  %_72 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_72, i64 0, i64 0
  %_73 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_73, i64 0, i64 0
  %_74 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_74, i64 0, i64 0
  %_75 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_75, i64 0, i64 0
  %_76 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_76, i64 0, i64 0
  %_77 = getelementptr [100 x float], [100 x float]* %Layer2_Weights_CPU_copy_77, i64 0, i64 0
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_0, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_1, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_2, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_3, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_4, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_5, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_6, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_7, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_8, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_9, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_10, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_11, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_12, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_13, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_14, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_15, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_16, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_17, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_18, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_19, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_20, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_21, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_22, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_23, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_24, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_25, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_26, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_27, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_28, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_29, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_30, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_31, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_32, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_33, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_34, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_35, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_36, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_37, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_38, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_39, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_40, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_41, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_42, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_43, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_44, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_45, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_46, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_47, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_48, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_49, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_50, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_51, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_52, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_53, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_54, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_55, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_56, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_57, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_58, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_59, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_60, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_61, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_62, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_63, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_64, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_65, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_66, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_67, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_68, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_69, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_70, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_71, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_72, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_73, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_74, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_75, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_76, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_77, i32 999, i32 1, i32 1, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_3, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_4, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_5, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_6, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_7, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_8, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_9, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_10, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_11, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_12, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_13, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_14, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_15, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_16, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_17, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_18, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_19, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_20, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_21, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_22, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_23, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_24, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_25, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_26, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_27, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_28, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_29, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_30, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_31, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_32, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_33, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_34, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_35, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_36, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_37, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_38, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_39, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_40, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_41, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_42, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_43, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_44, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_45, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_46, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_47, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_48, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_49, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_50, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_51, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_52, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_53, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_54, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_55, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_56, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_57, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_58, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_59, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_60, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_61, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_62, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_63, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_64, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_65, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_66, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_67, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_68, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_69, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_70, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_71, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_72, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_73, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_74, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_75, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_76, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(float* %_77, i32 998, i32 1, i32 0, i1 false) ], !dbg !89
  call void @apatb_calculateLayer3_hw([1014 x float]* %Layer2_Neurons_CPU_copy, [100 x float]* %Layer2_Weights_CPU_copy_0, [100 x float]* %Layer2_Weights_CPU_copy_1, [100 x float]* %Layer2_Weights_CPU_copy_2, [100 x float]* %Layer2_Weights_CPU_copy_3, [100 x float]* %Layer2_Weights_CPU_copy_4, [100 x float]* %Layer2_Weights_CPU_copy_5, [100 x float]* %Layer2_Weights_CPU_copy_6, [100 x float]* %Layer2_Weights_CPU_copy_7, [100 x float]* %Layer2_Weights_CPU_copy_8, [100 x float]* %Layer2_Weights_CPU_copy_9, [100 x float]* %Layer2_Weights_CPU_copy_10, [100 x float]* %Layer2_Weights_CPU_copy_11, [100 x float]* %Layer2_Weights_CPU_copy_12, [100 x float]* %Layer2_Weights_CPU_copy_13, [100 x float]* %Layer2_Weights_CPU_copy_14, [100 x float]* %Layer2_Weights_CPU_copy_15, [100 x float]* %Layer2_Weights_CPU_copy_16, [100 x float]* %Layer2_Weights_CPU_copy_17, [100 x float]* %Layer2_Weights_CPU_copy_18, [100 x float]* %Layer2_Weights_CPU_copy_19, [100 x float]* %Layer2_Weights_CPU_copy_20, [100 x float]* %Layer2_Weights_CPU_copy_21, [100 x float]* %Layer2_Weights_CPU_copy_22, [100 x float]* %Layer2_Weights_CPU_copy_23, [100 x float]* %Layer2_Weights_CPU_copy_24, [100 x float]* %Layer2_Weights_CPU_copy_25, [100 x float]* %Layer2_Weights_CPU_copy_26, [100 x float]* %Layer2_Weights_CPU_copy_27, [100 x float]* %Layer2_Weights_CPU_copy_28, [100 x float]* %Layer2_Weights_CPU_copy_29, [100 x float]* %Layer2_Weights_CPU_copy_30, [100 x float]* %Layer2_Weights_CPU_copy_31, [100 x float]* %Layer2_Weights_CPU_copy_32, [100 x float]* %Layer2_Weights_CPU_copy_33, [100 x float]* %Layer2_Weights_CPU_copy_34, [100 x float]* %Layer2_Weights_CPU_copy_35, [100 x float]* %Layer2_Weights_CPU_copy_36, [100 x float]* %Layer2_Weights_CPU_copy_37, [100 x float]* %Layer2_Weights_CPU_copy_38, [100 x float]* %Layer2_Weights_CPU_copy_39, [100 x float]* %Layer2_Weights_CPU_copy_40, [100 x float]* %Layer2_Weights_CPU_copy_41, [100 x float]* %Layer2_Weights_CPU_copy_42, [100 x float]* %Layer2_Weights_CPU_copy_43, [100 x float]* %Layer2_Weights_CPU_copy_44, [100 x float]* %Layer2_Weights_CPU_copy_45, [100 x float]* %Layer2_Weights_CPU_copy_46, [100 x float]* %Layer2_Weights_CPU_copy_47, [100 x float]* %Layer2_Weights_CPU_copy_48, [100 x float]* %Layer2_Weights_CPU_copy_49, [100 x float]* %Layer2_Weights_CPU_copy_50, [100 x float]* %Layer2_Weights_CPU_copy_51, [100 x float]* %Layer2_Weights_CPU_copy_52, [100 x float]* %Layer2_Weights_CPU_copy_53, [100 x float]* %Layer2_Weights_CPU_copy_54, [100 x float]* %Layer2_Weights_CPU_copy_55, [100 x float]* %Layer2_Weights_CPU_copy_56, [100 x float]* %Layer2_Weights_CPU_copy_57, [100 x float]* %Layer2_Weights_CPU_copy_58, [100 x float]* %Layer2_Weights_CPU_copy_59, [100 x float]* %Layer2_Weights_CPU_copy_60, [100 x float]* %Layer2_Weights_CPU_copy_61, [100 x float]* %Layer2_Weights_CPU_copy_62, [100 x float]* %Layer2_Weights_CPU_copy_63, [100 x float]* %Layer2_Weights_CPU_copy_64, [100 x float]* %Layer2_Weights_CPU_copy_65, [100 x float]* %Layer2_Weights_CPU_copy_66, [100 x float]* %Layer2_Weights_CPU_copy_67, [100 x float]* %Layer2_Weights_CPU_copy_68, [100 x float]* %Layer2_Weights_CPU_copy_69, [100 x float]* %Layer2_Weights_CPU_copy_70, [100 x float]* %Layer2_Weights_CPU_copy_71, [100 x float]* %Layer2_Weights_CPU_copy_72, [100 x float]* %Layer2_Weights_CPU_copy_73, [100 x float]* %Layer2_Weights_CPU_copy_74, [100 x float]* %Layer2_Weights_CPU_copy_75, [100 x float]* %Layer2_Weights_CPU_copy_76, [100 x float]* %Layer2_Weights_CPU_copy_77, [1250 x float]* %Layer3_Neurons_CPU_copy)
  call void @copy_back([1014 x float]* %0, [1014 x float]* %Layer2_Neurons_CPU_copy, [7800 x float]* %1, [100 x float]* %Layer2_Weights_CPU_copy_0, [100 x float]* %Layer2_Weights_CPU_copy_1, [100 x float]* %Layer2_Weights_CPU_copy_2, [100 x float]* %Layer2_Weights_CPU_copy_3, [100 x float]* %Layer2_Weights_CPU_copy_4, [100 x float]* %Layer2_Weights_CPU_copy_5, [100 x float]* %Layer2_Weights_CPU_copy_6, [100 x float]* %Layer2_Weights_CPU_copy_7, [100 x float]* %Layer2_Weights_CPU_copy_8, [100 x float]* %Layer2_Weights_CPU_copy_9, [100 x float]* %Layer2_Weights_CPU_copy_10, [100 x float]* %Layer2_Weights_CPU_copy_11, [100 x float]* %Layer2_Weights_CPU_copy_12, [100 x float]* %Layer2_Weights_CPU_copy_13, [100 x float]* %Layer2_Weights_CPU_copy_14, [100 x float]* %Layer2_Weights_CPU_copy_15, [100 x float]* %Layer2_Weights_CPU_copy_16, [100 x float]* %Layer2_Weights_CPU_copy_17, [100 x float]* %Layer2_Weights_CPU_copy_18, [100 x float]* %Layer2_Weights_CPU_copy_19, [100 x float]* %Layer2_Weights_CPU_copy_20, [100 x float]* %Layer2_Weights_CPU_copy_21, [100 x float]* %Layer2_Weights_CPU_copy_22, [100 x float]* %Layer2_Weights_CPU_copy_23, [100 x float]* %Layer2_Weights_CPU_copy_24, [100 x float]* %Layer2_Weights_CPU_copy_25, [100 x float]* %Layer2_Weights_CPU_copy_26, [100 x float]* %Layer2_Weights_CPU_copy_27, [100 x float]* %Layer2_Weights_CPU_copy_28, [100 x float]* %Layer2_Weights_CPU_copy_29, [100 x float]* %Layer2_Weights_CPU_copy_30, [100 x float]* %Layer2_Weights_CPU_copy_31, [100 x float]* %Layer2_Weights_CPU_copy_32, [100 x float]* %Layer2_Weights_CPU_copy_33, [100 x float]* %Layer2_Weights_CPU_copy_34, [100 x float]* %Layer2_Weights_CPU_copy_35, [100 x float]* %Layer2_Weights_CPU_copy_36, [100 x float]* %Layer2_Weights_CPU_copy_37, [100 x float]* %Layer2_Weights_CPU_copy_38, [100 x float]* %Layer2_Weights_CPU_copy_39, [100 x float]* %Layer2_Weights_CPU_copy_40, [100 x float]* %Layer2_Weights_CPU_copy_41, [100 x float]* %Layer2_Weights_CPU_copy_42, [100 x float]* %Layer2_Weights_CPU_copy_43, [100 x float]* %Layer2_Weights_CPU_copy_44, [100 x float]* %Layer2_Weights_CPU_copy_45, [100 x float]* %Layer2_Weights_CPU_copy_46, [100 x float]* %Layer2_Weights_CPU_copy_47, [100 x float]* %Layer2_Weights_CPU_copy_48, [100 x float]* %Layer2_Weights_CPU_copy_49, [100 x float]* %Layer2_Weights_CPU_copy_50, [100 x float]* %Layer2_Weights_CPU_copy_51, [100 x float]* %Layer2_Weights_CPU_copy_52, [100 x float]* %Layer2_Weights_CPU_copy_53, [100 x float]* %Layer2_Weights_CPU_copy_54, [100 x float]* %Layer2_Weights_CPU_copy_55, [100 x float]* %Layer2_Weights_CPU_copy_56, [100 x float]* %Layer2_Weights_CPU_copy_57, [100 x float]* %Layer2_Weights_CPU_copy_58, [100 x float]* %Layer2_Weights_CPU_copy_59, [100 x float]* %Layer2_Weights_CPU_copy_60, [100 x float]* %Layer2_Weights_CPU_copy_61, [100 x float]* %Layer2_Weights_CPU_copy_62, [100 x float]* %Layer2_Weights_CPU_copy_63, [100 x float]* %Layer2_Weights_CPU_copy_64, [100 x float]* %Layer2_Weights_CPU_copy_65, [100 x float]* %Layer2_Weights_CPU_copy_66, [100 x float]* %Layer2_Weights_CPU_copy_67, [100 x float]* %Layer2_Weights_CPU_copy_68, [100 x float]* %Layer2_Weights_CPU_copy_69, [100 x float]* %Layer2_Weights_CPU_copy_70, [100 x float]* %Layer2_Weights_CPU_copy_71, [100 x float]* %Layer2_Weights_CPU_copy_72, [100 x float]* %Layer2_Weights_CPU_copy_73, [100 x float]* %Layer2_Weights_CPU_copy_74, [100 x float]* %Layer2_Weights_CPU_copy_75, [100 x float]* %Layer2_Weights_CPU_copy_76, [100 x float]* %Layer2_Weights_CPU_copy_77, [1250 x float]* %2, [1250 x float]* %Layer3_Neurons_CPU_copy)
  tail call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1_0)
  call void @free(i8* %malloccall1_1)
  call void @free(i8* %malloccall1_2)
  call void @free(i8* %malloccall1_3)
  call void @free(i8* %malloccall1_4)
  call void @free(i8* %malloccall1_5)
  call void @free(i8* %malloccall1_6)
  call void @free(i8* %malloccall1_7)
  call void @free(i8* %malloccall1_8)
  call void @free(i8* %malloccall1_9)
  call void @free(i8* %malloccall1_10)
  call void @free(i8* %malloccall1_11)
  call void @free(i8* %malloccall1_12)
  call void @free(i8* %malloccall1_13)
  call void @free(i8* %malloccall1_14)
  call void @free(i8* %malloccall1_15)
  call void @free(i8* %malloccall1_16)
  call void @free(i8* %malloccall1_17)
  call void @free(i8* %malloccall1_18)
  call void @free(i8* %malloccall1_19)
  call void @free(i8* %malloccall1_20)
  call void @free(i8* %malloccall1_21)
  call void @free(i8* %malloccall1_22)
  call void @free(i8* %malloccall1_23)
  call void @free(i8* %malloccall1_24)
  call void @free(i8* %malloccall1_25)
  call void @free(i8* %malloccall1_26)
  call void @free(i8* %malloccall1_27)
  call void @free(i8* %malloccall1_28)
  call void @free(i8* %malloccall1_29)
  call void @free(i8* %malloccall1_30)
  call void @free(i8* %malloccall1_31)
  call void @free(i8* %malloccall1_32)
  call void @free(i8* %malloccall1_33)
  call void @free(i8* %malloccall1_34)
  call void @free(i8* %malloccall1_35)
  call void @free(i8* %malloccall1_36)
  call void @free(i8* %malloccall1_37)
  call void @free(i8* %malloccall1_38)
  call void @free(i8* %malloccall1_39)
  call void @free(i8* %malloccall1_40)
  call void @free(i8* %malloccall1_41)
  call void @free(i8* %malloccall1_42)
  call void @free(i8* %malloccall1_43)
  call void @free(i8* %malloccall1_44)
  call void @free(i8* %malloccall1_45)
  call void @free(i8* %malloccall1_46)
  call void @free(i8* %malloccall1_47)
  call void @free(i8* %malloccall1_48)
  call void @free(i8* %malloccall1_49)
  call void @free(i8* %malloccall1_50)
  call void @free(i8* %malloccall1_51)
  call void @free(i8* %malloccall1_52)
  call void @free(i8* %malloccall1_53)
  call void @free(i8* %malloccall1_54)
  call void @free(i8* %malloccall1_55)
  call void @free(i8* %malloccall1_56)
  call void @free(i8* %malloccall1_57)
  call void @free(i8* %malloccall1_58)
  call void @free(i8* %malloccall1_59)
  call void @free(i8* %malloccall1_60)
  call void @free(i8* %malloccall1_61)
  call void @free(i8* %malloccall1_62)
  call void @free(i8* %malloccall1_63)
  call void @free(i8* %malloccall1_64)
  call void @free(i8* %malloccall1_65)
  call void @free(i8* %malloccall1_66)
  call void @free(i8* %malloccall1_67)
  call void @free(i8* %malloccall1_68)
  call void @free(i8* %malloccall1_69)
  call void @free(i8* %malloccall1_70)
  call void @free(i8* %malloccall1_71)
  call void @free(i8* %malloccall1_72)
  call void @free(i8* %malloccall1_73)
  call void @free(i8* %malloccall1_74)
  call void @free(i8* %malloccall1_75)
  call void @free(i8* %malloccall1_76)
  call void @free(i8* %malloccall1_77)
  tail call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

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
define void @arraycpy_hls.p0a7800f32([7800 x float]* "orig.arg.no"="0" %dst, [7800 x float]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #3 {
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

declare void @free(i8*) local_unnamed_addr

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a7800f32.118.119([100 x float]* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, [100 x float]* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [100 x float]* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [100 x float]* "orig.arg.no"="0" "unpacked"="0.3" %dst_3, [100 x float]* "orig.arg.no"="0" "unpacked"="0.4" %dst_4, [100 x float]* "orig.arg.no"="0" "unpacked"="0.5" %dst_5, [100 x float]* "orig.arg.no"="0" "unpacked"="0.6" %dst_6, [100 x float]* "orig.arg.no"="0" "unpacked"="0.7" %dst_7, [100 x float]* "orig.arg.no"="0" "unpacked"="0.8" %dst_8, [100 x float]* "orig.arg.no"="0" "unpacked"="0.9" %dst_9, [100 x float]* "orig.arg.no"="0" "unpacked"="0.10" %dst_10, [100 x float]* "orig.arg.no"="0" "unpacked"="0.11" %dst_11, [100 x float]* "orig.arg.no"="0" "unpacked"="0.12" %dst_12, [100 x float]* "orig.arg.no"="0" "unpacked"="0.13" %dst_13, [100 x float]* "orig.arg.no"="0" "unpacked"="0.14" %dst_14, [100 x float]* "orig.arg.no"="0" "unpacked"="0.15" %dst_15, [100 x float]* "orig.arg.no"="0" "unpacked"="0.16" %dst_16, [100 x float]* "orig.arg.no"="0" "unpacked"="0.17" %dst_17, [100 x float]* "orig.arg.no"="0" "unpacked"="0.18" %dst_18, [100 x float]* "orig.arg.no"="0" "unpacked"="0.19" %dst_19, [100 x float]* "orig.arg.no"="0" "unpacked"="0.20" %dst_20, [100 x float]* "orig.arg.no"="0" "unpacked"="0.21" %dst_21, [100 x float]* "orig.arg.no"="0" "unpacked"="0.22" %dst_22, [100 x float]* "orig.arg.no"="0" "unpacked"="0.23" %dst_23, [100 x float]* "orig.arg.no"="0" "unpacked"="0.24" %dst_24, [100 x float]* "orig.arg.no"="0" "unpacked"="0.25" %dst_25, [100 x float]* "orig.arg.no"="0" "unpacked"="0.26" %dst_26, [100 x float]* "orig.arg.no"="0" "unpacked"="0.27" %dst_27, [100 x float]* "orig.arg.no"="0" "unpacked"="0.28" %dst_28, [100 x float]* "orig.arg.no"="0" "unpacked"="0.29" %dst_29, [100 x float]* "orig.arg.no"="0" "unpacked"="0.30" %dst_30, [100 x float]* "orig.arg.no"="0" "unpacked"="0.31" %dst_31, [100 x float]* "orig.arg.no"="0" "unpacked"="0.32" %dst_32, [100 x float]* "orig.arg.no"="0" "unpacked"="0.33" %dst_33, [100 x float]* "orig.arg.no"="0" "unpacked"="0.34" %dst_34, [100 x float]* "orig.arg.no"="0" "unpacked"="0.35" %dst_35, [100 x float]* "orig.arg.no"="0" "unpacked"="0.36" %dst_36, [100 x float]* "orig.arg.no"="0" "unpacked"="0.37" %dst_37, [100 x float]* "orig.arg.no"="0" "unpacked"="0.38" %dst_38, [100 x float]* "orig.arg.no"="0" "unpacked"="0.39" %dst_39, [100 x float]* "orig.arg.no"="0" "unpacked"="0.40" %dst_40, [100 x float]* "orig.arg.no"="0" "unpacked"="0.41" %dst_41, [100 x float]* "orig.arg.no"="0" "unpacked"="0.42" %dst_42, [100 x float]* "orig.arg.no"="0" "unpacked"="0.43" %dst_43, [100 x float]* "orig.arg.no"="0" "unpacked"="0.44" %dst_44, [100 x float]* "orig.arg.no"="0" "unpacked"="0.45" %dst_45, [100 x float]* "orig.arg.no"="0" "unpacked"="0.46" %dst_46, [100 x float]* "orig.arg.no"="0" "unpacked"="0.47" %dst_47, [100 x float]* "orig.arg.no"="0" "unpacked"="0.48" %dst_48, [100 x float]* "orig.arg.no"="0" "unpacked"="0.49" %dst_49, [100 x float]* "orig.arg.no"="0" "unpacked"="0.50" %dst_50, [100 x float]* "orig.arg.no"="0" "unpacked"="0.51" %dst_51, [100 x float]* "orig.arg.no"="0" "unpacked"="0.52" %dst_52, [100 x float]* "orig.arg.no"="0" "unpacked"="0.53" %dst_53, [100 x float]* "orig.arg.no"="0" "unpacked"="0.54" %dst_54, [100 x float]* "orig.arg.no"="0" "unpacked"="0.55" %dst_55, [100 x float]* "orig.arg.no"="0" "unpacked"="0.56" %dst_56, [100 x float]* "orig.arg.no"="0" "unpacked"="0.57" %dst_57, [100 x float]* "orig.arg.no"="0" "unpacked"="0.58" %dst_58, [100 x float]* "orig.arg.no"="0" "unpacked"="0.59" %dst_59, [100 x float]* "orig.arg.no"="0" "unpacked"="0.60" %dst_60, [100 x float]* "orig.arg.no"="0" "unpacked"="0.61" %dst_61, [100 x float]* "orig.arg.no"="0" "unpacked"="0.62" %dst_62, [100 x float]* "orig.arg.no"="0" "unpacked"="0.63" %dst_63, [100 x float]* "orig.arg.no"="0" "unpacked"="0.64" %dst_64, [100 x float]* "orig.arg.no"="0" "unpacked"="0.65" %dst_65, [100 x float]* "orig.arg.no"="0" "unpacked"="0.66" %dst_66, [100 x float]* "orig.arg.no"="0" "unpacked"="0.67" %dst_67, [100 x float]* "orig.arg.no"="0" "unpacked"="0.68" %dst_68, [100 x float]* "orig.arg.no"="0" "unpacked"="0.69" %dst_69, [100 x float]* "orig.arg.no"="0" "unpacked"="0.70" %dst_70, [100 x float]* "orig.arg.no"="0" "unpacked"="0.71" %dst_71, [100 x float]* "orig.arg.no"="0" "unpacked"="0.72" %dst_72, [100 x float]* "orig.arg.no"="0" "unpacked"="0.73" %dst_73, [100 x float]* "orig.arg.no"="0" "unpacked"="0.74" %dst_74, [100 x float]* "orig.arg.no"="0" "unpacked"="0.75" %dst_75, [100 x float]* "orig.arg.no"="0" "unpacked"="0.76" %dst_76, [100 x float]* "orig.arg.no"="0" "unpacked"="0.77" %dst_77, [7800 x float]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #3 {
entry:
  %0 = icmp eq [7800 x float]* %src, null
  %1 = icmp eq [100 x float]* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %3 = urem i64 %for.loop.idx2, 100
  %4 = udiv i64 %for.loop.idx2, 100
  %5 = trunc i64 %4 to i7
  %dst.addr_0 = getelementptr [100 x float], [100 x float]* %dst_0, i64 0, i64 %3
  %dst.addr_1 = getelementptr [100 x float], [100 x float]* %dst_1, i64 0, i64 %3
  %dst.addr_2 = getelementptr [100 x float], [100 x float]* %dst_2, i64 0, i64 %3
  %dst.addr_3 = getelementptr [100 x float], [100 x float]* %dst_3, i64 0, i64 %3
  %dst.addr_4 = getelementptr [100 x float], [100 x float]* %dst_4, i64 0, i64 %3
  %dst.addr_5 = getelementptr [100 x float], [100 x float]* %dst_5, i64 0, i64 %3
  %dst.addr_6 = getelementptr [100 x float], [100 x float]* %dst_6, i64 0, i64 %3
  %dst.addr_7 = getelementptr [100 x float], [100 x float]* %dst_7, i64 0, i64 %3
  %dst.addr_8 = getelementptr [100 x float], [100 x float]* %dst_8, i64 0, i64 %3
  %dst.addr_9 = getelementptr [100 x float], [100 x float]* %dst_9, i64 0, i64 %3
  %dst.addr_10 = getelementptr [100 x float], [100 x float]* %dst_10, i64 0, i64 %3
  %dst.addr_11 = getelementptr [100 x float], [100 x float]* %dst_11, i64 0, i64 %3
  %dst.addr_12 = getelementptr [100 x float], [100 x float]* %dst_12, i64 0, i64 %3
  %dst.addr_13 = getelementptr [100 x float], [100 x float]* %dst_13, i64 0, i64 %3
  %dst.addr_14 = getelementptr [100 x float], [100 x float]* %dst_14, i64 0, i64 %3
  %dst.addr_15 = getelementptr [100 x float], [100 x float]* %dst_15, i64 0, i64 %3
  %dst.addr_16 = getelementptr [100 x float], [100 x float]* %dst_16, i64 0, i64 %3
  %dst.addr_17 = getelementptr [100 x float], [100 x float]* %dst_17, i64 0, i64 %3
  %dst.addr_18 = getelementptr [100 x float], [100 x float]* %dst_18, i64 0, i64 %3
  %dst.addr_19 = getelementptr [100 x float], [100 x float]* %dst_19, i64 0, i64 %3
  %dst.addr_20 = getelementptr [100 x float], [100 x float]* %dst_20, i64 0, i64 %3
  %dst.addr_21 = getelementptr [100 x float], [100 x float]* %dst_21, i64 0, i64 %3
  %dst.addr_22 = getelementptr [100 x float], [100 x float]* %dst_22, i64 0, i64 %3
  %dst.addr_23 = getelementptr [100 x float], [100 x float]* %dst_23, i64 0, i64 %3
  %dst.addr_24 = getelementptr [100 x float], [100 x float]* %dst_24, i64 0, i64 %3
  %dst.addr_25 = getelementptr [100 x float], [100 x float]* %dst_25, i64 0, i64 %3
  %dst.addr_26 = getelementptr [100 x float], [100 x float]* %dst_26, i64 0, i64 %3
  %dst.addr_27 = getelementptr [100 x float], [100 x float]* %dst_27, i64 0, i64 %3
  %dst.addr_28 = getelementptr [100 x float], [100 x float]* %dst_28, i64 0, i64 %3
  %dst.addr_29 = getelementptr [100 x float], [100 x float]* %dst_29, i64 0, i64 %3
  %dst.addr_30 = getelementptr [100 x float], [100 x float]* %dst_30, i64 0, i64 %3
  %dst.addr_31 = getelementptr [100 x float], [100 x float]* %dst_31, i64 0, i64 %3
  %dst.addr_32 = getelementptr [100 x float], [100 x float]* %dst_32, i64 0, i64 %3
  %dst.addr_33 = getelementptr [100 x float], [100 x float]* %dst_33, i64 0, i64 %3
  %dst.addr_34 = getelementptr [100 x float], [100 x float]* %dst_34, i64 0, i64 %3
  %dst.addr_35 = getelementptr [100 x float], [100 x float]* %dst_35, i64 0, i64 %3
  %dst.addr_36 = getelementptr [100 x float], [100 x float]* %dst_36, i64 0, i64 %3
  %dst.addr_37 = getelementptr [100 x float], [100 x float]* %dst_37, i64 0, i64 %3
  %dst.addr_38 = getelementptr [100 x float], [100 x float]* %dst_38, i64 0, i64 %3
  %dst.addr_39 = getelementptr [100 x float], [100 x float]* %dst_39, i64 0, i64 %3
  %dst.addr_40 = getelementptr [100 x float], [100 x float]* %dst_40, i64 0, i64 %3
  %dst.addr_41 = getelementptr [100 x float], [100 x float]* %dst_41, i64 0, i64 %3
  %dst.addr_42 = getelementptr [100 x float], [100 x float]* %dst_42, i64 0, i64 %3
  %dst.addr_43 = getelementptr [100 x float], [100 x float]* %dst_43, i64 0, i64 %3
  %dst.addr_44 = getelementptr [100 x float], [100 x float]* %dst_44, i64 0, i64 %3
  %dst.addr_45 = getelementptr [100 x float], [100 x float]* %dst_45, i64 0, i64 %3
  %dst.addr_46 = getelementptr [100 x float], [100 x float]* %dst_46, i64 0, i64 %3
  %dst.addr_47 = getelementptr [100 x float], [100 x float]* %dst_47, i64 0, i64 %3
  %dst.addr_48 = getelementptr [100 x float], [100 x float]* %dst_48, i64 0, i64 %3
  %dst.addr_49 = getelementptr [100 x float], [100 x float]* %dst_49, i64 0, i64 %3
  %dst.addr_50 = getelementptr [100 x float], [100 x float]* %dst_50, i64 0, i64 %3
  %dst.addr_51 = getelementptr [100 x float], [100 x float]* %dst_51, i64 0, i64 %3
  %dst.addr_52 = getelementptr [100 x float], [100 x float]* %dst_52, i64 0, i64 %3
  %dst.addr_53 = getelementptr [100 x float], [100 x float]* %dst_53, i64 0, i64 %3
  %dst.addr_54 = getelementptr [100 x float], [100 x float]* %dst_54, i64 0, i64 %3
  %dst.addr_55 = getelementptr [100 x float], [100 x float]* %dst_55, i64 0, i64 %3
  %dst.addr_56 = getelementptr [100 x float], [100 x float]* %dst_56, i64 0, i64 %3
  %dst.addr_57 = getelementptr [100 x float], [100 x float]* %dst_57, i64 0, i64 %3
  %dst.addr_58 = getelementptr [100 x float], [100 x float]* %dst_58, i64 0, i64 %3
  %dst.addr_59 = getelementptr [100 x float], [100 x float]* %dst_59, i64 0, i64 %3
  %dst.addr_60 = getelementptr [100 x float], [100 x float]* %dst_60, i64 0, i64 %3
  %dst.addr_61 = getelementptr [100 x float], [100 x float]* %dst_61, i64 0, i64 %3
  %dst.addr_62 = getelementptr [100 x float], [100 x float]* %dst_62, i64 0, i64 %3
  %dst.addr_63 = getelementptr [100 x float], [100 x float]* %dst_63, i64 0, i64 %3
  %dst.addr_64 = getelementptr [100 x float], [100 x float]* %dst_64, i64 0, i64 %3
  %dst.addr_65 = getelementptr [100 x float], [100 x float]* %dst_65, i64 0, i64 %3
  %dst.addr_66 = getelementptr [100 x float], [100 x float]* %dst_66, i64 0, i64 %3
  %dst.addr_67 = getelementptr [100 x float], [100 x float]* %dst_67, i64 0, i64 %3
  %dst.addr_68 = getelementptr [100 x float], [100 x float]* %dst_68, i64 0, i64 %3
  %dst.addr_69 = getelementptr [100 x float], [100 x float]* %dst_69, i64 0, i64 %3
  %dst.addr_70 = getelementptr [100 x float], [100 x float]* %dst_70, i64 0, i64 %3
  %dst.addr_71 = getelementptr [100 x float], [100 x float]* %dst_71, i64 0, i64 %3
  %dst.addr_72 = getelementptr [100 x float], [100 x float]* %dst_72, i64 0, i64 %3
  %dst.addr_73 = getelementptr [100 x float], [100 x float]* %dst_73, i64 0, i64 %3
  %dst.addr_74 = getelementptr [100 x float], [100 x float]* %dst_74, i64 0, i64 %3
  %dst.addr_75 = getelementptr [100 x float], [100 x float]* %dst_75, i64 0, i64 %3
  %dst.addr_76 = getelementptr [100 x float], [100 x float]* %dst_76, i64 0, i64 %3
  %dst.addr_77 = getelementptr [100 x float], [100 x float]* %dst_77, i64 0, i64 %3
  %src.addr = getelementptr [7800 x float], [7800 x float]* %src, i64 0, i64 %for.loop.idx2
  %6 = load float, float* %src.addr, align 4
  switch i7 %5, label %dst.addr.case.77 [
    i7 0, label %dst.addr.case.0
    i7 1, label %dst.addr.case.1
    i7 2, label %dst.addr.case.2
    i7 3, label %dst.addr.case.3
    i7 4, label %dst.addr.case.4
    i7 5, label %dst.addr.case.5
    i7 6, label %dst.addr.case.6
    i7 7, label %dst.addr.case.7
    i7 8, label %dst.addr.case.8
    i7 9, label %dst.addr.case.9
    i7 10, label %dst.addr.case.10
    i7 11, label %dst.addr.case.11
    i7 12, label %dst.addr.case.12
    i7 13, label %dst.addr.case.13
    i7 14, label %dst.addr.case.14
    i7 15, label %dst.addr.case.15
    i7 16, label %dst.addr.case.16
    i7 17, label %dst.addr.case.17
    i7 18, label %dst.addr.case.18
    i7 19, label %dst.addr.case.19
    i7 20, label %dst.addr.case.20
    i7 21, label %dst.addr.case.21
    i7 22, label %dst.addr.case.22
    i7 23, label %dst.addr.case.23
    i7 24, label %dst.addr.case.24
    i7 25, label %dst.addr.case.25
    i7 26, label %dst.addr.case.26
    i7 27, label %dst.addr.case.27
    i7 28, label %dst.addr.case.28
    i7 29, label %dst.addr.case.29
    i7 30, label %dst.addr.case.30
    i7 31, label %dst.addr.case.31
    i7 32, label %dst.addr.case.32
    i7 33, label %dst.addr.case.33
    i7 34, label %dst.addr.case.34
    i7 35, label %dst.addr.case.35
    i7 36, label %dst.addr.case.36
    i7 37, label %dst.addr.case.37
    i7 38, label %dst.addr.case.38
    i7 39, label %dst.addr.case.39
    i7 40, label %dst.addr.case.40
    i7 41, label %dst.addr.case.41
    i7 42, label %dst.addr.case.42
    i7 43, label %dst.addr.case.43
    i7 44, label %dst.addr.case.44
    i7 45, label %dst.addr.case.45
    i7 46, label %dst.addr.case.46
    i7 47, label %dst.addr.case.47
    i7 48, label %dst.addr.case.48
    i7 49, label %dst.addr.case.49
    i7 50, label %dst.addr.case.50
    i7 51, label %dst.addr.case.51
    i7 52, label %dst.addr.case.52
    i7 53, label %dst.addr.case.53
    i7 54, label %dst.addr.case.54
    i7 55, label %dst.addr.case.55
    i7 56, label %dst.addr.case.56
    i7 57, label %dst.addr.case.57
    i7 58, label %dst.addr.case.58
    i7 59, label %dst.addr.case.59
    i7 60, label %dst.addr.case.60
    i7 61, label %dst.addr.case.61
    i7 62, label %dst.addr.case.62
    i7 63, label %dst.addr.case.63
    i7 -64, label %dst.addr.case.64
    i7 -63, label %dst.addr.case.65
    i7 -62, label %dst.addr.case.66
    i7 -61, label %dst.addr.case.67
    i7 -60, label %dst.addr.case.68
    i7 -59, label %dst.addr.case.69
    i7 -58, label %dst.addr.case.70
    i7 -57, label %dst.addr.case.71
    i7 -56, label %dst.addr.case.72
    i7 -55, label %dst.addr.case.73
    i7 -54, label %dst.addr.case.74
    i7 -53, label %dst.addr.case.75
    i7 -52, label %dst.addr.case.76
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_0, align 4
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_1, align 4
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_2, align 4
  br label %dst.addr.exit

dst.addr.case.3:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_3, align 4
  br label %dst.addr.exit

dst.addr.case.4:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_4, align 4
  br label %dst.addr.exit

dst.addr.case.5:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_5, align 4
  br label %dst.addr.exit

dst.addr.case.6:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_6, align 4
  br label %dst.addr.exit

dst.addr.case.7:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_7, align 4
  br label %dst.addr.exit

dst.addr.case.8:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_8, align 4
  br label %dst.addr.exit

dst.addr.case.9:                                  ; preds = %for.loop
  store float %6, float* %dst.addr_9, align 4
  br label %dst.addr.exit

dst.addr.case.10:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_10, align 4
  br label %dst.addr.exit

dst.addr.case.11:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_11, align 4
  br label %dst.addr.exit

dst.addr.case.12:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_12, align 4
  br label %dst.addr.exit

dst.addr.case.13:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_13, align 4
  br label %dst.addr.exit

dst.addr.case.14:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_14, align 4
  br label %dst.addr.exit

dst.addr.case.15:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_15, align 4
  br label %dst.addr.exit

dst.addr.case.16:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_16, align 4
  br label %dst.addr.exit

dst.addr.case.17:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_17, align 4
  br label %dst.addr.exit

dst.addr.case.18:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_18, align 4
  br label %dst.addr.exit

dst.addr.case.19:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_19, align 4
  br label %dst.addr.exit

dst.addr.case.20:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_20, align 4
  br label %dst.addr.exit

dst.addr.case.21:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_21, align 4
  br label %dst.addr.exit

dst.addr.case.22:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_22, align 4
  br label %dst.addr.exit

dst.addr.case.23:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_23, align 4
  br label %dst.addr.exit

dst.addr.case.24:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_24, align 4
  br label %dst.addr.exit

dst.addr.case.25:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_25, align 4
  br label %dst.addr.exit

dst.addr.case.26:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_26, align 4
  br label %dst.addr.exit

dst.addr.case.27:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_27, align 4
  br label %dst.addr.exit

dst.addr.case.28:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_28, align 4
  br label %dst.addr.exit

dst.addr.case.29:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_29, align 4
  br label %dst.addr.exit

dst.addr.case.30:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_30, align 4
  br label %dst.addr.exit

dst.addr.case.31:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_31, align 4
  br label %dst.addr.exit

dst.addr.case.32:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_32, align 4
  br label %dst.addr.exit

dst.addr.case.33:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_33, align 4
  br label %dst.addr.exit

dst.addr.case.34:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_34, align 4
  br label %dst.addr.exit

dst.addr.case.35:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_35, align 4
  br label %dst.addr.exit

dst.addr.case.36:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_36, align 4
  br label %dst.addr.exit

dst.addr.case.37:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_37, align 4
  br label %dst.addr.exit

dst.addr.case.38:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_38, align 4
  br label %dst.addr.exit

dst.addr.case.39:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_39, align 4
  br label %dst.addr.exit

dst.addr.case.40:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_40, align 4
  br label %dst.addr.exit

dst.addr.case.41:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_41, align 4
  br label %dst.addr.exit

dst.addr.case.42:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_42, align 4
  br label %dst.addr.exit

dst.addr.case.43:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_43, align 4
  br label %dst.addr.exit

dst.addr.case.44:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_44, align 4
  br label %dst.addr.exit

dst.addr.case.45:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_45, align 4
  br label %dst.addr.exit

dst.addr.case.46:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_46, align 4
  br label %dst.addr.exit

dst.addr.case.47:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_47, align 4
  br label %dst.addr.exit

dst.addr.case.48:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_48, align 4
  br label %dst.addr.exit

dst.addr.case.49:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_49, align 4
  br label %dst.addr.exit

dst.addr.case.50:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_50, align 4
  br label %dst.addr.exit

dst.addr.case.51:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_51, align 4
  br label %dst.addr.exit

dst.addr.case.52:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_52, align 4
  br label %dst.addr.exit

dst.addr.case.53:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_53, align 4
  br label %dst.addr.exit

dst.addr.case.54:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_54, align 4
  br label %dst.addr.exit

dst.addr.case.55:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_55, align 4
  br label %dst.addr.exit

dst.addr.case.56:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_56, align 4
  br label %dst.addr.exit

dst.addr.case.57:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_57, align 4
  br label %dst.addr.exit

dst.addr.case.58:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_58, align 4
  br label %dst.addr.exit

dst.addr.case.59:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_59, align 4
  br label %dst.addr.exit

dst.addr.case.60:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_60, align 4
  br label %dst.addr.exit

dst.addr.case.61:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_61, align 4
  br label %dst.addr.exit

dst.addr.case.62:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_62, align 4
  br label %dst.addr.exit

dst.addr.case.63:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_63, align 4
  br label %dst.addr.exit

dst.addr.case.64:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_64, align 4
  br label %dst.addr.exit

dst.addr.case.65:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_65, align 4
  br label %dst.addr.exit

dst.addr.case.66:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_66, align 4
  br label %dst.addr.exit

dst.addr.case.67:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_67, align 4
  br label %dst.addr.exit

dst.addr.case.68:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_68, align 4
  br label %dst.addr.exit

dst.addr.case.69:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_69, align 4
  br label %dst.addr.exit

dst.addr.case.70:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_70, align 4
  br label %dst.addr.exit

dst.addr.case.71:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_71, align 4
  br label %dst.addr.exit

dst.addr.case.72:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_72, align 4
  br label %dst.addr.exit

dst.addr.case.73:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_73, align 4
  br label %dst.addr.exit

dst.addr.case.74:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_74, align 4
  br label %dst.addr.exit

dst.addr.case.75:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_75, align 4
  br label %dst.addr.exit

dst.addr.case.76:                                 ; preds = %for.loop
  store float %6, float* %dst.addr_76, align 4
  br label %dst.addr.exit

dst.addr.case.77:                                 ; preds = %for.loop
  %7 = icmp eq i7 %5, -51
  call void @llvm.assume(i1 %7)
  store float %6, float* %dst.addr_77, align 4
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.77, %dst.addr.case.76, %dst.addr.case.75, %dst.addr.case.74, %dst.addr.case.73, %dst.addr.case.72, %dst.addr.case.71, %dst.addr.case.70, %dst.addr.case.69, %dst.addr.case.68, %dst.addr.case.67, %dst.addr.case.66, %dst.addr.case.65, %dst.addr.case.64, %dst.addr.case.63, %dst.addr.case.62, %dst.addr.case.61, %dst.addr.case.60, %dst.addr.case.59, %dst.addr.case.58, %dst.addr.case.57, %dst.addr.case.56, %dst.addr.case.55, %dst.addr.case.54, %dst.addr.case.53, %dst.addr.case.52, %dst.addr.case.51, %dst.addr.case.50, %dst.addr.case.49, %dst.addr.case.48, %dst.addr.case.47, %dst.addr.case.46, %dst.addr.case.45, %dst.addr.case.44, %dst.addr.case.43, %dst.addr.case.42, %dst.addr.case.41, %dst.addr.case.40, %dst.addr.case.39, %dst.addr.case.38, %dst.addr.case.37, %dst.addr.case.36, %dst.addr.case.35, %dst.addr.case.34, %dst.addr.case.33, %dst.addr.case.32, %dst.addr.case.31, %dst.addr.case.30, %dst.addr.case.29, %dst.addr.case.28, %dst.addr.case.27, %dst.addr.case.26, %dst.addr.case.25, %dst.addr.case.24, %dst.addr.case.23, %dst.addr.case.22, %dst.addr.case.21, %dst.addr.case.20, %dst.addr.case.19, %dst.addr.case.18, %dst.addr.case.17, %dst.addr.case.16, %dst.addr.case.15, %dst.addr.case.14, %dst.addr.case.13, %dst.addr.case.12, %dst.addr.case.11, %dst.addr.case.10, %dst.addr.case.9, %dst.addr.case.8, %dst.addr.case.7, %dst.addr.case.6, %dst.addr.case.5, %dst.addr.case.4, %dst.addr.case.3, %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a7800f32.117.120([100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.0" %dst_0, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.3" %dst_3, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.4" %dst_4, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.5" %dst_5, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.6" %dst_6, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.7" %dst_7, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.8" %dst_8, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.9" %dst_9, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.10" %dst_10, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.11" %dst_11, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.12" %dst_12, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.13" %dst_13, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.14" %dst_14, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.15" %dst_15, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.16" %dst_16, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.17" %dst_17, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.18" %dst_18, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.19" %dst_19, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.20" %dst_20, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.21" %dst_21, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.22" %dst_22, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.23" %dst_23, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.24" %dst_24, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.25" %dst_25, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.26" %dst_26, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.27" %dst_27, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.28" %dst_28, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.29" %dst_29, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.30" %dst_30, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.31" %dst_31, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.32" %dst_32, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.33" %dst_33, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.34" %dst_34, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.35" %dst_35, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.36" %dst_36, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.37" %dst_37, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.38" %dst_38, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.39" %dst_39, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.40" %dst_40, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.41" %dst_41, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.42" %dst_42, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.43" %dst_43, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.44" %dst_44, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.45" %dst_45, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.46" %dst_46, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.47" %dst_47, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.48" %dst_48, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.49" %dst_49, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.50" %dst_50, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.51" %dst_51, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.52" %dst_52, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.53" %dst_53, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.54" %dst_54, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.55" %dst_55, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.56" %dst_56, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.57" %dst_57, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.58" %dst_58, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.59" %dst_59, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.60" %dst_60, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.61" %dst_61, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.62" %dst_62, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.63" %dst_63, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.64" %dst_64, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.65" %dst_65, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.66" %dst_66, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.67" %dst_67, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.68" %dst_68, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.69" %dst_69, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.70" %dst_70, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.71" %dst_71, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.72" %dst_72, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.73" %dst_73, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.74" %dst_74, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.75" %dst_75, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.76" %dst_76, [100 x float]* noalias "orig.arg.no"="0" "unpacked"="0.77" %dst_77, [7800 x float]* noalias readonly "orig.arg.no"="1" %src) #2 {
entry:
  %0 = icmp eq [100 x float]* %dst_0, null
  %1 = icmp eq [7800 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a7800f32.118.119([100 x float]* nonnull %dst_0, [100 x float]* %dst_1, [100 x float]* %dst_2, [100 x float]* %dst_3, [100 x float]* %dst_4, [100 x float]* %dst_5, [100 x float]* %dst_6, [100 x float]* %dst_7, [100 x float]* %dst_8, [100 x float]* %dst_9, [100 x float]* %dst_10, [100 x float]* %dst_11, [100 x float]* %dst_12, [100 x float]* %dst_13, [100 x float]* %dst_14, [100 x float]* %dst_15, [100 x float]* %dst_16, [100 x float]* %dst_17, [100 x float]* %dst_18, [100 x float]* %dst_19, [100 x float]* %dst_20, [100 x float]* %dst_21, [100 x float]* %dst_22, [100 x float]* %dst_23, [100 x float]* %dst_24, [100 x float]* %dst_25, [100 x float]* %dst_26, [100 x float]* %dst_27, [100 x float]* %dst_28, [100 x float]* %dst_29, [100 x float]* %dst_30, [100 x float]* %dst_31, [100 x float]* %dst_32, [100 x float]* %dst_33, [100 x float]* %dst_34, [100 x float]* %dst_35, [100 x float]* %dst_36, [100 x float]* %dst_37, [100 x float]* %dst_38, [100 x float]* %dst_39, [100 x float]* %dst_40, [100 x float]* %dst_41, [100 x float]* %dst_42, [100 x float]* %dst_43, [100 x float]* %dst_44, [100 x float]* %dst_45, [100 x float]* %dst_46, [100 x float]* %dst_47, [100 x float]* %dst_48, [100 x float]* %dst_49, [100 x float]* %dst_50, [100 x float]* %dst_51, [100 x float]* %dst_52, [100 x float]* %dst_53, [100 x float]* %dst_54, [100 x float]* %dst_55, [100 x float]* %dst_56, [100 x float]* %dst_57, [100 x float]* %dst_58, [100 x float]* %dst_59, [100 x float]* %dst_60, [100 x float]* %dst_61, [100 x float]* %dst_62, [100 x float]* %dst_63, [100 x float]* %dst_64, [100 x float]* %dst_65, [100 x float]* %dst_66, [100 x float]* %dst_67, [100 x float]* %dst_68, [100 x float]* %dst_69, [100 x float]* %dst_70, [100 x float]* %dst_71, [100 x float]* %dst_72, [100 x float]* %dst_73, [100 x float]* %dst_74, [100 x float]* %dst_75, [100 x float]* %dst_76, [100 x float]* %dst_77, [7800 x float]* nonnull %src, i64 7800)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([1014 x float]* noalias readonly "orig.arg.no"="0", [1014 x float]* noalias "orig.arg.no"="1", [7800 x float]* noalias readonly "orig.arg.no"="2", [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.0" %_0, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.1" %_1, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.2" %_2, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.3" %_3, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.4" %_4, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.5" %_5, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.6" %_6, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.7" %_7, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.8" %_8, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.9" %_9, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.10" %_10, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.11" %_11, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.12" %_12, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.13" %_13, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.14" %_14, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.15" %_15, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.16" %_16, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.17" %_17, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.18" %_18, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.19" %_19, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.20" %_20, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.21" %_21, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.22" %_22, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.23" %_23, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.24" %_24, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.25" %_25, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.26" %_26, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.27" %_27, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.28" %_28, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.29" %_29, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.30" %_30, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.31" %_31, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.32" %_32, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.33" %_33, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.34" %_34, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.35" %_35, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.36" %_36, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.37" %_37, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.38" %_38, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.39" %_39, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.40" %_40, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.41" %_41, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.42" %_42, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.43" %_43, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.44" %_44, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.45" %_45, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.46" %_46, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.47" %_47, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.48" %_48, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.49" %_49, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.50" %_50, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.51" %_51, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.52" %_52, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.53" %_53, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.54" %_54, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.55" %_55, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.56" %_56, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.57" %_57, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.58" %_58, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.59" %_59, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.60" %_60, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.61" %_61, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.62" %_62, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.63" %_63, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.64" %_64, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.65" %_65, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.66" %_66, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.67" %_67, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.68" %_68, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.69" %_69, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.70" %_70, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.71" %_71, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.72" %_72, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.73" %_73, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.74" %_74, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.75" %_75, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.76" %_76, [100 x float]* noalias "orig.arg.no"="3" "unpacked"="3.77" %_77, [1250 x float]* noalias readonly "orig.arg.no"="4", [1250 x float]* noalias "orig.arg.no"="5") #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1014f32([1014 x float]* %1, [1014 x float]* %0)
  call void @onebyonecpy_hls.p0a7800f32.117.120([100 x float]* %_0, [100 x float]* %_1, [100 x float]* %_2, [100 x float]* %_3, [100 x float]* %_4, [100 x float]* %_5, [100 x float]* %_6, [100 x float]* %_7, [100 x float]* %_8, [100 x float]* %_9, [100 x float]* %_10, [100 x float]* %_11, [100 x float]* %_12, [100 x float]* %_13, [100 x float]* %_14, [100 x float]* %_15, [100 x float]* %_16, [100 x float]* %_17, [100 x float]* %_18, [100 x float]* %_19, [100 x float]* %_20, [100 x float]* %_21, [100 x float]* %_22, [100 x float]* %_23, [100 x float]* %_24, [100 x float]* %_25, [100 x float]* %_26, [100 x float]* %_27, [100 x float]* %_28, [100 x float]* %_29, [100 x float]* %_30, [100 x float]* %_31, [100 x float]* %_32, [100 x float]* %_33, [100 x float]* %_34, [100 x float]* %_35, [100 x float]* %_36, [100 x float]* %_37, [100 x float]* %_38, [100 x float]* %_39, [100 x float]* %_40, [100 x float]* %_41, [100 x float]* %_42, [100 x float]* %_43, [100 x float]* %_44, [100 x float]* %_45, [100 x float]* %_46, [100 x float]* %_47, [100 x float]* %_48, [100 x float]* %_49, [100 x float]* %_50, [100 x float]* %_51, [100 x float]* %_52, [100 x float]* %_53, [100 x float]* %_54, [100 x float]* %_55, [100 x float]* %_56, [100 x float]* %_57, [100 x float]* %_58, [100 x float]* %_59, [100 x float]* %_60, [100 x float]* %_61, [100 x float]* %_62, [100 x float]* %_63, [100 x float]* %_64, [100 x float]* %_65, [100 x float]* %_66, [100 x float]* %_67, [100 x float]* %_68, [100 x float]* %_69, [100 x float]* %_70, [100 x float]* %_71, [100 x float]* %_72, [100 x float]* %_73, [100 x float]* %_74, [100 x float]* %_75, [100 x float]* %_76, [100 x float]* %_77, [7800 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a1250f32([1250 x float]* %4, [1250 x float]* %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a7800f32.126.127([7800 x float]* "orig.arg.no"="0" %dst, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.3" %src_3, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.4" %src_4, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.5" %src_5, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.6" %src_6, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.7" %src_7, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.8" %src_8, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.9" %src_9, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.10" %src_10, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.11" %src_11, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.12" %src_12, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.13" %src_13, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.14" %src_14, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.15" %src_15, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.16" %src_16, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.17" %src_17, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.18" %src_18, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.19" %src_19, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.20" %src_20, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.21" %src_21, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.22" %src_22, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.23" %src_23, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.24" %src_24, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.25" %src_25, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.26" %src_26, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.27" %src_27, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.28" %src_28, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.29" %src_29, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.30" %src_30, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.31" %src_31, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.32" %src_32, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.33" %src_33, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.34" %src_34, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.35" %src_35, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.36" %src_36, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.37" %src_37, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.38" %src_38, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.39" %src_39, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.40" %src_40, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.41" %src_41, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.42" %src_42, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.43" %src_43, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.44" %src_44, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.45" %src_45, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.46" %src_46, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.47" %src_47, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.48" %src_48, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.49" %src_49, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.50" %src_50, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.51" %src_51, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.52" %src_52, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.53" %src_53, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.54" %src_54, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.55" %src_55, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.56" %src_56, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.57" %src_57, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.58" %src_58, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.59" %src_59, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.60" %src_60, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.61" %src_61, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.62" %src_62, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.63" %src_63, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.64" %src_64, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.65" %src_65, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.66" %src_66, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.67" %src_67, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.68" %src_68, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.69" %src_69, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.70" %src_70, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.71" %src_71, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.72" %src_72, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.73" %src_73, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.74" %src_74, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.75" %src_75, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.76" %src_76, [100 x float]* readonly "orig.arg.no"="1" "unpacked"="1.77" %src_77, i64 "orig.arg.no"="2" %num) #3 {
entry:
  %0 = icmp eq [100 x float]* %src_0, null
  %1 = icmp eq [7800 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %3 = urem i64 %for.loop.idx2, 100
  %4 = udiv i64 %for.loop.idx2, 100
  %5 = trunc i64 %4 to i7
  %dst.addr = getelementptr [7800 x float], [7800 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr_0 = getelementptr [100 x float], [100 x float]* %src_0, i64 0, i64 %3
  %src.addr_1 = getelementptr [100 x float], [100 x float]* %src_1, i64 0, i64 %3
  %src.addr_2 = getelementptr [100 x float], [100 x float]* %src_2, i64 0, i64 %3
  %src.addr_3 = getelementptr [100 x float], [100 x float]* %src_3, i64 0, i64 %3
  %src.addr_4 = getelementptr [100 x float], [100 x float]* %src_4, i64 0, i64 %3
  %src.addr_5 = getelementptr [100 x float], [100 x float]* %src_5, i64 0, i64 %3
  %src.addr_6 = getelementptr [100 x float], [100 x float]* %src_6, i64 0, i64 %3
  %src.addr_7 = getelementptr [100 x float], [100 x float]* %src_7, i64 0, i64 %3
  %src.addr_8 = getelementptr [100 x float], [100 x float]* %src_8, i64 0, i64 %3
  %src.addr_9 = getelementptr [100 x float], [100 x float]* %src_9, i64 0, i64 %3
  %src.addr_10 = getelementptr [100 x float], [100 x float]* %src_10, i64 0, i64 %3
  %src.addr_11 = getelementptr [100 x float], [100 x float]* %src_11, i64 0, i64 %3
  %src.addr_12 = getelementptr [100 x float], [100 x float]* %src_12, i64 0, i64 %3
  %src.addr_13 = getelementptr [100 x float], [100 x float]* %src_13, i64 0, i64 %3
  %src.addr_14 = getelementptr [100 x float], [100 x float]* %src_14, i64 0, i64 %3
  %src.addr_15 = getelementptr [100 x float], [100 x float]* %src_15, i64 0, i64 %3
  %src.addr_16 = getelementptr [100 x float], [100 x float]* %src_16, i64 0, i64 %3
  %src.addr_17 = getelementptr [100 x float], [100 x float]* %src_17, i64 0, i64 %3
  %src.addr_18 = getelementptr [100 x float], [100 x float]* %src_18, i64 0, i64 %3
  %src.addr_19 = getelementptr [100 x float], [100 x float]* %src_19, i64 0, i64 %3
  %src.addr_20 = getelementptr [100 x float], [100 x float]* %src_20, i64 0, i64 %3
  %src.addr_21 = getelementptr [100 x float], [100 x float]* %src_21, i64 0, i64 %3
  %src.addr_22 = getelementptr [100 x float], [100 x float]* %src_22, i64 0, i64 %3
  %src.addr_23 = getelementptr [100 x float], [100 x float]* %src_23, i64 0, i64 %3
  %src.addr_24 = getelementptr [100 x float], [100 x float]* %src_24, i64 0, i64 %3
  %src.addr_25 = getelementptr [100 x float], [100 x float]* %src_25, i64 0, i64 %3
  %src.addr_26 = getelementptr [100 x float], [100 x float]* %src_26, i64 0, i64 %3
  %src.addr_27 = getelementptr [100 x float], [100 x float]* %src_27, i64 0, i64 %3
  %src.addr_28 = getelementptr [100 x float], [100 x float]* %src_28, i64 0, i64 %3
  %src.addr_29 = getelementptr [100 x float], [100 x float]* %src_29, i64 0, i64 %3
  %src.addr_30 = getelementptr [100 x float], [100 x float]* %src_30, i64 0, i64 %3
  %src.addr_31 = getelementptr [100 x float], [100 x float]* %src_31, i64 0, i64 %3
  %src.addr_32 = getelementptr [100 x float], [100 x float]* %src_32, i64 0, i64 %3
  %src.addr_33 = getelementptr [100 x float], [100 x float]* %src_33, i64 0, i64 %3
  %src.addr_34 = getelementptr [100 x float], [100 x float]* %src_34, i64 0, i64 %3
  %src.addr_35 = getelementptr [100 x float], [100 x float]* %src_35, i64 0, i64 %3
  %src.addr_36 = getelementptr [100 x float], [100 x float]* %src_36, i64 0, i64 %3
  %src.addr_37 = getelementptr [100 x float], [100 x float]* %src_37, i64 0, i64 %3
  %src.addr_38 = getelementptr [100 x float], [100 x float]* %src_38, i64 0, i64 %3
  %src.addr_39 = getelementptr [100 x float], [100 x float]* %src_39, i64 0, i64 %3
  %src.addr_40 = getelementptr [100 x float], [100 x float]* %src_40, i64 0, i64 %3
  %src.addr_41 = getelementptr [100 x float], [100 x float]* %src_41, i64 0, i64 %3
  %src.addr_42 = getelementptr [100 x float], [100 x float]* %src_42, i64 0, i64 %3
  %src.addr_43 = getelementptr [100 x float], [100 x float]* %src_43, i64 0, i64 %3
  %src.addr_44 = getelementptr [100 x float], [100 x float]* %src_44, i64 0, i64 %3
  %src.addr_45 = getelementptr [100 x float], [100 x float]* %src_45, i64 0, i64 %3
  %src.addr_46 = getelementptr [100 x float], [100 x float]* %src_46, i64 0, i64 %3
  %src.addr_47 = getelementptr [100 x float], [100 x float]* %src_47, i64 0, i64 %3
  %src.addr_48 = getelementptr [100 x float], [100 x float]* %src_48, i64 0, i64 %3
  %src.addr_49 = getelementptr [100 x float], [100 x float]* %src_49, i64 0, i64 %3
  %src.addr_50 = getelementptr [100 x float], [100 x float]* %src_50, i64 0, i64 %3
  %src.addr_51 = getelementptr [100 x float], [100 x float]* %src_51, i64 0, i64 %3
  %src.addr_52 = getelementptr [100 x float], [100 x float]* %src_52, i64 0, i64 %3
  %src.addr_53 = getelementptr [100 x float], [100 x float]* %src_53, i64 0, i64 %3
  %src.addr_54 = getelementptr [100 x float], [100 x float]* %src_54, i64 0, i64 %3
  %src.addr_55 = getelementptr [100 x float], [100 x float]* %src_55, i64 0, i64 %3
  %src.addr_56 = getelementptr [100 x float], [100 x float]* %src_56, i64 0, i64 %3
  %src.addr_57 = getelementptr [100 x float], [100 x float]* %src_57, i64 0, i64 %3
  %src.addr_58 = getelementptr [100 x float], [100 x float]* %src_58, i64 0, i64 %3
  %src.addr_59 = getelementptr [100 x float], [100 x float]* %src_59, i64 0, i64 %3
  %src.addr_60 = getelementptr [100 x float], [100 x float]* %src_60, i64 0, i64 %3
  %src.addr_61 = getelementptr [100 x float], [100 x float]* %src_61, i64 0, i64 %3
  %src.addr_62 = getelementptr [100 x float], [100 x float]* %src_62, i64 0, i64 %3
  %src.addr_63 = getelementptr [100 x float], [100 x float]* %src_63, i64 0, i64 %3
  %src.addr_64 = getelementptr [100 x float], [100 x float]* %src_64, i64 0, i64 %3
  %src.addr_65 = getelementptr [100 x float], [100 x float]* %src_65, i64 0, i64 %3
  %src.addr_66 = getelementptr [100 x float], [100 x float]* %src_66, i64 0, i64 %3
  %src.addr_67 = getelementptr [100 x float], [100 x float]* %src_67, i64 0, i64 %3
  %src.addr_68 = getelementptr [100 x float], [100 x float]* %src_68, i64 0, i64 %3
  %src.addr_69 = getelementptr [100 x float], [100 x float]* %src_69, i64 0, i64 %3
  %src.addr_70 = getelementptr [100 x float], [100 x float]* %src_70, i64 0, i64 %3
  %src.addr_71 = getelementptr [100 x float], [100 x float]* %src_71, i64 0, i64 %3
  %src.addr_72 = getelementptr [100 x float], [100 x float]* %src_72, i64 0, i64 %3
  %src.addr_73 = getelementptr [100 x float], [100 x float]* %src_73, i64 0, i64 %3
  %src.addr_74 = getelementptr [100 x float], [100 x float]* %src_74, i64 0, i64 %3
  %src.addr_75 = getelementptr [100 x float], [100 x float]* %src_75, i64 0, i64 %3
  %src.addr_76 = getelementptr [100 x float], [100 x float]* %src_76, i64 0, i64 %3
  %src.addr_77 = getelementptr [100 x float], [100 x float]* %src_77, i64 0, i64 %3
  switch i7 %5, label %src.addr.case.77 [
    i7 0, label %src.addr.case.0
    i7 1, label %src.addr.case.1
    i7 2, label %src.addr.case.2
    i7 3, label %src.addr.case.3
    i7 4, label %src.addr.case.4
    i7 5, label %src.addr.case.5
    i7 6, label %src.addr.case.6
    i7 7, label %src.addr.case.7
    i7 8, label %src.addr.case.8
    i7 9, label %src.addr.case.9
    i7 10, label %src.addr.case.10
    i7 11, label %src.addr.case.11
    i7 12, label %src.addr.case.12
    i7 13, label %src.addr.case.13
    i7 14, label %src.addr.case.14
    i7 15, label %src.addr.case.15
    i7 16, label %src.addr.case.16
    i7 17, label %src.addr.case.17
    i7 18, label %src.addr.case.18
    i7 19, label %src.addr.case.19
    i7 20, label %src.addr.case.20
    i7 21, label %src.addr.case.21
    i7 22, label %src.addr.case.22
    i7 23, label %src.addr.case.23
    i7 24, label %src.addr.case.24
    i7 25, label %src.addr.case.25
    i7 26, label %src.addr.case.26
    i7 27, label %src.addr.case.27
    i7 28, label %src.addr.case.28
    i7 29, label %src.addr.case.29
    i7 30, label %src.addr.case.30
    i7 31, label %src.addr.case.31
    i7 32, label %src.addr.case.32
    i7 33, label %src.addr.case.33
    i7 34, label %src.addr.case.34
    i7 35, label %src.addr.case.35
    i7 36, label %src.addr.case.36
    i7 37, label %src.addr.case.37
    i7 38, label %src.addr.case.38
    i7 39, label %src.addr.case.39
    i7 40, label %src.addr.case.40
    i7 41, label %src.addr.case.41
    i7 42, label %src.addr.case.42
    i7 43, label %src.addr.case.43
    i7 44, label %src.addr.case.44
    i7 45, label %src.addr.case.45
    i7 46, label %src.addr.case.46
    i7 47, label %src.addr.case.47
    i7 48, label %src.addr.case.48
    i7 49, label %src.addr.case.49
    i7 50, label %src.addr.case.50
    i7 51, label %src.addr.case.51
    i7 52, label %src.addr.case.52
    i7 53, label %src.addr.case.53
    i7 54, label %src.addr.case.54
    i7 55, label %src.addr.case.55
    i7 56, label %src.addr.case.56
    i7 57, label %src.addr.case.57
    i7 58, label %src.addr.case.58
    i7 59, label %src.addr.case.59
    i7 60, label %src.addr.case.60
    i7 61, label %src.addr.case.61
    i7 62, label %src.addr.case.62
    i7 63, label %src.addr.case.63
    i7 -64, label %src.addr.case.64
    i7 -63, label %src.addr.case.65
    i7 -62, label %src.addr.case.66
    i7 -61, label %src.addr.case.67
    i7 -60, label %src.addr.case.68
    i7 -59, label %src.addr.case.69
    i7 -58, label %src.addr.case.70
    i7 -57, label %src.addr.case.71
    i7 -56, label %src.addr.case.72
    i7 -55, label %src.addr.case.73
    i7 -54, label %src.addr.case.74
    i7 -53, label %src.addr.case.75
    i7 -52, label %src.addr.case.76
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_0 = load float, float* %src.addr_0, align 4
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_1 = load float, float* %src.addr_1, align 4
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %_2 = load float, float* %src.addr_2, align 4
  br label %src.addr.exit

src.addr.case.3:                                  ; preds = %for.loop
  %_3 = load float, float* %src.addr_3, align 4
  br label %src.addr.exit

src.addr.case.4:                                  ; preds = %for.loop
  %_4 = load float, float* %src.addr_4, align 4
  br label %src.addr.exit

src.addr.case.5:                                  ; preds = %for.loop
  %_5 = load float, float* %src.addr_5, align 4
  br label %src.addr.exit

src.addr.case.6:                                  ; preds = %for.loop
  %_6 = load float, float* %src.addr_6, align 4
  br label %src.addr.exit

src.addr.case.7:                                  ; preds = %for.loop
  %_7 = load float, float* %src.addr_7, align 4
  br label %src.addr.exit

src.addr.case.8:                                  ; preds = %for.loop
  %_8 = load float, float* %src.addr_8, align 4
  br label %src.addr.exit

src.addr.case.9:                                  ; preds = %for.loop
  %_9 = load float, float* %src.addr_9, align 4
  br label %src.addr.exit

src.addr.case.10:                                 ; preds = %for.loop
  %_10 = load float, float* %src.addr_10, align 4
  br label %src.addr.exit

src.addr.case.11:                                 ; preds = %for.loop
  %_11 = load float, float* %src.addr_11, align 4
  br label %src.addr.exit

src.addr.case.12:                                 ; preds = %for.loop
  %_12 = load float, float* %src.addr_12, align 4
  br label %src.addr.exit

src.addr.case.13:                                 ; preds = %for.loop
  %_13 = load float, float* %src.addr_13, align 4
  br label %src.addr.exit

src.addr.case.14:                                 ; preds = %for.loop
  %_14 = load float, float* %src.addr_14, align 4
  br label %src.addr.exit

src.addr.case.15:                                 ; preds = %for.loop
  %_15 = load float, float* %src.addr_15, align 4
  br label %src.addr.exit

src.addr.case.16:                                 ; preds = %for.loop
  %_16 = load float, float* %src.addr_16, align 4
  br label %src.addr.exit

src.addr.case.17:                                 ; preds = %for.loop
  %_17 = load float, float* %src.addr_17, align 4
  br label %src.addr.exit

src.addr.case.18:                                 ; preds = %for.loop
  %_18 = load float, float* %src.addr_18, align 4
  br label %src.addr.exit

src.addr.case.19:                                 ; preds = %for.loop
  %_19 = load float, float* %src.addr_19, align 4
  br label %src.addr.exit

src.addr.case.20:                                 ; preds = %for.loop
  %_20 = load float, float* %src.addr_20, align 4
  br label %src.addr.exit

src.addr.case.21:                                 ; preds = %for.loop
  %_21 = load float, float* %src.addr_21, align 4
  br label %src.addr.exit

src.addr.case.22:                                 ; preds = %for.loop
  %_22 = load float, float* %src.addr_22, align 4
  br label %src.addr.exit

src.addr.case.23:                                 ; preds = %for.loop
  %_23 = load float, float* %src.addr_23, align 4
  br label %src.addr.exit

src.addr.case.24:                                 ; preds = %for.loop
  %_24 = load float, float* %src.addr_24, align 4
  br label %src.addr.exit

src.addr.case.25:                                 ; preds = %for.loop
  %_25 = load float, float* %src.addr_25, align 4
  br label %src.addr.exit

src.addr.case.26:                                 ; preds = %for.loop
  %_26 = load float, float* %src.addr_26, align 4
  br label %src.addr.exit

src.addr.case.27:                                 ; preds = %for.loop
  %_27 = load float, float* %src.addr_27, align 4
  br label %src.addr.exit

src.addr.case.28:                                 ; preds = %for.loop
  %_28 = load float, float* %src.addr_28, align 4
  br label %src.addr.exit

src.addr.case.29:                                 ; preds = %for.loop
  %_29 = load float, float* %src.addr_29, align 4
  br label %src.addr.exit

src.addr.case.30:                                 ; preds = %for.loop
  %_30 = load float, float* %src.addr_30, align 4
  br label %src.addr.exit

src.addr.case.31:                                 ; preds = %for.loop
  %_31 = load float, float* %src.addr_31, align 4
  br label %src.addr.exit

src.addr.case.32:                                 ; preds = %for.loop
  %_32 = load float, float* %src.addr_32, align 4
  br label %src.addr.exit

src.addr.case.33:                                 ; preds = %for.loop
  %_33 = load float, float* %src.addr_33, align 4
  br label %src.addr.exit

src.addr.case.34:                                 ; preds = %for.loop
  %_34 = load float, float* %src.addr_34, align 4
  br label %src.addr.exit

src.addr.case.35:                                 ; preds = %for.loop
  %_35 = load float, float* %src.addr_35, align 4
  br label %src.addr.exit

src.addr.case.36:                                 ; preds = %for.loop
  %_36 = load float, float* %src.addr_36, align 4
  br label %src.addr.exit

src.addr.case.37:                                 ; preds = %for.loop
  %_37 = load float, float* %src.addr_37, align 4
  br label %src.addr.exit

src.addr.case.38:                                 ; preds = %for.loop
  %_38 = load float, float* %src.addr_38, align 4
  br label %src.addr.exit

src.addr.case.39:                                 ; preds = %for.loop
  %_39 = load float, float* %src.addr_39, align 4
  br label %src.addr.exit

src.addr.case.40:                                 ; preds = %for.loop
  %_40 = load float, float* %src.addr_40, align 4
  br label %src.addr.exit

src.addr.case.41:                                 ; preds = %for.loop
  %_41 = load float, float* %src.addr_41, align 4
  br label %src.addr.exit

src.addr.case.42:                                 ; preds = %for.loop
  %_42 = load float, float* %src.addr_42, align 4
  br label %src.addr.exit

src.addr.case.43:                                 ; preds = %for.loop
  %_43 = load float, float* %src.addr_43, align 4
  br label %src.addr.exit

src.addr.case.44:                                 ; preds = %for.loop
  %_44 = load float, float* %src.addr_44, align 4
  br label %src.addr.exit

src.addr.case.45:                                 ; preds = %for.loop
  %_45 = load float, float* %src.addr_45, align 4
  br label %src.addr.exit

src.addr.case.46:                                 ; preds = %for.loop
  %_46 = load float, float* %src.addr_46, align 4
  br label %src.addr.exit

src.addr.case.47:                                 ; preds = %for.loop
  %_47 = load float, float* %src.addr_47, align 4
  br label %src.addr.exit

src.addr.case.48:                                 ; preds = %for.loop
  %_48 = load float, float* %src.addr_48, align 4
  br label %src.addr.exit

src.addr.case.49:                                 ; preds = %for.loop
  %_49 = load float, float* %src.addr_49, align 4
  br label %src.addr.exit

src.addr.case.50:                                 ; preds = %for.loop
  %_50 = load float, float* %src.addr_50, align 4
  br label %src.addr.exit

src.addr.case.51:                                 ; preds = %for.loop
  %_51 = load float, float* %src.addr_51, align 4
  br label %src.addr.exit

src.addr.case.52:                                 ; preds = %for.loop
  %_52 = load float, float* %src.addr_52, align 4
  br label %src.addr.exit

src.addr.case.53:                                 ; preds = %for.loop
  %_53 = load float, float* %src.addr_53, align 4
  br label %src.addr.exit

src.addr.case.54:                                 ; preds = %for.loop
  %_54 = load float, float* %src.addr_54, align 4
  br label %src.addr.exit

src.addr.case.55:                                 ; preds = %for.loop
  %_55 = load float, float* %src.addr_55, align 4
  br label %src.addr.exit

src.addr.case.56:                                 ; preds = %for.loop
  %_56 = load float, float* %src.addr_56, align 4
  br label %src.addr.exit

src.addr.case.57:                                 ; preds = %for.loop
  %_57 = load float, float* %src.addr_57, align 4
  br label %src.addr.exit

src.addr.case.58:                                 ; preds = %for.loop
  %_58 = load float, float* %src.addr_58, align 4
  br label %src.addr.exit

src.addr.case.59:                                 ; preds = %for.loop
  %_59 = load float, float* %src.addr_59, align 4
  br label %src.addr.exit

src.addr.case.60:                                 ; preds = %for.loop
  %_60 = load float, float* %src.addr_60, align 4
  br label %src.addr.exit

src.addr.case.61:                                 ; preds = %for.loop
  %_61 = load float, float* %src.addr_61, align 4
  br label %src.addr.exit

src.addr.case.62:                                 ; preds = %for.loop
  %_62 = load float, float* %src.addr_62, align 4
  br label %src.addr.exit

src.addr.case.63:                                 ; preds = %for.loop
  %_63 = load float, float* %src.addr_63, align 4
  br label %src.addr.exit

src.addr.case.64:                                 ; preds = %for.loop
  %_64 = load float, float* %src.addr_64, align 4
  br label %src.addr.exit

src.addr.case.65:                                 ; preds = %for.loop
  %_65 = load float, float* %src.addr_65, align 4
  br label %src.addr.exit

src.addr.case.66:                                 ; preds = %for.loop
  %_66 = load float, float* %src.addr_66, align 4
  br label %src.addr.exit

src.addr.case.67:                                 ; preds = %for.loop
  %_67 = load float, float* %src.addr_67, align 4
  br label %src.addr.exit

src.addr.case.68:                                 ; preds = %for.loop
  %_68 = load float, float* %src.addr_68, align 4
  br label %src.addr.exit

src.addr.case.69:                                 ; preds = %for.loop
  %_69 = load float, float* %src.addr_69, align 4
  br label %src.addr.exit

src.addr.case.70:                                 ; preds = %for.loop
  %_70 = load float, float* %src.addr_70, align 4
  br label %src.addr.exit

src.addr.case.71:                                 ; preds = %for.loop
  %_71 = load float, float* %src.addr_71, align 4
  br label %src.addr.exit

src.addr.case.72:                                 ; preds = %for.loop
  %_72 = load float, float* %src.addr_72, align 4
  br label %src.addr.exit

src.addr.case.73:                                 ; preds = %for.loop
  %_73 = load float, float* %src.addr_73, align 4
  br label %src.addr.exit

src.addr.case.74:                                 ; preds = %for.loop
  %_74 = load float, float* %src.addr_74, align 4
  br label %src.addr.exit

src.addr.case.75:                                 ; preds = %for.loop
  %_75 = load float, float* %src.addr_75, align 4
  br label %src.addr.exit

src.addr.case.76:                                 ; preds = %for.loop
  %_76 = load float, float* %src.addr_76, align 4
  br label %src.addr.exit

src.addr.case.77:                                 ; preds = %for.loop
  %6 = icmp eq i7 %5, -51
  call void @llvm.assume(i1 %6)
  %_77 = load float, float* %src.addr_77, align 4
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.77, %src.addr.case.76, %src.addr.case.75, %src.addr.case.74, %src.addr.case.73, %src.addr.case.72, %src.addr.case.71, %src.addr.case.70, %src.addr.case.69, %src.addr.case.68, %src.addr.case.67, %src.addr.case.66, %src.addr.case.65, %src.addr.case.64, %src.addr.case.63, %src.addr.case.62, %src.addr.case.61, %src.addr.case.60, %src.addr.case.59, %src.addr.case.58, %src.addr.case.57, %src.addr.case.56, %src.addr.case.55, %src.addr.case.54, %src.addr.case.53, %src.addr.case.52, %src.addr.case.51, %src.addr.case.50, %src.addr.case.49, %src.addr.case.48, %src.addr.case.47, %src.addr.case.46, %src.addr.case.45, %src.addr.case.44, %src.addr.case.43, %src.addr.case.42, %src.addr.case.41, %src.addr.case.40, %src.addr.case.39, %src.addr.case.38, %src.addr.case.37, %src.addr.case.36, %src.addr.case.35, %src.addr.case.34, %src.addr.case.33, %src.addr.case.32, %src.addr.case.31, %src.addr.case.30, %src.addr.case.29, %src.addr.case.28, %src.addr.case.27, %src.addr.case.26, %src.addr.case.25, %src.addr.case.24, %src.addr.case.23, %src.addr.case.22, %src.addr.case.21, %src.addr.case.20, %src.addr.case.19, %src.addr.case.18, %src.addr.case.17, %src.addr.case.16, %src.addr.case.15, %src.addr.case.14, %src.addr.case.13, %src.addr.case.12, %src.addr.case.11, %src.addr.case.10, %src.addr.case.9, %src.addr.case.8, %src.addr.case.7, %src.addr.case.6, %src.addr.case.5, %src.addr.case.4, %src.addr.case.3, %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %7 = phi float [ %_0, %src.addr.case.0 ], [ %_1, %src.addr.case.1 ], [ %_2, %src.addr.case.2 ], [ %_3, %src.addr.case.3 ], [ %_4, %src.addr.case.4 ], [ %_5, %src.addr.case.5 ], [ %_6, %src.addr.case.6 ], [ %_7, %src.addr.case.7 ], [ %_8, %src.addr.case.8 ], [ %_9, %src.addr.case.9 ], [ %_10, %src.addr.case.10 ], [ %_11, %src.addr.case.11 ], [ %_12, %src.addr.case.12 ], [ %_13, %src.addr.case.13 ], [ %_14, %src.addr.case.14 ], [ %_15, %src.addr.case.15 ], [ %_16, %src.addr.case.16 ], [ %_17, %src.addr.case.17 ], [ %_18, %src.addr.case.18 ], [ %_19, %src.addr.case.19 ], [ %_20, %src.addr.case.20 ], [ %_21, %src.addr.case.21 ], [ %_22, %src.addr.case.22 ], [ %_23, %src.addr.case.23 ], [ %_24, %src.addr.case.24 ], [ %_25, %src.addr.case.25 ], [ %_26, %src.addr.case.26 ], [ %_27, %src.addr.case.27 ], [ %_28, %src.addr.case.28 ], [ %_29, %src.addr.case.29 ], [ %_30, %src.addr.case.30 ], [ %_31, %src.addr.case.31 ], [ %_32, %src.addr.case.32 ], [ %_33, %src.addr.case.33 ], [ %_34, %src.addr.case.34 ], [ %_35, %src.addr.case.35 ], [ %_36, %src.addr.case.36 ], [ %_37, %src.addr.case.37 ], [ %_38, %src.addr.case.38 ], [ %_39, %src.addr.case.39 ], [ %_40, %src.addr.case.40 ], [ %_41, %src.addr.case.41 ], [ %_42, %src.addr.case.42 ], [ %_43, %src.addr.case.43 ], [ %_44, %src.addr.case.44 ], [ %_45, %src.addr.case.45 ], [ %_46, %src.addr.case.46 ], [ %_47, %src.addr.case.47 ], [ %_48, %src.addr.case.48 ], [ %_49, %src.addr.case.49 ], [ %_50, %src.addr.case.50 ], [ %_51, %src.addr.case.51 ], [ %_52, %src.addr.case.52 ], [ %_53, %src.addr.case.53 ], [ %_54, %src.addr.case.54 ], [ %_55, %src.addr.case.55 ], [ %_56, %src.addr.case.56 ], [ %_57, %src.addr.case.57 ], [ %_58, %src.addr.case.58 ], [ %_59, %src.addr.case.59 ], [ %_60, %src.addr.case.60 ], [ %_61, %src.addr.case.61 ], [ %_62, %src.addr.case.62 ], [ %_63, %src.addr.case.63 ], [ %_64, %src.addr.case.64 ], [ %_65, %src.addr.case.65 ], [ %_66, %src.addr.case.66 ], [ %_67, %src.addr.case.67 ], [ %_68, %src.addr.case.68 ], [ %_69, %src.addr.case.69 ], [ %_70, %src.addr.case.70 ], [ %_71, %src.addr.case.71 ], [ %_72, %src.addr.case.72 ], [ %_73, %src.addr.case.73 ], [ %_74, %src.addr.case.74 ], [ %_75, %src.addr.case.75 ], [ %_76, %src.addr.case.76 ], [ %_77, %src.addr.case.77 ]
  store float %7, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a7800f32.125.128([7800 x float]* noalias "orig.arg.no"="0" %dst, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.3" %src_3, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.4" %src_4, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.5" %src_5, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.6" %src_6, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.7" %src_7, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.8" %src_8, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.9" %src_9, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.10" %src_10, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.11" %src_11, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.12" %src_12, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.13" %src_13, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.14" %src_14, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.15" %src_15, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.16" %src_16, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.17" %src_17, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.18" %src_18, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.19" %src_19, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.20" %src_20, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.21" %src_21, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.22" %src_22, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.23" %src_23, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.24" %src_24, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.25" %src_25, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.26" %src_26, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.27" %src_27, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.28" %src_28, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.29" %src_29, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.30" %src_30, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.31" %src_31, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.32" %src_32, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.33" %src_33, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.34" %src_34, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.35" %src_35, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.36" %src_36, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.37" %src_37, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.38" %src_38, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.39" %src_39, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.40" %src_40, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.41" %src_41, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.42" %src_42, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.43" %src_43, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.44" %src_44, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.45" %src_45, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.46" %src_46, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.47" %src_47, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.48" %src_48, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.49" %src_49, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.50" %src_50, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.51" %src_51, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.52" %src_52, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.53" %src_53, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.54" %src_54, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.55" %src_55, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.56" %src_56, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.57" %src_57, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.58" %src_58, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.59" %src_59, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.60" %src_60, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.61" %src_61, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.62" %src_62, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.63" %src_63, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.64" %src_64, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.65" %src_65, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.66" %src_66, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.67" %src_67, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.68" %src_68, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.69" %src_69, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.70" %src_70, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.71" %src_71, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.72" %src_72, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.73" %src_73, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.74" %src_74, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.75" %src_75, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.76" %src_76, [100 x float]* noalias readonly "orig.arg.no"="1" "unpacked"="1.77" %src_77) #2 {
entry:
  %0 = icmp eq [7800 x float]* %dst, null
  %1 = icmp eq [100 x float]* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a7800f32.126.127([7800 x float]* nonnull %dst, [100 x float]* nonnull %src_0, [100 x float]* %src_1, [100 x float]* %src_2, [100 x float]* %src_3, [100 x float]* %src_4, [100 x float]* %src_5, [100 x float]* %src_6, [100 x float]* %src_7, [100 x float]* %src_8, [100 x float]* %src_9, [100 x float]* %src_10, [100 x float]* %src_11, [100 x float]* %src_12, [100 x float]* %src_13, [100 x float]* %src_14, [100 x float]* %src_15, [100 x float]* %src_16, [100 x float]* %src_17, [100 x float]* %src_18, [100 x float]* %src_19, [100 x float]* %src_20, [100 x float]* %src_21, [100 x float]* %src_22, [100 x float]* %src_23, [100 x float]* %src_24, [100 x float]* %src_25, [100 x float]* %src_26, [100 x float]* %src_27, [100 x float]* %src_28, [100 x float]* %src_29, [100 x float]* %src_30, [100 x float]* %src_31, [100 x float]* %src_32, [100 x float]* %src_33, [100 x float]* %src_34, [100 x float]* %src_35, [100 x float]* %src_36, [100 x float]* %src_37, [100 x float]* %src_38, [100 x float]* %src_39, [100 x float]* %src_40, [100 x float]* %src_41, [100 x float]* %src_42, [100 x float]* %src_43, [100 x float]* %src_44, [100 x float]* %src_45, [100 x float]* %src_46, [100 x float]* %src_47, [100 x float]* %src_48, [100 x float]* %src_49, [100 x float]* %src_50, [100 x float]* %src_51, [100 x float]* %src_52, [100 x float]* %src_53, [100 x float]* %src_54, [100 x float]* %src_55, [100 x float]* %src_56, [100 x float]* %src_57, [100 x float]* %src_58, [100 x float]* %src_59, [100 x float]* %src_60, [100 x float]* %src_61, [100 x float]* %src_62, [100 x float]* %src_63, [100 x float]* %src_64, [100 x float]* %src_65, [100 x float]* %src_66, [100 x float]* %src_67, [100 x float]* %src_68, [100 x float]* %src_69, [100 x float]* %src_70, [100 x float]* %src_71, [100 x float]* %src_72, [100 x float]* %src_73, [100 x float]* %src_74, [100 x float]* %src_75, [100 x float]* %src_76, [100 x float]* %src_77, i64 7800)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([1014 x float]* noalias "orig.arg.no"="0", [1014 x float]* noalias readonly "orig.arg.no"="1", [7800 x float]* noalias "orig.arg.no"="2", [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.0" %_0, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.1" %_1, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.2" %_2, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.3" %_3, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.4" %_4, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.5" %_5, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.6" %_6, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.7" %_7, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.8" %_8, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.9" %_9, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.10" %_10, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.11" %_11, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.12" %_12, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.13" %_13, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.14" %_14, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.15" %_15, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.16" %_16, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.17" %_17, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.18" %_18, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.19" %_19, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.20" %_20, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.21" %_21, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.22" %_22, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.23" %_23, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.24" %_24, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.25" %_25, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.26" %_26, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.27" %_27, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.28" %_28, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.29" %_29, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.30" %_30, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.31" %_31, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.32" %_32, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.33" %_33, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.34" %_34, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.35" %_35, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.36" %_36, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.37" %_37, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.38" %_38, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.39" %_39, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.40" %_40, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.41" %_41, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.42" %_42, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.43" %_43, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.44" %_44, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.45" %_45, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.46" %_46, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.47" %_47, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.48" %_48, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.49" %_49, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.50" %_50, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.51" %_51, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.52" %_52, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.53" %_53, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.54" %_54, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.55" %_55, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.56" %_56, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.57" %_57, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.58" %_58, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.59" %_59, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.60" %_60, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.61" %_61, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.62" %_62, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.63" %_63, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.64" %_64, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.65" %_65, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.66" %_66, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.67" %_67, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.68" %_68, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.69" %_69, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.70" %_70, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.71" %_71, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.72" %_72, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.73" %_73, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.74" %_74, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.75" %_75, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.76" %_76, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.77" %_77, [1250 x float]* noalias "orig.arg.no"="4", [1250 x float]* noalias readonly "orig.arg.no"="5") #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1014f32([1014 x float]* %0, [1014 x float]* %1)
  call void @onebyonecpy_hls.p0a7800f32.125.128([7800 x float]* %2, [100 x float]* %_0, [100 x float]* %_1, [100 x float]* %_2, [100 x float]* %_3, [100 x float]* %_4, [100 x float]* %_5, [100 x float]* %_6, [100 x float]* %_7, [100 x float]* %_8, [100 x float]* %_9, [100 x float]* %_10, [100 x float]* %_11, [100 x float]* %_12, [100 x float]* %_13, [100 x float]* %_14, [100 x float]* %_15, [100 x float]* %_16, [100 x float]* %_17, [100 x float]* %_18, [100 x float]* %_19, [100 x float]* %_20, [100 x float]* %_21, [100 x float]* %_22, [100 x float]* %_23, [100 x float]* %_24, [100 x float]* %_25, [100 x float]* %_26, [100 x float]* %_27, [100 x float]* %_28, [100 x float]* %_29, [100 x float]* %_30, [100 x float]* %_31, [100 x float]* %_32, [100 x float]* %_33, [100 x float]* %_34, [100 x float]* %_35, [100 x float]* %_36, [100 x float]* %_37, [100 x float]* %_38, [100 x float]* %_39, [100 x float]* %_40, [100 x float]* %_41, [100 x float]* %_42, [100 x float]* %_43, [100 x float]* %_44, [100 x float]* %_45, [100 x float]* %_46, [100 x float]* %_47, [100 x float]* %_48, [100 x float]* %_49, [100 x float]* %_50, [100 x float]* %_51, [100 x float]* %_52, [100 x float]* %_53, [100 x float]* %_54, [100 x float]* %_55, [100 x float]* %_56, [100 x float]* %_57, [100 x float]* %_58, [100 x float]* %_59, [100 x float]* %_60, [100 x float]* %_61, [100 x float]* %_62, [100 x float]* %_63, [100 x float]* %_64, [100 x float]* %_65, [100 x float]* %_66, [100 x float]* %_67, [100 x float]* %_68, [100 x float]* %_69, [100 x float]* %_70, [100 x float]* %_71, [100 x float]* %_72, [100 x float]* %_73, [100 x float]* %_74, [100 x float]* %_75, [100 x float]* %_76, [100 x float]* %_77)
  call fastcc void @onebyonecpy_hls.p0a1250f32([1250 x float]* %3, [1250 x float]* %4)
  ret void
}

declare void @apatb_calculateLayer3_hw([1014 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [1250 x float]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([1014 x float]* noalias "orig.arg.no"="0", [1014 x float]* noalias readonly "orig.arg.no"="1", [7800 x float]* noalias "orig.arg.no"="2", [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.0" %_0, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.1" %_1, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.2" %_2, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.3" %_3, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.4" %_4, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.5" %_5, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.6" %_6, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.7" %_7, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.8" %_8, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.9" %_9, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.10" %_10, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.11" %_11, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.12" %_12, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.13" %_13, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.14" %_14, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.15" %_15, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.16" %_16, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.17" %_17, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.18" %_18, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.19" %_19, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.20" %_20, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.21" %_21, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.22" %_22, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.23" %_23, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.24" %_24, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.25" %_25, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.26" %_26, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.27" %_27, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.28" %_28, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.29" %_29, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.30" %_30, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.31" %_31, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.32" %_32, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.33" %_33, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.34" %_34, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.35" %_35, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.36" %_36, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.37" %_37, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.38" %_38, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.39" %_39, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.40" %_40, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.41" %_41, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.42" %_42, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.43" %_43, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.44" %_44, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.45" %_45, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.46" %_46, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.47" %_47, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.48" %_48, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.49" %_49, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.50" %_50, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.51" %_51, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.52" %_52, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.53" %_53, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.54" %_54, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.55" %_55, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.56" %_56, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.57" %_57, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.58" %_58, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.59" %_59, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.60" %_60, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.61" %_61, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.62" %_62, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.63" %_63, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.64" %_64, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.65" %_65, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.66" %_66, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.67" %_67, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.68" %_68, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.69" %_69, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.70" %_70, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.71" %_71, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.72" %_72, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.73" %_73, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.74" %_74, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.75" %_75, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.76" %_76, [100 x float]* noalias readonly "orig.arg.no"="3" "unpacked"="3.77" %_77, [1250 x float]* noalias "orig.arg.no"="4", [1250 x float]* noalias readonly "orig.arg.no"="5") #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1250f32([1250 x float]* %3, [1250 x float]* %4)
  ret void
}

define void @calculateLayer3_hw_stub_wrapper([1014 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [100 x float]*, [1250 x float]*) #7 {
entry:
  %malloccall = tail call i8* @malloc(i64 31200)
  %80 = bitcast i8* %malloccall to [7800 x float]*
  call void @copy_out([1014 x float]* null, [1014 x float]* %0, [7800 x float]* %80, [100 x float]* %1, [100 x float]* %2, [100 x float]* %3, [100 x float]* %4, [100 x float]* %5, [100 x float]* %6, [100 x float]* %7, [100 x float]* %8, [100 x float]* %9, [100 x float]* %10, [100 x float]* %11, [100 x float]* %12, [100 x float]* %13, [100 x float]* %14, [100 x float]* %15, [100 x float]* %16, [100 x float]* %17, [100 x float]* %18, [100 x float]* %19, [100 x float]* %20, [100 x float]* %21, [100 x float]* %22, [100 x float]* %23, [100 x float]* %24, [100 x float]* %25, [100 x float]* %26, [100 x float]* %27, [100 x float]* %28, [100 x float]* %29, [100 x float]* %30, [100 x float]* %31, [100 x float]* %32, [100 x float]* %33, [100 x float]* %34, [100 x float]* %35, [100 x float]* %36, [100 x float]* %37, [100 x float]* %38, [100 x float]* %39, [100 x float]* %40, [100 x float]* %41, [100 x float]* %42, [100 x float]* %43, [100 x float]* %44, [100 x float]* %45, [100 x float]* %46, [100 x float]* %47, [100 x float]* %48, [100 x float]* %49, [100 x float]* %50, [100 x float]* %51, [100 x float]* %52, [100 x float]* %53, [100 x float]* %54, [100 x float]* %55, [100 x float]* %56, [100 x float]* %57, [100 x float]* %58, [100 x float]* %59, [100 x float]* %60, [100 x float]* %61, [100 x float]* %62, [100 x float]* %63, [100 x float]* %64, [100 x float]* %65, [100 x float]* %66, [100 x float]* %67, [100 x float]* %68, [100 x float]* %69, [100 x float]* %70, [100 x float]* %71, [100 x float]* %72, [100 x float]* %73, [100 x float]* %74, [100 x float]* %75, [100 x float]* %76, [100 x float]* %77, [100 x float]* %78, [1250 x float]* null, [1250 x float]* %79)
  %81 = bitcast [1014 x float]* %0 to float*
  %82 = bitcast [7800 x float]* %80 to float*
  %83 = bitcast [1250 x float]* %79 to float*
  call void @calculateLayer3_hw_stub(float* %81, float* %82, float* %83)
  call void @copy_in([1014 x float]* null, [1014 x float]* %0, [7800 x float]* %80, [100 x float]* %1, [100 x float]* %2, [100 x float]* %3, [100 x float]* %4, [100 x float]* %5, [100 x float]* %6, [100 x float]* %7, [100 x float]* %8, [100 x float]* %9, [100 x float]* %10, [100 x float]* %11, [100 x float]* %12, [100 x float]* %13, [100 x float]* %14, [100 x float]* %15, [100 x float]* %16, [100 x float]* %17, [100 x float]* %18, [100 x float]* %19, [100 x float]* %20, [100 x float]* %21, [100 x float]* %22, [100 x float]* %23, [100 x float]* %24, [100 x float]* %25, [100 x float]* %26, [100 x float]* %27, [100 x float]* %28, [100 x float]* %29, [100 x float]* %30, [100 x float]* %31, [100 x float]* %32, [100 x float]* %33, [100 x float]* %34, [100 x float]* %35, [100 x float]* %36, [100 x float]* %37, [100 x float]* %38, [100 x float]* %39, [100 x float]* %40, [100 x float]* %41, [100 x float]* %42, [100 x float]* %43, [100 x float]* %44, [100 x float]* %45, [100 x float]* %46, [100 x float]* %47, [100 x float]* %48, [100 x float]* %49, [100 x float]* %50, [100 x float]* %51, [100 x float]* %52, [100 x float]* %53, [100 x float]* %54, [100 x float]* %55, [100 x float]* %56, [100 x float]* %57, [100 x float]* %58, [100 x float]* %59, [100 x float]* %60, [100 x float]* %61, [100 x float]* %62, [100 x float]* %63, [100 x float]* %64, [100 x float]* %65, [100 x float]* %66, [100 x float]* %67, [100 x float]* %68, [100 x float]* %69, [100 x float]* %70, [100 x float]* %71, [100 x float]* %72, [100 x float]* %73, [100 x float]* %74, [100 x float]* %75, [100 x float]* %76, [100 x float]* %77, [100 x float]* %78, [1250 x float]* null, [1250 x float]* %79)
  ret void
}

declare void @calculateLayer3_hw_stub(float*, float*, float*)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { nounwind willreturn }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #6 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind willreturn "xlx.source"="infer-from-pragma" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"1", [7800 x float]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Block", !"dim=1", !"factor=78"}
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!11 = !{!"1.0", [100 x float]* null}
!12 = !{!"1.1", [100 x float]* null}
!13 = !{!"1.2", [100 x float]* null}
!14 = !{!"1.3", [100 x float]* null}
!15 = !{!"1.4", [100 x float]* null}
!16 = !{!"1.5", [100 x float]* null}
!17 = !{!"1.6", [100 x float]* null}
!18 = !{!"1.7", [100 x float]* null}
!19 = !{!"1.8", [100 x float]* null}
!20 = !{!"1.9", [100 x float]* null}
!21 = !{!"1.10", [100 x float]* null}
!22 = !{!"1.11", [100 x float]* null}
!23 = !{!"1.12", [100 x float]* null}
!24 = !{!"1.13", [100 x float]* null}
!25 = !{!"1.14", [100 x float]* null}
!26 = !{!"1.15", [100 x float]* null}
!27 = !{!"1.16", [100 x float]* null}
!28 = !{!"1.17", [100 x float]* null}
!29 = !{!"1.18", [100 x float]* null}
!30 = !{!"1.19", [100 x float]* null}
!31 = !{!"1.20", [100 x float]* null}
!32 = !{!"1.21", [100 x float]* null}
!33 = !{!"1.22", [100 x float]* null}
!34 = !{!"1.23", [100 x float]* null}
!35 = !{!"1.24", [100 x float]* null}
!36 = !{!"1.25", [100 x float]* null}
!37 = !{!"1.26", [100 x float]* null}
!38 = !{!"1.27", [100 x float]* null}
!39 = !{!"1.28", [100 x float]* null}
!40 = !{!"1.29", [100 x float]* null}
!41 = !{!"1.30", [100 x float]* null}
!42 = !{!"1.31", [100 x float]* null}
!43 = !{!"1.32", [100 x float]* null}
!44 = !{!"1.33", [100 x float]* null}
!45 = !{!"1.34", [100 x float]* null}
!46 = !{!"1.35", [100 x float]* null}
!47 = !{!"1.36", [100 x float]* null}
!48 = !{!"1.37", [100 x float]* null}
!49 = !{!"1.38", [100 x float]* null}
!50 = !{!"1.39", [100 x float]* null}
!51 = !{!"1.40", [100 x float]* null}
!52 = !{!"1.41", [100 x float]* null}
!53 = !{!"1.42", [100 x float]* null}
!54 = !{!"1.43", [100 x float]* null}
!55 = !{!"1.44", [100 x float]* null}
!56 = !{!"1.45", [100 x float]* null}
!57 = !{!"1.46", [100 x float]* null}
!58 = !{!"1.47", [100 x float]* null}
!59 = !{!"1.48", [100 x float]* null}
!60 = !{!"1.49", [100 x float]* null}
!61 = !{!"1.50", [100 x float]* null}
!62 = !{!"1.51", [100 x float]* null}
!63 = !{!"1.52", [100 x float]* null}
!64 = !{!"1.53", [100 x float]* null}
!65 = !{!"1.54", [100 x float]* null}
!66 = !{!"1.55", [100 x float]* null}
!67 = !{!"1.56", [100 x float]* null}
!68 = !{!"1.57", [100 x float]* null}
!69 = !{!"1.58", [100 x float]* null}
!70 = !{!"1.59", [100 x float]* null}
!71 = !{!"1.60", [100 x float]* null}
!72 = !{!"1.61", [100 x float]* null}
!73 = !{!"1.62", [100 x float]* null}
!74 = !{!"1.63", [100 x float]* null}
!75 = !{!"1.64", [100 x float]* null}
!76 = !{!"1.65", [100 x float]* null}
!77 = !{!"1.66", [100 x float]* null}
!78 = !{!"1.67", [100 x float]* null}
!79 = !{!"1.68", [100 x float]* null}
!80 = !{!"1.69", [100 x float]* null}
!81 = !{!"1.70", [100 x float]* null}
!82 = !{!"1.71", [100 x float]* null}
!83 = !{!"1.72", [100 x float]* null}
!84 = !{!"1.73", [100 x float]* null}
!85 = !{!"1.74", [100 x float]* null}
!86 = !{!"1.75", [100 x float]* null}
!87 = !{!"1.76", [100 x float]* null}
!88 = !{!"1.77", [100 x float]* null}
!89 = !DILocation(line: 18, column: 9, scope: !90)
!90 = distinct !DISubprogram(name: "calculateLayer3", linkageName: "_Z15calculateLayer3PfS_S_", scope: !91, file: !91, line: 5, type: !92, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: false, unit: !96, variables: !4)
!91 = !DIFile(filename: "calculateLayer3.cpp", directory: "C:\5CUsers\5CTRETEC\5COneDrive\5CDocuments\5CMaster2\5CHLS-FPGA\5Ccnn_hls")
!92 = !DISubroutineType(types: !93)
!93 = !{null, !94, !94, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!96 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !97, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !98, imports: !99)
!97 = !DIFile(filename: "C:/Users/TRETEC/OneDrive/Documents/Master2/HLS-FPGA/cnn_hls/CNN_lenet5/solution4/.autopilot/db\5CcalculateLayer3.pp.0.cpp", directory: "C:\5CUsers\5CTRETEC\5COneDrive\5CDocuments\5CMaster2\5CHLS-FPGA\5Ccnn_hls")
!98 = !{!95}
!99 = !{!100, !108, !114, !116, !118, !122, !124, !126, !128, !130, !132, !134, !136, !141, !145, !147, !149, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !176, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !205, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !243, !247, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !273, !277, !281, !283, !285, !287, !292, !296, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !329, !333, !337, !339, !341, !343, !350, !354, !358, !360, !362, !364, !366, !368, !370, !374, !378, !380, !382, !384, !386, !390, !394, !398, !400, !402, !404, !406, !408, !410, !414, !418, !422, !424, !428, !432, !434, !436, !438, !440, !442, !444, !450, !455, !460, !466, !470, !475, !477, !481, !485, !498, !502, !506, !510, !514, !519, !523, !527, !531, !535, !543, !547, !551, !555, !559, !564, !570, !574, !578, !580, !588, !592, !599, !601, !605, !609, !613, !617, !622, !626, !630, !631, !632, !633, !635, !636, !637, !638, !639, !640, !641, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !102, file: !107, line: 52)
!101 = !DINamespace(name: "std", scope: null)
!102 = !DISubprogram(name: "abs", scope: !103, file: !103, line: 254, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!103 = !DIFile(filename: "C:/Xilinx/2023.2/Vitis_HLS/2023.2/tps/mingw/8.3.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cmath.h", directory: "C:\5CUsers\5CTRETEC\5COneDrive\5CDocuments\5CMaster2\5CHLS-FPGA\5Ccnn_hls")
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !106}
!106 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!107 = !DIFile(filename: "C:/Xilinx/2023.2/Vitis_HLS/2023.2/tps/mingw/8.3.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C8.3.0\5Cinclude\5Cc++\5Cbits/std_abs.h", directory: "C:\5CUsers\5CTRETEC\5COneDrive\5CDocuments\5CMaster2\5CHLS-FPGA\5Ccnn_hls")
!108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !109, file: !113, line: 83)
!109 = !DISubprogram(name: "acos", scope: !103, file: !103, line: 190, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!110 = !DISubroutineType(types: !111)
!111 = !{!112, !112}
!112 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!113 = !DIFile(filename: "C:/Xilinx/2023.2/Vitis_HLS/2023.2/tps/mingw/8.3.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C8.3.0\5Cinclude\5Cc++\5Ccmath", directory: "C:\5CUsers\5CTRETEC\5COneDrive\5CDocuments\5CMaster2\5CHLS-FPGA\5Ccnn_hls")
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !115, file: !113, line: 102)
!115 = !DISubprogram(name: "asin", scope: !103, file: !103, line: 189, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !117, file: !113, line: 121)
!117 = !DISubprogram(name: "atan", scope: !103, file: !103, line: 191, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !119, file: !113, line: 140)
!119 = !DISubprogram(name: "atan2", scope: !103, file: !103, line: 192, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!120 = !DISubroutineType(types: !121)
!121 = !{!112, !112, !112}
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !123, file: !113, line: 161)
!123 = !DISubprogram(name: "ceil", scope: !103, file: !103, line: 198, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !125, file: !113, line: 180)
!125 = !DISubprogram(name: "cos", scope: !103, file: !103, line: 184, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!126 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !127, file: !113, line: 199)
!127 = !DISubprogram(name: "cosh", scope: !103, file: !103, line: 187, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !129, file: !113, line: 218)
!129 = !DISubprogram(name: "exp", scope: !103, file: !103, line: 193, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !131, file: !113, line: 237)
!131 = !DISubprogram(name: "fabs", scope: !103, file: !103, line: 204, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !133, file: !113, line: 256)
!133 = !DISubprogram(name: "floor", scope: !103, file: !103, line: 199, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !135, file: !113, line: 275)
!135 = !DISubprogram(name: "fmod", scope: !103, file: !103, line: 246, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !137, file: !113, line: 296)
!137 = !DISubprogram(name: "frexp", scope: !103, file: !103, line: 244, type: !138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DISubroutineType(types: !139)
!139 = !{!112, !112, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !142, file: !113, line: 315)
!142 = !DISubprogram(name: "ldexp", scope: !103, file: !103, line: 243, type: !143, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DISubroutineType(types: !144)
!144 = !{!112, !112, !106}
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !146, file: !113, line: 334)
!146 = !DISubprogram(name: "log", scope: !103, file: !103, line: 194, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !148, file: !113, line: 353)
!148 = !DISubprogram(name: "log10", scope: !103, file: !103, line: 195, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !150, file: !113, line: 372)
!150 = !DISubprogram(name: "modf", scope: !103, file: !103, line: 245, type: !151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DISubroutineType(types: !152)
!152 = !{!112, !112, !153}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !155, file: !113, line: 384)
!155 = !DISubprogram(name: "pow", scope: !103, file: !103, line: 196, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !157, file: !113, line: 421)
!157 = !DISubprogram(name: "sin", scope: !103, file: !103, line: 183, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !159, file: !113, line: 440)
!159 = !DISubprogram(name: "sinh", scope: !103, file: !103, line: 186, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !161, file: !113, line: 459)
!161 = !DISubprogram(name: "sqrt", scope: !103, file: !103, line: 197, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !163, file: !113, line: 478)
!163 = !DISubprogram(name: "tan", scope: !103, file: !103, line: 185, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !165, file: !113, line: 497)
!165 = !DISubprogram(name: "tanh", scope: !103, file: !103, line: 188, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !167, file: !113, line: 1065)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !103, line: 373, baseType: !112)
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !169, file: !113, line: 1066)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !103, line: 372, baseType: !95)
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !171, file: !113, line: 1069)
!171 = !DISubprogram(name: "acosh", scope: !103, file: !103, line: 705, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !173, file: !113, line: 1070)
!173 = !DISubprogram(name: "acoshf", scope: !103, file: !103, line: 706, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!174 = !DISubroutineType(types: !175)
!175 = !{!95, !95}
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !177, file: !113, line: 1071)
!177 = !DISubprogram(name: "acoshl", scope: !103, file: !103, line: 707, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!178 = !DISubroutineType(types: !179)
!179 = !{!180, !180}
!180 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !182, file: !113, line: 1073)
!182 = !DISubprogram(name: "asinh", scope: !103, file: !103, line: 710, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !184, file: !113, line: 1074)
!184 = !DISubprogram(name: "asinhf", scope: !103, file: !103, line: 711, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !186, file: !113, line: 1075)
!186 = !DISubprogram(name: "asinhl", scope: !103, file: !103, line: 712, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !188, file: !113, line: 1077)
!188 = !DISubprogram(name: "atanh", scope: !103, file: !103, line: 715, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !190, file: !113, line: 1078)
!190 = !DISubprogram(name: "atanhf", scope: !103, file: !103, line: 716, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !192, file: !113, line: 1079)
!192 = !DISubprogram(name: "atanhl", scope: !103, file: !103, line: 717, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !194, file: !113, line: 1081)
!194 = !DISubprogram(name: "cbrt", scope: !103, file: !103, line: 877, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !196, file: !113, line: 1082)
!196 = !DISubprogram(name: "cbrtf", scope: !103, file: !103, line: 878, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !198, file: !113, line: 1083)
!198 = !DISubprogram(name: "cbrtl", scope: !103, file: !103, line: 879, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !200, file: !113, line: 1085)
!200 = !DISubprogram(name: "copysign", scope: !103, file: !103, line: 1063, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !202, file: !113, line: 1086)
!202 = !DISubprogram(name: "copysignf", scope: !103, file: !103, line: 1064, type: !203, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!203 = !DISubroutineType(types: !204)
!204 = !{!95, !95, !95}
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !206, file: !113, line: 1087)
!206 = !DISubprogram(name: "copysignl", scope: !103, file: !103, line: 1065, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DISubroutineType(types: !208)
!208 = !{!180, !180, !180}
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !210, file: !113, line: 1089)
!210 = !DISubprogram(name: "erf", scope: !103, file: !103, line: 901, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !212, file: !113, line: 1090)
!212 = !DISubprogram(name: "erff", scope: !103, file: !103, line: 902, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !214, file: !113, line: 1091)
!214 = !DISubprogram(name: "erfl", scope: !103, file: !103, line: 903, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !216, file: !113, line: 1093)
!216 = !DISubprogram(name: "erfc", scope: !103, file: !103, line: 906, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !218, file: !113, line: 1094)
!218 = !DISubprogram(name: "erfcf", scope: !103, file: !103, line: 907, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !220, file: !113, line: 1095)
!220 = !DISubprogram(name: "erfcl", scope: !103, file: !103, line: 908, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !222, file: !113, line: 1097)
!222 = !DISubprogram(name: "exp2", scope: !103, file: !103, line: 728, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !224, file: !113, line: 1098)
!224 = !DISubprogram(name: "exp2f", scope: !103, file: !103, line: 729, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !226, file: !113, line: 1099)
!226 = !DISubprogram(name: "exp2l", scope: !103, file: !103, line: 730, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !228, file: !113, line: 1101)
!228 = !DISubprogram(name: "expm1", scope: !103, file: !103, line: 734, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !230, file: !113, line: 1102)
!230 = !DISubprogram(name: "expm1f", scope: !103, file: !103, line: 735, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !232, file: !113, line: 1103)
!232 = !DISubprogram(name: "expm1l", scope: !103, file: !103, line: 736, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !234, file: !113, line: 1105)
!234 = !DISubprogram(name: "fdim", scope: !103, file: !103, line: 1109, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !236, file: !113, line: 1106)
!236 = !DISubprogram(name: "fdimf", scope: !103, file: !103, line: 1110, type: !203, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !238, file: !113, line: 1107)
!238 = !DISubprogram(name: "fdiml", scope: !103, file: !103, line: 1111, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !240, file: !113, line: 1109)
!240 = !DISubprogram(name: "fma", scope: !103, file: !103, line: 1130, type: !241, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!241 = !DISubroutineType(types: !242)
!242 = !{!112, !112, !112, !112}
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !244, file: !113, line: 1110)
!244 = !DISubprogram(name: "fmaf", scope: !103, file: !103, line: 1131, type: !245, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!245 = !DISubroutineType(types: !246)
!246 = !{!95, !95, !95, !95}
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !248, file: !113, line: 1111)
!248 = !DISubprogram(name: "fmal", scope: !103, file: !103, line: 1132, type: !249, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!249 = !DISubroutineType(types: !250)
!250 = !{!180, !180, !180, !180}
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !252, file: !113, line: 1113)
!252 = !DISubprogram(name: "fmax", scope: !103, file: !103, line: 1119, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !254, file: !113, line: 1114)
!254 = !DISubprogram(name: "fmaxf", scope: !103, file: !103, line: 1120, type: !203, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !256, file: !113, line: 1115)
!256 = !DISubprogram(name: "fmaxl", scope: !103, file: !103, line: 1121, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !258, file: !113, line: 1117)
!258 = !DISubprogram(name: "fmin", scope: !103, file: !103, line: 1124, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !260, file: !113, line: 1118)
!260 = !DISubprogram(name: "fminf", scope: !103, file: !103, line: 1125, type: !203, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !262, file: !113, line: 1119)
!262 = !DISubprogram(name: "fminl", scope: !103, file: !103, line: 1126, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !264, file: !113, line: 1121)
!264 = !DISubprogram(name: "hypot", scope: !103, file: !103, line: 882, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !266, file: !113, line: 1122)
!266 = !DISubprogram(name: "hypotf", scope: !103, file: !103, line: 883, type: !203, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !268, file: !113, line: 1123)
!268 = !DISubprogram(name: "hypotl", scope: !103, file: !103, line: 887, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !270, file: !113, line: 1125)
!270 = !DISubprogram(name: "ilogb", scope: !103, file: !103, line: 748, type: !271, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!271 = !DISubroutineType(types: !272)
!272 = !{!106, !112}
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !274, file: !113, line: 1126)
!274 = !DISubprogram(name: "ilogbf", scope: !103, file: !103, line: 749, type: !275, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!275 = !DISubroutineType(types: !276)
!276 = !{!106, !95}
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !278, file: !113, line: 1127)
!278 = !DISubprogram(name: "ilogbl", scope: !103, file: !103, line: 750, type: !279, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!279 = !DISubroutineType(types: !280)
!280 = !{!106, !180}
!281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !282, file: !113, line: 1129)
!282 = !DISubprogram(name: "lgamma", scope: !103, file: !103, line: 911, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !284, file: !113, line: 1130)
!284 = !DISubprogram(name: "lgammaf", scope: !103, file: !103, line: 912, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !286, file: !113, line: 1131)
!286 = !DISubprogram(name: "lgammal", scope: !103, file: !103, line: 913, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !288, file: !113, line: 1134)
!288 = !DISubprogram(name: "llrint", scope: !103, file: !103, line: 946, type: !289, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!289 = !DISubroutineType(types: !290)
!290 = !{!291, !112}
!291 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !293, file: !113, line: 1135)
!293 = !DISubprogram(name: "llrintf", scope: !103, file: !103, line: 947, type: !294, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DISubroutineType(types: !295)
!295 = !{!291, !95}
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !297, file: !113, line: 1136)
!297 = !DISubprogram(name: "llrintl", scope: !103, file: !103, line: 948, type: !298, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!298 = !DISubroutineType(types: !299)
!299 = !{!291, !180}
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !301, file: !113, line: 1138)
!301 = !DISubprogram(name: "llround", scope: !103, file: !103, line: 1038, type: !289, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !303, file: !113, line: 1139)
!303 = !DISubprogram(name: "llroundf", scope: !103, file: !103, line: 1039, type: !294, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !305, file: !113, line: 1140)
!305 = !DISubprogram(name: "llroundl", scope: !103, file: !103, line: 1040, type: !298, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !307, file: !113, line: 1143)
!307 = !DISubprogram(name: "log1p", scope: !103, file: !103, line: 768, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !309, file: !113, line: 1144)
!309 = !DISubprogram(name: "log1pf", scope: !103, file: !103, line: 769, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !311, file: !113, line: 1145)
!311 = !DISubprogram(name: "log1pl", scope: !103, file: !103, line: 770, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !313, file: !113, line: 1147)
!313 = !DISubprogram(name: "log2", scope: !103, file: !103, line: 773, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !315, file: !113, line: 1148)
!315 = !DISubprogram(name: "log2f", scope: !103, file: !103, line: 774, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !317, file: !113, line: 1149)
!317 = !DISubprogram(name: "log2l", scope: !103, file: !103, line: 775, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !319, file: !113, line: 1151)
!319 = !DISubprogram(name: "logb", scope: !103, file: !103, line: 778, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !321, file: !113, line: 1152)
!321 = !DISubprogram(name: "logbf", scope: !103, file: !103, line: 779, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !323, file: !113, line: 1153)
!323 = !DISubprogram(name: "logbl", scope: !103, file: !103, line: 780, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !325, file: !113, line: 1155)
!325 = !DISubprogram(name: "lrint", scope: !103, file: !103, line: 942, type: !326, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!326 = !DISubroutineType(types: !327)
!327 = !{!328, !112}
!328 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !330, file: !113, line: 1156)
!330 = !DISubprogram(name: "lrintf", scope: !103, file: !103, line: 943, type: !331, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!331 = !DISubroutineType(types: !332)
!332 = !{!328, !95}
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !334, file: !113, line: 1157)
!334 = !DISubprogram(name: "lrintl", scope: !103, file: !103, line: 944, type: !335, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!335 = !DISubroutineType(types: !336)
!336 = !{!328, !180}
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !338, file: !113, line: 1159)
!338 = !DISubprogram(name: "lround", scope: !103, file: !103, line: 1035, type: !326, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !340, file: !113, line: 1160)
!340 = !DISubprogram(name: "lroundf", scope: !103, file: !103, line: 1036, type: !331, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !342, file: !113, line: 1161)
!342 = !DISubprogram(name: "lroundl", scope: !103, file: !103, line: 1037, type: !335, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !344, file: !113, line: 1163)
!344 = !DISubprogram(name: "nan", scope: !103, file: !103, line: 1087, type: !345, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!345 = !DISubroutineType(types: !346)
!346 = !{!112, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !351, file: !113, line: 1164)
!351 = !DISubprogram(name: "nanf", scope: !103, file: !103, line: 1088, type: !352, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!352 = !DISubroutineType(types: !353)
!353 = !{!95, !347}
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !355, file: !113, line: 1165)
!355 = !DISubprogram(name: "nanl", scope: !103, file: !103, line: 1089, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!356 = !DISubroutineType(types: !357)
!357 = !{!180, !347}
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !359, file: !113, line: 1167)
!359 = !DISubprogram(name: "nearbyint", scope: !103, file: !103, line: 931, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !361, file: !113, line: 1168)
!361 = !DISubprogram(name: "nearbyintf", scope: !103, file: !103, line: 932, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !363, file: !113, line: 1169)
!363 = !DISubprogram(name: "nearbyintl", scope: !103, file: !103, line: 933, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !365, file: !113, line: 1171)
!365 = !DISubprogram(name: "nextafter", scope: !103, file: !103, line: 1098, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !367, file: !113, line: 1172)
!367 = !DISubprogram(name: "nextafterf", scope: !103, file: !103, line: 1099, type: !203, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !369, file: !113, line: 1173)
!369 = !DISubprogram(name: "nextafterl", scope: !103, file: !103, line: 1100, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !371, file: !113, line: 1175)
!371 = !DISubprogram(name: "nexttoward", scope: !103, file: !103, line: 1103, type: !372, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!372 = !DISubroutineType(types: !373)
!373 = !{!112, !112, !180}
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !375, file: !113, line: 1176)
!375 = !DISubprogram(name: "nexttowardf", scope: !103, file: !103, line: 1104, type: !376, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!376 = !DISubroutineType(types: !377)
!377 = !{!95, !95, !180}
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !379, file: !113, line: 1177)
!379 = !DISubprogram(name: "nexttowardl", scope: !103, file: !103, line: 1105, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !381, file: !113, line: 1179)
!381 = !DISubprogram(name: "remainder", scope: !103, file: !103, line: 1053, type: !120, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !383, file: !113, line: 1180)
!383 = !DISubprogram(name: "remainderf", scope: !103, file: !103, line: 1054, type: !203, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !385, file: !113, line: 1181)
!385 = !DISubprogram(name: "remainderl", scope: !103, file: !103, line: 1055, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !387, file: !113, line: 1183)
!387 = !DISubprogram(name: "remquo", scope: !103, file: !103, line: 1058, type: !388, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!388 = !DISubroutineType(types: !389)
!389 = !{!112, !112, !112, !140}
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !391, file: !113, line: 1184)
!391 = !DISubprogram(name: "remquof", scope: !103, file: !103, line: 1059, type: !392, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!392 = !DISubroutineType(types: !393)
!393 = !{!95, !95, !95, !140}
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !395, file: !113, line: 1185)
!395 = !DISubprogram(name: "remquol", scope: !103, file: !103, line: 1060, type: !396, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!396 = !DISubroutineType(types: !397)
!397 = !{!180, !180, !180, !140}
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !399, file: !113, line: 1187)
!399 = !DISubprogram(name: "rint", scope: !103, file: !103, line: 937, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !401, file: !113, line: 1188)
!401 = !DISubprogram(name: "rintf", scope: !103, file: !103, line: 938, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !403, file: !113, line: 1189)
!403 = !DISubprogram(name: "rintl", scope: !103, file: !103, line: 939, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !405, file: !113, line: 1191)
!405 = !DISubprogram(name: "round", scope: !103, file: !103, line: 1030, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !407, file: !113, line: 1192)
!407 = !DISubprogram(name: "roundf", scope: !103, file: !103, line: 1031, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !409, file: !113, line: 1193)
!409 = !DISubprogram(name: "roundl", scope: !103, file: !103, line: 1032, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !411, file: !113, line: 1195)
!411 = !DISubprogram(name: "scalbln", scope: !103, file: !103, line: 871, type: !412, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!412 = !DISubroutineType(types: !413)
!413 = !{!112, !112, !328}
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !415, file: !113, line: 1196)
!415 = !DISubprogram(name: "scalblnf", scope: !103, file: !103, line: 872, type: !416, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!416 = !DISubroutineType(types: !417)
!417 = !{!95, !95, !328}
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !419, file: !113, line: 1197)
!419 = !DISubprogram(name: "scalblnl", scope: !103, file: !103, line: 873, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!420 = !DISubroutineType(types: !421)
!421 = !{!180, !180, !328}
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !423, file: !113, line: 1199)
!423 = !DISubprogram(name: "scalbn", scope: !103, file: !103, line: 867, type: !143, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !425, file: !113, line: 1200)
!425 = !DISubprogram(name: "scalbnf", scope: !103, file: !103, line: 868, type: !426, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!426 = !DISubroutineType(types: !427)
!427 = !{!95, !95, !106}
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !429, file: !113, line: 1201)
!429 = !DISubprogram(name: "scalbnl", scope: !103, file: !103, line: 869, type: !430, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!430 = !DISubroutineType(types: !431)
!431 = !{!180, !180, !106}
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !433, file: !113, line: 1203)
!433 = !DISubprogram(name: "tgamma", scope: !103, file: !103, line: 918, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !435, file: !113, line: 1204)
!435 = !DISubprogram(name: "tgammaf", scope: !103, file: !103, line: 919, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !437, file: !113, line: 1205)
!437 = !DISubprogram(name: "tgammal", scope: !103, file: !103, line: 920, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !439, file: !113, line: 1207)
!439 = !DISubprogram(name: "trunc", scope: !103, file: !103, line: 1044, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !441, file: !113, line: 1208)
!441 = !DISubprogram(name: "truncf", scope: !103, file: !103, line: 1045, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !443, file: !113, line: 1209)
!443 = !DISubprogram(name: "truncl", scope: !103, file: !103, line: 1046, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !445, file: !449, line: 38)
!445 = !DISubprogram(name: "abs", linkageName: "_ZSt3absn", scope: !101, file: !107, line: 84, type: !446, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!446 = !DISubroutineType(types: !447)
!447 = !{!448, !448}
!448 = !DIBasicType(name: "__int128", size: 128, encoding: DW_ATE_signed)
!449 = !DIFile(filename: "C:/Xilinx/2023.2/Vitis_HLS/2023.2/tps/mingw/8.3.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C8.3.0\5Cinclude\5Cc++\5Cmath.h", directory: "C:\5CUsers\5CTRETEC\5COneDrive\5CDocuments\5CMaster2\5CHLS-FPGA\5Ccnn_hls")
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !451, file: !449, line: 54)
!451 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !101, file: !113, line: 380, type: !452, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!452 = !DISubroutineType(types: !453)
!453 = !{!180, !180, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !456, file: !459, line: 127)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !457, line: 62, baseType: !458)
!457 = !DIFile(filename: "C:/Xilinx/2023.2/Vitis_HLS/2023.2/tps/mingw/8.3.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Cstdlib.h", directory: "C:\5CUsers\5CTRETEC\5COneDrive\5CDocuments\5CMaster2\5CHLS-FPGA\5Ccnn_hls")
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_div_t", file: !457, line: 59, size: 64, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS6_div_t")
!459 = !DIFile(filename: "C:/Xilinx/2023.2/Vitis_HLS/2023.2/tps/mingw/8.3.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C8.3.0\5Cinclude\5Cc++\5Ccstdlib", directory: "C:\5CUsers\5CTRETEC\5COneDrive\5CDocuments\5CMaster2\5CHLS-FPGA\5Ccnn_hls")
!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !461, file: !459, line: 128)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !457, line: 67, baseType: !462)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ldiv_t", file: !457, line: 64, size: 128, flags: DIFlagTypePassByValue, elements: !463, identifier: "_ZTS7_ldiv_t")
!463 = !{!464, !465}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !462, file: !457, line: 65, baseType: !328, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !462, file: !457, line: 66, baseType: !328, size: 64, offset: 64)
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !467, file: !459, line: 130)
!467 = !DISubprogram(name: "abort", scope: !457, file: !457, line: 374, type: !468, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!468 = !DISubroutineType(types: !469)
!469 = !{null}
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !471, file: !459, line: 134)
!471 = !DISubprogram(name: "atexit", scope: !457, file: !457, line: 394, type: !472, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!472 = !DISubroutineType(types: !473)
!473 = !{!106, !474}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !476, file: !459, line: 140)
!476 = !DISubprogram(name: "atof", scope: !103, file: !103, line: 259, type: !345, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !478, file: !459, line: 141)
!478 = !DISubprogram(name: "atoi", scope: !457, file: !457, line: 400, type: !479, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!479 = !DISubroutineType(types: !480)
!480 = !{!106, !347}
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !482, file: !459, line: 142)
!482 = !DISubprogram(name: "atol", scope: !457, file: !457, line: 402, type: !483, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!483 = !DISubroutineType(types: !484)
!484 = !{!328, !347}
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !486, file: !459, line: 143)
!486 = !DISubprogram(name: "bsearch", scope: !457, file: !457, line: 406, type: !487, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!487 = !DISubroutineType(types: !488)
!488 = !{!489, !490, !490, !492, !492, !495}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !493, line: 35, baseType: !494)
!493 = !DIFile(filename: "C:/Xilinx/2023.2/Vitis_HLS/2023.2/tps/mingw/8.3.0/win64.o/nt\5Cx86_64-w64-mingw32\5Cinclude\5Ccrtdefs.h", directory: "C:\5CUsers\5CTRETEC\5COneDrive\5CDocuments\5CMaster2\5CHLS-FPGA\5Ccnn_hls")
!494 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!106, !490, !490}
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !499, file: !459, line: 144)
!499 = !DISubprogram(name: "calloc", scope: !457, file: !457, line: 501, type: !500, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!500 = !DISubroutineType(types: !501)
!501 = !{!489, !492, !492}
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !503, file: !459, line: 145)
!503 = !DISubprogram(name: "div", scope: !457, file: !457, line: 412, type: !504, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!504 = !DISubroutineType(types: !505)
!505 = !{!456, !106, !106}
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !507, file: !459, line: 146)
!507 = !DISubprogram(name: "exit", scope: !457, file: !457, line: 360, type: !508, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !106}
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !511, file: !459, line: 147)
!511 = !DISubprogram(name: "free", scope: !457, file: !457, line: 502, type: !512, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !489}
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !515, file: !459, line: 148)
!515 = !DISubprogram(name: "getenv", scope: !457, file: !457, line: 413, type: !516, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!516 = !DISubroutineType(types: !517)
!517 = !{!518, !347}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !520, file: !459, line: 149)
!520 = !DISubprogram(name: "labs", scope: !103, file: !103, line: 255, type: !521, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!521 = !DISubroutineType(types: !522)
!522 = !{!328, !328}
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !524, file: !459, line: 150)
!524 = !DISubprogram(name: "ldiv", scope: !457, file: !457, line: 423, type: !525, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!525 = !DISubroutineType(types: !526)
!526 = !{!461, !328, !328}
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !528, file: !459, line: 151)
!528 = !DISubprogram(name: "malloc", scope: !457, file: !457, line: 503, type: !529, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!529 = !DISubroutineType(types: !530)
!530 = !{!489, !492}
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !532, file: !459, line: 153)
!532 = !DISubprogram(name: "mblen", scope: !457, file: !457, line: 425, type: !533, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!533 = !DISubroutineType(types: !534)
!534 = !{!106, !347, !492}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !536, file: !459, line: 154)
!536 = !DISubprogram(name: "mbstowcs", scope: !457, file: !457, line: 433, type: !537, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!537 = !DISubroutineType(types: !538)
!538 = !{!492, !539, !542, !492}
!539 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!542 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !347)
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !544, file: !459, line: 155)
!544 = !DISubprogram(name: "mbtowc", scope: !457, file: !457, line: 431, type: !545, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!545 = !DISubroutineType(types: !546)
!546 = !{!106, !539, !542, !492}
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !548, file: !459, line: 157)
!548 = !DISubprogram(name: "qsort", scope: !457, file: !457, line: 407, type: !549, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !489, !492, !492, !495}
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !552, file: !459, line: 163)
!552 = !DISubprogram(name: "rand", scope: !457, file: !457, line: 436, type: !553, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!553 = !DISubroutineType(types: !554)
!554 = !{!106}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !556, file: !459, line: 164)
!556 = !DISubprogram(name: "realloc", scope: !457, file: !457, line: 504, type: !557, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!557 = !DISubroutineType(types: !558)
!558 = !{!489, !489, !492}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !560, file: !459, line: 165)
!560 = !DISubprogram(name: "srand", scope: !457, file: !457, line: 438, type: !561, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !563}
!563 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !565, file: !459, line: 166)
!565 = !DISubprogram(name: "strtod", scope: !457, file: !457, line: 450, type: !566, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!566 = !DISubroutineType(types: !567)
!567 = !{!112, !542, !568}
!568 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !571, file: !459, line: 167)
!571 = !DISubprogram(name: "strtol", scope: !457, file: !457, line: 485, type: !572, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!572 = !DISubroutineType(types: !573)
!573 = !{!328, !542, !568, !106}
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !575, file: !459, line: 168)
!575 = !DISubprogram(name: "strtoul", scope: !457, file: !457, line: 487, type: !576, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!576 = !DISubroutineType(types: !577)
!577 = !{!494, !542, !568, !106}
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !579, file: !459, line: 169)
!579 = !DISubprogram(name: "system", scope: !457, file: !457, line: 491, type: !479, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !581, file: !459, line: 171)
!581 = !DISubprogram(name: "wcstombs", scope: !457, file: !457, line: 496, type: !582, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!582 = !DISubroutineType(types: !583)
!583 = !{!492, !584, !585, !492}
!584 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !518)
!585 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !589, file: !459, line: 172)
!589 = !DISubprogram(name: "wctomb", scope: !457, file: !457, line: 494, type: !590, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!590 = !DISubroutineType(types: !591)
!591 = !{!106, !518, !541}
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !593, entity: !594, file: !459, line: 200)
!593 = !DINamespace(name: "__gnu_cxx", scope: null)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !457, line: 699, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !457, line: 699, size: 128, flags: DIFlagTypePassByValue, elements: !596, identifier: "_ZTS7lldiv_t")
!596 = !{!597, !598}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !595, file: !457, line: 699, baseType: !291, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !595, file: !457, line: 699, baseType: !291, size: 64, offset: 64)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !593, entity: !600, file: !459, line: 206)
!600 = !DISubprogram(name: "_Exit", scope: !457, file: !457, line: 365, type: !508, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !593, entity: !602, file: !459, line: 210)
!602 = !DISubprogram(name: "llabs", scope: !457, file: !457, line: 703, type: !603, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!603 = !DISubroutineType(types: !604)
!604 = !{!291, !291}
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !593, entity: !606, file: !459, line: 216)
!606 = !DISubprogram(name: "lldiv", scope: !457, file: !457, line: 701, type: !607, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!607 = !DISubroutineType(types: !608)
!608 = !{!594, !291, !291}
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !593, entity: !610, file: !459, line: 227)
!610 = !DISubprogram(name: "atoll", scope: !457, file: !457, line: 712, type: !611, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!611 = !DISubroutineType(types: !612)
!612 = !{!291, !347}
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !593, entity: !614, file: !459, line: 228)
!614 = !DISubprogram(name: "strtoll", scope: !457, file: !457, line: 708, type: !615, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!615 = !DISubroutineType(types: !616)
!616 = !{!291, !542, !568, !106}
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !593, entity: !618, file: !459, line: 229)
!618 = !DISubprogram(name: "strtoull", scope: !457, file: !457, line: 709, type: !619, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!619 = !DISubroutineType(types: !620)
!620 = !{!621, !542, !568, !106}
!621 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !593, entity: !623, file: !459, line: 231)
!623 = !DISubprogram(name: "strtof", scope: !457, file: !457, line: 457, type: !624, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!624 = !DISubroutineType(types: !625)
!625 = !{!95, !542, !568}
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !593, entity: !627, file: !459, line: 232)
!627 = !DISubprogram(name: "strtold", scope: !457, file: !457, line: 468, type: !628, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!628 = !DISubroutineType(types: !629)
!629 = !{!180, !542, !568}
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !594, file: !459, line: 240)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !600, file: !459, line: 242)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !602, file: !459, line: 244)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !634, file: !459, line: 245)
!634 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !593, file: !459, line: 213, type: !607, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !606, file: !459, line: 246)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !610, file: !459, line: 248)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !623, file: !459, line: 249)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !614, file: !459, line: 250)
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !618, file: !459, line: 251)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !101, entity: !627, file: !459, line: 252)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !467, file: !642, line: 38)
!642 = !DIFile(filename: "C:/Xilinx/2023.2/Vitis_HLS/2023.2/tps/mingw/8.3.0/win64.o/nt\5Clib\5Cgcc\5Cx86_64-w64-mingw32\5C8.3.0\5Cinclude\5Cc++\5Cstdlib.h", directory: "C:\5CUsers\5CTRETEC\5COneDrive\5CDocuments\5CMaster2\5CHLS-FPGA\5Ccnn_hls")
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !471, file: !642, line: 39)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !507, file: !642, line: 40)
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !456, file: !642, line: 51)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !461, file: !642, line: 52)
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !445, file: !642, line: 54)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !476, file: !642, line: 55)
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !478, file: !642, line: 56)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !482, file: !642, line: 57)
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !486, file: !642, line: 58)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !499, file: !642, line: 59)
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !634, file: !642, line: 60)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !511, file: !642, line: 61)
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !515, file: !642, line: 62)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !520, file: !642, line: 63)
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !524, file: !642, line: 64)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !528, file: !642, line: 65)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !532, file: !642, line: 67)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !536, file: !642, line: 68)
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !544, file: !642, line: 69)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !548, file: !642, line: 71)
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !552, file: !642, line: 72)
!664 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !556, file: !642, line: 73)
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !560, file: !642, line: 74)
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !565, file: !642, line: 75)
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !571, file: !642, line: 76)
!668 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !575, file: !642, line: 77)
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !579, file: !642, line: 78)
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !581, file: !642, line: 80)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !96, entity: !589, file: !642, line: 81)
