set SynModuleInfo {
  {SRCNAME exp_generic<double> MODELNAME exp_generic_double_s RTLNAME Lenet_HW_exp_generic_double_s
    SUBMODULES {
      {MODELNAME Lenet_HW_mul_13s_71s_71_1_1 RTLNAME Lenet_HW_mul_13s_71s_71_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_mul_43ns_36ns_79_1_1 RTLNAME Lenet_HW_mul_43ns_36ns_79_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_mul_49ns_44ns_93_1_1 RTLNAME Lenet_HW_mul_49ns_44ns_93_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_mul_50ns_50ns_100_1_1 RTLNAME Lenet_HW_mul_50ns_50ns_100_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_mac_muladd_16s_15ns_19s_31_4_1 RTLNAME Lenet_HW_mac_muladd_16s_15ns_19s_31_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_exp_generic_double_s_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_arbkb RTLNAME Lenet_HW_exp_generic_double_s_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_arbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_exp_generic_double_s_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arracud RTLNAME Lenet_HW_exp_generic_double_s_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arracud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe RTLNAME Lenet_HW_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME generic_tanh<double> MODELNAME generic_tanh_double_s RTLNAME Lenet_HW_generic_tanh_double_s
    SUBMODULES {
      {MODELNAME Lenet_HW_dadddsub_64ns_64ns_64_2_full_dsp_1 RTLNAME Lenet_HW_dadddsub_64ns_64ns_64_2_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_dadd_64ns_64ns_64_2_full_dsp_1 RTLNAME Lenet_HW_dadd_64ns_64ns_64_2_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_dsub_64ns_64ns_64_2_full_dsp_1 RTLNAME Lenet_HW_dsub_64ns_64ns_64_2_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_dmul_64ns_64ns_64_2_max_dsp_1 RTLNAME Lenet_HW_dmul_64ns_64ns_64_2_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_ddiv_64ns_64ns_64_10_no_dsp_1 RTLNAME Lenet_HW_ddiv_64ns_64ns_64_10_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_dcmp_64ns_64ns_1_1_no_dsp_1 RTLNAME Lenet_HW_dcmp_64ns_64ns_1_1_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME calculateLayer2 MODELNAME calculateLayer2 RTLNAME Lenet_HW_calculateLayer2
    SUBMODULES {
      {MODELNAME Lenet_HW_fptrunc_64ns_32_1_no_dsp_1 RTLNAME Lenet_HW_fptrunc_64ns_32_1_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_fpext_32ns_64_1_no_dsp_1 RTLNAME Lenet_HW_fpext_32ns_64_1_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_mac_muladd_3ns_8ns_4ns_10_4_1 RTLNAME Lenet_HW_mac_muladd_3ns_8ns_4ns_10_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_mac_muladd_4ns_4ns_10ns_10_4_1 RTLNAME Lenet_HW_mac_muladd_4ns_4ns_10ns_10_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_calculateLayer2_conv_buff_SHIFTREG_AUTO_0R0W RTLNAME Lenet_HW_calculateLayer2_conv_buff_SHIFTREG_AUTO_0R0W BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_flow_control_loop_pipe_sequential_init RTLNAME Lenet_HW_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME Lenet_HW_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME calculateLayer3 MODELNAME calculateLayer3 RTLNAME Lenet_HW_calculateLayer3
    SUBMODULES {
      {MODELNAME Lenet_HW_mul_3ns_6ns_8_1_1 RTLNAME Lenet_HW_mul_3ns_6ns_8_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_mac_muladd_6ns_5ns_3ns_11_4_1 RTLNAME Lenet_HW_mac_muladd_6ns_5ns_3ns_11_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_calculateLayer3_conv_buff_SHIFTREG_AUTO_0R0W RTLNAME Lenet_HW_calculateLayer3_conv_buff_SHIFTREG_AUTO_0R0W BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Lenet_HW_Pipeline_VITIS_LOOP_112_2_VITIS_LOOP_114_3_VITIS_LOOP_115_4 MODELNAME Lenet_HW_Pipeline_VITIS_LOOP_112_2_VITIS_LOOP_114_3_VITIS_LOOP_115_4 RTLNAME Lenet_HW_Lenet_HW_Pipeline_VITIS_LOOP_112_2_VITIS_LOOP_114_3_VITIS_LOOP_115_4}
  {SRCNAME Lenet_HW MODELNAME Lenet_HW RTLNAME Lenet_HW IS_TOP 1
    SUBMODULES {
      {MODELNAME Lenet_HW_fadd_32ns_32ns_32_2_full_dsp_1 RTLNAME Lenet_HW_fadd_32ns_32ns_32_2_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME Lenet_HW_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_Layer2_Neurons_CPU_RAM_1WNR_AUTO_1R1W RTLNAME Lenet_HW_Layer2_Neurons_CPU_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_Layer3_Neurons_CPU_RAM_AUTO_1R1W RTLNAME Lenet_HW_Layer3_Neurons_CPU_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME Lenet_HW_regslice_both RTLNAME Lenet_HW_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME Lenet_HW_regslice_both_U}
    }
  }
}
