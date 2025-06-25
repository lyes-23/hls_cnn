set SynModuleInfo {
  {SRCNAME SIGMOID MODELNAME SIGMOID RTLNAME calculateLayer2_SIGMOID
    SUBMODULES {
      {MODELNAME calculateLayer2_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME calculateLayer2_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer2_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME calculateLayer2_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer2_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME calculateLayer2_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer2_SIGMOID_sigmoidLUT_1_ROM_AUTO_1R RTLNAME calculateLayer2_SIGMOID_sigmoidLUT_1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME calculateLayer2 MODELNAME calculateLayer2 RTLNAME calculateLayer2 IS_TOP 1
    SUBMODULES {
      {MODELNAME calculateLayer2_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME calculateLayer2_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer2_fmul_32ns_32ns_32_4_max_dsp_1_x RTLNAME calculateLayer2_fmul_32ns_32ns_32_4_max_dsp_1_x BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer2_mul_3ns_6ns_8_1_1 RTLNAME calculateLayer2_mul_3ns_6ns_8_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer2_mul_4ns_7ns_10_1_1 RTLNAME calculateLayer2_mul_4ns_7ns_10_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME calculateLayer2_gmem_m_axi RTLNAME calculateLayer2_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME calculateLayer2_CTRL_bus_s_axi RTLNAME calculateLayer2_CTRL_bus_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
