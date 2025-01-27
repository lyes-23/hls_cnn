// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcalculatelayer4.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCalculatelayer4_CfgInitialize(XCalculatelayer4 *InstancePtr, XCalculatelayer4_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCalculatelayer4_Start(XCalculatelayer4 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer4_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER4_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XCalculatelayer4_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER4_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCalculatelayer4_IsDone(XCalculatelayer4 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer4_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER4_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCalculatelayer4_IsIdle(XCalculatelayer4 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer4_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER4_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCalculatelayer4_IsReady(XCalculatelayer4 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer4_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER4_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCalculatelayer4_EnableAutoRestart(XCalculatelayer4 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer4_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER4_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XCalculatelayer4_DisableAutoRestart(XCalculatelayer4 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer4_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER4_CTRL_BUS_ADDR_AP_CTRL, 0);
}

u32 XCalculatelayer4_Get_Layer4_Neurons_CPU_BaseAddress(XCalculatelayer4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER4_NEURONS_CPU_BASE);
}

u32 XCalculatelayer4_Get_Layer4_Neurons_CPU_HighAddress(XCalculatelayer4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER4_NEURONS_CPU_HIGH);
}

u32 XCalculatelayer4_Get_Layer4_Neurons_CPU_TotalBytes(XCalculatelayer4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCALCULATELAYER4_CONTROL_ADDR_LAYER4_NEURONS_CPU_HIGH - XCALCULATELAYER4_CONTROL_ADDR_LAYER4_NEURONS_CPU_BASE + 1);
}

u32 XCalculatelayer4_Get_Layer4_Neurons_CPU_BitWidth(XCalculatelayer4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCALCULATELAYER4_CONTROL_WIDTH_LAYER4_NEURONS_CPU;
}

u32 XCalculatelayer4_Get_Layer4_Neurons_CPU_Depth(XCalculatelayer4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCALCULATELAYER4_CONTROL_DEPTH_LAYER4_NEURONS_CPU;
}

u32 XCalculatelayer4_Write_Layer4_Neurons_CPU_Words(XCalculatelayer4 *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCALCULATELAYER4_CONTROL_ADDR_LAYER4_NEURONS_CPU_HIGH - XCALCULATELAYER4_CONTROL_ADDR_LAYER4_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER4_NEURONS_CPU_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCalculatelayer4_Read_Layer4_Neurons_CPU_Words(XCalculatelayer4 *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCALCULATELAYER4_CONTROL_ADDR_LAYER4_NEURONS_CPU_HIGH - XCALCULATELAYER4_CONTROL_ADDR_LAYER4_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER4_NEURONS_CPU_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCalculatelayer4_Write_Layer4_Neurons_CPU_Bytes(XCalculatelayer4 *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCALCULATELAYER4_CONTROL_ADDR_LAYER4_NEURONS_CPU_HIGH - XCALCULATELAYER4_CONTROL_ADDR_LAYER4_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER4_NEURONS_CPU_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCalculatelayer4_Read_Layer4_Neurons_CPU_Bytes(XCalculatelayer4 *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCALCULATELAYER4_CONTROL_ADDR_LAYER4_NEURONS_CPU_HIGH - XCALCULATELAYER4_CONTROL_ADDR_LAYER4_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER4_NEURONS_CPU_BASE + offset + i);
    }
    return length;
}

u32 XCalculatelayer4_Get_Layer3_Neurons_CPU_BaseAddress(XCalculatelayer4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE);
}

u32 XCalculatelayer4_Get_Layer3_Neurons_CPU_HighAddress(XCalculatelayer4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER3_NEURONS_CPU_HIGH);
}

u32 XCalculatelayer4_Get_Layer3_Neurons_CPU_TotalBytes(XCalculatelayer4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCALCULATELAYER4_CONTROL_ADDR_LAYER3_NEURONS_CPU_HIGH - XCALCULATELAYER4_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + 1);
}

u32 XCalculatelayer4_Get_Layer3_Neurons_CPU_BitWidth(XCalculatelayer4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCALCULATELAYER4_CONTROL_WIDTH_LAYER3_NEURONS_CPU;
}

u32 XCalculatelayer4_Get_Layer3_Neurons_CPU_Depth(XCalculatelayer4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCALCULATELAYER4_CONTROL_DEPTH_LAYER3_NEURONS_CPU;
}

