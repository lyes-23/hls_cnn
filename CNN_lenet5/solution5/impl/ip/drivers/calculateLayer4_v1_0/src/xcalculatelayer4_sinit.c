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
#include "xcalculatelayer4.h"

extern XCalculatelayer4_Config XCalculatelayer4_ConfigTable[];

#ifdef SDT
XCalculatelayer4_Config *XCalculatelayer4_LookupConfig(UINTPTR BaseAddress) {
	XCalculatelayer4_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XCalculatelayer4_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XCalculatelayer4_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XCalculatelayer4_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCalculatelayer4_Initialize(XCalculatelayer4 *InstancePtr, UINTPTR BaseAddress) {
	XCalculatelayer4_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCalculatelayer4_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCalculatelayer4_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XCalculatelayer4_Config *XCalculatelayer4_LookupConfig(u16 DeviceId) {
	XCalculatelayer4_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCALCULATELAYER4_NUM_INSTANCES; Index++) {
		if (XCalculatelayer4_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCalculatelayer4_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCalculatelayer4_Initialize(XCalculatelayer4 *InstancePtr, u16 DeviceId) {
	XCalculatelayer4_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCalculatelayer4_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCalculatelayer4_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

