
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set Layer1_Neurons_CPU__Layer2_Neurons_CPU_group [add_wave_group Layer1_Neurons_CPU__Layer2_Neurons_CPU(axi_master) -into $cinoutgroup]
set rdata_group [add_wave_group "Read Channel" -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU_group]
set wdata_group [add_wave_group "Write Channel" -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU_group]
set ctrl_group [add_wave_group "Handshakes" -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU_group]
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_BUSER -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_BID -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_BRESP -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_RRESP -into $rdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_RUSER -into $rdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_RID -into $rdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_RDATA -into $rdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_ARUSER -into $rdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_ARREGION -into $rdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_ARQOS -into $rdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_ARPROT -into $rdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_ARBURST -into $rdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_ARLEN -into $rdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_ARID -into $rdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_ARADDR -into $rdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_WUSER -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_WID -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_WSTRB -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_WDATA -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_AWUSER -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_AWREGION -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_AWQOS -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_AWPROT -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_AWBURST -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_AWLEN -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_AWID -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_AWADDR -into $wdata_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/m_axi_gmem_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group [add_wave_group Layer1_Neurons_CPU__Layer2_Neurons_CPU__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/interrupt -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/s_axi_CTRL_bus_BRESP -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/s_axi_CTRL_bus_BREADY -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/s_axi_CTRL_bus_BVALID -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/s_axi_CTRL_bus_RRESP -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/s_axi_CTRL_bus_RDATA -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/s_axi_CTRL_bus_RREADY -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/s_axi_CTRL_bus_RVALID -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/s_axi_CTRL_bus_ARREADY -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/s_axi_CTRL_bus_ARVALID -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/s_axi_CTRL_bus_ARADDR -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/s_axi_CTRL_bus_WSTRB -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/s_axi_CTRL_bus_WDATA -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/s_axi_CTRL_bus_WREADY -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/s_axi_CTRL_bus_WVALID -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/s_axi_CTRL_bus_AWREADY -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/s_axi_CTRL_bus_AWVALID -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/s_axi_CTRL_bus_AWADDR -into $Layer1_Neurons_CPU__Layer2_Neurons_CPU__return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(bram) -into $cinputgroup]
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/Layer1_Weights_CPU_Rst_B -into $return_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/Layer1_Weights_CPU_Clk_B -into $return_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/Layer1_Weights_CPU_Dout_B -into $return_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/Layer1_Weights_CPU_Din_B -into $return_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/Layer1_Weights_CPU_WEN_B -into $return_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/Layer1_Weights_CPU_EN_B -into $return_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/Layer1_Weights_CPU_Addr_B -into $return_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/Layer1_Weights_CPU_Rst_A -into $return_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/Layer1_Weights_CPU_Clk_A -into $return_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/Layer1_Weights_CPU_Dout_A -into $return_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/Layer1_Weights_CPU_Din_A -into $return_group -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/Layer1_Weights_CPU_WEN_A -into $return_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/Layer1_Weights_CPU_EN_A -into $return_group -color #ffff00 -radix hex
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/Layer1_Weights_CPU_Addr_A -into $return_group -radix hex
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_calculateLayer2_top/AESL_inst_calculateLayer2/ap_clk -into $clockgroup
save_wave_config calculateLayer2.wcfg
run all
quit

