// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

extern "C" void AESL_WRAP_Lenet_HW (
hls::stream<int > Layer1_Neurons_stream,
hls::stream<int > Layer1_Weights_stream,
hls::stream<int > Layer2_Weights_stream,
hls::stream<int > Layer3_Weights_stream,
hls::stream<int > Layer4_Neurons_stream);
