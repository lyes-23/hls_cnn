// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of Layer1_Neurons_CPU
//        bit 31~0 - Layer1_Neurons_CPU[31:0] (Read/Write)
// 0x14 : Data signal of Layer1_Neurons_CPU
//        bit 31~0 - Layer1_Neurons_CPU[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of Layer1_Weights_CPU
//        bit 31~0 - Layer1_Weights_CPU[31:0] (Read/Write)
// 0x20 : Data signal of Layer1_Weights_CPU
//        bit 31~0 - Layer1_Weights_CPU[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of Layer2_Weights_CPU
//        bit 31~0 - Layer2_Weights_CPU[31:0] (Read/Write)
// 0x2c : Data signal of Layer2_Weights_CPU
//        bit 31~0 - Layer2_Weights_CPU[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of Layer3_Weights_CPU
//        bit 31~0 - Layer3_Weights_CPU[31:0] (Read/Write)
// 0x38 : Data signal of Layer3_Weights_CPU
//        bit 31~0 - Layer3_Weights_CPU[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of Layer4_Neurons_CPU
//        bit 31~0 - Layer4_Neurons_CPU[31:0] (Read/Write)
// 0x44 : Data signal of Layer4_Neurons_CPU
//        bit 31~0 - Layer4_Neurons_CPU[63:32] (Read/Write)
// 0x48 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCNN_LENET_CONTROL_ADDR_LAYER1_NEURONS_CPU_DATA 0x10
#define XCNN_LENET_CONTROL_BITS_LAYER1_NEURONS_CPU_DATA 64
#define XCNN_LENET_CONTROL_ADDR_LAYER1_WEIGHTS_CPU_DATA 0x1c
#define XCNN_LENET_CONTROL_BITS_LAYER1_WEIGHTS_CPU_DATA 64
#define XCNN_LENET_CONTROL_ADDR_LAYER2_WEIGHTS_CPU_DATA 0x28
#define XCNN_LENET_CONTROL_BITS_LAYER2_WEIGHTS_CPU_DATA 64
#define XCNN_LENET_CONTROL_ADDR_LAYER3_WEIGHTS_CPU_DATA 0x34
#define XCNN_LENET_CONTROL_BITS_LAYER3_WEIGHTS_CPU_DATA 64
#define XCNN_LENET_CONTROL_ADDR_LAYER4_NEURONS_CPU_DATA 0x40
#define XCNN_LENET_CONTROL_BITS_LAYER4_NEURONS_CPU_DATA 64

// CTRL_bus
// 0x0 : Control signals
//       bit 0  - ap_start (Read/Write/COH)
//       bit 1  - ap_done (Read/COR)
//       bit 2  - ap_idle (Read)
//       bit 3  - ap_ready (Read/COR)
//       bit 7  - auto_restart (Read/Write)
//       bit 9  - interrupt (Read)
//       others - reserved
// 0x4 : Global Interrupt Enable Register
//       bit 0  - Global Interrupt Enable (Read/Write)
//       others - reserved
// 0x8 : IP Interrupt Enable Register (Read/Write)
//       bit 0 - enable ap_done interrupt (Read/Write)
//       bit 1 - enable ap_ready interrupt (Read/Write)
//       others - reserved
// 0xc : IP Interrupt Status Register (Read/TOW)
//       bit 0 - ap_done (Read/TOW)
//       bit 1 - ap_ready (Read/TOW)
//       others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCNN_LENET_CTRL_BUS_ADDR_AP_CTRL 0x0
#define XCNN_LENET_CTRL_BUS_ADDR_GIE     0x4
#define XCNN_LENET_CTRL_BUS_ADDR_IER     0x8
#define XCNN_LENET_CTRL_BUS_ADDR_ISR     0xc

