// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcnn_lenet.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCnn_lenet_CfgInitialize(XCnn_lenet *InstancePtr, XCnn_lenet_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCnn_lenet_Start(XCnn_lenet *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_lenet_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XCnn_lenet_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCnn_lenet_IsDone(XCnn_lenet *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_lenet_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCnn_lenet_IsIdle(XCnn_lenet *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_lenet_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCnn_lenet_IsReady(XCnn_lenet *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_lenet_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCnn_lenet_EnableAutoRestart(XCnn_lenet *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_lenet_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XCnn_lenet_DisableAutoRestart(XCnn_lenet *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_lenet_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_AP_CTRL, 0);
}

void XCnn_lenet_Set_Layer1_Neurons_CPU(XCnn_lenet *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_lenet_WriteReg(InstancePtr->Control_BaseAddress, XCNN_LENET_CONTROL_ADDR_LAYER1_NEURONS_CPU_DATA, (u32)(Data));
    XCnn_lenet_WriteReg(InstancePtr->Control_BaseAddress, XCNN_LENET_CONTROL_ADDR_LAYER1_NEURONS_CPU_DATA + 4, (u32)(Data >> 32));
}

u64 XCnn_lenet_Get_Layer1_Neurons_CPU(XCnn_lenet *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_lenet_ReadReg(InstancePtr->Control_BaseAddress, XCNN_LENET_CONTROL_ADDR_LAYER1_NEURONS_CPU_DATA);
    Data += (u64)XCnn_lenet_ReadReg(InstancePtr->Control_BaseAddress, XCNN_LENET_CONTROL_ADDR_LAYER1_NEURONS_CPU_DATA + 4) << 32;
    return Data;
}

void XCnn_lenet_Set_Layer4_Neurons_CPU(XCnn_lenet *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_lenet_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_LAYER4_NEURONS_CPU_DATA, (u32)(Data));
    XCnn_lenet_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_LAYER4_NEURONS_CPU_DATA + 4, (u32)(Data >> 32));
}

u64 XCnn_lenet_Get_Layer4_Neurons_CPU(XCnn_lenet *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCnn_lenet_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_LAYER4_NEURONS_CPU_DATA);
    Data += (u64)XCnn_lenet_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_LAYER4_NEURONS_CPU_DATA + 4) << 32;
    return Data;
}

void XCnn_lenet_InterruptGlobalEnable(XCnn_lenet *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_lenet_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_GIE, 1);
}

void XCnn_lenet_InterruptGlobalDisable(XCnn_lenet *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_lenet_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_GIE, 0);
}

void XCnn_lenet_InterruptEnable(XCnn_lenet *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCnn_lenet_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_IER);
    XCnn_lenet_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XCnn_lenet_InterruptDisable(XCnn_lenet *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCnn_lenet_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_IER);
    XCnn_lenet_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XCnn_lenet_InterruptClear(XCnn_lenet *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCnn_lenet_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XCnn_lenet_InterruptGetEnabled(XCnn_lenet *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCnn_lenet_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_IER);
}

u32 XCnn_lenet_InterruptGetStatus(XCnn_lenet *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCnn_lenet_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCNN_LENET_CTRL_BUS_ADDR_ISR);
}

