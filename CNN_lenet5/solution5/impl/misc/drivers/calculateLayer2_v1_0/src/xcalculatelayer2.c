// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcalculatelayer2.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCalculatelayer2_CfgInitialize(XCalculatelayer2 *InstancePtr, XCalculatelayer2_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCalculatelayer2_Start(XCalculatelayer2 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer2_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XCalculatelayer2_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCalculatelayer2_IsDone(XCalculatelayer2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer2_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCalculatelayer2_IsIdle(XCalculatelayer2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer2_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCalculatelayer2_IsReady(XCalculatelayer2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer2_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCalculatelayer2_EnableAutoRestart(XCalculatelayer2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer2_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XCalculatelayer2_DisableAutoRestart(XCalculatelayer2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer2_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_AP_CTRL, 0);
}

void XCalculatelayer2_Set_Layer1_Neurons_CPU(XCalculatelayer2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer2_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_LAYER1_NEURONS_CPU_DATA, (u32)(Data));
    XCalculatelayer2_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_LAYER1_NEURONS_CPU_DATA + 4, (u32)(Data >> 32));
}

u64 XCalculatelayer2_Get_Layer1_Neurons_CPU(XCalculatelayer2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer2_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_LAYER1_NEURONS_CPU_DATA);
    Data += (u64)XCalculatelayer2_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_LAYER1_NEURONS_CPU_DATA + 4) << 32;
    return Data;
}

void XCalculatelayer2_Set_Layer2_Neurons_CPU(XCalculatelayer2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer2_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_LAYER2_NEURONS_CPU_DATA, (u32)(Data));
    XCalculatelayer2_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_LAYER2_NEURONS_CPU_DATA + 4, (u32)(Data >> 32));
}

u64 XCalculatelayer2_Get_Layer2_Neurons_CPU(XCalculatelayer2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer2_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_LAYER2_NEURONS_CPU_DATA);
    Data += (u64)XCalculatelayer2_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_LAYER2_NEURONS_CPU_DATA + 4) << 32;
    return Data;
}

void XCalculatelayer2_InterruptGlobalEnable(XCalculatelayer2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer2_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_GIE, 1);
}

void XCalculatelayer2_InterruptGlobalDisable(XCalculatelayer2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer2_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_GIE, 0);
}

void XCalculatelayer2_InterruptEnable(XCalculatelayer2 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCalculatelayer2_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_IER);
    XCalculatelayer2_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XCalculatelayer2_InterruptDisable(XCalculatelayer2 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCalculatelayer2_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_IER);
    XCalculatelayer2_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XCalculatelayer2_InterruptClear(XCalculatelayer2 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer2_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XCalculatelayer2_InterruptGetEnabled(XCalculatelayer2 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCalculatelayer2_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_IER);
}

u32 XCalculatelayer2_InterruptGetStatus(XCalculatelayer2 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCalculatelayer2_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER2_CTRL_BUS_ADDR_ISR);
}

