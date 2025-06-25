# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_lenet_sparsemux_15_3_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_lenet_sparsemux_15_3_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_lenet_sparsemux_15_3_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_lenet_sparsemux_15_3_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_lenet_sparsemux_15_3_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_lenet_sparsemux_15_3_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_lenet_sparsemux_15_3_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


set name cnn_lenet_mul_6ns_9ns_14_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name cnn_lenet_mul_7ns_9ns_15_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name cnn_lenet_urem_7ns_4ns_3_11_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 10 ALLOW_PRAGMA 1
}


set name cnn_lenet_mul_9ns_11ns_19_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name cnn_lenet_mul_8ns_10ns_17_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set id 338
set name cnn_lenet_am_addmul_4ns_7ns_9ns_17_4_1
set corename simcore_am
set op am
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 4
set in0_signed 0
set in1_width 7
set in1_signed 0
set in2_width 9
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 17
set arg_lists {i0 {4 0 +} i1 {7 0 +} s {8 0 +} i2 {9 0 +} p {17 1 +} c_expval {c} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3 ALLOW_PRAGMA 1
}


set op am
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 339
set name cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 6
set in0_signed 0
set in1_width 5
set in1_signed 0
set in2_width 3
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 11
set arg_lists {i0 {6 0 +} i1 {5 0 +} m {11 1 +} i2 {3 0 +} p {11 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp_slice} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler cnn_lenet_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_Layer2_Weights_CPU_cud BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 357 \
    name Layer2_Neurons_CPU \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Layer2_Neurons_CPU \
    op interface \
    ports { Layer2_Neurons_CPU_address0 { O 8 vector } Layer2_Neurons_CPU_ce0 { O 1 bit } Layer2_Neurons_CPU_q0 { I 32 vector } Layer2_Neurons_CPU_address1 { O 8 vector } Layer2_Neurons_CPU_ce1 { O 1 bit } Layer2_Neurons_CPU_q1 { I 32 vector } Layer2_Neurons_CPU_address2 { O 8 vector } Layer2_Neurons_CPU_ce2 { O 1 bit } Layer2_Neurons_CPU_q2 { I 32 vector } Layer2_Neurons_CPU_address3 { O 8 vector } Layer2_Neurons_CPU_ce3 { O 1 bit } Layer2_Neurons_CPU_q3 { I 32 vector } Layer2_Neurons_CPU_address4 { O 8 vector } Layer2_Neurons_CPU_ce4 { O 1 bit } Layer2_Neurons_CPU_q4 { I 32 vector } Layer2_Neurons_CPU_address5 { O 8 vector } Layer2_Neurons_CPU_ce5 { O 1 bit } Layer2_Neurons_CPU_q5 { I 32 vector } Layer2_Neurons_CPU_address6 { O 8 vector } Layer2_Neurons_CPU_ce6 { O 1 bit } Layer2_Neurons_CPU_q6 { I 32 vector } Layer2_Neurons_CPU_address7 { O 8 vector } Layer2_Neurons_CPU_ce7 { O 1 bit } Layer2_Neurons_CPU_q7 { I 32 vector } Layer2_Neurons_CPU_address8 { O 8 vector } Layer2_Neurons_CPU_ce8 { O 1 bit } Layer2_Neurons_CPU_q8 { I 32 vector } Layer2_Neurons_CPU_address9 { O 8 vector } Layer2_Neurons_CPU_ce9 { O 1 bit } Layer2_Neurons_CPU_q9 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Layer2_Neurons_CPU'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 358 \
    name Layer2_Neurons_CPU_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Layer2_Neurons_CPU_1 \
    op interface \
    ports { Layer2_Neurons_CPU_1_address0 { O 8 vector } Layer2_Neurons_CPU_1_ce0 { O 1 bit } Layer2_Neurons_CPU_1_q0 { I 32 vector } Layer2_Neurons_CPU_1_address1 { O 8 vector } Layer2_Neurons_CPU_1_ce1 { O 1 bit } Layer2_Neurons_CPU_1_q1 { I 32 vector } Layer2_Neurons_CPU_1_address2 { O 8 vector } Layer2_Neurons_CPU_1_ce2 { O 1 bit } Layer2_Neurons_CPU_1_q2 { I 32 vector } Layer2_Neurons_CPU_1_address3 { O 8 vector } Layer2_Neurons_CPU_1_ce3 { O 1 bit } Layer2_Neurons_CPU_1_q3 { I 32 vector } Layer2_Neurons_CPU_1_address4 { O 8 vector } Layer2_Neurons_CPU_1_ce4 { O 1 bit } Layer2_Neurons_CPU_1_q4 { I 32 vector } Layer2_Neurons_CPU_1_address5 { O 8 vector } Layer2_Neurons_CPU_1_ce5 { O 1 bit } Layer2_Neurons_CPU_1_q5 { I 32 vector } Layer2_Neurons_CPU_1_address6 { O 8 vector } Layer2_Neurons_CPU_1_ce6 { O 1 bit } Layer2_Neurons_CPU_1_q6 { I 32 vector } Layer2_Neurons_CPU_1_address7 { O 8 vector } Layer2_Neurons_CPU_1_ce7 { O 1 bit } Layer2_Neurons_CPU_1_q7 { I 32 vector } Layer2_Neurons_CPU_1_address8 { O 8 vector } Layer2_Neurons_CPU_1_ce8 { O 1 bit } Layer2_Neurons_CPU_1_q8 { I 32 vector } Layer2_Neurons_CPU_1_address9 { O 8 vector } Layer2_Neurons_CPU_1_ce9 { O 1 bit } Layer2_Neurons_CPU_1_q9 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Layer2_Neurons_CPU_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 359 \
    name Layer2_Neurons_CPU_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Layer2_Neurons_CPU_2 \
    op interface \
    ports { Layer2_Neurons_CPU_2_address0 { O 8 vector } Layer2_Neurons_CPU_2_ce0 { O 1 bit } Layer2_Neurons_CPU_2_q0 { I 32 vector } Layer2_Neurons_CPU_2_address1 { O 8 vector } Layer2_Neurons_CPU_2_ce1 { O 1 bit } Layer2_Neurons_CPU_2_q1 { I 32 vector } Layer2_Neurons_CPU_2_address2 { O 8 vector } Layer2_Neurons_CPU_2_ce2 { O 1 bit } Layer2_Neurons_CPU_2_q2 { I 32 vector } Layer2_Neurons_CPU_2_address3 { O 8 vector } Layer2_Neurons_CPU_2_ce3 { O 1 bit } Layer2_Neurons_CPU_2_q3 { I 32 vector } Layer2_Neurons_CPU_2_address4 { O 8 vector } Layer2_Neurons_CPU_2_ce4 { O 1 bit } Layer2_Neurons_CPU_2_q4 { I 32 vector } Layer2_Neurons_CPU_2_address5 { O 8 vector } Layer2_Neurons_CPU_2_ce5 { O 1 bit } Layer2_Neurons_CPU_2_q5 { I 32 vector } Layer2_Neurons_CPU_2_address6 { O 8 vector } Layer2_Neurons_CPU_2_ce6 { O 1 bit } Layer2_Neurons_CPU_2_q6 { I 32 vector } Layer2_Neurons_CPU_2_address7 { O 8 vector } Layer2_Neurons_CPU_2_ce7 { O 1 bit } Layer2_Neurons_CPU_2_q7 { I 32 vector } Layer2_Neurons_CPU_2_address8 { O 8 vector } Layer2_Neurons_CPU_2_ce8 { O 1 bit } Layer2_Neurons_CPU_2_q8 { I 32 vector } Layer2_Neurons_CPU_2_address9 { O 8 vector } Layer2_Neurons_CPU_2_ce9 { O 1 bit } Layer2_Neurons_CPU_2_q9 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Layer2_Neurons_CPU_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 360 \
    name Layer2_Neurons_CPU_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Layer2_Neurons_CPU_3 \
    op interface \
    ports { Layer2_Neurons_CPU_3_address0 { O 8 vector } Layer2_Neurons_CPU_3_ce0 { O 1 bit } Layer2_Neurons_CPU_3_q0 { I 32 vector } Layer2_Neurons_CPU_3_address1 { O 8 vector } Layer2_Neurons_CPU_3_ce1 { O 1 bit } Layer2_Neurons_CPU_3_q1 { I 32 vector } Layer2_Neurons_CPU_3_address2 { O 8 vector } Layer2_Neurons_CPU_3_ce2 { O 1 bit } Layer2_Neurons_CPU_3_q2 { I 32 vector } Layer2_Neurons_CPU_3_address3 { O 8 vector } Layer2_Neurons_CPU_3_ce3 { O 1 bit } Layer2_Neurons_CPU_3_q3 { I 32 vector } Layer2_Neurons_CPU_3_address4 { O 8 vector } Layer2_Neurons_CPU_3_ce4 { O 1 bit } Layer2_Neurons_CPU_3_q4 { I 32 vector } Layer2_Neurons_CPU_3_address5 { O 8 vector } Layer2_Neurons_CPU_3_ce5 { O 1 bit } Layer2_Neurons_CPU_3_q5 { I 32 vector } Layer2_Neurons_CPU_3_address6 { O 8 vector } Layer2_Neurons_CPU_3_ce6 { O 1 bit } Layer2_Neurons_CPU_3_q6 { I 32 vector } Layer2_Neurons_CPU_3_address7 { O 8 vector } Layer2_Neurons_CPU_3_ce7 { O 1 bit } Layer2_Neurons_CPU_3_q7 { I 32 vector } Layer2_Neurons_CPU_3_address8 { O 8 vector } Layer2_Neurons_CPU_3_ce8 { O 1 bit } Layer2_Neurons_CPU_3_q8 { I 32 vector } Layer2_Neurons_CPU_3_address9 { O 8 vector } Layer2_Neurons_CPU_3_ce9 { O 1 bit } Layer2_Neurons_CPU_3_q9 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Layer2_Neurons_CPU_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 361 \
    name Layer2_Neurons_CPU_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Layer2_Neurons_CPU_4 \
    op interface \
    ports { Layer2_Neurons_CPU_4_address0 { O 8 vector } Layer2_Neurons_CPU_4_ce0 { O 1 bit } Layer2_Neurons_CPU_4_q0 { I 32 vector } Layer2_Neurons_CPU_4_address1 { O 8 vector } Layer2_Neurons_CPU_4_ce1 { O 1 bit } Layer2_Neurons_CPU_4_q1 { I 32 vector } Layer2_Neurons_CPU_4_address2 { O 8 vector } Layer2_Neurons_CPU_4_ce2 { O 1 bit } Layer2_Neurons_CPU_4_q2 { I 32 vector } Layer2_Neurons_CPU_4_address3 { O 8 vector } Layer2_Neurons_CPU_4_ce3 { O 1 bit } Layer2_Neurons_CPU_4_q3 { I 32 vector } Layer2_Neurons_CPU_4_address4 { O 8 vector } Layer2_Neurons_CPU_4_ce4 { O 1 bit } Layer2_Neurons_CPU_4_q4 { I 32 vector } Layer2_Neurons_CPU_4_address5 { O 8 vector } Layer2_Neurons_CPU_4_ce5 { O 1 bit } Layer2_Neurons_CPU_4_q5 { I 32 vector } Layer2_Neurons_CPU_4_address6 { O 8 vector } Layer2_Neurons_CPU_4_ce6 { O 1 bit } Layer2_Neurons_CPU_4_q6 { I 32 vector } Layer2_Neurons_CPU_4_address7 { O 8 vector } Layer2_Neurons_CPU_4_ce7 { O 1 bit } Layer2_Neurons_CPU_4_q7 { I 32 vector } Layer2_Neurons_CPU_4_address8 { O 8 vector } Layer2_Neurons_CPU_4_ce8 { O 1 bit } Layer2_Neurons_CPU_4_q8 { I 32 vector } Layer2_Neurons_CPU_4_address9 { O 8 vector } Layer2_Neurons_CPU_4_ce9 { O 1 bit } Layer2_Neurons_CPU_4_q9 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Layer2_Neurons_CPU_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 362 \
    name Layer2_Neurons_CPU_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Layer2_Neurons_CPU_5 \
    op interface \
    ports { Layer2_Neurons_CPU_5_address0 { O 8 vector } Layer2_Neurons_CPU_5_ce0 { O 1 bit } Layer2_Neurons_CPU_5_q0 { I 32 vector } Layer2_Neurons_CPU_5_address1 { O 8 vector } Layer2_Neurons_CPU_5_ce1 { O 1 bit } Layer2_Neurons_CPU_5_q1 { I 32 vector } Layer2_Neurons_CPU_5_address2 { O 8 vector } Layer2_Neurons_CPU_5_ce2 { O 1 bit } Layer2_Neurons_CPU_5_q2 { I 32 vector } Layer2_Neurons_CPU_5_address3 { O 8 vector } Layer2_Neurons_CPU_5_ce3 { O 1 bit } Layer2_Neurons_CPU_5_q3 { I 32 vector } Layer2_Neurons_CPU_5_address4 { O 8 vector } Layer2_Neurons_CPU_5_ce4 { O 1 bit } Layer2_Neurons_CPU_5_q4 { I 32 vector } Layer2_Neurons_CPU_5_address5 { O 8 vector } Layer2_Neurons_CPU_5_ce5 { O 1 bit } Layer2_Neurons_CPU_5_q5 { I 32 vector } Layer2_Neurons_CPU_5_address6 { O 8 vector } Layer2_Neurons_CPU_5_ce6 { O 1 bit } Layer2_Neurons_CPU_5_q6 { I 32 vector } Layer2_Neurons_CPU_5_address7 { O 8 vector } Layer2_Neurons_CPU_5_ce7 { O 1 bit } Layer2_Neurons_CPU_5_q7 { I 32 vector } Layer2_Neurons_CPU_5_address8 { O 8 vector } Layer2_Neurons_CPU_5_ce8 { O 1 bit } Layer2_Neurons_CPU_5_q8 { I 32 vector } Layer2_Neurons_CPU_5_address9 { O 8 vector } Layer2_Neurons_CPU_5_ce9 { O 1 bit } Layer2_Neurons_CPU_5_q9 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Layer2_Neurons_CPU_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 363 \
    name Layer2_Neurons_CPU_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Layer2_Neurons_CPU_6 \
    op interface \
    ports { Layer2_Neurons_CPU_6_address0 { O 8 vector } Layer2_Neurons_CPU_6_ce0 { O 1 bit } Layer2_Neurons_CPU_6_q0 { I 32 vector } Layer2_Neurons_CPU_6_address1 { O 8 vector } Layer2_Neurons_CPU_6_ce1 { O 1 bit } Layer2_Neurons_CPU_6_q1 { I 32 vector } Layer2_Neurons_CPU_6_address2 { O 8 vector } Layer2_Neurons_CPU_6_ce2 { O 1 bit } Layer2_Neurons_CPU_6_q2 { I 32 vector } Layer2_Neurons_CPU_6_address3 { O 8 vector } Layer2_Neurons_CPU_6_ce3 { O 1 bit } Layer2_Neurons_CPU_6_q3 { I 32 vector } Layer2_Neurons_CPU_6_address4 { O 8 vector } Layer2_Neurons_CPU_6_ce4 { O 1 bit } Layer2_Neurons_CPU_6_q4 { I 32 vector } Layer2_Neurons_CPU_6_address5 { O 8 vector } Layer2_Neurons_CPU_6_ce5 { O 1 bit } Layer2_Neurons_CPU_6_q5 { I 32 vector } Layer2_Neurons_CPU_6_address6 { O 8 vector } Layer2_Neurons_CPU_6_ce6 { O 1 bit } Layer2_Neurons_CPU_6_q6 { I 32 vector } Layer2_Neurons_CPU_6_address7 { O 8 vector } Layer2_Neurons_CPU_6_ce7 { O 1 bit } Layer2_Neurons_CPU_6_q7 { I 32 vector } Layer2_Neurons_CPU_6_address8 { O 8 vector } Layer2_Neurons_CPU_6_ce8 { O 1 bit } Layer2_Neurons_CPU_6_q8 { I 32 vector } Layer2_Neurons_CPU_6_address9 { O 8 vector } Layer2_Neurons_CPU_6_ce9 { O 1 bit } Layer2_Neurons_CPU_6_q9 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Layer2_Neurons_CPU_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 364 \
    name Layer3_Neurons_CPU \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Layer3_Neurons_CPU \
    op interface \
    ports { Layer3_Neurons_CPU_address0 { O 11 vector } Layer3_Neurons_CPU_ce0 { O 1 bit } Layer3_Neurons_CPU_we0 { O 1 bit } Layer3_Neurons_CPU_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Layer3_Neurons_CPU'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName cnn_lenet_flow_control_loop_pipe_sequential_init_U
set CompName cnn_lenet_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix cnn_lenet_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


