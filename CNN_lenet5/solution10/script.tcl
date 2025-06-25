############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project CNN_lenet5
set_top cnn_lenet
add_files cnn_lenet.cpp
add_files cnn_lenet.h
add_files input_data.h
add_files layer_weights.h
add_files sigmoid.cpp
add_files sigmoid.h
add_files -tb cnn_lenet_tb.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb input_data.h -cflags "-Wno-unknown-pragmas"
open_solution "solution10" -flow_target vivado
set_part {xc7z020-clg484-1}
create_clock -period 20 -name default
config_cosim -tool xsim
config_export -format ip_catalog -rtl verilog
source "./CNN_lenet5/solution10/directives.tcl"
csim_design -clean
csynth_design
cosim_design -tool xsim
export_design -rtl verilog -format ip_catalog
