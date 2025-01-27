set SynModuleInfo {
  {SRCNAME exp_generic<double> MODELNAME exp_generic_double_s RTLNAME calculateLayer4_exp_generic_double_s
    SUBMODULES {
      {MODELNAME calculateLayer4_mul_13s_71s_71_1_1 RTLNAME calculateLayer4_mul_13s_71s_71_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer4_mul_43ns_36ns_79_1_1 RTLNAME calculateLayer4_mul_43ns_36ns_79_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer4_mul_49ns_44ns_93_1_1 RTLNAME calculateLayer4_mul_49ns_44ns_93_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer4_mul_50ns_50ns_100_1_1 RTLNAME calculateLayer4_mul_50ns_50ns_100_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer4_mac_muladd_16s_15ns_19s_31_4_1 RTLNAME calculateLayer4_mac_muladd_16s_15ns_19s_31_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer4_exp_generic_double_s_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_arbkb RTLNAME calculateLayer4_exp_generic_double_s_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_arbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer4_exp_generic_double_s_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arracud RTLNAME calculateLayer4_exp_generic_double_s_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arracud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer4_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe RTLNAME calculateLayer4_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME generic_tanh<double> MODELNAME generic_tanh_double_s RTLNAME calculateLayer4_generic_tanh_double_s
    SUBMODULES {
      {MODELNAME calculateLayer4_dadd_64ns_64ns_64_5_full_dsp_1 RTLNAME calculateLayer4_dadd_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer4_dsub_64ns_64ns_64_5_full_dsp_1 RTLNAME calculateLayer4_dsub_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer4_dmul_64ns_64ns_64_4_max_dsp_1 RTLNAME calculateLayer4_dmul_64ns_64ns_64_4_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer4_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME calculateLayer4_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer4_dcmp_64ns_64ns_1_2_no_dsp_1 RTLNAME calculateLayer4_dcmp_64ns_64ns_1_2_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME calculateLayer4_Pipeline_calculateLayer4_loop MODELNAME calculateLayer4_Pipeline_calculateLayer4_loop RTLNAME calculateLayer4_calculateLayer4_Pipeline_calculateLayer4_loop
    SUBMODULES {
      {MODELNAME calculateLayer4_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME calculateLayer4_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer4_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME calculateLayer4_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer4_fptrunc_64ns_32_2_no_dsp_1 RTLNAME calculateLayer4_fptrunc_64ns_32_2_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer4_fpext_32ns_64_2_no_dsp_1 RTLNAME calculateLayer4_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer4_dmul_64ns_64ns_64_4_max_dsp_1_x RTLNAME calculateLayer4_dmul_64ns_64ns_64_4_max_dsp_1_x BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer4_flow_control_loop_pipe_sequential_init RTLNAME calculateLayer4_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME calculateLayer4_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME calculateLayer4 MODELNAME calculateLayer4 RTLNAME calculateLayer4 IS_TOP 1
    SUBMODULES {
      {MODELNAME calculateLayer4_CTRL_bus_s_axi RTLNAME calculateLayer4_CTRL_bus_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME calculateLayer4_control_s_axi RTLNAME calculateLayer4_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
