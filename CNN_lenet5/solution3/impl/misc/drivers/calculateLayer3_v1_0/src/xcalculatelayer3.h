// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCALCULATELAYER3_H
#define XCALCULATELAYER3_H

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
#include "xcalculatelayer3_hw.h"

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
} XCalculatelayer3_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XCalculatelayer3;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCalculatelayer3_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCalculatelayer3_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCalculatelayer3_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCalculatelayer3_ReadReg(BaseAddress, RegOffset) \
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
int XCalculatelayer3_Initialize(XCalculatelayer3 *InstancePtr, UINTPTR BaseAddress);
XCalculatelayer3_Config* XCalculatelayer3_LookupConfig(UINTPTR BaseAddress);
#else
int XCalculatelayer3_Initialize(XCalculatelayer3 *InstancePtr, u16 DeviceId);
XCalculatelayer3_Config* XCalculatelayer3_LookupConfig(u16 DeviceId);
#endif
int XCalculatelayer3_CfgInitialize(XCalculatelayer3 *InstancePtr, XCalculatelayer3_Config *ConfigPtr);
#else
int XCalculatelayer3_Initialize(XCalculatelayer3 *InstancePtr, const char* InstanceName);
int XCalculatelayer3_Release(XCalculatelayer3 *InstancePtr);
#endif

void XCalculatelayer3_Start(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_IsDone(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_IsIdle(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_IsReady(XCalculatelayer3 *InstancePtr);
void XCalculatelayer3_EnableAutoRestart(XCalculatelayer3 *InstancePtr);
void XCalculatelayer3_DisableAutoRestart(XCalculatelayer3 *InstancePtr);

u32 XCalculatelayer3_Get_Layer2_Neurons_CPU_BaseAddress(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_Get_Layer2_Neurons_CPU_HighAddress(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_Get_Layer2_Neurons_CPU_TotalBytes(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_Get_Layer2_Neurons_CPU_BitWidth(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_Get_Layer2_Neurons_CPU_Depth(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_Write_Layer2_Neurons_CPU_Words(XCalculatelayer3 *InstancePtr, int offset, word_type *data, int length);
u32 XCalculatelayer3_Read_Layer2_Neurons_CPU_Words(XCalculatelayer3 *InstancePtr, int offset, word_type *data, int length);
u32 XCalculatelayer3_Write_Layer2_Neurons_CPU_Bytes(XCalculatelayer3 *InstancePtr, int offset, char *data, int length);
u32 XCalculatelayer3_Read_Layer2_Neurons_CPU_Bytes(XCalculatelayer3 *InstancePtr, int offset, char *data, int length);
u32 XCalculatelayer3_Get_Layer3_Neurons_CPU_BaseAddress(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_Get_Layer3_Neurons_CPU_HighAddress(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_Get_Layer3_Neurons_CPU_TotalBytes(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_Get_Layer3_Neurons_CPU_BitWidth(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_Get_Layer3_Neurons_CPU_Depth(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_Write_Layer3_Neurons_CPU_Words(XCalculatelayer3 *InstancePtr, int offset, word_type *data, int length);
u32 XCalculatelayer3_Read_Layer3_Neurons_CPU_Words(XCalculatelayer3 *InstancePtr, int offset, word_type *data, int length);
u32 XCalculatelayer3_Write_Layer3_Neurons_CPU_Bytes(XCalculatelayer3 *InstancePtr, int offset, char *data, int length);
u32 XCalculatelayer3_Read_Layer3_Neurons_CPU_Bytes(XCalculatelayer3 *InstancePtr, int offset, char *data, int length);
u32 XCalculatelayer3_Get_Layer2_Weights_CPU_BaseAddress(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_Get_Layer2_Weights_CPU_HighAddress(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_Get_Layer2_Weights_CPU_TotalBytes(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_Get_Layer2_Weights_CPU_BitWidth(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_Get_Layer2_Weights_CPU_Depth(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_Write_Layer2_Weights_CPU_Words(XCalculatelayer3 *InstancePtr, int offset, word_type *data, int length);
u32 XCalculatelayer3_Read_Layer2_Weights_CPU_Words(XCalculatelayer3 *InstancePtr, int offset, word_type *data, int length);
u32 XCalculatelayer3_Write_Layer2_Weights_CPU_Bytes(XCalculatelayer3 *InstancePtr, int offset, char *data, int length);
u32 XCalculatelayer3_Read_Layer2_Weights_CPU_Bytes(XCalculatelayer3 *InstancePtr, int offset, char *data, int length);

void XCalculatelayer3_InterruptGlobalEnable(XCalculatelayer3 *InstancePtr);
void XCalculatelayer3_InterruptGlobalDisable(XCalculatelayer3 *InstancePtr);
void XCalculatelayer3_InterruptEnable(XCalculatelayer3 *InstancePtr, u32 Mask);
void XCalculatelayer3_InterruptDisable(XCalculatelayer3 *InstancePtr, u32 Mask);
void XCalculatelayer3_InterruptClear(XCalculatelayer3 *InstancePtr, u32 Mask);
u32 XCalculatelayer3_InterruptGetEnabled(XCalculatelayer3 *InstancePtr);
u32 XCalculatelayer3_InterruptGetStatus(XCalculatelayer3 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
