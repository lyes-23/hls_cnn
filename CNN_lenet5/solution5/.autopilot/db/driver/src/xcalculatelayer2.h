// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCALCULATELAYER2_H
#define XCALCULATELAYER2_H

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
#include "xcalculatelayer2_hw.h"

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
    u64 Ctrl_bus_BaseAddress;
} XCalculatelayer2_Config;
#endif

typedef struct {
    u64 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XCalculatelayer2;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCalculatelayer2_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCalculatelayer2_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCalculatelayer2_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCalculatelayer2_ReadReg(BaseAddress, RegOffset) \
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
int XCalculatelayer2_Initialize(XCalculatelayer2 *InstancePtr, UINTPTR BaseAddress);
XCalculatelayer2_Config* XCalculatelayer2_LookupConfig(UINTPTR BaseAddress);
#else
int XCalculatelayer2_Initialize(XCalculatelayer2 *InstancePtr, u16 DeviceId);
XCalculatelayer2_Config* XCalculatelayer2_LookupConfig(u16 DeviceId);
#endif
int XCalculatelayer2_CfgInitialize(XCalculatelayer2 *InstancePtr, XCalculatelayer2_Config *ConfigPtr);
#else
int XCalculatelayer2_Initialize(XCalculatelayer2 *InstancePtr, const char* InstanceName);
int XCalculatelayer2_Release(XCalculatelayer2 *InstancePtr);
#endif

void XCalculatelayer2_Start(XCalculatelayer2 *InstancePtr);
u32 XCalculatelayer2_IsDone(XCalculatelayer2 *InstancePtr);
u32 XCalculatelayer2_IsIdle(XCalculatelayer2 *InstancePtr);
u32 XCalculatelayer2_IsReady(XCalculatelayer2 *InstancePtr);
void XCalculatelayer2_EnableAutoRestart(XCalculatelayer2 *InstancePtr);
void XCalculatelayer2_DisableAutoRestart(XCalculatelayer2 *InstancePtr);

void XCalculatelayer2_Set_Layer1_Neurons_CPU(XCalculatelayer2 *InstancePtr, u64 Data);
u64 XCalculatelayer2_Get_Layer1_Neurons_CPU(XCalculatelayer2 *InstancePtr);
void XCalculatelayer2_Set_Layer2_Neurons_CPU(XCalculatelayer2 *InstancePtr, u64 Data);
u64 XCalculatelayer2_Get_Layer2_Neurons_CPU(XCalculatelayer2 *InstancePtr);

void XCalculatelayer2_InterruptGlobalEnable(XCalculatelayer2 *InstancePtr);
void XCalculatelayer2_InterruptGlobalDisable(XCalculatelayer2 *InstancePtr);
void XCalculatelayer2_InterruptEnable(XCalculatelayer2 *InstancePtr, u32 Mask);
void XCalculatelayer2_InterruptDisable(XCalculatelayer2 *InstancePtr, u32 Mask);
void XCalculatelayer2_InterruptClear(XCalculatelayer2 *InstancePtr, u32 Mask);
u32 XCalculatelayer2_InterruptGetEnabled(XCalculatelayer2 *InstancePtr);
u32 XCalculatelayer2_InterruptGetStatus(XCalculatelayer2 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
