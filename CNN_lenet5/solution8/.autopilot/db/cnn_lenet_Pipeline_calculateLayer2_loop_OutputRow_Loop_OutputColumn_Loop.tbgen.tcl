set moduleName cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ Layer_Weights int 32 regular {axi_master 0}  }
	{ Layer_Neurons int 32 regular {axi_master 0}  }
	{ Layer1_Weights_CPU int 64 regular  }
	{ Layer1_Neurons_CPU int 64 regular  }
	{ Layer2_Neurons_CPU float 32 regular {array 1014 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "Layer_Weights", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "Layer1_Weights_CPU","offset": { "type": "dynamic","port_name": "Layer1_Weights_CPU","bundle": "control"},"direction": "READONLY"},{"cName": "Layer2_Weights_CPU","offset": { "type": "dynamic","port_name": "Layer2_Weights_CPU","bundle": "control"},"direction": "READONLY"},{"cName": "Layer3_Weights_CPU","offset": { "type": "dynamic","port_name": "Layer3_Weights_CPU","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "Layer_Neurons", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "Layer1_Neurons_CPU","offset": { "type": "dynamic","port_name": "Layer1_Neurons_CPU","bundle": "control"},"direction": "READONLY"},{"cName": "Layer4_Neurons_CPU","offset": { "type": "dynamic","port_name": "Layer4_Neurons_CPU","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "Layer1_Weights_CPU", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Layer1_Neurons_CPU", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "Layer2_Neurons_CPU", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 120
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_Layer_Weights_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_Layer_Weights_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_Layer_Weights_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_Layer_Weights_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_Layer_Weights_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_Layer_Weights_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_Layer_Weights_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_Layer_Weights_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_Layer_Weights_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_Layer_Weights_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_Layer_Weights_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_Layer_Weights_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_Layer_Weights_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_Layer_Weights_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_Layer_Weights_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_Layer_Weights_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_Layer_Weights_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_Layer_Weights_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_Layer_Weights_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_Layer_Weights_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_Layer_Weights_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_Layer_Weights_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_Layer_Weights_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_Layer_Weights_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_Layer_Weights_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_Layer_Weights_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_Layer_Weights_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_Layer_Weights_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_Layer_Weights_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_Layer_Weights_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_Layer_Weights_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_Layer_Weights_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_Layer_Weights_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_Layer_Weights_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_Layer_Weights_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_Layer_Weights_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_Layer_Weights_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_Layer_Weights_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_Layer_Weights_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_Layer_Weights_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_Layer_Weights_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_Layer_Weights_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_Layer_Weights_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_Layer_Weights_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_Layer_Weights_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_Layer_Weights_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_Layer_Neurons_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_Layer_Neurons_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_Layer_Neurons_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_Layer_Neurons_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_Layer_Neurons_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_Layer_Neurons_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_Layer_Neurons_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_Layer_Neurons_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_Layer_Neurons_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_Layer_Neurons_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_Layer_Neurons_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_Layer_Neurons_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_Layer_Neurons_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_Layer_Neurons_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_Layer_Neurons_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_Layer_Neurons_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_Layer_Neurons_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_Layer_Neurons_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_Layer_Neurons_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_Layer_Neurons_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_Layer_Neurons_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_Layer_Neurons_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_Layer_Neurons_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_Layer_Neurons_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_Layer_Neurons_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_Layer_Neurons_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_Layer_Neurons_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_Layer_Neurons_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_Layer_Neurons_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_Layer_Neurons_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_Layer_Neurons_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_Layer_Neurons_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_Layer_Neurons_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_Layer_Neurons_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_Layer_Neurons_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_Layer_Neurons_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_Layer_Neurons_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_Layer_Neurons_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_Layer_Neurons_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_Layer_Neurons_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_Layer_Neurons_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_Layer_Neurons_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_Layer_Neurons_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_Layer_Neurons_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_Layer_Neurons_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_Layer_Neurons_BUSER sc_in sc_lv 1 signal 1 } 
	{ Layer1_Weights_CPU sc_in sc_lv 64 signal 2 } 
	{ Layer1_Neurons_CPU sc_in sc_lv 64 signal 3 } 
	{ Layer2_Neurons_CPU_address0 sc_out sc_lv 10 signal 4 } 
	{ Layer2_Neurons_CPU_ce0 sc_out sc_logic 1 signal 4 } 
	{ Layer2_Neurons_CPU_we0 sc_out sc_logic 1 signal 4 } 
	{ Layer2_Neurons_CPU_d0 sc_out sc_lv 32 signal 4 } 
	{ grp_SIGMOID_fu_244_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_SIGMOID_fu_244_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_SIGMOID_fu_244_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_SIGMOID_fu_244_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_SIGMOID_fu_244_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_SIGMOID_fu_244_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_SIGMOID_fu_244_p_idle sc_in sc_logic 1 signal -1 } 
	{ grp_fu_473_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_473_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_473_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_473_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_473_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_477_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_477_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_477_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_477_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_Layer_Weights_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWVALID" }} , 
 	{ "name": "m_axi_Layer_Weights_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWREADY" }} , 
 	{ "name": "m_axi_Layer_Weights_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWADDR" }} , 
 	{ "name": "m_axi_Layer_Weights_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWID" }} , 
 	{ "name": "m_axi_Layer_Weights_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWLEN" }} , 
 	{ "name": "m_axi_Layer_Weights_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_Layer_Weights_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWBURST" }} , 
 	{ "name": "m_axi_Layer_Weights_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_Layer_Weights_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_Layer_Weights_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWPROT" }} , 
 	{ "name": "m_axi_Layer_Weights_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWQOS" }} , 
 	{ "name": "m_axi_Layer_Weights_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWREGION" }} , 
 	{ "name": "m_axi_Layer_Weights_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWUSER" }} , 
 	{ "name": "m_axi_Layer_Weights_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "WVALID" }} , 
 	{ "name": "m_axi_Layer_Weights_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "WREADY" }} , 
 	{ "name": "m_axi_Layer_Weights_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "WDATA" }} , 
 	{ "name": "m_axi_Layer_Weights_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "WSTRB" }} , 
 	{ "name": "m_axi_Layer_Weights_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "WLAST" }} , 
 	{ "name": "m_axi_Layer_Weights_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "WID" }} , 
 	{ "name": "m_axi_Layer_Weights_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "WUSER" }} , 
 	{ "name": "m_axi_Layer_Weights_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "ARVALID" }} , 
 	{ "name": "m_axi_Layer_Weights_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "ARREADY" }} , 
 	{ "name": "m_axi_Layer_Weights_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "ARADDR" }} , 
 	{ "name": "m_axi_Layer_Weights_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "ARID" }} , 
 	{ "name": "m_axi_Layer_Weights_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "ARLEN" }} , 
 	{ "name": "m_axi_Layer_Weights_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_Layer_Weights_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "ARBURST" }} , 
 	{ "name": "m_axi_Layer_Weights_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_Layer_Weights_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_Layer_Weights_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "ARPROT" }} , 
 	{ "name": "m_axi_Layer_Weights_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "ARQOS" }} , 
 	{ "name": "m_axi_Layer_Weights_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "ARREGION" }} , 
 	{ "name": "m_axi_Layer_Weights_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "ARUSER" }} , 
 	{ "name": "m_axi_Layer_Weights_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "RVALID" }} , 
 	{ "name": "m_axi_Layer_Weights_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "RREADY" }} , 
 	{ "name": "m_axi_Layer_Weights_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "RDATA" }} , 
 	{ "name": "m_axi_Layer_Weights_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "RLAST" }} , 
 	{ "name": "m_axi_Layer_Weights_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "RID" }} , 
 	{ "name": "m_axi_Layer_Weights_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_Layer_Weights_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "RUSER" }} , 
 	{ "name": "m_axi_Layer_Weights_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "RRESP" }} , 
 	{ "name": "m_axi_Layer_Weights_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "BVALID" }} , 
 	{ "name": "m_axi_Layer_Weights_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "BREADY" }} , 
 	{ "name": "m_axi_Layer_Weights_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "BRESP" }} , 
 	{ "name": "m_axi_Layer_Weights_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "BID" }} , 
 	{ "name": "m_axi_Layer_Weights_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "BUSER" }} , 
 	{ "name": "m_axi_Layer_Neurons_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWVALID" }} , 
 	{ "name": "m_axi_Layer_Neurons_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWREADY" }} , 
 	{ "name": "m_axi_Layer_Neurons_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWADDR" }} , 
 	{ "name": "m_axi_Layer_Neurons_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWID" }} , 
 	{ "name": "m_axi_Layer_Neurons_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWLEN" }} , 
 	{ "name": "m_axi_Layer_Neurons_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_Layer_Neurons_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWBURST" }} , 
 	{ "name": "m_axi_Layer_Neurons_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_Layer_Neurons_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_Layer_Neurons_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWPROT" }} , 
 	{ "name": "m_axi_Layer_Neurons_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWQOS" }} , 
 	{ "name": "m_axi_Layer_Neurons_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWREGION" }} , 
 	{ "name": "m_axi_Layer_Neurons_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWUSER" }} , 
 	{ "name": "m_axi_Layer_Neurons_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "WVALID" }} , 
 	{ "name": "m_axi_Layer_Neurons_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "WREADY" }} , 
 	{ "name": "m_axi_Layer_Neurons_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "WDATA" }} , 
 	{ "name": "m_axi_Layer_Neurons_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "WSTRB" }} , 
 	{ "name": "m_axi_Layer_Neurons_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "WLAST" }} , 
 	{ "name": "m_axi_Layer_Neurons_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "WID" }} , 
 	{ "name": "m_axi_Layer_Neurons_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "WUSER" }} , 
 	{ "name": "m_axi_Layer_Neurons_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "ARVALID" }} , 
 	{ "name": "m_axi_Layer_Neurons_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "ARREADY" }} , 
 	{ "name": "m_axi_Layer_Neurons_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "ARADDR" }} , 
 	{ "name": "m_axi_Layer_Neurons_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "ARID" }} , 
 	{ "name": "m_axi_Layer_Neurons_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "ARLEN" }} , 
 	{ "name": "m_axi_Layer_Neurons_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_Layer_Neurons_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "ARBURST" }} , 
 	{ "name": "m_axi_Layer_Neurons_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_Layer_Neurons_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_Layer_Neurons_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "ARPROT" }} , 
 	{ "name": "m_axi_Layer_Neurons_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "ARQOS" }} , 
 	{ "name": "m_axi_Layer_Neurons_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "ARREGION" }} , 
 	{ "name": "m_axi_Layer_Neurons_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "ARUSER" }} , 
 	{ "name": "m_axi_Layer_Neurons_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "RVALID" }} , 
 	{ "name": "m_axi_Layer_Neurons_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "RREADY" }} , 
 	{ "name": "m_axi_Layer_Neurons_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "RDATA" }} , 
 	{ "name": "m_axi_Layer_Neurons_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "RLAST" }} , 
 	{ "name": "m_axi_Layer_Neurons_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "RID" }} , 
 	{ "name": "m_axi_Layer_Neurons_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_Layer_Neurons_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "RUSER" }} , 
 	{ "name": "m_axi_Layer_Neurons_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "RRESP" }} , 
 	{ "name": "m_axi_Layer_Neurons_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "BVALID" }} , 
 	{ "name": "m_axi_Layer_Neurons_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "BREADY" }} , 
 	{ "name": "m_axi_Layer_Neurons_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "BRESP" }} , 
 	{ "name": "m_axi_Layer_Neurons_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "BID" }} , 
 	{ "name": "m_axi_Layer_Neurons_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "BUSER" }} , 
 	{ "name": "Layer1_Weights_CPU", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Layer1_Weights_CPU", "role": "default" }} , 
 	{ "name": "Layer1_Neurons_CPU", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Layer1_Neurons_CPU", "role": "default" }} , 
 	{ "name": "Layer2_Neurons_CPU_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "address0" }} , 
 	{ "name": "Layer2_Neurons_CPU_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "ce0" }} , 
 	{ "name": "Layer2_Neurons_CPU_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "we0" }} , 
 	{ "name": "Layer2_Neurons_CPU_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "d0" }} , 
 	{ "name": "grp_SIGMOID_fu_244_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_SIGMOID_fu_244_p_din1", "role": "default" }} , 
 	{ "name": "grp_SIGMOID_fu_244_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_SIGMOID_fu_244_p_dout0", "role": "default" }} , 
 	{ "name": "grp_SIGMOID_fu_244_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_SIGMOID_fu_244_p_ce", "role": "default" }} , 
 	{ "name": "grp_SIGMOID_fu_244_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_SIGMOID_fu_244_p_start", "role": "default" }} , 
 	{ "name": "grp_SIGMOID_fu_244_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_SIGMOID_fu_244_p_ready", "role": "default" }} , 
 	{ "name": "grp_SIGMOID_fu_244_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_SIGMOID_fu_244_p_done", "role": "default" }} , 
 	{ "name": "grp_SIGMOID_fu_244_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_SIGMOID_fu_244_p_idle", "role": "default" }} , 
 	{ "name": "grp_fu_473_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_473_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_473_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_473_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_473_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_473_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_473_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_473_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_473_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_473_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_477_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_477_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_477_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_477_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_477_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_477_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_477_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_477_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26463", "EstimateLatencyMax" : "26463",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Layer_Weights", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Layer_Weights_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "Layer_Weights_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "Layer_Neurons", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Layer_Neurons_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "Layer_Neurons_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "Layer1_Weights_CPU", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer1_Neurons_CPU", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer2_Neurons_CPU", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sigmoidLUT_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "26", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage19", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage19_subdone", "QuitState" : "ap_ST_fsm_pp0_stage19", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage19_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_3ns_8ns_10_1_1_U13", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_4ns_7ns_10_1_1_U14", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3ns_8ns_4ns_10_4_1_U15", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_4ns_4ns_10ns_10_4_1_U16", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop {
		Layer_Weights {Type I LastRead 34 FirstWrite -1}
		Layer_Neurons {Type I LastRead 34 FirstWrite -1}
		Layer1_Weights_CPU {Type I LastRead 0 FirstWrite -1}
		Layer1_Neurons_CPU {Type I LastRead 0 FirstWrite -1}
		Layer2_Neurons_CPU {Type O LastRead -1 FirstWrite 123}
		sigmoidLUT_1 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26463", "Max" : "26463"}
	, {"Name" : "Interval", "Min" : "26463", "Max" : "26463"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_Layer_Weights_AWVALID VALID 1 1 }  { m_axi_Layer_Weights_AWREADY READY 0 1 }  { m_axi_Layer_Weights_AWADDR ADDR 1 64 }  { m_axi_Layer_Weights_AWID ID 1 1 }  { m_axi_Layer_Weights_AWLEN SIZE 1 32 }  { m_axi_Layer_Weights_AWSIZE BURST 1 3 }  { m_axi_Layer_Weights_AWBURST LOCK 1 2 }  { m_axi_Layer_Weights_AWLOCK CACHE 1 2 }  { m_axi_Layer_Weights_AWCACHE PROT 1 4 }  { m_axi_Layer_Weights_AWPROT QOS 1 3 }  { m_axi_Layer_Weights_AWQOS REGION 1 4 }  { m_axi_Layer_Weights_AWREGION USER 1 4 }  { m_axi_Layer_Weights_AWUSER DATA 1 1 }  { m_axi_Layer_Weights_WVALID VALID 1 1 }  { m_axi_Layer_Weights_WREADY READY 0 1 }  { m_axi_Layer_Weights_WDATA FIFONUM 1 32 }  { m_axi_Layer_Weights_WSTRB STRB 1 4 }  { m_axi_Layer_Weights_WLAST LAST 1 1 }  { m_axi_Layer_Weights_WID ID 1 1 }  { m_axi_Layer_Weights_WUSER DATA 1 1 }  { m_axi_Layer_Weights_ARVALID VALID 1 1 }  { m_axi_Layer_Weights_ARREADY READY 0 1 }  { m_axi_Layer_Weights_ARADDR ADDR 1 64 }  { m_axi_Layer_Weights_ARID ID 1 1 }  { m_axi_Layer_Weights_ARLEN SIZE 1 32 }  { m_axi_Layer_Weights_ARSIZE BURST 1 3 }  { m_axi_Layer_Weights_ARBURST LOCK 1 2 }  { m_axi_Layer_Weights_ARLOCK CACHE 1 2 }  { m_axi_Layer_Weights_ARCACHE PROT 1 4 }  { m_axi_Layer_Weights_ARPROT QOS 1 3 }  { m_axi_Layer_Weights_ARQOS REGION 1 4 }  { m_axi_Layer_Weights_ARREGION USER 1 4 }  { m_axi_Layer_Weights_ARUSER DATA 1 1 }  { m_axi_Layer_Weights_RVALID VALID 0 1 }  { m_axi_Layer_Weights_RREADY READY 1 1 }  { m_axi_Layer_Weights_RDATA FIFONUM 0 32 }  { m_axi_Layer_Weights_RLAST LAST 0 1 }  { m_axi_Layer_Weights_RID ID 0 1 }  { m_axi_Layer_Weights_RFIFONUM LEN 0 9 }  { m_axi_Layer_Weights_RUSER DATA 0 1 }  { m_axi_Layer_Weights_RRESP RESP 0 2 }  { m_axi_Layer_Weights_BVALID VALID 0 1 }  { m_axi_Layer_Weights_BREADY READY 1 1 }  { m_axi_Layer_Weights_BRESP RESP 0 2 }  { m_axi_Layer_Weights_BID ID 0 1 }  { m_axi_Layer_Weights_BUSER DATA 0 1 } } }
	 { m_axi {  { m_axi_Layer_Neurons_AWVALID VALID 1 1 }  { m_axi_Layer_Neurons_AWREADY READY 0 1 }  { m_axi_Layer_Neurons_AWADDR ADDR 1 64 }  { m_axi_Layer_Neurons_AWID ID 1 1 }  { m_axi_Layer_Neurons_AWLEN SIZE 1 32 }  { m_axi_Layer_Neurons_AWSIZE BURST 1 3 }  { m_axi_Layer_Neurons_AWBURST LOCK 1 2 }  { m_axi_Layer_Neurons_AWLOCK CACHE 1 2 }  { m_axi_Layer_Neurons_AWCACHE PROT 1 4 }  { m_axi_Layer_Neurons_AWPROT QOS 1 3 }  { m_axi_Layer_Neurons_AWQOS REGION 1 4 }  { m_axi_Layer_Neurons_AWREGION USER 1 4 }  { m_axi_Layer_Neurons_AWUSER DATA 1 1 }  { m_axi_Layer_Neurons_WVALID VALID 1 1 }  { m_axi_Layer_Neurons_WREADY READY 0 1 }  { m_axi_Layer_Neurons_WDATA FIFONUM 1 32 }  { m_axi_Layer_Neurons_WSTRB STRB 1 4 }  { m_axi_Layer_Neurons_WLAST LAST 1 1 }  { m_axi_Layer_Neurons_WID ID 1 1 }  { m_axi_Layer_Neurons_WUSER DATA 1 1 }  { m_axi_Layer_Neurons_ARVALID VALID 1 1 }  { m_axi_Layer_Neurons_ARREADY READY 0 1 }  { m_axi_Layer_Neurons_ARADDR ADDR 1 64 }  { m_axi_Layer_Neurons_ARID ID 1 1 }  { m_axi_Layer_Neurons_ARLEN SIZE 1 32 }  { m_axi_Layer_Neurons_ARSIZE BURST 1 3 }  { m_axi_Layer_Neurons_ARBURST LOCK 1 2 }  { m_axi_Layer_Neurons_ARLOCK CACHE 1 2 }  { m_axi_Layer_Neurons_ARCACHE PROT 1 4 }  { m_axi_Layer_Neurons_ARPROT QOS 1 3 }  { m_axi_Layer_Neurons_ARQOS REGION 1 4 }  { m_axi_Layer_Neurons_ARREGION USER 1 4 }  { m_axi_Layer_Neurons_ARUSER DATA 1 1 }  { m_axi_Layer_Neurons_RVALID VALID 0 1 }  { m_axi_Layer_Neurons_RREADY READY 1 1 }  { m_axi_Layer_Neurons_RDATA FIFONUM 0 32 }  { m_axi_Layer_Neurons_RLAST LAST 0 1 }  { m_axi_Layer_Neurons_RID ID 0 1 }  { m_axi_Layer_Neurons_RFIFONUM LEN 0 9 }  { m_axi_Layer_Neurons_RUSER DATA 0 1 }  { m_axi_Layer_Neurons_RRESP RESP 0 2 }  { m_axi_Layer_Neurons_BVALID VALID 0 1 }  { m_axi_Layer_Neurons_BREADY READY 1 1 }  { m_axi_Layer_Neurons_BRESP RESP 0 2 }  { m_axi_Layer_Neurons_BID ID 0 1 }  { m_axi_Layer_Neurons_BUSER DATA 0 1 } } }
	Layer1_Weights_CPU { ap_none {  { Layer1_Weights_CPU in_data 0 64 } } }
	Layer1_Neurons_CPU { ap_none {  { Layer1_Neurons_CPU in_data 0 64 } } }
	Layer2_Neurons_CPU { ap_memory {  { Layer2_Neurons_CPU_address0 mem_address 1 10 }  { Layer2_Neurons_CPU_ce0 mem_ce 1 1 }  { Layer2_Neurons_CPU_we0 mem_we 1 1 }  { Layer2_Neurons_CPU_d0 mem_din 1 32 } } }
}
