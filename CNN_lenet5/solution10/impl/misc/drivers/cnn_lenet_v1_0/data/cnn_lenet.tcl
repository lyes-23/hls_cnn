# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
# Tool Version Limit: 2023.10
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XCnn_lenet" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_CTRL_BUS_BASEADDR" \
        "C_S_AXI_CTRL_BUS_HIGHADDR" \
        "C_S_AXI_LAYER_NEURONS_BASEADDR" \
        "C_S_AXI_LAYER_NEURONS_HIGHADDR"

    xdefine_config_file $drv_handle "xcnn_lenet_g.c" "XCnn_lenet" \
        "DEVICE_ID" \
        "C_S_AXI_CTRL_BUS_BASEADDR" \
        "C_S_AXI_LAYER_NEURONS_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XCnn_lenet" \
        "DEVICE_ID" \
        "C_S_AXI_CTRL_BUS_BASEADDR" \
        "C_S_AXI_CTRL_BUS_HIGHADDR" \
        "C_S_AXI_LAYER_NEURONS_BASEADDR" \
        "C_S_AXI_LAYER_NEURONS_HIGHADDR"
}

