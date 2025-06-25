# This script segment is generated automatically by AutoPilot

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
    id 44 \
    name Layer3_Neurons_CPU \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Layer3_Neurons_CPU \
    op interface \
    ports { Layer3_Neurons_CPU_address0 { O 11 vector } Layer3_Neurons_CPU_ce0 { O 1 bit } Layer3_Neurons_CPU_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Layer3_Neurons_CPU'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name somme \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_somme \
    op interface \
    ports { somme { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name Layer_Weights \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Layer_Weights \
    op interface \
    ports { m_axi_Layer_Weights_AWVALID { O 1 bit } m_axi_Layer_Weights_AWREADY { I 1 bit } m_axi_Layer_Weights_AWADDR { O 64 vector } m_axi_Layer_Weights_AWID { O 1 vector } m_axi_Layer_Weights_AWLEN { O 32 vector } m_axi_Layer_Weights_AWSIZE { O 3 vector } m_axi_Layer_Weights_AWBURST { O 2 vector } m_axi_Layer_Weights_AWLOCK { O 2 vector } m_axi_Layer_Weights_AWCACHE { O 4 vector } m_axi_Layer_Weights_AWPROT { O 3 vector } m_axi_Layer_Weights_AWQOS { O 4 vector } m_axi_Layer_Weights_AWREGION { O 4 vector } m_axi_Layer_Weights_AWUSER { O 1 vector } m_axi_Layer_Weights_WVALID { O 1 bit } m_axi_Layer_Weights_WREADY { I 1 bit } m_axi_Layer_Weights_WDATA { O 32 vector } m_axi_Layer_Weights_WSTRB { O 4 vector } m_axi_Layer_Weights_WLAST { O 1 bit } m_axi_Layer_Weights_WID { O 1 vector } m_axi_Layer_Weights_WUSER { O 1 vector } m_axi_Layer_Weights_ARVALID { O 1 bit } m_axi_Layer_Weights_ARREADY { I 1 bit } m_axi_Layer_Weights_ARADDR { O 64 vector } m_axi_Layer_Weights_ARID { O 1 vector } m_axi_Layer_Weights_ARLEN { O 32 vector } m_axi_Layer_Weights_ARSIZE { O 3 vector } m_axi_Layer_Weights_ARBURST { O 2 vector } m_axi_Layer_Weights_ARLOCK { O 2 vector } m_axi_Layer_Weights_ARCACHE { O 4 vector } m_axi_Layer_Weights_ARPROT { O 3 vector } m_axi_Layer_Weights_ARQOS { O 4 vector } m_axi_Layer_Weights_ARREGION { O 4 vector } m_axi_Layer_Weights_ARUSER { O 1 vector } m_axi_Layer_Weights_RVALID { I 1 bit } m_axi_Layer_Weights_RREADY { O 1 bit } m_axi_Layer_Weights_RDATA { I 32 vector } m_axi_Layer_Weights_RLAST { I 1 bit } m_axi_Layer_Weights_RID { I 1 vector } m_axi_Layer_Weights_RFIFONUM { I 9 vector } m_axi_Layer_Weights_RUSER { I 1 vector } m_axi_Layer_Weights_RRESP { I 2 vector } m_axi_Layer_Weights_BVALID { I 1 bit } m_axi_Layer_Weights_BREADY { O 1 bit } m_axi_Layer_Weights_BRESP { I 2 vector } m_axi_Layer_Weights_BID { I 1 vector } m_axi_Layer_Weights_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name sext_ln75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln75 \
    op interface \
    ports { sext_ln75 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name somme_61_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_somme_61_out \
    op interface \
    ports { somme_61_out { O 32 vector } somme_61_out_ap_vld { O 1 bit } } \
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


