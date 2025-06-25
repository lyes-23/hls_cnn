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

    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->Layer_neurons_BaseAddress = ConfigPtr->Layer_neurons_BaseAddress;
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

u32 XCnn_lenet_Get_Layer1_Neurons_CPU_BaseAddress(XCnn_lenet *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Layer_neurons_BaseAddress + XCNN_LENET_LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_BASE);
}

u32 XCnn_lenet_Get_Layer1_Neurons_CPU_HighAddress(XCnn_lenet *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Layer_neurons_BaseAddress + XCNN_LENET_LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_HIGH);
}

u32 XCnn_lenet_Get_Layer1_Neurons_CPU_TotalBytes(XCnn_lenet *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_LENET_LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_HIGH - XCNN_LENET_LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_BASE + 1);
}

u32 XCnn_lenet_Get_Layer1_Neurons_CPU_BitWidth(XCnn_lenet *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_LENET_LAYER_NEURONS_WIDTH_LAYER1_NEURONS_CPU;
}

u32 XCnn_lenet_Get_Layer1_Neurons_CPU_Depth(XCnn_lenet *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_LENET_LAYER_NEURONS_DEPTH_LAYER1_NEURONS_CPU;
}

u32 XCnn_lenet_Write_Layer1_Neurons_CPU_Words(XCnn_lenet *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_LENET_LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_HIGH - XCNN_LENET_LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Layer_neurons_BaseAddress + XCNN_LENET_LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_lenet_Read_Layer1_Neurons_CPU_Words(XCnn_lenet *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_LENET_LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_HIGH - XCNN_LENET_LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Layer_neurons_BaseAddress + XCNN_LENET_LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_lenet_Write_Layer1_Neurons_CPU_Bytes(XCnn_lenet *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_LENET_LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_HIGH - XCNN_LENET_LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Layer_neurons_BaseAddress + XCNN_LENET_LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_lenet_Read_Layer1_Neurons_CPU_Bytes(XCnn_lenet *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_LENET_LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_HIGH - XCNN_LENET_LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Layer_neurons_BaseAddress + XCNN_LENET_LAYER_NEURONS_ADDR_LAYER1_NEURONS_CPU_BASE + offset + i);
    }
    return length;
}

u32 XCnn_lenet_Get_Layer3_Neurons_CPU_BaseAddress(XCnn_lenet *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Layer_neurons_BaseAddress + XCNN_LENET_LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_BASE);
}

u32 XCnn_lenet_Get_Layer3_Neurons_CPU_HighAddress(XCnn_lenet *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Layer_neurons_BaseAddress + XCNN_LENET_LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_HIGH);
}

u32 XCnn_lenet_Get_Layer3_Neurons_CPU_TotalBytes(XCnn_lenet *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCNN_LENET_LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_HIGH - XCNN_LENET_LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_BASE + 1);
}

u32 XCnn_lenet_Get_Layer3_Neurons_CPU_BitWidth(XCnn_lenet *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_LENET_LAYER_NEURONS_WIDTH_LAYER3_NEURONS_CPU;
}

u32 XCnn_lenet_Get_Layer3_Neurons_CPU_Depth(XCnn_lenet *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCNN_LENET_LAYER_NEURONS_DEPTH_LAYER3_NEURONS_CPU;
}

u32 XCnn_lenet_Write_Layer3_Neurons_CPU_Words(XCnn_lenet *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_LENET_LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_HIGH - XCNN_LENET_LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Layer_neurons_BaseAddress + XCNN_LENET_LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCnn_lenet_Read_Layer3_Neurons_CPU_Words(XCnn_lenet *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCNN_LENET_LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_HIGH - XCNN_LENET_LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Layer_neurons_BaseAddress + XCNN_LENET_LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCnn_lenet_Write_Layer3_Neurons_CPU_Bytes(XCnn_lenet *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_LENET_LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_HIGH - XCNN_LENET_LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Layer_neurons_BaseAddress + XCNN_LENET_LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCnn_lenet_Read_Layer3_Neurons_CPU_Bytes(XCnn_lenet *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCNN_LENET_LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_HIGH - XCNN_LENET_LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Layer_neurons_BaseAddress + XCNN_LENET_LAYER_NEURONS_ADDR_LAYER3_NEURONS_CPU_BASE + offset + i);
    }
    return length;
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

