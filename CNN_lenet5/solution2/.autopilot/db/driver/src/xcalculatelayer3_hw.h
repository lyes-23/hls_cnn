// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x1000 ~
// 0x1fff : Memory 'Layer2_Neurons_CPU' (1014 * 32b)
//          Word n : bit [31:0] - Layer2_Neurons_CPU[n]
// 0x2000 ~
// 0x3fff : Memory 'Layer3_Neurons_CPU' (1250 * 32b)
//          Word n : bit [31:0] - Layer3_Neurons_CPU[n]
// 0x8000 ~
// 0xffff : Memory 'Layer2_Weights_CPU' (7800 * 32b)
//          Word n : bit [31:0] - Layer2_Weights_CPU[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_BASE 0x1000
#define XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_HIGH 0x1fff
#define XCALCULATELAYER3_CONTROL_WIDTH_LAYER2_NEURONS_CPU     32
#define XCALCULATELAYER3_CONTROL_DEPTH_LAYER2_NEURONS_CPU     1014
#define XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE 0x2000
#define XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_HIGH 0x3fff
#define XCALCULATELAYER3_CONTROL_WIDTH_LAYER3_NEURONS_CPU     32
#define XCALCULATELAYER3_CONTROL_DEPTH_LAYER3_NEURONS_CPU     1250
#define XCALCULATELAYER3_CONTROL_ADDR_LAYER2_WEIGHTS_CPU_BASE 0x8000
#define XCALCULATELAYER3_CONTROL_ADDR_LAYER2_WEIGHTS_CPU_HIGH 0xffff
#define XCALCULATELAYER3_CONTROL_WIDTH_LAYER2_WEIGHTS_CPU     32
#define XCALCULATELAYER3_CONTROL_DEPTH_LAYER2_WEIGHTS_CPU     7800

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

#define XCALCULATELAYER3_CTRL_BUS_ADDR_AP_CTRL 0x0
#define XCALCULATELAYER3_CTRL_BUS_ADDR_GIE     0x4
#define XCALCULATELAYER3_CTRL_BUS_ADDR_IER     0x8
#define XCALCULATELAYER3_CTRL_BUS_ADDR_ISR     0xc

