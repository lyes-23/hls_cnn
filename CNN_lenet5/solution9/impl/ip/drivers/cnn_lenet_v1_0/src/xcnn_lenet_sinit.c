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
#include "xcnn_lenet.h"

extern XCnn_lenet_Config XCnn_lenet_ConfigTable[];

#ifdef SDT
XCnn_lenet_Config *XCnn_lenet_LookupConfig(UINTPTR BaseAddress) {
	XCnn_lenet_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XCnn_lenet_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XCnn_lenet_ConfigTable[Index].Ctrl_bus_BaseAddress == BaseAddress) {
			ConfigPtr = &XCnn_lenet_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCnn_lenet_Initialize(XCnn_lenet *InstancePtr, UINTPTR BaseAddress) {
	XCnn_lenet_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCnn_lenet_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCnn_lenet_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XCnn_lenet_Config *XCnn_lenet_LookupConfig(u16 DeviceId) {
	XCnn_lenet_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCNN_LENET_NUM_INSTANCES; Index++) {
		if (XCnn_lenet_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCnn_lenet_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCnn_lenet_Initialize(XCnn_lenet *InstancePtr, u16 DeviceId) {
	XCnn_lenet_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCnn_lenet_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCnn_lenet_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

