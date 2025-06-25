// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCNN_LENET_H
#define XCNN_LENET_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcnn_lenet_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
    u64 Ctrl_bus_BaseAddress;
} XCnn_lenet_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XCnn_lenet;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCnn_lenet_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCnn_lenet_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCnn_lenet_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCnn_lenet_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XCnn_lenet_Initialize(XCnn_lenet *InstancePtr, UINTPTR BaseAddress);
XCnn_lenet_Config* XCnn_lenet_LookupConfig(UINTPTR BaseAddress);
#else
int XCnn_lenet_Initialize(XCnn_lenet *InstancePtr, u16 DeviceId);
XCnn_lenet_Config* XCnn_lenet_LookupConfig(u16 DeviceId);
#endif
int XCnn_lenet_CfgInitialize(XCnn_lenet *InstancePtr, XCnn_lenet_Config *ConfigPtr);
#else
int XCnn_lenet_Initialize(XCnn_lenet *InstancePtr, const char* InstanceName);
int XCnn_lenet_Release(XCnn_lenet *InstancePtr);
#endif

void XCnn_lenet_Start(XCnn_lenet *InstancePtr);
u32 XCnn_lenet_IsDone(XCnn_lenet *InstancePtr);
u32 XCnn_lenet_IsIdle(XCnn_lenet *InstancePtr);
u32 XCnn_lenet_IsReady(XCnn_lenet *InstancePtr);
void XCnn_lenet_EnableAutoRestart(XCnn_lenet *InstancePtr);
void XCnn_lenet_DisableAutoRestart(XCnn_lenet *InstancePtr);

void XCnn_lenet_Set_Layer1_Neurons_CPU(XCnn_lenet *InstancePtr, u64 Data);
u64 XCnn_lenet_Get_Layer1_Neurons_CPU(XCnn_lenet *InstancePtr);
void XCnn_lenet_Set_Layer1_Weights_CPU(XCnn_lenet *InstancePtr, u64 Data);
u64 XCnn_lenet_Get_Layer1_Weights_CPU(XCnn_lenet *InstancePtr);
void XCnn_lenet_Set_Layer2_Weights_CPU(XCnn_lenet *InstancePtr, u64 Data);
u64 XCnn_lenet_Get_Layer2_Weights_CPU(XCnn_lenet *InstancePtr);
void XCnn_lenet_Set_Layer3_Weights_CPU(XCnn_lenet *InstancePtr, u64 Data);
u64 XCnn_lenet_Get_Layer3_Weights_CPU(XCnn_lenet *InstancePtr);
void XCnn_lenet_Set_Layer4_Neurons_CPU(XCnn_lenet *InstancePtr, u64 Data);
u64 XCnn_lenet_Get_Layer4_Neurons_CPU(XCnn_lenet *InstancePtr);

void XCnn_lenet_InterruptGlobalEnable(XCnn_lenet *InstancePtr);
void XCnn_lenet_InterruptGlobalDisable(XCnn_lenet *InstancePtr);
void XCnn_lenet_InterruptEnable(XCnn_lenet *InstancePtr, u32 Mask);
void XCnn_lenet_InterruptDisable(XCnn_lenet *InstancePtr, u32 Mask);
void XCnn_lenet_InterruptClear(XCnn_lenet *InstancePtr, u32 Mask);
u32 XCnn_lenet_InterruptGetEnabled(XCnn_lenet *InstancePtr);
u32 XCnn_lenet_InterruptGetStatus(XCnn_lenet *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
