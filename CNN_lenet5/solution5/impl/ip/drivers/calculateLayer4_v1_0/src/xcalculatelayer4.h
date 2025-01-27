// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCALCULATELAYER4_H
#define XCALCULATELAYER4_H

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
#include "xcalculatelayer4_hw.h"

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
} XCalculatelayer4_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XCalculatelayer4;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCalculatelayer4_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCalculatelayer4_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCalculatelayer4_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCalculatelayer4_ReadReg(BaseAddress, RegOffset) \
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
int XCalculatelayer4_Initialize(XCalculatelayer4 *InstancePtr, UINTPTR BaseAddress);
XCalculatelayer4_Config* XCalculatelayer4_LookupConfig(UINTPTR BaseAddress);
#else
int XCalculatelayer4_Initialize(XCalculatelayer4 *InstancePtr, u16 DeviceId);
XCalculatelayer4_Config* XCalculatelayer4_LookupConfig(u16 DeviceId);
#endif
int XCalculatelayer4_CfgInitialize(XCalculatelayer4 *InstancePtr, XCalculatelayer4_Config *ConfigPtr);
#else
int XCalculatelayer4_Initialize(XCalculatelayer4 *InstancePtr, const char* InstanceName);
int XCalculatelayer4_Release(XCalculatelayer4 *InstancePtr);
#endif

void XCalculatelayer4_Start(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_IsDone(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_IsIdle(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_IsReady(XCalculatelayer4 *InstancePtr);
void XCalculatelayer4_EnableAutoRestart(XCalculatelayer4 *InstancePtr);
void XCalculatelayer4_DisableAutoRestart(XCalculatelayer4 *InstancePtr);

u32 XCalculatelayer4_Get_Layer4_Neurons_CPU_BaseAddress(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_Get_Layer4_Neurons_CPU_HighAddress(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_Get_Layer4_Neurons_CPU_TotalBytes(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_Get_Layer4_Neurons_CPU_BitWidth(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_Get_Layer4_Neurons_CPU_Depth(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_Write_Layer4_Neurons_CPU_Words(XCalculatelayer4 *InstancePtr, int offset, word_type *data, int length);
u32 XCalculatelayer4_Read_Layer4_Neurons_CPU_Words(XCalculatelayer4 *InstancePtr, int offset, word_type *data, int length);
u32 XCalculatelayer4_Write_Layer4_Neurons_CPU_Bytes(XCalculatelayer4 *InstancePtr, int offset, char *data, int length);
u32 XCalculatelayer4_Read_Layer4_Neurons_CPU_Bytes(XCalculatelayer4 *InstancePtr, int offset, char *data, int length);
u32 XCalculatelayer4_Get_Layer3_Neurons_CPU_BaseAddress(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_Get_Layer3_Neurons_CPU_HighAddress(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_Get_Layer3_Neurons_CPU_TotalBytes(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_Get_Layer3_Neurons_CPU_BitWidth(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_Get_Layer3_Neurons_CPU_Depth(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_Write_Layer3_Neurons_CPU_Words(XCalculatelayer4 *InstancePtr, int offset, word_type *data, int length);
u32 XCalculatelayer4_Read_Layer3_Neurons_CPU_Words(XCalculatelayer4 *InstancePtr, int offset, word_type *data, int length);
u32 XCalculatelayer4_Write_Layer3_Neurons_CPU_Bytes(XCalculatelayer4 *InstancePtr, int offset, char *data, int length);
u32 XCalculatelayer4_Read_Layer3_Neurons_CPU_Bytes(XCalculatelayer4 *InstancePtr, int offset, char *data, int length);
u32 XCalculatelayer4_Get_Layer3_Weights_CPU_BaseAddress(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_Get_Layer3_Weights_CPU_HighAddress(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_Get_Layer3_Weights_CPU_TotalBytes(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_Get_Layer3_Weights_CPU_BitWidth(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_Get_Layer3_Weights_CPU_Depth(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_Write_Layer3_Weights_CPU_Words(XCalculatelayer4 *InstancePtr, int offset, word_type *data, int length);
u32 XCalculatelayer4_Read_Layer3_Weights_CPU_Words(XCalculatelayer4 *InstancePtr, int offset, word_type *data, int length);
u32 XCalculatelayer4_Write_Layer3_Weights_CPU_Bytes(XCalculatelayer4 *InstancePtr, int offset, char *data, int length);
u32 XCalculatelayer4_Read_Layer3_Weights_CPU_Bytes(XCalculatelayer4 *InstancePtr, int offset, char *data, int length);

void XCalculatelayer4_InterruptGlobalEnable(XCalculatelayer4 *InstancePtr);
void XCalculatelayer4_InterruptGlobalDisable(XCalculatelayer4 *InstancePtr);
void XCalculatelayer4_InterruptEnable(XCalculatelayer4 *InstancePtr, u32 Mask);
void XCalculatelayer4_InterruptDisable(XCalculatelayer4 *InstancePtr, u32 Mask);
void XCalculatelayer4_InterruptClear(XCalculatelayer4 *InstancePtr, u32 Mask);
u32 XCalculatelayer4_InterruptGetEnabled(XCalculatelayer4 *InstancePtr);
u32 XCalculatelayer4_InterruptGetStatus(XCalculatelayer4 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
