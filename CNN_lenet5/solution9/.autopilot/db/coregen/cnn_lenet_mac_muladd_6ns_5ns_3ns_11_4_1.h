// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1__HH__
#define __cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1__HH__
#include "cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1_DSP48_2.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1_DSP48_2 cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1_DSP48_2_U;

    SC_CTOR(cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1):  cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1_DSP48_2_U ("cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1_DSP48_2_U") {
        cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1_DSP48_2_U.clk(clk);
        cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1_DSP48_2_U.rst(reset);
        cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1_DSP48_2_U.ce(ce);
        cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1_DSP48_2_U.in0(din0);
        cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1_DSP48_2_U.in1(din1);
        cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1_DSP48_2_U.in2(din2);
        cnn_lenet_mac_muladd_6ns_5ns_3ns_11_4_1_DSP48_2_U.dout(dout);

    }

};

#endif //
