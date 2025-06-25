set SynModuleInfo {
  {SRCNAME SIGMOID MODELNAME SIGMOID RTLNAME calculateLayer3_SIGMOID
    SUBMODULES {
      {MODELNAME calculateLayer3_fpext_32ns_64_2_no_dsp_1 RTLNAME calculateLayer3_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME calculateLayer3_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_dmul_64ns_64ns_64_4_max_dsp_1 RTLNAME calculateLayer3_dmul_64ns_64ns_64_4_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_SIGMOID_sigmoidLUT_1_RAM_1P_BRAM_1R1W RTLNAME calculateLayer3_SIGMOID_sigmoidLUT_1_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME calculateLayer3 MODELNAME calculateLayer3 RTLNAME calculateLayer3 IS_TOP 1
    SUBMODULES {
      {MODELNAME calculateLayer3_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME calculateLayer3_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME calculateLayer3_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_mul_6ns_9ns_14_1_1 RTLNAME calculateLayer3_mul_6ns_9ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_mul_3ns_6ns_8_1_1 RTLNAME calculateLayer3_mul_3ns_6ns_8_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_mac_muladd_6ns_5ns_3ns_11_4_1 RTLNAME calculateLayer3_mac_muladd_6ns_5ns_3ns_11_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer3_CTRL_bus_s_axi RTLNAME calculateLayer3_CTRL_bus_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME calculateLayer3_control_s_axi RTLNAME calculateLayer3_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME calculateLayer3_flow_control_loop_pipe RTLNAME calculateLayer3_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME calculateLayer3_flow_control_loop_pipe_U}
    }
  }
}
