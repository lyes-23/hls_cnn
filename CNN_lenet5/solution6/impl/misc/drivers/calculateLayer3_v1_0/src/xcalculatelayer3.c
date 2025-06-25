// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xcalculatelayer3.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCalculatelayer3_CfgInitialize(XCalculatelayer3 *InstancePtr, XCalculatelayer3_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCalculatelayer3_Start(XCalculatelayer3 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer3_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER3_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XCalculatelayer3_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER3_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCalculatelayer3_IsDone(XCalculatelayer3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer3_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER3_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCalculatelayer3_IsIdle(XCalculatelayer3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer3_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER3_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCalculatelayer3_IsReady(XCalculatelayer3 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCalculatelayer3_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER3_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCalculatelayer3_EnableAutoRestart(XCalculatelayer3 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer3_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER3_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XCalculatelayer3_DisableAutoRestart(XCalculatelayer3 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer3_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER3_CTRL_BUS_ADDR_AP_CTRL, 0);
}

u32 XCalculatelayer3_Get_Layer2_Neurons_CPU_BaseAddress(XCalculatelayer3 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_BASE);
}

u32 XCalculatelayer3_Get_Layer2_Neurons_CPU_HighAddress(XCalculatelayer3 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_HIGH);
}

u32 XCalculatelayer3_Get_Layer2_Neurons_CPU_TotalBytes(XCalculatelayer3 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_HIGH - XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_BASE + 1);
}

u32 XCalculatelayer3_Get_Layer2_Neurons_CPU_BitWidth(XCalculatelayer3 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCALCULATELAYER3_CONTROL_WIDTH_LAYER2_NEURONS_CPU;
}

u32 XCalculatelayer3_Get_Layer2_Neurons_CPU_Depth(XCalculatelayer3 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCALCULATELAYER3_CONTROL_DEPTH_LAYER2_NEURONS_CPU;
}

u32 XCalculatelayer3_Write_Layer2_Neurons_CPU_Words(XCalculatelayer3 *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_HIGH - XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCalculatelayer3_Read_Layer2_Neurons_CPU_Words(XCalculatelayer3 *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_HIGH - XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCalculatelayer3_Write_Layer2_Neurons_CPU_Bytes(XCalculatelayer3 *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_HIGH - XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCalculatelayer3_Read_Layer2_Neurons_CPU_Bytes(XCalculatelayer3 *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_HIGH - XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER3_CONTROL_ADDR_LAYER2_NEURONS_CPU_BASE + offset + i);
    }
    return length;
}

u32 XCalculatelayer3_Get_Layer3_Neurons_CPU_BaseAddress(XCalculatelayer3 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE);
}

u32 XCalculatelayer3_Get_Layer3_Neurons_CPU_HighAddress(XCalculatelayer3 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_HIGH);
}

u32 XCalculatelayer3_Get_Layer3_Neurons_CPU_TotalBytes(XCalculatelayer3 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_HIGH - XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + 1);
}

u32 XCalculatelayer3_Get_Layer3_Neurons_CPU_BitWidth(XCalculatelayer3 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCALCULATELAYER3_CONTROL_WIDTH_LAYER3_NEURONS_CPU;
}

u32 XCalculatelayer3_Get_Layer3_Neurons_CPU_Depth(XCalculatelayer3 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCALCULATELAYER3_CONTROL_DEPTH_LAYER3_NEURONS_CPU;
}

u32 XCalculatelayer3_Write_Layer3_Neurons_CPU_Words(XCalculatelayer3 *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_HIGH - XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XCalculatelayer3_Read_Layer3_Neurons_CPU_Words(XCalculatelayer3 *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_HIGH - XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + (offset + i)*4);
    }
    return length;
}

u32 XCalculatelayer3_Write_Layer3_Neurons_CPU_Bytes(XCalculatelayer3 *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_HIGH - XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XCalculatelayer3_Read_Layer3_Neurons_CPU_Bytes(XCalculatelayer3 *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_HIGH - XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XCALCULATELAYER3_CONTROL_ADDR_LAYER3_NEURONS_CPU_BASE + offset + i);
    }
    return length;
}

void XCalculatelayer3_InterruptGlobalEnable(XCalculatelayer3 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer3_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER3_CTRL_BUS_ADDR_GIE, 1);
}

void XCalculatelayer3_InterruptGlobalDisable(XCalculatelayer3 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer3_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER3_CTRL_BUS_ADDR_GIE, 0);
}

void XCalculatelayer3_InterruptEnable(XCalculatelayer3 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCalculatelayer3_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER3_CTRL_BUS_ADDR_IER);
    XCalculatelayer3_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER3_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XCalculatelayer3_InterruptDisable(XCalculatelayer3 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCalculatelayer3_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER3_CTRL_BUS_ADDR_IER);
    XCalculatelayer3_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER3_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XCalculatelayer3_InterruptClear(XCalculatelayer3 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCalculatelayer3_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER3_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XCalculatelayer3_InterruptGetEnabled(XCalculatelayer3 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCalculatelayer3_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER3_CTRL_BUS_ADDR_IER);
}

u32 XCalculatelayer3_InterruptGetStatus(XCalculatelayer3 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCalculatelayer3_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XCALCULATELAYER3_CTRL_BUS_ADDR_ISR);
}

