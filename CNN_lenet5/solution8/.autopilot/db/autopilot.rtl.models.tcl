set SynModuleInfo {
  {SRCNAME SIGMOID MODELNAME SIGMOID RTLNAME cnn_lenet_SIGMOID
    SUBMODULES {
      {MODELNAME cnn_lenet_fpext_32ns_64_2_no_dsp_1 RTLNAME cnn_lenet_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_lenet_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME cnn_lenet_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_lenet_dmul_64ns_64ns_64_4_max_dsp_1 RTLNAME cnn_lenet_dmul_64ns_64ns_64_4_max_dsp_1 BINDTYPE op TYPE dmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME cnn_lenet_SIGMOID_sigmoidLUT_1_RAM_1P_BRAM_1R1W RTLNAME cnn_lenet_SIGMOID_sigmoidLUT_1_RAM_1P_BRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop MODELNAME cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop RTLNAME cnn_lenet_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop
    SUBMODULES {
      {MODELNAME cnn_lenet_mul_3ns_8ns_10_1_1 RTLNAME cnn_lenet_mul_3ns_8ns_10_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_lenet_mul_4ns_7ns_10_1_1 RTLNAME cnn_lenet_mul_4ns_7ns_10_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_lenet_mac_muladd_3ns_8ns_4ns_10_4_1 RTLNAME cnn_lenet_mac_muladd_3ns_8ns_4ns_10_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME cnn_lenet_mac_muladd_4ns_4ns_10ns_10_4_1 RTLNAME cnn_lenet_mac_muladd_4ns_4ns_10ns_10_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME cnn_lenet_flow_control_loop_pipe_sequential_init RTLNAME cnn_lenet_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cnn_lenet_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop MODELNAME cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop RTLNAME cnn_lenet_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop
    SUBMODULES {
      {MODELNAME cnn_lenet_mul_6ns_11ns_16_1_1 RTLNAME cnn_lenet_mul_6ns_11ns_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_lenet_mul_3ns_6ns_8_1_1 RTLNAME cnn_lenet_mul_3ns_6ns_8_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1 RTLNAME cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME cnn_lenet_Pipeline_col_loop2_kernelRow_Loop2_kernelCol_loop2 MODELNAME cnn_lenet_Pipeline_col_loop2_kernelRow_Loop2_kernelCol_loop2 RTLNAME cnn_lenet_cnn_lenet_Pipeline_col_loop2_kernelRow_Loop2_kernelCol_loop2}
  {SRCNAME cnn_lenet MODELNAME cnn_lenet RTLNAME cnn_lenet IS_TOP 1
    SUBMODULES {
      {MODELNAME cnn_lenet_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME cnn_lenet_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME cnn_lenet_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME cnn_lenet_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cnn_lenet_Layer2_Neurons_CPU_RAM_1WNR_AUTO_1R1W RTLNAME cnn_lenet_Layer2_Neurons_CPU_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_lenet_Layer3_Neurons_CPU_RAM_AUTO_1R1W RTLNAME cnn_lenet_Layer3_Neurons_CPU_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cnn_lenet_Layer_Neurons_m_axi RTLNAME cnn_lenet_Layer_Neurons_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_lenet_Layer_Weights_m_axi RTLNAME cnn_lenet_Layer_Weights_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME cnn_lenet_CTRL_bus_s_axi RTLNAME cnn_lenet_CTRL_bus_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME cnn_lenet_control_s_axi RTLNAME cnn_lenet_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
