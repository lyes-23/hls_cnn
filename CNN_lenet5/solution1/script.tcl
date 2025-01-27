############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project CNN_lenet5
set_top calculateLayer4
add_files calculateLayer2.h
add_files calculateLayer3.cpp
add_files calculateLayer3.h
add_files calculateLayer4.cpp
add_files calculateLayer4.h
add_files -tb calculateLayer4_tb.cpp
add_files -tb input_data.h -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_cosim -tool xsim -trace_level port
#source "./CNN_lenet5/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level port
export_design -format ip_catalog
