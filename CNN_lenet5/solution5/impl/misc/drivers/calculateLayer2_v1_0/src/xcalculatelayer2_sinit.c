// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xcalculatelayer2.h"

extern XCalculatelayer2_Config XCalculatelayer2_ConfigTable[];

#ifdef SDT
XCalculatelayer2_Config *XCalculatelayer2_LookupConfig(UINTPTR BaseAddress) {
	XCalculatelayer2_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XCalculatelayer2_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XCalculatelayer2_ConfigTable[Index].Ctrl_bus_BaseAddress == BaseAddress) {
			ConfigPtr = &XCalculatelayer2_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCalculatelayer2_Initialize(XCalculatelayer2 *InstancePtr, UINTPTR BaseAddress) {
	XCalculatelayer2_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCalculatelayer2_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCalculatelayer2_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XCalculatelayer2_Config *XCalculatelayer2_LookupConfig(u16 DeviceId) {
	XCalculatelayer2_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCALCULATELAYER2_NUM_INSTANCES; Index++) {
		if (XCalculatelayer2_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCalculatelayer2_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCalculatelayer2_Initialize(XCalculatelayer2 *InstancePtr, u16 DeviceId) {
	XCalculatelayer2_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCalculatelayer2_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCalculatelayer2_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

