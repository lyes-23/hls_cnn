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
#include "xcalculatelayer3.h"

extern XCalculatelayer3_Config XCalculatelayer3_ConfigTable[];

#ifdef SDT
XCalculatelayer3_Config *XCalculatelayer3_LookupConfig(UINTPTR BaseAddress) {
	XCalculatelayer3_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XCalculatelayer3_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XCalculatelayer3_ConfigTable[Index].Ctrl_bus_BaseAddress == BaseAddress) {
			ConfigPtr = &XCalculatelayer3_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCalculatelayer3_Initialize(XCalculatelayer3 *InstancePtr, UINTPTR BaseAddress) {
	XCalculatelayer3_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCalculatelayer3_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCalculatelayer3_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XCalculatelayer3_Config *XCalculatelayer3_LookupConfig(u16 DeviceId) {
	XCalculatelayer3_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCALCULATELAYER3_NUM_INSTANCES; Index++) {
		if (XCalculatelayer3_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCalculatelayer3_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCalculatelayer3_Initialize(XCalculatelayer3 *InstancePtr, u16 DeviceId) {
	XCalculatelayer3_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCalculatelayer3_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCalculatelayer3_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

