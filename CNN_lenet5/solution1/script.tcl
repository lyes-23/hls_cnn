############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project CNN_lenet5
set_top Lenet_HW
add_files HW_CNN.cpp
add_files calculateLayer2.cpp
add_files calculateLayer2.h
add_files -tb lenet_hw_tb.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z010i-clg225-1L}
create_clock -period 50 -name default
config_cosim -tool xsim
source "./CNN_lenet5/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -tool xsim
export_design -format ip_catalog
