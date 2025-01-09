############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project CNN_lenet5
set_top calculateLayer3
add_files calculateLayer2.h
add_files calculateLayer3.cpp
add_files calculateLayer3.h
add_files -tb calculateLayer3_tb.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb input_data.h -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z010i-clg225-1L}
create_clock -period 20 -name default
config_cosim -tool xsim
source "./CNN_lenet5/solution1/directives.tcl"
csynth_design