u32 XCalculatelayer4_Write_Layer3_Neurons_CPU_Words(XCalculatelayer4 *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCALCULATELAYER4_CONTROL_ADDR_LAYER3_NEURONS_CPU_HIGH - XCALCULATELAYER4_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCalculatelayer4_Read_Layer3_Neurons_CPU_Words(XCalculatelayer4 *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCALCULATELAYER4_CONTROL_ADDR_LAYER3_NEURONS_CPU_HIGH - XCALCULATELAYER4_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCalculatelayer4_Write_Layer3_Neurons_CPU_Bytes(XCalculatelayer4 *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCALCULATELAYER4_CONTROL_ADDR_LAYER3_NEURONS_CPU_HIGH - XCALCULATELAYER4_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCalculatelayer4_Read_Layer3_Neurons_CPU_Bytes(XCalculatelayer4 *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCALCULATELAYER4_CONTROL_ADDR_LAYER3_NEURONS_CPU_HIGH - XCALCULATELAYER4_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + offset + i);
    }
    return length;
}

u32 XCalculatelayer4_Get_Layer3_Weights_CPU_BaseAddress(XCalculatelayer4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER3_WEIGHTS_CPU_BASE);
}

u32 XCalculatelayer4_Get_Layer3_Weights_CPU_HighAddress(XCalculatelayer4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER3_WEIGHTS_CPU_HIGH);
}

u32 XCalculatelayer4_Get_Layer3_Weights_CPU_TotalBytes(XCalculatelayer4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCALCULATELAYER4_CONTROL_ADDR_LAYER3_WEIGHTS_CPU_HIGH - XCALCULATELAYER4_CONTROL_ADDR_LAYER3_WEIGHTS_CPU_BASE + 1);
}

u32 XCalculatelayer4_Get_Layer3_Weights_CPU_BitWidth(XCalculatelayer4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCALCULATELAYER4_CONTROL_WIDTH_LAYER3_WEIGHTS_CPU;
}

u32 XCalculatelayer4_Get_Layer3_Weights_CPU_Depth(XCalculatelayer4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCALCULATELAYER4_CONTROL_DEPTH_LAYER3_WEIGHTS_CPU;
}

u32 XCalculatelayer4_Write_Layer3_Weights_CPU_Words(XCalculatelayer4 *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCALCULATELAYER4_CONTROL_ADDR_LAYER3_WEIGHTS_CPU_HIGH - XCALCULATELAYER4_CONTROL_ADDR_LAYER3_WEIGHTS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER3_WEIGHTS_CPU_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCalculatelayer4_Read_Layer3_Weights_CPU_Words(XCalculatelayer4 *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCALCULATELAYER4_CONTROL_ADDR_LAYER3_WEIGHTS_CPU_HIGH - XCALCULATELAYER4_CONTROL_ADDR_LAYER3_WEIGHTS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER3_WEIGHTS_CPU_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCalculatelayer4_Write_Layer3_Weights_CPU_Bytes(XCalculatelayer4 *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCALCULATELAYER4_CONTROL_ADDR_LAYER3_WEIGHTS_CPU_HIGH - XCALCULATELAYER4_CONTROL_ADDR_LAYER3_WEIGHTS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER3_WEIGHTS_CPU_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCalculatelayer4_Read_Layer3_Weights_CPU_Bytes(XCalculatelayer4 *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCALCULATELAYER4_CONTROL_ADDR_LAYER3_WEIGHTS_CPU_HIGH - XCALCULATELAYER4_CONTROL_ADDR_LAYER3_WEIGHTS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER4_CONTROL_ADDR_LAYER3_WEIGHTS_CPU_BASE + offset + i);
    }
    return length;
}

void XCalculatelayer4_InterruptGlobalEnable(XCalculatelayer4 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer4_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER4_CTRL_BUS_ADDR_GIE, 1);
}

void XCalculatelayer4_InterruptGlobalDisable(XCalculatelayer4 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer4_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER4_CTRL_BUS_ADDR_GIE, 0);
}

void XCalculatelayer4_InterruptEnable(XCalculatelayer4 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCalculatelayer4_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER4_CTRL_BUS_ADDR_IER);
    XCalculatelayer4_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER4_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XCalculatelayer4_InterruptDisable(XCalculatelayer4 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCalculatelayer4_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER4_CTRL_BUS_ADDR_IER);
    XCalculatelayer4_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER4_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XCalculatelayer4_InterruptClear(XCalculatelayer4 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer4_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER4_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XCalculatelayer4_InterruptGetEnabled(XCalculatelayer4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCalculatelayer4_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER4_CTRL_BUS_ADDR_IER);
}

u32 XCalculatelayer4_InterruptGetStatus(XCalculatelayer4 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCalculatelayer4_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER4_CTRL_BUS_ADDR_ISR);
}

