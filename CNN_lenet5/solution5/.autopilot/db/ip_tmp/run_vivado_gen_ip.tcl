create_project prj -part xc7z020-clg484-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "C:/Users/TRETEC/OneDrive/Documents/Master2/HLS-FPGA/cnn_hls/CNN_lenet5/solution5/syn/verilog/calculateLayer2_fadd_32ns_32ns_32_5_full_dsp_1_ip.tcl"
source "C:/Users/TRETEC/OneDrive/Documents/Master2/HLS-FPGA/cnn_hls/CNN_lenet5/solution5/syn/verilog/calculateLayer2_fcmp_32ns_32ns_1_2_no_dsp_1_ip.tcl"
source "C:/Users/TRETEC/OneDrive/Documents/Master2/HLS-FPGA/cnn_hls/CNN_lenet5/solution5/syn/verilog/calculateLayer2_fdiv_32ns_32ns_32_16_no_dsp_1_ip.tcl"
source "C:/Users/TRETEC/OneDrive/Documents/Master2/HLS-FPGA/cnn_hls/CNN_lenet5/solution5/syn/verilog/calculateLayer2_fmul_32ns_32ns_32_4_max_dsp_1_ip.tcl"
source "C:/Users/TRETEC/OneDrive/Documents/Master2/HLS-FPGA/cnn_hls/CNN_lenet5/solution5/syn/verilog/calculateLayer2_fmul_32ns_32ns_32_4_max_dsp_1_x_ip.tcl"
