set SynModuleInfo {
  {SRCNAME exp_generic<double> MODELNAME exp_generic_double_s RTLNAME calculateLayer3_exp_generic_double_s
    SUBMODULES {
      {MODELNAME calculateLayer3_mul_13s_71s_71_5_1 RTLNAME calculateLayer3_mul_13s_71s_71_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_mul_43ns_36ns_79_3_1 RTLNAME calculateLayer3_mul_43ns_36ns_79_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_mul_49ns_44ns_93_5_1 RTLNAME calculateLayer3_mul_49ns_44ns_93_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_mul_50ns_50ns_100_5_1 RTLNAME calculateLayer3_mul_50ns_50ns_100_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_mac_muladd_16s_15ns_19s_31_4_1 RTLNAME calculateLayer3_mac_muladd_16s_15ns_19s_31_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_exp_generic_double_s_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_arbkb RTLNAME calculateLayer3_exp_generic_double_s_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_arbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_exp_generic_double_s_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arracud RTLNAME calculateLayer3_exp_generic_double_s_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arracud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe RTLNAME calculateLayer3_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME generic_tanh<double> MODELNAME generic_tanh_double_s RTLNAME calculateLayer3_generic_tanh_double_s
    SUBMODULES {
      {MODELNAME calculateLayer3_dadddsub_64ns_64ns_64_7_full_dsp_1 RTLNAME calculateLayer3_dadddsub_64ns_64ns_64_7_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_ddiv_64ns_64ns_64_59_no_dsp_1 RTLNAME calculateLayer3_ddiv_64ns_64ns_64_59_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 58 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_dcmp_64ns_64ns_1_2_no_dsp_1 RTLNAME calculateLayer3_dcmp_64ns_64ns_1_2_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME calculateLayer3 MODELNAME calculateLayer3 RTLNAME calculateLayer3 IS_TOP 1
    SUBMODULES {
      {MODELNAME calculateLayer3_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME calculateLayer3_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME calculateLayer3_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_fptrunc_64ns_32_2_no_dsp_1 RTLNAME calculateLayer3_fptrunc_64ns_32_2_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_fpext_32ns_64_2_no_dsp_1 RTLNAME calculateLayer3_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_dmul_64ns_64ns_64_7_max_dsp_1 RTLNAME calculateLayer3_dmul_64ns_64ns_64_7_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_mul_6ns_11ns_16_1_1 RTLNAME calculateLayer3_mul_6ns_11ns_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_mul_3ns_6ns_7_1_1 RTLNAME calculateLayer3_mul_3ns_6ns_7_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_gmem_m_axi RTLNAME calculateLayer3_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME calculateLayer3_CTRL_bus_s_axi RTLNAME calculateLayer3_CTRL_bus_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
