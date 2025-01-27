# This script segment is generated automatically by AutoPilot

set name calculateLayer3_fadd_32ns_32ns_32_4_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fadd} IMPL {fulldsp} LATENCY 3 ALLOW_PRAGMA 1
}


set name calculateLayer3_fmul_32ns_32ns_32_2_max_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fmul} IMPL {maxdsp} LATENCY 1 ALLOW_PRAGMA 1
}


set name calculateLayer3_fptrunc_64ns_32_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fptrunc} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name calculateLayer3_fpext_32ns_64_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {fpext} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
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
    id 87 \
    name Layer2_Weights_CPU \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Layer2_Weights_CPU \
    op interface \
    ports { Layer2_Weights_CPU_address0 { O 13 vector } Layer2_Weights_CPU_ce0 { O 1 bit } Layer2_Weights_CPU_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Layer2_Weights_CPU'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 238 \
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
    id 88 \
    name empty_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_36 \
    op interface \
    ports { empty_36 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name empty_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_37 \
    op interface \
    ports { empty_37 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name empty_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_38 \
    op interface \
    ports { empty_38 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name empty_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_39 \
    op interface \
    ports { empty_39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name empty_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_40 \
    op interface \
    ports { empty_40 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name empty_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_41 \
    op interface \
    ports { empty_41 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name empty_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_42 \
    op interface \
    ports { empty_42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name empty_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_43 \
    op interface \
    ports { empty_43 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name empty_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_44 \
    op interface \
    ports { empty_44 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name empty_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_45 \
    op interface \
    ports { empty_45 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name empty_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_46 \
    op interface \
    ports { empty_46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name empty_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_47 \
    op interface \
    ports { empty_47 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name empty_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_48 \
    op interface \
    ports { empty_48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name empty_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_49 \
    op interface \
    ports { empty_49 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name empty_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_50 \
    op interface \
    ports { empty_50 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name empty_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_51 \
    op interface \
    ports { empty_51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name empty_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_52 \
    op interface \
    ports { empty_52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name empty_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_53 \
    op interface \
    ports { empty_53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name empty_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_54 \
    op interface \
    ports { empty_54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name empty_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_55 \
    op interface \
    ports { empty_55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name empty_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_56 \
    op interface \
    ports { empty_56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name empty_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_57 \
    op interface \
    ports { empty_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name empty_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_58 \
    op interface \
    ports { empty_58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name empty_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_59 \
    op interface \
    ports { empty_59 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name empty_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_60 \
    op interface \
    ports { empty_60 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name empty_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_61 \
    op interface \
    ports { empty_61 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name empty_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_62 \
    op interface \
    ports { empty_62 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name empty_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_63 \
    op interface \
    ports { empty_63 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name empty_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_64 \
    op interface \
    ports { empty_64 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name empty_65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_65 \
    op interface \
    ports { empty_65 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name empty_66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_66 \
    op interface \
    ports { empty_66 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name empty_67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_67 \
    op interface \
    ports { empty_67 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name empty_68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_68 \
    op interface \
    ports { empty_68 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name empty_69 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_69 \
    op interface \
    ports { empty_69 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name empty_70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_70 \
    op interface \
    ports { empty_70 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name empty_71 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_71 \
    op interface \
    ports { empty_71 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name empty_72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_72 \
    op interface \
    ports { empty_72 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name empty_73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_73 \
    op interface \
    ports { empty_73 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name empty_74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_74 \
    op interface \
    ports { empty_74 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name empty_75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_75 \
    op interface \
    ports { empty_75 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name empty_76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_76 \
    op interface \
    ports { empty_76 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name empty_77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_77 \
    op interface \
    ports { empty_77 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name empty_78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_78 \
    op interface \
    ports { empty_78 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name empty_79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_79 \
    op interface \
    ports { empty_79 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name empty_80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_80 \
    op interface \
    ports { empty_80 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name empty_81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_81 \
    op interface \
    ports { empty_81 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name empty_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_82 \
    op interface \
    ports { empty_82 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name empty_83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_83 \
    op interface \
    ports { empty_83 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name empty_84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_84 \
    op interface \
    ports { empty_84 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name empty_85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_85 \
    op interface \
    ports { empty_85 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name empty_86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_86 \
    op interface \
    ports { empty_86 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name empty_87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_87 \
    op interface \
    ports { empty_87 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name empty_88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_88 \
    op interface \
    ports { empty_88 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name empty_89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_89 \
    op interface \
    ports { empty_89 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name empty_90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_90 \
    op interface \
    ports { empty_90 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name empty_91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_91 \
    op interface \
    ports { empty_91 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name empty_92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_92 \
    op interface \
    ports { empty_92 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name empty_93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_93 \
    op interface \
    ports { empty_93 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name empty_94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_94 \
    op interface \
    ports { empty_94 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name empty_95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_95 \
    op interface \
    ports { empty_95 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name empty_96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_96 \
    op interface \
    ports { empty_96 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name empty_97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_97 \
    op interface \
    ports { empty_97 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name empty_98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_98 \
    op interface \
    ports { empty_98 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name empty_99 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_99 \
    op interface \
    ports { empty_99 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name empty_100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_100 \
    op interface \
    ports { empty_100 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name empty_101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_101 \
    op interface \
    ports { empty_101 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name empty_102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_102 \
    op interface \
    ports { empty_102 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name empty_103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_103 \
    op interface \
    ports { empty_103 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name empty_104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_104 \
    op interface \
    ports { empty_104 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name empty_105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_105 \
    op interface \
    ports { empty_105 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name empty_106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_106 \
    op interface \
    ports { empty_106 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name empty_107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_107 \
    op interface \
    ports { empty_107 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name empty_108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_108 \
    op interface \
    ports { empty_108 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name empty_109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_109 \
    op interface \
    ports { empty_109 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name empty_110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_110 \
    op interface \
    ports { empty_110 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name empty_111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_111 \
    op interface \
    ports { empty_111 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name empty_112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_112 \
    op interface \
    ports { empty_112 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name empty_113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_113 \
    op interface \
    ports { empty_113 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name empty_114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_114 \
    op interface \
    ports { empty_114 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name empty_115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_115 \
    op interface \
    ports { empty_115 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name empty_116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_116 \
    op interface \
    ports { empty_116 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name empty_117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_117 \
    op interface \
    ports { empty_117 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name empty_118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_118 \
    op interface \
    ports { empty_118 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name empty_119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_119 \
    op interface \
    ports { empty_119 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name empty_120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_120 \
    op interface \
    ports { empty_120 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name empty_121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_121 \
    op interface \
    ports { empty_121 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name empty_122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_122 \
    op interface \
    ports { empty_122 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name empty_123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_123 \
    op interface \
    ports { empty_123 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name empty_124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_124 \
    op interface \
    ports { empty_124 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name empty_125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_125 \
    op interface \
    ports { empty_125 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name empty_126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_126 \
    op interface \
    ports { empty_126 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name empty_127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_127 \
    op interface \
    ports { empty_127 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name empty_128 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_128 \
    op interface \
    ports { empty_128 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name empty_129 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_129 \
    op interface \
    ports { empty_129 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name empty_130 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_130 \
    op interface \
    ports { empty_130 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name empty_131 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_131 \
    op interface \
    ports { empty_131 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name empty_132 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_132 \
    op interface \
    ports { empty_132 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name empty_133 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_133 \
    op interface \
    ports { empty_133 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name empty_134 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_134 \
    op interface \
    ports { empty_134 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name empty_135 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_135 \
    op interface \
    ports { empty_135 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name empty_136 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_136 \
    op interface \
    ports { empty_136 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name empty_137 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_137 \
    op interface \
    ports { empty_137 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name empty_138 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_138 \
    op interface \
    ports { empty_138 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name empty_139 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_139 \
    op interface \
    ports { empty_139 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name empty_140 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_140 \
    op interface \
    ports { empty_140 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name empty_141 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_141 \
    op interface \
    ports { empty_141 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name empty_142 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_142 \
    op interface \
    ports { empty_142 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name empty_143 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_143 \
    op interface \
    ports { empty_143 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name empty_144 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_144 \
    op interface \
    ports { empty_144 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name empty_145 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_145 \
    op interface \
    ports { empty_145 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name empty_146 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_146 \
    op interface \
    ports { empty_146 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name empty_147 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_147 \
    op interface \
    ports { empty_147 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name empty_148 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_148 \
    op interface \
    ports { empty_148 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name empty_149 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_149 \
    op interface \
    ports { empty_149 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name empty_150 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_150 \
    op interface \
    ports { empty_150 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name empty_151 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_151 \
    op interface \
    ports { empty_151 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name empty_152 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_152 \
    op interface \
    ports { empty_152 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name empty_153 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_153 \
    op interface \
    ports { empty_153 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name empty_154 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_154 \
    op interface \
    ports { empty_154 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name empty_155 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_155 \
    op interface \
    ports { empty_155 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name empty_156 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_156 \
    op interface \
    ports { empty_156 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name empty_157 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_157 \
    op interface \
    ports { empty_157 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name empty_158 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_158 \
    op interface \
    ports { empty_158 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name empty_159 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_159 \
    op interface \
    ports { empty_159 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name empty_160 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_160 \
    op interface \
    ports { empty_160 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name empty_161 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_161 \
    op interface \
    ports { empty_161 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name empty_162 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_162 \
    op interface \
    ports { empty_162 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name empty_163 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_163 \
    op interface \
    ports { empty_163 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name empty_164 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_164 \
    op interface \
    ports { empty_164 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name empty_165 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_165 \
    op interface \
    ports { empty_165 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name empty_166 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_166 \
    op interface \
    ports { empty_166 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name empty_167 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_167 \
    op interface \
    ports { empty_167 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name empty_168 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_168 \
    op interface \
    ports { empty_168 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name empty_169 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_169 \
    op interface \
    ports { empty_169 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name empty_170 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_170 \
    op interface \
    ports { empty_170 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name empty_171 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_171 \
    op interface \
    ports { empty_171 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name empty_172 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_172 \
    op interface \
    ports { empty_172 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name empty_173 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_173 \
    op interface \
    ports { empty_173 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name empty_174 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_174 \
    op interface \
    ports { empty_174 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name empty_175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_175 \
    op interface \
    ports { empty_175 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name empty_176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_176 \
    op interface \
    ports { empty_176 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name empty_177 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_177 \
    op interface \
    ports { empty_177 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name empty_178 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_178 \
    op interface \
    ports { empty_178 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name empty_179 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_179 \
    op interface \
    ports { empty_179 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name empty_180 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_180 \
    op interface \
    ports { empty_180 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name empty_181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_181 \
    op interface \
    ports { empty_181 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name empty_182 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_182 \
    op interface \
    ports { empty_182 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name empty_183 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_183 \
    op interface \
    ports { empty_183 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name empty_184 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_184 \
    op interface \
    ports { empty_184 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name empty_185 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_185 \
    op interface \
    ports { empty_185 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name empty_186 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_186 \
    op interface \
    ports { empty_186 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name empty_187 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_187 \
    op interface \
    ports { empty_187 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name empty_188 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_188 \
    op interface \
    ports { empty_188 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name empty_189 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_189 \
    op interface \
    ports { empty_189 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name empty_190 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_190 \
    op interface \
    ports { empty_190 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name empty_191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_191 \
    op interface \
    ports { empty_191 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name empty_192 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_192 \
    op interface \
    ports { empty_192 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name empty_193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_193 \
    op interface \
    ports { empty_193 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name empty_194 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_194 \
    op interface \
    ports { empty_194 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name empty_195 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_195 \
    op interface \
    ports { empty_195 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name empty_196 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_196 \
    op interface \
    ports { empty_196 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name empty_197 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_197 \
    op interface \
    ports { empty_197 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name empty_198 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_198 \
    op interface \
    ports { empty_198 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name empty_199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_199 \
    op interface \
    ports { empty_199 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name empty_200 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_200 \
    op interface \
    ports { empty_200 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name empty_201 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_201 \
    op interface \
    ports { empty_201 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name empty_202 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_202 \
    op interface \
    ports { empty_202 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name empty_203 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_203 \
    op interface \
    ports { empty_203 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name empty_204 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_204 \
    op interface \
    ports { empty_204 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name empty_205 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_205 \
    op interface \
    ports { empty_205 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name empty_206 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_206 \
    op interface \
    ports { empty_206 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name empty_207 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_207 \
    op interface \
    ports { empty_207 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name empty_208 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_208 \
    op interface \
    ports { empty_208 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name empty_209 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_209 \
    op interface \
    ports { empty_209 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name empty_210 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_210 \
    op interface \
    ports { empty_210 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name empty_211 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_211 \
    op interface \
    ports { empty_211 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name empty_212 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_212 \
    op interface \
    ports { empty_212 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name empty_213 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_213 \
    op interface \
    ports { empty_213 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name empty_214 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_214 \
    op interface \
    ports { empty_214 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name empty_215 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_215 \
    op interface \
    ports { empty_215 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name empty_216 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_216 \
    op interface \
    ports { empty_216 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name empty_217 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_217 \
    op interface \
    ports { empty_217 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name empty_218 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_218 \
    op interface \
    ports { empty_218 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name empty_219 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_219 \
    op interface \
    ports { empty_219 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name empty_220 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_220 \
    op interface \
    ports { empty_220 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name empty_221 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_221 \
    op interface \
    ports { empty_221 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name empty_222 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_222 \
    op interface \
    ports { empty_222 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name empty_223 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_223 \
    op interface \
    ports { empty_223 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name empty_224 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_224 \
    op interface \
    ports { empty_224 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name empty_225 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_225 \
    op interface \
    ports { empty_225 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name empty_226 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_226 \
    op interface \
    ports { empty_226 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name empty_227 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_227 \
    op interface \
    ports { empty_227 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name empty_228 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_228 \
    op interface \
    ports { empty_228 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name empty_229 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_229 \
    op interface \
    ports { empty_229 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name empty_230 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_230 \
    op interface \
    ports { empty_230 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name empty_231 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_231 \
    op interface \
    ports { empty_231 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name empty_232 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_232 \
    op interface \
    ports { empty_232 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name empty_233 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_233 \
    op interface \
    ports { empty_233 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name empty_234 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_234 \
    op interface \
    ports { empty_234 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name empty_235 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_235 \
    op interface \
    ports { empty_235 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name empty_236 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_236 \
    op interface \
    ports { empty_236 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name empty_237 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_237 \
    op interface \
    ports { empty_237 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name empty_238 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_238 \
    op interface \
    ports { empty_238 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name empty_239 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_239 \
    op interface \
    ports { empty_239 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name empty_240 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_240 \
    op interface \
    ports { empty_240 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name empty_241 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_241 \
    op interface \
    ports { empty_241 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name empty_242 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_242 \
    op interface \
    ports { empty_242 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name empty_243 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_243 \
    op interface \
    ports { empty_243 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name empty_244 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_244 \
    op interface \
    ports { empty_244 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name empty_245 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_245 \
    op interface \
    ports { empty_245 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name empty_246 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_246 \
    op interface \
    ports { empty_246 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name empty_247 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_247 \
    op interface \
    ports { empty_247 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name empty_248 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_248 \
    op interface \
    ports { empty_248 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name empty_249 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_249 \
    op interface \
    ports { empty_249 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name empty_250 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_250 \
    op interface \
    ports { empty_250 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name empty_251 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_251 \
    op interface \
    ports { empty_251 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name empty_252 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_252 \
    op interface \
    ports { empty_252 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name empty_253 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_253 \
    op interface \
    ports { empty_253 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name empty_254 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_254 \
    op interface \
    ports { empty_254 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name empty_255 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_255 \
    op interface \
    ports { empty_255 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name empty_256 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_256 \
    op interface \
    ports { empty_256 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name empty_257 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_257 \
    op interface \
    ports { empty_257 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name empty_258 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_258 \
    op interface \
    ports { empty_258 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name empty_259 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_259 \
    op interface \
    ports { empty_259 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name empty_260 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_260 \
    op interface \
    ports { empty_260 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name empty_261 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_261 \
    op interface \
    ports { empty_261 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name empty_262 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_262 \
    op interface \
    ports { empty_262 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name empty_263 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_263 \
    op interface \
    ports { empty_263 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name empty_264 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_264 \
    op interface \
    ports { empty_264 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name empty_265 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_265 \
    op interface \
    ports { empty_265 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name empty_266 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_266 \
    op interface \
    ports { empty_266 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name empty_267 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_267 \
    op interface \
    ports { empty_267 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name empty_268 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_268 \
    op interface \
    ports { empty_268 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name empty_269 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_269 \
    op interface \
    ports { empty_269 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name empty_270 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_270 \
    op interface \
    ports { empty_270 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name empty_271 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_271 \
    op interface \
    ports { empty_271 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name empty_272 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_272 \
    op interface \
    ports { empty_272 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name empty_273 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_273 \
    op interface \
    ports { empty_273 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name empty_274 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_274 \
    op interface \
    ports { empty_274 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name empty_275 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_275 \
    op interface \
    ports { empty_275 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name empty_276 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_276 \
    op interface \
    ports { empty_276 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name empty_277 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_277 \
    op interface \
    ports { empty_277 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name empty_278 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_278 \
    op interface \
    ports { empty_278 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name empty_279 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_279 \
    op interface \
    ports { empty_279 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name empty_280 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_280 \
    op interface \
    ports { empty_280 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name empty_281 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_281 \
    op interface \
    ports { empty_281 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name empty_282 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_282 \
    op interface \
    ports { empty_282 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name empty_283 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_283 \
    op interface \
    ports { empty_283 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name empty_284 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_284 \
    op interface \
    ports { empty_284 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name empty_285 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_285 \
    op interface \
    ports { empty_285 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name empty_286 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_286 \
    op interface \
    ports { empty_286 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name empty_287 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_287 \
    op interface \
    ports { empty_287 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name empty_288 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_288 \
    op interface \
    ports { empty_288 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name empty_289 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_289 \
    op interface \
    ports { empty_289 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name empty_290 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_290 \
    op interface \
    ports { empty_290 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name empty_291 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_291 \
    op interface \
    ports { empty_291 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name empty_292 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_292 \
    op interface \
    ports { empty_292 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name empty_293 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_293 \
    op interface \
    ports { empty_293 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name empty_294 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_294 \
    op interface \
    ports { empty_294 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name empty_295 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_295 \
    op interface \
    ports { empty_295 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name empty_296 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_296 \
    op interface \
    ports { empty_296 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name empty_297 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_297 \
    op interface \
    ports { empty_297 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name empty_298 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_298 \
    op interface \
    ports { empty_298 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name empty_299 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_299 \
    op interface \
    ports { empty_299 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name empty_300 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_300 \
    op interface \
    ports { empty_300 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name empty_301 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_301 \
    op interface \
    ports { empty_301 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name empty_302 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_302 \
    op interface \
    ports { empty_302 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name empty_303 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_303 \
    op interface \
    ports { empty_303 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 357 \
    name empty_304 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_304 \
    op interface \
    ports { empty_304 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name empty_305 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_305 \
    op interface \
    ports { empty_305 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name empty_306 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_306 \
    op interface \
    ports { empty_306 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name empty_307 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_307 \
    op interface \
    ports { empty_307 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name empty_308 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_308 \
    op interface \
    ports { empty_308 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name empty_309 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_309 \
    op interface \
    ports { empty_309 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name empty_310 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_310 \
    op interface \
    ports { empty_310 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name empty_311 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_311 \
    op interface \
    ports { empty_311 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 365 \
    name empty_312 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_312 \
    op interface \
    ports { empty_312 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 366 \
    name empty_313 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_313 \
    op interface \
    ports { empty_313 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 367 \
    name empty_314 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_314 \
    op interface \
    ports { empty_314 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 368 \
    name empty_315 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_315 \
    op interface \
    ports { empty_315 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 369 \
    name empty_316 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_316 \
    op interface \
    ports { empty_316 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 370 \
    name empty_317 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_317 \
    op interface \
    ports { empty_317 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 371 \
    name empty_318 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_318 \
    op interface \
    ports { empty_318 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
    name empty_319 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_319 \
    op interface \
    ports { empty_319 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 373 \
    name empty_320 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_320 \
    op interface \
    ports { empty_320 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 374 \
    name empty_321 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_321 \
    op interface \
    ports { empty_321 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name empty_322 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_322 \
    op interface \
    ports { empty_322 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name empty_323 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_323 \
    op interface \
    ports { empty_323 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name empty_324 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_324 \
    op interface \
    ports { empty_324 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name empty_325 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_325 \
    op interface \
    ports { empty_325 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name empty_326 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_326 \
    op interface \
    ports { empty_326 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name empty_327 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_327 \
    op interface \
    ports { empty_327 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name empty_328 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_328 \
    op interface \
    ports { empty_328 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name empty_329 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_329 \
    op interface \
    ports { empty_329 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
    name empty_330 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_330 \
    op interface \
    ports { empty_330 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 384 \
    name empty_331 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_331 \
    op interface \
    ports { empty_331 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
    name empty_332 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_332 \
    op interface \
    ports { empty_332 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name empty_333 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_333 \
    op interface \
    ports { empty_333 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name empty_334 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_334 \
    op interface \
    ports { empty_334 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name empty_335 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_335 \
    op interface \
    ports { empty_335 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 389 \
    name empty_336 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_336 \
    op interface \
    ports { empty_336 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 390 \
    name empty_337 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_337 \
    op interface \
    ports { empty_337 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 391 \
    name empty_338 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_338 \
    op interface \
    ports { empty_338 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 392 \
    name empty_339 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_339 \
    op interface \
    ports { empty_339 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 393 \
    name empty_340 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_340 \
    op interface \
    ports { empty_340 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name empty_341 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_341 \
    op interface \
    ports { empty_341 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name empty_342 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_342 \
    op interface \
    ports { empty_342 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name empty_343 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_343 \
    op interface \
    ports { empty_343 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name empty_344 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_344 \
    op interface \
    ports { empty_344 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name empty_345 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_345 \
    op interface \
    ports { empty_345 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name empty_346 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_346 \
    op interface \
    ports { empty_346 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name empty_347 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_347 \
    op interface \
    ports { empty_347 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name empty_348 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_348 \
    op interface \
    ports { empty_348 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name empty_349 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_349 \
    op interface \
    ports { empty_349 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name empty_350 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_350 \
    op interface \
    ports { empty_350 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name empty_351 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_351 \
    op interface \
    ports { empty_351 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name empty_352 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_352 \
    op interface \
    ports { empty_352 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name empty_353 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_353 \
    op interface \
    ports { empty_353 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name empty_354 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_354 \
    op interface \
    ports { empty_354 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
    name empty_355 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_355 \
    op interface \
    ports { empty_355 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 409 \
    name empty_356 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_356 \
    op interface \
    ports { empty_356 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 410 \
    name empty_357 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_357 \
    op interface \
    ports { empty_357 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 411 \
    name empty_358 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_358 \
    op interface \
    ports { empty_358 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
    name empty_359 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_359 \
    op interface \
    ports { empty_359 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name empty_360 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_360 \
    op interface \
    ports { empty_360 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name empty_361 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_361 \
    op interface \
    ports { empty_361 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name empty_362 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_362 \
    op interface \
    ports { empty_362 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 416 \
    name empty_363 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_363 \
    op interface \
    ports { empty_363 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 417 \
    name empty_364 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_364 \
    op interface \
    ports { empty_364 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 418 \
    name empty_365 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_365 \
    op interface \
    ports { empty_365 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 419 \
    name empty_366 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_366 \
    op interface \
    ports { empty_366 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 420 \
    name empty_367 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_367 \
    op interface \
    ports { empty_367 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 421 \
    name empty_368 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_368 \
    op interface \
    ports { empty_368 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 422 \
    name empty_369 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_369 \
    op interface \
    ports { empty_369 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
    name empty_370 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_370 \
    op interface \
    ports { empty_370 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 424 \
    name empty_371 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_371 \
    op interface \
    ports { empty_371 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 425 \
    name empty_372 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_372 \
    op interface \
    ports { empty_372 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 426 \
    name empty_373 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_373 \
    op interface \
    ports { empty_373 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name empty_374 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_374 \
    op interface \
    ports { empty_374 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name empty_375 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_375 \
    op interface \
    ports { empty_375 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name empty_376 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_376 \
    op interface \
    ports { empty_376 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name empty_377 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_377 \
    op interface \
    ports { empty_377 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name empty_378 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_378 \
    op interface \
    ports { empty_378 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name empty_379 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_379 \
    op interface \
    ports { empty_379 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name empty_380 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_380 \
    op interface \
    ports { empty_380 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name empty_381 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_381 \
    op interface \
    ports { empty_381 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name empty_382 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_382 \
    op interface \
    ports { empty_382 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 436 \
    name empty_383 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_383 \
    op interface \
    ports { empty_383 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name empty_384 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_384 \
    op interface \
    ports { empty_384 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name empty_385 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_385 \
    op interface \
    ports { empty_385 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name empty_386 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_386 \
    op interface \
    ports { empty_386 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name empty_387 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_387 \
    op interface \
    ports { empty_387 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name empty_388 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_388 \
    op interface \
    ports { empty_388 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name empty_389 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_389 \
    op interface \
    ports { empty_389 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name empty_390 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_390 \
    op interface \
    ports { empty_390 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name empty_391 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_391 \
    op interface \
    ports { empty_391 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name empty_392 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_392 \
    op interface \
    ports { empty_392 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name empty_393 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_393 \
    op interface \
    ports { empty_393 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name empty_394 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_394 \
    op interface \
    ports { empty_394 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name empty_395 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_395 \
    op interface \
    ports { empty_395 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name empty_396 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_396 \
    op interface \
    ports { empty_396 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name empty_397 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_397 \
    op interface \
    ports { empty_397 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
    name empty_398 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_398 \
    op interface \
    ports { empty_398 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 452 \
    name empty_399 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_399 \
    op interface \
    ports { empty_399 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name empty_400 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_400 \
    op interface \
    ports { empty_400 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name empty_401 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_401 \
    op interface \
    ports { empty_401 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name empty_402 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_402 \
    op interface \
    ports { empty_402 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name empty_403 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_403 \
    op interface \
    ports { empty_403 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name empty_404 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_404 \
    op interface \
    ports { empty_404 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name empty_405 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_405 \
    op interface \
    ports { empty_405 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name empty_406 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_406 \
    op interface \
    ports { empty_406 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name empty_407 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_407 \
    op interface \
    ports { empty_407 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name empty_408 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_408 \
    op interface \
    ports { empty_408 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name empty_409 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_409 \
    op interface \
    ports { empty_409 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name empty_410 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_410 \
    op interface \
    ports { empty_410 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name empty_411 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_411 \
    op interface \
    ports { empty_411 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name empty_412 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_412 \
    op interface \
    ports { empty_412 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name empty_413 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_413 \
    op interface \
    ports { empty_413 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name empty_414 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_414 \
    op interface \
    ports { empty_414 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name empty_415 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_415 \
    op interface \
    ports { empty_415 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 469 \
    name empty_416 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_416 \
    op interface \
    ports { empty_416 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 470 \
    name empty_417 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_417 \
    op interface \
    ports { empty_417 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 471 \
    name empty_418 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_418 \
    op interface \
    ports { empty_418 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 472 \
    name empty_419 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_419 \
    op interface \
    ports { empty_419 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name empty_420 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_420 \
    op interface \
    ports { empty_420 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name empty_421 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_421 \
    op interface \
    ports { empty_421 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name empty_422 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_422 \
    op interface \
    ports { empty_422 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name empty_423 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_423 \
    op interface \
    ports { empty_423 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 477 \
    name empty_424 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_424 \
    op interface \
    ports { empty_424 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 478 \
    name empty_425 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_425 \
    op interface \
    ports { empty_425 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 479 \
    name empty_426 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_426 \
    op interface \
    ports { empty_426 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 480 \
    name empty_427 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_427 \
    op interface \
    ports { empty_427 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
    name empty_428 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_428 \
    op interface \
    ports { empty_428 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 482 \
    name empty_429 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_429 \
    op interface \
    ports { empty_429 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name empty_430 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_430 \
    op interface \
    ports { empty_430 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name empty_431 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_431 \
    op interface \
    ports { empty_431 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name empty_432 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_432 \
    op interface \
    ports { empty_432 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name empty_433 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_433 \
    op interface \
    ports { empty_433 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name empty_434 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_434 \
    op interface \
    ports { empty_434 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name empty_435 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_435 \
    op interface \
    ports { empty_435 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name empty_436 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_436 \
    op interface \
    ports { empty_436 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name empty_437 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_437 \
    op interface \
    ports { empty_437 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
    name empty_438 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_438 \
    op interface \
    ports { empty_438 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 492 \
    name empty_439 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_439 \
    op interface \
    ports { empty_439 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 493 \
    name empty_440 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_440 \
    op interface \
    ports { empty_440 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 494 \
    name empty_441 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_441 \
    op interface \
    ports { empty_441 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 495 \
    name empty_442 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_442 \
    op interface \
    ports { empty_442 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name empty_443 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_443 \
    op interface \
    ports { empty_443 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name empty_444 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_444 \
    op interface \
    ports { empty_444 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 498 \
    name empty_445 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_445 \
    op interface \
    ports { empty_445 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 499 \
    name empty_446 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_446 \
    op interface \
    ports { empty_446 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 500 \
    name empty_447 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_447 \
    op interface \
    ports { empty_447 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 501 \
    name empty_448 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_448 \
    op interface \
    ports { empty_448 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 502 \
    name empty_449 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_449 \
    op interface \
    ports { empty_449 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 503 \
    name empty_450 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_450 \
    op interface \
    ports { empty_450 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 504 \
    name empty_451 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_451 \
    op interface \
    ports { empty_451 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 505 \
    name empty_452 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_452 \
    op interface \
    ports { empty_452 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 506 \
    name empty_453 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_453 \
    op interface \
    ports { empty_453 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 507 \
    name empty_454 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_454 \
    op interface \
    ports { empty_454 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 508 \
    name empty_455 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_455 \
    op interface \
    ports { empty_455 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 509 \
    name empty_456 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_456 \
    op interface \
    ports { empty_456 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 510 \
    name empty_457 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_457 \
    op interface \
    ports { empty_457 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 511 \
    name empty_458 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_458 \
    op interface \
    ports { empty_458 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 512 \
    name empty_459 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_459 \
    op interface \
    ports { empty_459 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 513 \
    name empty_460 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_460 \
    op interface \
    ports { empty_460 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 514 \
    name empty_461 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_461 \
    op interface \
    ports { empty_461 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 515 \
    name empty_462 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_462 \
    op interface \
    ports { empty_462 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 516 \
    name empty_463 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_463 \
    op interface \
    ports { empty_463 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 517 \
    name empty_464 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_464 \
    op interface \
    ports { empty_464 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 518 \
    name empty_465 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_465 \
    op interface \
    ports { empty_465 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 519 \
    name empty_466 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_466 \
    op interface \
    ports { empty_466 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 520 \
    name empty_467 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_467 \
    op interface \
    ports { empty_467 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 521 \
    name empty_468 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_468 \
    op interface \
    ports { empty_468 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name empty_469 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_469 \
    op interface \
    ports { empty_469 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
    name empty_470 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_470 \
    op interface \
    ports { empty_470 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
    name empty_471 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_471 \
    op interface \
    ports { empty_471 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 525 \
    name empty_472 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_472 \
    op interface \
    ports { empty_472 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 526 \
    name empty_473 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_473 \
    op interface \
    ports { empty_473 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 527 \
    name empty_474 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_474 \
    op interface \
    ports { empty_474 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 528 \
    name empty_475 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_475 \
    op interface \
    ports { empty_475 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 529 \
    name empty_476 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_476 \
    op interface \
    ports { empty_476 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 530 \
    name empty_477 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_477 \
    op interface \
    ports { empty_477 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 531 \
    name empty_478 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_478 \
    op interface \
    ports { empty_478 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name empty_479 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_479 \
    op interface \
    ports { empty_479 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name empty_480 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_480 \
    op interface \
    ports { empty_480 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name empty_481 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_481 \
    op interface \
    ports { empty_481 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name empty_482 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_482 \
    op interface \
    ports { empty_482 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 536 \
    name empty_483 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_483 \
    op interface \
    ports { empty_483 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 537 \
    name empty_484 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_484 \
    op interface \
    ports { empty_484 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 538 \
    name empty_485 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_485 \
    op interface \
    ports { empty_485 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 539 \
    name empty_486 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_486 \
    op interface \
    ports { empty_486 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 540 \
    name empty_487 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_487 \
    op interface \
    ports { empty_487 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 541 \
    name empty_488 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_488 \
    op interface \
    ports { empty_488 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 542 \
    name empty_489 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_489 \
    op interface \
    ports { empty_489 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 543 \
    name empty_490 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_490 \
    op interface \
    ports { empty_490 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 544 \
    name empty_491 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_491 \
    op interface \
    ports { empty_491 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 545 \
    name empty_492 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_492 \
    op interface \
    ports { empty_492 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 546 \
    name empty_493 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_493 \
    op interface \
    ports { empty_493 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 547 \
    name empty_494 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_494 \
    op interface \
    ports { empty_494 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 548 \
    name empty_495 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_495 \
    op interface \
    ports { empty_495 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 549 \
    name empty_496 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_496 \
    op interface \
    ports { empty_496 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 550 \
    name empty_497 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_497 \
    op interface \
    ports { empty_497 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 551 \
    name empty_498 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_498 \
    op interface \
    ports { empty_498 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 552 \
    name empty_499 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_499 \
    op interface \
    ports { empty_499 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 553 \
    name empty_500 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_500 \
    op interface \
    ports { empty_500 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 554 \
    name empty_501 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_501 \
    op interface \
    ports { empty_501 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 555 \
    name empty_502 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_502 \
    op interface \
    ports { empty_502 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 556 \
    name empty_503 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_503 \
    op interface \
    ports { empty_503 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 557 \
    name empty_504 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_504 \
    op interface \
    ports { empty_504 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 558 \
    name empty_505 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_505 \
    op interface \
    ports { empty_505 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 559 \
    name empty_506 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_506 \
    op interface \
    ports { empty_506 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 560 \
    name empty_507 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_507 \
    op interface \
    ports { empty_507 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 561 \
    name empty_508 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_508 \
    op interface \
    ports { empty_508 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 562 \
    name empty_509 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_509 \
    op interface \
    ports { empty_509 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 563 \
    name empty_510 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_510 \
    op interface \
    ports { empty_510 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 564 \
    name empty_511 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_511 \
    op interface \
    ports { empty_511 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 565 \
    name empty_512 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_512 \
    op interface \
    ports { empty_512 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 566 \
    name empty_513 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_513 \
    op interface \
    ports { empty_513 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 567 \
    name empty_514 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_514 \
    op interface \
    ports { empty_514 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 568 \
    name empty_515 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_515 \
    op interface \
    ports { empty_515 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 569 \
    name empty_516 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_516 \
    op interface \
    ports { empty_516 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 570 \
    name empty_517 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_517 \
    op interface \
    ports { empty_517 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 571 \
    name empty_518 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_518 \
    op interface \
    ports { empty_518 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 572 \
    name empty_519 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_519 \
    op interface \
    ports { empty_519 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 573 \
    name empty_520 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_520 \
    op interface \
    ports { empty_520 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 574 \
    name empty_521 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_521 \
    op interface \
    ports { empty_521 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 575 \
    name empty_522 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_522 \
    op interface \
    ports { empty_522 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 576 \
    name empty_523 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_523 \
    op interface \
    ports { empty_523 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 577 \
    name empty_524 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_524 \
    op interface \
    ports { empty_524 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 578 \
    name empty_525 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_525 \
    op interface \
    ports { empty_525 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 579 \
    name empty_526 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_526 \
    op interface \
    ports { empty_526 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 580 \
    name empty_527 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_527 \
    op interface \
    ports { empty_527 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 581 \
    name empty_528 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_528 \
    op interface \
    ports { empty_528 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 582 \
    name empty_529 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_529 \
    op interface \
    ports { empty_529 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 583 \
    name empty_530 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_530 \
    op interface \
    ports { empty_530 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 584 \
    name empty_531 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_531 \
    op interface \
    ports { empty_531 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 585 \
    name empty_532 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_532 \
    op interface \
    ports { empty_532 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 586 \
    name empty_533 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_533 \
    op interface \
    ports { empty_533 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 587 \
    name empty_534 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_534 \
    op interface \
    ports { empty_534 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 588 \
    name empty_535 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_535 \
    op interface \
    ports { empty_535 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 589 \
    name empty_536 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_536 \
    op interface \
    ports { empty_536 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 590 \
    name empty_537 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_537 \
    op interface \
    ports { empty_537 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 591 \
    name empty_538 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_538 \
    op interface \
    ports { empty_538 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 592 \
    name empty_539 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_539 \
    op interface \
    ports { empty_539 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 593 \
    name empty_540 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_540 \
    op interface \
    ports { empty_540 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 594 \
    name empty_541 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_541 \
    op interface \
    ports { empty_541 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 595 \
    name empty_542 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_542 \
    op interface \
    ports { empty_542 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 596 \
    name empty_543 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_543 \
    op interface \
    ports { empty_543 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 597 \
    name empty_544 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_544 \
    op interface \
    ports { empty_544 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 598 \
    name empty_545 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_545 \
    op interface \
    ports { empty_545 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 599 \
    name empty_546 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_546 \
    op interface \
    ports { empty_546 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 600 \
    name empty_547 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_547 \
    op interface \
    ports { empty_547 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 601 \
    name empty_548 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_548 \
    op interface \
    ports { empty_548 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 602 \
    name empty_549 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_549 \
    op interface \
    ports { empty_549 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 603 \
    name empty_550 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_550 \
    op interface \
    ports { empty_550 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 604 \
    name empty_551 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_551 \
    op interface \
    ports { empty_551 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 605 \
    name empty_552 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_552 \
    op interface \
    ports { empty_552 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 606 \
    name empty_553 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_553 \
    op interface \
    ports { empty_553 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 607 \
    name empty_554 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_554 \
    op interface \
    ports { empty_554 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 608 \
    name empty_555 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_555 \
    op interface \
    ports { empty_555 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 609 \
    name empty_556 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_556 \
    op interface \
    ports { empty_556 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 610 \
    name empty_557 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_557 \
    op interface \
    ports { empty_557 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 611 \
    name empty_558 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_558 \
    op interface \
    ports { empty_558 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 612 \
    name empty_559 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_559 \
    op interface \
    ports { empty_559 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 613 \
    name empty_560 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_560 \
    op interface \
    ports { empty_560 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 614 \
    name empty_561 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_561 \
    op interface \
    ports { empty_561 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 615 \
    name empty_562 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_562 \
    op interface \
    ports { empty_562 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 616 \
    name empty_563 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_563 \
    op interface \
    ports { empty_563 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 617 \
    name empty_564 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_564 \
    op interface \
    ports { empty_564 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 618 \
    name empty_565 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_565 \
    op interface \
    ports { empty_565 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 619 \
    name empty_566 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_566 \
    op interface \
    ports { empty_566 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 620 \
    name empty_567 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_567 \
    op interface \
    ports { empty_567 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 621 \
    name empty_568 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_568 \
    op interface \
    ports { empty_568 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 622 \
    name empty_569 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_569 \
    op interface \
    ports { empty_569 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 623 \
    name empty_570 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_570 \
    op interface \
    ports { empty_570 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 624 \
    name empty_571 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_571 \
    op interface \
    ports { empty_571 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 625 \
    name empty_572 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_572 \
    op interface \
    ports { empty_572 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 626 \
    name empty_573 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_573 \
    op interface \
    ports { empty_573 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 627 \
    name empty_574 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_574 \
    op interface \
    ports { empty_574 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 628 \
    name empty_575 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_575 \
    op interface \
    ports { empty_575 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 629 \
    name empty_576 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_576 \
    op interface \
    ports { empty_576 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 630 \
    name empty_577 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_577 \
    op interface \
    ports { empty_577 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 631 \
    name empty_578 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_578 \
    op interface \
    ports { empty_578 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 632 \
    name empty_579 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_579 \
    op interface \
    ports { empty_579 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 633 \
    name empty_580 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_580 \
    op interface \
    ports { empty_580 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 634 \
    name empty_581 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_581 \
    op interface \
    ports { empty_581 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 635 \
    name empty_582 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_582 \
    op interface \
    ports { empty_582 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 636 \
    name empty_583 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_583 \
    op interface \
    ports { empty_583 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 637 \
    name empty_584 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_584 \
    op interface \
    ports { empty_584 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 638 \
    name empty_585 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_585 \
    op interface \
    ports { empty_585 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 639 \
    name empty_586 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_586 \
    op interface \
    ports { empty_586 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 640 \
    name empty_587 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_587 \
    op interface \
    ports { empty_587 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 641 \
    name empty_588 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_588 \
    op interface \
    ports { empty_588 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 642 \
    name empty_589 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_589 \
    op interface \
    ports { empty_589 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 643 \
    name empty_590 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_590 \
    op interface \
    ports { empty_590 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 644 \
    name empty_591 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_591 \
    op interface \
    ports { empty_591 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 645 \
    name empty_592 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_592 \
    op interface \
    ports { empty_592 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 646 \
    name empty_593 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_593 \
    op interface \
    ports { empty_593 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 647 \
    name empty_594 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_594 \
    op interface \
    ports { empty_594 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 648 \
    name empty_595 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_595 \
    op interface \
    ports { empty_595 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 649 \
    name empty_596 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_596 \
    op interface \
    ports { empty_596 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 650 \
    name empty_597 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_597 \
    op interface \
    ports { empty_597 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 651 \
    name empty_598 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_598 \
    op interface \
    ports { empty_598 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 652 \
    name empty_599 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_599 \
    op interface \
    ports { empty_599 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 653 \
    name empty_600 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_600 \
    op interface \
    ports { empty_600 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 654 \
    name empty_601 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_601 \
    op interface \
    ports { empty_601 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 655 \
    name empty_602 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_602 \
    op interface \
    ports { empty_602 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 656 \
    name empty_603 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_603 \
    op interface \
    ports { empty_603 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 657 \
    name empty_604 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_604 \
    op interface \
    ports { empty_604 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 658 \
    name empty_605 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_605 \
    op interface \
    ports { empty_605 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 659 \
    name empty_606 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_606 \
    op interface \
    ports { empty_606 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 660 \
    name empty_607 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_607 \
    op interface \
    ports { empty_607 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 661 \
    name empty_608 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_608 \
    op interface \
    ports { empty_608 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 662 \
    name empty_609 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_609 \
    op interface \
    ports { empty_609 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 663 \
    name empty_610 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_610 \
    op interface \
    ports { empty_610 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 664 \
    name empty_611 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_611 \
    op interface \
    ports { empty_611 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 665 \
    name empty_612 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_612 \
    op interface \
    ports { empty_612 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 666 \
    name empty_613 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_613 \
    op interface \
    ports { empty_613 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 667 \
    name empty_614 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_614 \
    op interface \
    ports { empty_614 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 668 \
    name empty_615 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_615 \
    op interface \
    ports { empty_615 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 669 \
    name empty_616 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_616 \
    op interface \
    ports { empty_616 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 670 \
    name empty_617 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_617 \
    op interface \
    ports { empty_617 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 671 \
    name empty_618 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_618 \
    op interface \
    ports { empty_618 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 672 \
    name empty_619 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_619 \
    op interface \
    ports { empty_619 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 673 \
    name empty_620 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_620 \
    op interface \
    ports { empty_620 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 674 \
    name empty_621 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_621 \
    op interface \
    ports { empty_621 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 675 \
    name empty_622 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_622 \
    op interface \
    ports { empty_622 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 676 \
    name empty_623 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_623 \
    op interface \
    ports { empty_623 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 677 \
    name empty_624 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_624 \
    op interface \
    ports { empty_624 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 678 \
    name empty_625 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_625 \
    op interface \
    ports { empty_625 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 679 \
    name empty_626 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_626 \
    op interface \
    ports { empty_626 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 680 \
    name empty_627 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_627 \
    op interface \
    ports { empty_627 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 681 \
    name empty_628 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_628 \
    op interface \
    ports { empty_628 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 682 \
    name empty_629 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_629 \
    op interface \
    ports { empty_629 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 683 \
    name empty_630 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_630 \
    op interface \
    ports { empty_630 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 684 \
    name empty_631 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_631 \
    op interface \
    ports { empty_631 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 685 \
    name empty_632 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_632 \
    op interface \
    ports { empty_632 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 686 \
    name empty_633 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_633 \
    op interface \
    ports { empty_633 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 687 \
    name empty_634 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_634 \
    op interface \
    ports { empty_634 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 688 \
    name empty_635 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_635 \
    op interface \
    ports { empty_635 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 689 \
    name empty_636 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_636 \
    op interface \
    ports { empty_636 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 690 \
    name empty_637 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_637 \
    op interface \
    ports { empty_637 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 691 \
    name empty_638 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_638 \
    op interface \
    ports { empty_638 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 692 \
    name empty_639 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_639 \
    op interface \
    ports { empty_639 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 693 \
    name empty_640 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_640 \
    op interface \
    ports { empty_640 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 694 \
    name empty_641 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_641 \
    op interface \
    ports { empty_641 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 695 \
    name empty_642 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_642 \
    op interface \
    ports { empty_642 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 696 \
    name empty_643 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_643 \
    op interface \
    ports { empty_643 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 697 \
    name empty_644 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_644 \
    op interface \
    ports { empty_644 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 698 \
    name empty_645 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_645 \
    op interface \
    ports { empty_645 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 699 \
    name empty_646 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_646 \
    op interface \
    ports { empty_646 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 700 \
    name empty_647 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_647 \
    op interface \
    ports { empty_647 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 701 \
    name empty_648 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_648 \
    op interface \
    ports { empty_648 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 702 \
    name empty_649 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_649 \
    op interface \
    ports { empty_649 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 703 \
    name empty_650 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_650 \
    op interface \
    ports { empty_650 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 704 \
    name empty_651 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_651 \
    op interface \
    ports { empty_651 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 705 \
    name empty_652 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_652 \
    op interface \
    ports { empty_652 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 706 \
    name empty_653 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_653 \
    op interface \
    ports { empty_653 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 707 \
    name empty_654 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_654 \
    op interface \
    ports { empty_654 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 708 \
    name empty_655 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_655 \
    op interface \
    ports { empty_655 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 709 \
    name empty_656 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_656 \
    op interface \
    ports { empty_656 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 710 \
    name empty_657 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_657 \
    op interface \
    ports { empty_657 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 711 \
    name empty_658 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_658 \
    op interface \
    ports { empty_658 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 712 \
    name empty_659 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_659 \
    op interface \
    ports { empty_659 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 713 \
    name empty_660 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_660 \
    op interface \
    ports { empty_660 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 714 \
    name empty_661 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_661 \
    op interface \
    ports { empty_661 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 715 \
    name empty_662 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_662 \
    op interface \
    ports { empty_662 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 716 \
    name empty_663 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_663 \
    op interface \
    ports { empty_663 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 717 \
    name empty_664 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_664 \
    op interface \
    ports { empty_664 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 718 \
    name empty_665 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_665 \
    op interface \
    ports { empty_665 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 719 \
    name empty_666 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_666 \
    op interface \
    ports { empty_666 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 720 \
    name empty_667 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_667 \
    op interface \
    ports { empty_667 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 721 \
    name empty_668 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_668 \
    op interface \
    ports { empty_668 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 722 \
    name empty_669 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_669 \
    op interface \
    ports { empty_669 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 723 \
    name empty_670 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_670 \
    op interface \
    ports { empty_670 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 724 \
    name empty_671 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_671 \
    op interface \
    ports { empty_671 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 725 \
    name empty_672 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_672 \
    op interface \
    ports { empty_672 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 726 \
    name empty_673 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_673 \
    op interface \
    ports { empty_673 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 727 \
    name empty_674 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_674 \
    op interface \
    ports { empty_674 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 728 \
    name empty_675 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_675 \
    op interface \
    ports { empty_675 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 729 \
    name empty_676 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_676 \
    op interface \
    ports { empty_676 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 730 \
    name empty_677 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_677 \
    op interface \
    ports { empty_677 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 731 \
    name empty_678 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_678 \
    op interface \
    ports { empty_678 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 732 \
    name empty_679 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_679 \
    op interface \
    ports { empty_679 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 733 \
    name empty_680 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_680 \
    op interface \
    ports { empty_680 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 734 \
    name empty_681 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_681 \
    op interface \
    ports { empty_681 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 735 \
    name empty_682 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_682 \
    op interface \
    ports { empty_682 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 736 \
    name empty_683 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_683 \
    op interface \
    ports { empty_683 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 737 \
    name empty_684 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_684 \
    op interface \
    ports { empty_684 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 738 \
    name empty_685 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_685 \
    op interface \
    ports { empty_685 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 739 \
    name empty_686 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_686 \
    op interface \
    ports { empty_686 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 740 \
    name empty_687 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_687 \
    op interface \
    ports { empty_687 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 741 \
    name empty_688 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_688 \
    op interface \
    ports { empty_688 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 742 \
    name empty_689 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_689 \
    op interface \
    ports { empty_689 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 743 \
    name empty_690 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_690 \
    op interface \
    ports { empty_690 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 744 \
    name empty_691 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_691 \
    op interface \
    ports { empty_691 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 745 \
    name empty_692 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_692 \
    op interface \
    ports { empty_692 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 746 \
    name empty_693 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_693 \
    op interface \
    ports { empty_693 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 747 \
    name empty_694 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_694 \
    op interface \
    ports { empty_694 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 748 \
    name empty_695 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_695 \
    op interface \
    ports { empty_695 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 749 \
    name empty_696 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_696 \
    op interface \
    ports { empty_696 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 750 \
    name empty_697 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_697 \
    op interface \
    ports { empty_697 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 751 \
    name empty_698 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_698 \
    op interface \
    ports { empty_698 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 752 \
    name empty_699 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_699 \
    op interface \
    ports { empty_699 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 753 \
    name empty_700 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_700 \
    op interface \
    ports { empty_700 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 754 \
    name empty_701 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_701 \
    op interface \
    ports { empty_701 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 755 \
    name empty_702 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_702 \
    op interface \
    ports { empty_702 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 756 \
    name empty_703 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_703 \
    op interface \
    ports { empty_703 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 757 \
    name empty_704 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_704 \
    op interface \
    ports { empty_704 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 758 \
    name empty_705 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_705 \
    op interface \
    ports { empty_705 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 759 \
    name empty_706 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_706 \
    op interface \
    ports { empty_706 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 760 \
    name empty_707 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_707 \
    op interface \
    ports { empty_707 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 761 \
    name empty_708 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_708 \
    op interface \
    ports { empty_708 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 762 \
    name empty_709 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_709 \
    op interface \
    ports { empty_709 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 763 \
    name empty_710 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_710 \
    op interface \
    ports { empty_710 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 764 \
    name empty_711 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_711 \
    op interface \
    ports { empty_711 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 765 \
    name empty_712 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_712 \
    op interface \
    ports { empty_712 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 766 \
    name empty_713 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_713 \
    op interface \
    ports { empty_713 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 767 \
    name empty_714 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_714 \
    op interface \
    ports { empty_714 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 768 \
    name empty_715 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_715 \
    op interface \
    ports { empty_715 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 769 \
    name empty_716 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_716 \
    op interface \
    ports { empty_716 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 770 \
    name empty_717 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_717 \
    op interface \
    ports { empty_717 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 771 \
    name empty_718 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_718 \
    op interface \
    ports { empty_718 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 772 \
    name empty_719 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_719 \
    op interface \
    ports { empty_719 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 773 \
    name empty_720 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_720 \
    op interface \
    ports { empty_720 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 774 \
    name empty_721 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_721 \
    op interface \
    ports { empty_721 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 775 \
    name empty_722 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_722 \
    op interface \
    ports { empty_722 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 776 \
    name empty_723 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_723 \
    op interface \
    ports { empty_723 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 777 \
    name empty_724 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_724 \
    op interface \
    ports { empty_724 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 778 \
    name empty_725 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_725 \
    op interface \
    ports { empty_725 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 779 \
    name empty_726 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_726 \
    op interface \
    ports { empty_726 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 780 \
    name empty_727 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_727 \
    op interface \
    ports { empty_727 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 781 \
    name empty_728 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_728 \
    op interface \
    ports { empty_728 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 782 \
    name empty_729 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_729 \
    op interface \
    ports { empty_729 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 783 \
    name empty_730 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_730 \
    op interface \
    ports { empty_730 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 784 \
    name empty_731 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_731 \
    op interface \
    ports { empty_731 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 785 \
    name empty_732 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_732 \
    op interface \
    ports { empty_732 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 786 \
    name empty_733 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_733 \
    op interface \
    ports { empty_733 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 787 \
    name empty_734 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_734 \
    op interface \
    ports { empty_734 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 788 \
    name empty_735 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_735 \
    op interface \
    ports { empty_735 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 789 \
    name empty_736 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_736 \
    op interface \
    ports { empty_736 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 790 \
    name empty_737 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_737 \
    op interface \
    ports { empty_737 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 791 \
    name empty_738 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_738 \
    op interface \
    ports { empty_738 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 792 \
    name empty_739 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_739 \
    op interface \
    ports { empty_739 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 793 \
    name empty_740 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_740 \
    op interface \
    ports { empty_740 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 794 \
    name empty_741 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_741 \
    op interface \
    ports { empty_741 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 795 \
    name empty_742 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_742 \
    op interface \
    ports { empty_742 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 796 \
    name empty_743 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_743 \
    op interface \
    ports { empty_743 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 797 \
    name empty_744 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_744 \
    op interface \
    ports { empty_744 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 798 \
    name empty_745 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_745 \
    op interface \
    ports { empty_745 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 799 \
    name empty_746 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_746 \
    op interface \
    ports { empty_746 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 800 \
    name empty_747 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_747 \
    op interface \
    ports { empty_747 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 801 \
    name empty_748 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_748 \
    op interface \
    ports { empty_748 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 802 \
    name empty_749 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_749 \
    op interface \
    ports { empty_749 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 803 \
    name empty_750 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_750 \
    op interface \
    ports { empty_750 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 804 \
    name empty_751 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_751 \
    op interface \
    ports { empty_751 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 805 \
    name empty_752 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_752 \
    op interface \
    ports { empty_752 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 806 \
    name empty_753 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_753 \
    op interface \
    ports { empty_753 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 807 \
    name empty_754 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_754 \
    op interface \
    ports { empty_754 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 808 \
    name empty_755 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_755 \
    op interface \
    ports { empty_755 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 809 \
    name empty_756 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_756 \
    op interface \
    ports { empty_756 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 810 \
    name empty_757 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_757 \
    op interface \
    ports { empty_757 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 811 \
    name empty_758 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_758 \
    op interface \
    ports { empty_758 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 812 \
    name empty_759 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_759 \
    op interface \
    ports { empty_759 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 813 \
    name empty_760 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_760 \
    op interface \
    ports { empty_760 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 814 \
    name empty_761 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_761 \
    op interface \
    ports { empty_761 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 815 \
    name empty_762 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_762 \
    op interface \
    ports { empty_762 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 816 \
    name empty_763 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_763 \
    op interface \
    ports { empty_763 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 817 \
    name empty_764 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_764 \
    op interface \
    ports { empty_764 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 818 \
    name empty_765 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_765 \
    op interface \
    ports { empty_765 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 819 \
    name empty_766 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_766 \
    op interface \
    ports { empty_766 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 820 \
    name empty_767 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_767 \
    op interface \
    ports { empty_767 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 821 \
    name empty_768 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_768 \
    op interface \
    ports { empty_768 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 822 \
    name empty_769 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_769 \
    op interface \
    ports { empty_769 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 823 \
    name empty_770 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_770 \
    op interface \
    ports { empty_770 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 824 \
    name empty_771 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_771 \
    op interface \
    ports { empty_771 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 825 \
    name empty_772 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_772 \
    op interface \
    ports { empty_772 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 826 \
    name empty_773 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_773 \
    op interface \
    ports { empty_773 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 827 \
    name empty_774 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_774 \
    op interface \
    ports { empty_774 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 828 \
    name empty_775 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_775 \
    op interface \
    ports { empty_775 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 829 \
    name empty_776 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_776 \
    op interface \
    ports { empty_776 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 830 \
    name empty_777 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_777 \
    op interface \
    ports { empty_777 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 831 \
    name empty_778 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_778 \
    op interface \
    ports { empty_778 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 832 \
    name empty_779 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_779 \
    op interface \
    ports { empty_779 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 833 \
    name empty_780 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_780 \
    op interface \
    ports { empty_780 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 834 \
    name empty_781 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_781 \
    op interface \
    ports { empty_781 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 835 \
    name empty_782 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_782 \
    op interface \
    ports { empty_782 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 836 \
    name empty_783 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_783 \
    op interface \
    ports { empty_783 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 837 \
    name empty_784 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_784 \
    op interface \
    ports { empty_784 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 838 \
    name empty_785 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_785 \
    op interface \
    ports { empty_785 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 839 \
    name empty_786 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_786 \
    op interface \
    ports { empty_786 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 840 \
    name empty_787 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_787 \
    op interface \
    ports { empty_787 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 841 \
    name empty_788 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_788 \
    op interface \
    ports { empty_788 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 842 \
    name empty_789 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_789 \
    op interface \
    ports { empty_789 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 843 \
    name empty_790 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_790 \
    op interface \
    ports { empty_790 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 844 \
    name empty_791 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_791 \
    op interface \
    ports { empty_791 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 845 \
    name empty_792 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_792 \
    op interface \
    ports { empty_792 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 846 \
    name empty_793 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_793 \
    op interface \
    ports { empty_793 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 847 \
    name empty_794 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_794 \
    op interface \
    ports { empty_794 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 848 \
    name empty_795 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_795 \
    op interface \
    ports { empty_795 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 849 \
    name empty_796 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_796 \
    op interface \
    ports { empty_796 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 850 \
    name empty_797 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_797 \
    op interface \
    ports { empty_797 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 851 \
    name empty_798 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_798 \
    op interface \
    ports { empty_798 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 852 \
    name empty_799 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_799 \
    op interface \
    ports { empty_799 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 853 \
    name empty_800 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_800 \
    op interface \
    ports { empty_800 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 854 \
    name empty_801 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_801 \
    op interface \
    ports { empty_801 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 855 \
    name empty_802 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_802 \
    op interface \
    ports { empty_802 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 856 \
    name empty_803 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_803 \
    op interface \
    ports { empty_803 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 857 \
    name empty_804 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_804 \
    op interface \
    ports { empty_804 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 858 \
    name empty_805 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_805 \
    op interface \
    ports { empty_805 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 859 \
    name empty_806 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_806 \
    op interface \
    ports { empty_806 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 860 \
    name empty_807 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_807 \
    op interface \
    ports { empty_807 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 861 \
    name empty_808 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_808 \
    op interface \
    ports { empty_808 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 862 \
    name empty_809 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_809 \
    op interface \
    ports { empty_809 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 863 \
    name empty_810 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_810 \
    op interface \
    ports { empty_810 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 864 \
    name empty_811 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_811 \
    op interface \
    ports { empty_811 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 865 \
    name empty_812 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_812 \
    op interface \
    ports { empty_812 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 866 \
    name empty_813 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_813 \
    op interface \
    ports { empty_813 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 867 \
    name empty_814 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_814 \
    op interface \
    ports { empty_814 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 868 \
    name empty_815 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_815 \
    op interface \
    ports { empty_815 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 869 \
    name empty_816 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_816 \
    op interface \
    ports { empty_816 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 870 \
    name empty_817 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_817 \
    op interface \
    ports { empty_817 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 871 \
    name empty_818 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_818 \
    op interface \
    ports { empty_818 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 872 \
    name empty_819 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_819 \
    op interface \
    ports { empty_819 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 873 \
    name empty_820 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_820 \
    op interface \
    ports { empty_820 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 874 \
    name empty_821 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_821 \
    op interface \
    ports { empty_821 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 875 \
    name empty_822 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_822 \
    op interface \
    ports { empty_822 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 876 \
    name empty_823 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_823 \
    op interface \
    ports { empty_823 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 877 \
    name empty_824 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_824 \
    op interface \
    ports { empty_824 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 878 \
    name empty_825 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_825 \
    op interface \
    ports { empty_825 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 879 \
    name empty_826 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_826 \
    op interface \
    ports { empty_826 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 880 \
    name empty_827 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_827 \
    op interface \
    ports { empty_827 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 881 \
    name empty_828 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_828 \
    op interface \
    ports { empty_828 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 882 \
    name empty_829 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_829 \
    op interface \
    ports { empty_829 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 883 \
    name empty_830 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_830 \
    op interface \
    ports { empty_830 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 884 \
    name empty_831 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_831 \
    op interface \
    ports { empty_831 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 885 \
    name empty_832 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_832 \
    op interface \
    ports { empty_832 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 886 \
    name empty_833 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_833 \
    op interface \
    ports { empty_833 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 887 \
    name empty_834 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_834 \
    op interface \
    ports { empty_834 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 888 \
    name empty_835 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_835 \
    op interface \
    ports { empty_835 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 889 \
    name empty_836 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_836 \
    op interface \
    ports { empty_836 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 890 \
    name empty_837 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_837 \
    op interface \
    ports { empty_837 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 891 \
    name empty_838 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_838 \
    op interface \
    ports { empty_838 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 892 \
    name empty_839 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_839 \
    op interface \
    ports { empty_839 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 893 \
    name empty_840 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_840 \
    op interface \
    ports { empty_840 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 894 \
    name empty_841 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_841 \
    op interface \
    ports { empty_841 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 895 \
    name empty_842 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_842 \
    op interface \
    ports { empty_842 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 896 \
    name empty_843 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_843 \
    op interface \
    ports { empty_843 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 897 \
    name empty_844 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_844 \
    op interface \
    ports { empty_844 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 898 \
    name empty_845 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_845 \
    op interface \
    ports { empty_845 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 899 \
    name empty_846 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_846 \
    op interface \
    ports { empty_846 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 900 \
    name empty_847 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_847 \
    op interface \
    ports { empty_847 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 901 \
    name empty_848 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_848 \
    op interface \
    ports { empty_848 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 902 \
    name empty_849 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_849 \
    op interface \
    ports { empty_849 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 903 \
    name empty_850 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_850 \
    op interface \
    ports { empty_850 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 904 \
    name empty_851 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_851 \
    op interface \
    ports { empty_851 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 905 \
    name empty_852 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_852 \
    op interface \
    ports { empty_852 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 906 \
    name empty_853 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_853 \
    op interface \
    ports { empty_853 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 907 \
    name empty_854 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_854 \
    op interface \
    ports { empty_854 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 908 \
    name empty_855 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_855 \
    op interface \
    ports { empty_855 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 909 \
    name empty_856 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_856 \
    op interface \
    ports { empty_856 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 910 \
    name empty_857 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_857 \
    op interface \
    ports { empty_857 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 911 \
    name empty_858 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_858 \
    op interface \
    ports { empty_858 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 912 \
    name empty_859 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_859 \
    op interface \
    ports { empty_859 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 913 \
    name empty_860 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_860 \
    op interface \
    ports { empty_860 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 914 \
    name empty_861 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_861 \
    op interface \
    ports { empty_861 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 915 \
    name empty_862 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_862 \
    op interface \
    ports { empty_862 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 916 \
    name empty_863 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_863 \
    op interface \
    ports { empty_863 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 917 \
    name empty_864 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_864 \
    op interface \
    ports { empty_864 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 918 \
    name empty_865 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_865 \
    op interface \
    ports { empty_865 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 919 \
    name empty_866 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_866 \
    op interface \
    ports { empty_866 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 920 \
    name empty_867 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_867 \
    op interface \
    ports { empty_867 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 921 \
    name empty_868 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_868 \
    op interface \
    ports { empty_868 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 922 \
    name empty_869 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_869 \
    op interface \
    ports { empty_869 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 923 \
    name empty_870 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_870 \
    op interface \
    ports { empty_870 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 924 \
    name empty_871 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_871 \
    op interface \
    ports { empty_871 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 925 \
    name empty_872 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_872 \
    op interface \
    ports { empty_872 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 926 \
    name empty_873 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_873 \
    op interface \
    ports { empty_873 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 927 \
    name empty_874 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_874 \
    op interface \
    ports { empty_874 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 928 \
    name empty_875 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_875 \
    op interface \
    ports { empty_875 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 929 \
    name empty_876 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_876 \
    op interface \
    ports { empty_876 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 930 \
    name empty_877 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_877 \
    op interface \
    ports { empty_877 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 931 \
    name empty_878 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_878 \
    op interface \
    ports { empty_878 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 932 \
    name empty_879 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_879 \
    op interface \
    ports { empty_879 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 933 \
    name empty_880 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_880 \
    op interface \
    ports { empty_880 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 934 \
    name empty_881 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_881 \
    op interface \
    ports { empty_881 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 935 \
    name empty_882 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_882 \
    op interface \
    ports { empty_882 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 936 \
    name empty_883 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_883 \
    op interface \
    ports { empty_883 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 937 \
    name empty_884 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_884 \
    op interface \
    ports { empty_884 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 938 \
    name empty_885 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_885 \
    op interface \
    ports { empty_885 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 939 \
    name empty_886 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_886 \
    op interface \
    ports { empty_886 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 940 \
    name empty_887 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_887 \
    op interface \
    ports { empty_887 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 941 \
    name empty_888 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_888 \
    op interface \
    ports { empty_888 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 942 \
    name empty_889 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_889 \
    op interface \
    ports { empty_889 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 943 \
    name empty_890 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_890 \
    op interface \
    ports { empty_890 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 944 \
    name empty_891 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_891 \
    op interface \
    ports { empty_891 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 945 \
    name empty_892 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_892 \
    op interface \
    ports { empty_892 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 946 \
    name empty_893 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_893 \
    op interface \
    ports { empty_893 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 947 \
    name empty_894 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_894 \
    op interface \
    ports { empty_894 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 948 \
    name empty_895 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_895 \
    op interface \
    ports { empty_895 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 949 \
    name empty_896 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_896 \
    op interface \
    ports { empty_896 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 950 \
    name empty_897 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_897 \
    op interface \
    ports { empty_897 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 951 \
    name empty_898 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_898 \
    op interface \
    ports { empty_898 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 952 \
    name empty_899 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_899 \
    op interface \
    ports { empty_899 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 953 \
    name empty_900 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_900 \
    op interface \
    ports { empty_900 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 954 \
    name empty_901 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_901 \
    op interface \
    ports { empty_901 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 955 \
    name empty_902 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_902 \
    op interface \
    ports { empty_902 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 956 \
    name empty_903 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_903 \
    op interface \
    ports { empty_903 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 957 \
    name empty_904 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_904 \
    op interface \
    ports { empty_904 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 958 \
    name empty_905 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_905 \
    op interface \
    ports { empty_905 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 959 \
    name empty_906 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_906 \
    op interface \
    ports { empty_906 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 960 \
    name empty_907 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_907 \
    op interface \
    ports { empty_907 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 961 \
    name empty_908 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_908 \
    op interface \
    ports { empty_908 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 962 \
    name empty_909 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_909 \
    op interface \
    ports { empty_909 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 963 \
    name empty_910 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_910 \
    op interface \
    ports { empty_910 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 964 \
    name empty_911 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_911 \
    op interface \
    ports { empty_911 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 965 \
    name empty_912 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_912 \
    op interface \
    ports { empty_912 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 966 \
    name empty_913 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_913 \
    op interface \
    ports { empty_913 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 967 \
    name empty_914 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_914 \
    op interface \
    ports { empty_914 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 968 \
    name empty_915 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_915 \
    op interface \
    ports { empty_915 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 969 \
    name empty_916 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_916 \
    op interface \
    ports { empty_916 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 970 \
    name empty_917 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_917 \
    op interface \
    ports { empty_917 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 971 \
    name empty_918 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_918 \
    op interface \
    ports { empty_918 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 972 \
    name empty_919 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_919 \
    op interface \
    ports { empty_919 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 973 \
    name empty_920 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_920 \
    op interface \
    ports { empty_920 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 974 \
    name empty_921 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_921 \
    op interface \
    ports { empty_921 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 975 \
    name empty_922 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_922 \
    op interface \
    ports { empty_922 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 976 \
    name empty_923 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_923 \
    op interface \
    ports { empty_923 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 977 \
    name empty_924 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_924 \
    op interface \
    ports { empty_924 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 978 \
    name empty_925 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_925 \
    op interface \
    ports { empty_925 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 979 \
    name empty_926 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_926 \
    op interface \
    ports { empty_926 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 980 \
    name empty_927 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_927 \
    op interface \
    ports { empty_927 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 981 \
    name empty_928 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_928 \
    op interface \
    ports { empty_928 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 982 \
    name empty_929 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_929 \
    op interface \
    ports { empty_929 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 983 \
    name empty_930 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_930 \
    op interface \
    ports { empty_930 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 984 \
    name empty_931 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_931 \
    op interface \
    ports { empty_931 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 985 \
    name empty_932 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_932 \
    op interface \
    ports { empty_932 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 986 \
    name empty_933 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_933 \
    op interface \
    ports { empty_933 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 987 \
    name empty_934 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_934 \
    op interface \
    ports { empty_934 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 988 \
    name empty_935 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_935 \
    op interface \
    ports { empty_935 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 989 \
    name empty_936 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_936 \
    op interface \
    ports { empty_936 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 990 \
    name empty_937 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_937 \
    op interface \
    ports { empty_937 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 991 \
    name empty_938 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_938 \
    op interface \
    ports { empty_938 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 992 \
    name empty_939 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_939 \
    op interface \
    ports { empty_939 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 993 \
    name empty_940 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_940 \
    op interface \
    ports { empty_940 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 994 \
    name empty_941 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_941 \
    op interface \
    ports { empty_941 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 995 \
    name empty_942 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_942 \
    op interface \
    ports { empty_942 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 996 \
    name empty_943 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_943 \
    op interface \
    ports { empty_943 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 997 \
    name empty_944 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_944 \
    op interface \
    ports { empty_944 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 998 \
    name empty_945 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_945 \
    op interface \
    ports { empty_945 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 999 \
    name empty_946 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_946 \
    op interface \
    ports { empty_946 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1000 \
    name empty_947 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_947 \
    op interface \
    ports { empty_947 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1001 \
    name empty_948 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_948 \
    op interface \
    ports { empty_948 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1002 \
    name empty_949 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_949 \
    op interface \
    ports { empty_949 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1003 \
    name empty_950 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_950 \
    op interface \
    ports { empty_950 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1004 \
    name empty_951 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_951 \
    op interface \
    ports { empty_951 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1005 \
    name empty_952 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_952 \
    op interface \
    ports { empty_952 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1006 \
    name empty_953 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_953 \
    op interface \
    ports { empty_953 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1007 \
    name empty_954 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_954 \
    op interface \
    ports { empty_954 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1008 \
    name empty_955 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_955 \
    op interface \
    ports { empty_955 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1009 \
    name empty_956 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_956 \
    op interface \
    ports { empty_956 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1010 \
    name empty_957 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_957 \
    op interface \
    ports { empty_957 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1011 \
    name empty_958 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_958 \
    op interface \
    ports { empty_958 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1012 \
    name empty_959 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_959 \
    op interface \
    ports { empty_959 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1013 \
    name empty_960 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_960 \
    op interface \
    ports { empty_960 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1014 \
    name empty_961 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_961 \
    op interface \
    ports { empty_961 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1015 \
    name empty_962 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_962 \
    op interface \
    ports { empty_962 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1016 \
    name empty_963 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_963 \
    op interface \
    ports { empty_963 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1017 \
    name empty_964 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_964 \
    op interface \
    ports { empty_964 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1018 \
    name empty_965 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_965 \
    op interface \
    ports { empty_965 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1019 \
    name empty_966 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_966 \
    op interface \
    ports { empty_966 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1020 \
    name empty_967 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_967 \
    op interface \
    ports { empty_967 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1021 \
    name empty_968 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_968 \
    op interface \
    ports { empty_968 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1022 \
    name empty_969 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_969 \
    op interface \
    ports { empty_969 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1023 \
    name empty_970 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_970 \
    op interface \
    ports { empty_970 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1024 \
    name empty_971 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_971 \
    op interface \
    ports { empty_971 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1025 \
    name empty_972 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_972 \
    op interface \
    ports { empty_972 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1026 \
    name empty_973 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_973 \
    op interface \
    ports { empty_973 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1027 \
    name empty_974 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_974 \
    op interface \
    ports { empty_974 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1028 \
    name empty_975 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_975 \
    op interface \
    ports { empty_975 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1029 \
    name empty_976 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_976 \
    op interface \
    ports { empty_976 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1030 \
    name empty_977 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_977 \
    op interface \
    ports { empty_977 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1031 \
    name empty_978 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_978 \
    op interface \
    ports { empty_978 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1032 \
    name empty_979 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_979 \
    op interface \
    ports { empty_979 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1033 \
    name empty_980 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_980 \
    op interface \
    ports { empty_980 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1034 \
    name empty_981 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_981 \
    op interface \
    ports { empty_981 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1035 \
    name empty_982 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_982 \
    op interface \
    ports { empty_982 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1036 \
    name empty_983 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_983 \
    op interface \
    ports { empty_983 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1037 \
    name empty_984 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_984 \
    op interface \
    ports { empty_984 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1038 \
    name empty_985 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_985 \
    op interface \
    ports { empty_985 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1039 \
    name empty_986 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_986 \
    op interface \
    ports { empty_986 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1040 \
    name empty_987 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_987 \
    op interface \
    ports { empty_987 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1041 \
    name empty_988 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_988 \
    op interface \
    ports { empty_988 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1042 \
    name empty_989 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_989 \
    op interface \
    ports { empty_989 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1043 \
    name empty_990 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_990 \
    op interface \
    ports { empty_990 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1044 \
    name empty_991 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_991 \
    op interface \
    ports { empty_991 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1045 \
    name empty_992 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_992 \
    op interface \
    ports { empty_992 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1046 \
    name empty_993 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_993 \
    op interface \
    ports { empty_993 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1047 \
    name empty_994 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_994 \
    op interface \
    ports { empty_994 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1048 \
    name empty_995 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_995 \
    op interface \
    ports { empty_995 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1049 \
    name empty_996 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_996 \
    op interface \
    ports { empty_996 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1050 \
    name empty_997 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_997 \
    op interface \
    ports { empty_997 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1051 \
    name empty_998 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_998 \
    op interface \
    ports { empty_998 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1052 \
    name empty_999 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_999 \
    op interface \
    ports { empty_999 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1053 \
    name empty_1000 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1000 \
    op interface \
    ports { empty_1000 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1054 \
    name empty_1001 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1001 \
    op interface \
    ports { empty_1001 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1055 \
    name empty_1002 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1002 \
    op interface \
    ports { empty_1002 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1056 \
    name empty_1003 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1003 \
    op interface \
    ports { empty_1003 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1057 \
    name empty_1004 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1004 \
    op interface \
    ports { empty_1004 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1058 \
    name empty_1005 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1005 \
    op interface \
    ports { empty_1005 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1059 \
    name empty_1006 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1006 \
    op interface \
    ports { empty_1006 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1060 \
    name empty_1007 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1007 \
    op interface \
    ports { empty_1007 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1061 \
    name empty_1008 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1008 \
    op interface \
    ports { empty_1008 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1062 \
    name empty_1009 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1009 \
    op interface \
    ports { empty_1009 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1063 \
    name empty_1010 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1010 \
    op interface \
    ports { empty_1010 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1064 \
    name empty_1011 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1011 \
    op interface \
    ports { empty_1011 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1065 \
    name empty_1012 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1012 \
    op interface \
    ports { empty_1012 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1066 \
    name empty_1013 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1013 \
    op interface \
    ports { empty_1013 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1067 \
    name empty_1014 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1014 \
    op interface \
    ports { empty_1014 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1068 \
    name empty_1015 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1015 \
    op interface \
    ports { empty_1015 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1069 \
    name empty_1016 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1016 \
    op interface \
    ports { empty_1016 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1070 \
    name empty_1017 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1017 \
    op interface \
    ports { empty_1017 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1071 \
    name empty_1018 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1018 \
    op interface \
    ports { empty_1018 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1072 \
    name empty_1019 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1019 \
    op interface \
    ports { empty_1019 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1073 \
    name empty_1020 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1020 \
    op interface \
    ports { empty_1020 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1074 \
    name empty_1021 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1021 \
    op interface \
    ports { empty_1021 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1075 \
    name empty_1022 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1022 \
    op interface \
    ports { empty_1022 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1076 \
    name empty_1023 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1023 \
    op interface \
    ports { empty_1023 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1077 \
    name empty_1024 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1024 \
    op interface \
    ports { empty_1024 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1078 \
    name empty_1025 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1025 \
    op interface \
    ports { empty_1025 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1079 \
    name empty_1026 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1026 \
    op interface \
    ports { empty_1026 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1080 \
    name empty_1027 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1027 \
    op interface \
    ports { empty_1027 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1081 \
    name empty_1028 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1028 \
    op interface \
    ports { empty_1028 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1082 \
    name empty_1029 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1029 \
    op interface \
    ports { empty_1029 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1083 \
    name empty_1030 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1030 \
    op interface \
    ports { empty_1030 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1084 \
    name empty_1031 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1031 \
    op interface \
    ports { empty_1031 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1085 \
    name empty_1032 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1032 \
    op interface \
    ports { empty_1032 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1086 \
    name empty_1033 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1033 \
    op interface \
    ports { empty_1033 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1087 \
    name empty_1034 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1034 \
    op interface \
    ports { empty_1034 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1088 \
    name empty_1035 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1035 \
    op interface \
    ports { empty_1035 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1089 \
    name empty_1036 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1036 \
    op interface \
    ports { empty_1036 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1090 \
    name empty_1037 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1037 \
    op interface \
    ports { empty_1037 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1091 \
    name empty_1038 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1038 \
    op interface \
    ports { empty_1038 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1092 \
    name empty_1039 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1039 \
    op interface \
    ports { empty_1039 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1093 \
    name empty_1040 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1040 \
    op interface \
    ports { empty_1040 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1094 \
    name empty_1041 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1041 \
    op interface \
    ports { empty_1041 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1095 \
    name empty_1042 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1042 \
    op interface \
    ports { empty_1042 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1096 \
    name empty_1043 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1043 \
    op interface \
    ports { empty_1043 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1097 \
    name empty_1044 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1044 \
    op interface \
    ports { empty_1044 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1098 \
    name empty_1045 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1045 \
    op interface \
    ports { empty_1045 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1099 \
    name empty_1046 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1046 \
    op interface \
    ports { empty_1046 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1100 \
    name empty_1047 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1047 \
    op interface \
    ports { empty_1047 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1101 \
    name empty_1048 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_1048 \
    op interface \
    ports { empty_1048 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1102 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 32 vector } } \
} "
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
set InstName calculateLayer3_flow_control_loop_pipe_sequential_init_U
set CompName calculateLayer3_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix calculateLayer3_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


