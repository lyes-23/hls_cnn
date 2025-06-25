set moduleName cnn_lenet_Pipeline_col_loop2_kernelRow_Loop2_kernelCol_loop2
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
set C_modelName {cnn_lenet_Pipeline_col_loop2_kernelRow_Loop2_kernelCol_loop2}
set C_modelType { void 0 }
set C_modelArgList {
	{ somme float 32 regular  }
	{ Layer_Weights int 32 regular {axi_master 0}  }
	{ sext_ln75 int 62 regular  }
	{ Layer3_Neurons_CPU float 32 regular {array 1250 { 1 3 } 1 1 }  }
	{ somme_61_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "somme", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Layer_Weights", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "Layer1_Weights_CPU","offset": { "type": "dynamic","port_name": "Layer1_Weights_CPU","bundle": "control"},"direction": "READONLY"},{"cName": "Layer2_Weights_CPU","offset": { "type": "dynamic","port_name": "Layer2_Weights_CPU","bundle": "control"},"direction": "READONLY"},{"cName": "Layer3_Weights_CPU","offset": { "type": "dynamic","port_name": "Layer3_Weights_CPU","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln75", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "Layer3_Neurons_CPU", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "somme_61_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 68
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ somme sc_in sc_lv 32 signal 0 } 
	{ m_axi_Layer_Weights_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_Layer_Weights_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_Layer_Weights_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_Layer_Weights_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_Layer_Weights_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_Layer_Weights_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_Layer_Weights_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_Layer_Weights_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_Layer_Weights_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_Layer_Weights_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_Layer_Weights_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_Layer_Weights_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_Layer_Weights_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_Layer_Weights_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_Layer_Weights_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_Layer_Weights_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_Layer_Weights_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_Layer_Weights_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_Layer_Weights_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_Layer_Weights_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_Layer_Weights_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_Layer_Weights_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_Layer_Weights_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_Layer_Weights_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_Layer_Weights_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_Layer_Weights_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_Layer_Weights_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_Layer_Weights_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_Layer_Weights_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_Layer_Weights_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_Layer_Weights_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_Layer_Weights_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_Layer_Weights_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_Layer_Weights_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_Layer_Weights_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_Layer_Weights_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_Layer_Weights_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_Layer_Weights_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_Layer_Weights_RFIFONUM sc_in sc_lv 9 signal 1 } 
	{ m_axi_Layer_Weights_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_Layer_Weights_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_Layer_Weights_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_Layer_Weights_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_Layer_Weights_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_Layer_Weights_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_Layer_Weights_BUSER sc_in sc_lv 1 signal 1 } 
	{ sext_ln75 sc_in sc_lv 62 signal 2 } 
	{ Layer3_Neurons_CPU_address0 sc_out sc_lv 11 signal 3 } 
	{ Layer3_Neurons_CPU_ce0 sc_out sc_logic 1 signal 3 } 
	{ Layer3_Neurons_CPU_q0 sc_in sc_lv 32 signal 3 } 
	{ somme_61_out sc_out sc_lv 32 signal 4 } 
	{ somme_61_out_ap_vld sc_out sc_logic 1 outvld 4 } 
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
 	{ "name": "somme", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "somme", "role": "default" }} , 
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
 	{ "name": "sext_ln75", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln75", "role": "default" }} , 
 	{ "name": "Layer3_Neurons_CPU_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "address0" }} , 
 	{ "name": "Layer3_Neurons_CPU_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "ce0" }} , 
 	{ "name": "Layer3_Neurons_CPU_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "q0" }} , 
 	{ "name": "somme_61_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "somme_61_out", "role": "default" }} , 
 	{ "name": "somme_61_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "somme_61_out", "role": "ap_vld" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "cnn_lenet_Pipeline_col_loop2_kernelRow_Loop2_kernelCol_loop2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3759", "EstimateLatencyMax" : "3759",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "somme", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer_Weights", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Layer_Weights_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln75", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer3_Neurons_CPU", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "somme_61_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "col_loop2_kernelRow_Loop2_kernelCol_loop2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_6ns_5ns_3ns_11_4_1_U40", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn_lenet_Pipeline_col_loop2_kernelRow_Loop2_kernelCol_loop2 {
		somme {Type I LastRead 0 FirstWrite -1}
		Layer_Weights {Type I LastRead 4 FirstWrite -1}
		sext_ln75 {Type I LastRead 0 FirstWrite -1}
		Layer3_Neurons_CPU {Type I LastRead 3 FirstWrite -1}
		somme_61_out {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3759", "Max" : "3759"}
	, {"Name" : "Interval", "Min" : "3759", "Max" : "3759"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	somme { ap_none {  { somme in_data 0 32 } } }
	 { m_axi {  { m_axi_Layer_Weights_AWVALID VALID 1 1 }  { m_axi_Layer_Weights_AWREADY READY 0 1 }  { m_axi_Layer_Weights_AWADDR ADDR 1 64 }  { m_axi_Layer_Weights_AWID ID 1 1 }  { m_axi_Layer_Weights_AWLEN SIZE 1 32 }  { m_axi_Layer_Weights_AWSIZE BURST 1 3 }  { m_axi_Layer_Weights_AWBURST LOCK 1 2 }  { m_axi_Layer_Weights_AWLOCK CACHE 1 2 }  { m_axi_Layer_Weights_AWCACHE PROT 1 4 }  { m_axi_Layer_Weights_AWPROT QOS 1 3 }  { m_axi_Layer_Weights_AWQOS REGION 1 4 }  { m_axi_Layer_Weights_AWREGION USER 1 4 }  { m_axi_Layer_Weights_AWUSER DATA 1 1 }  { m_axi_Layer_Weights_WVALID VALID 1 1 }  { m_axi_Layer_Weights_WREADY READY 0 1 }  { m_axi_Layer_Weights_WDATA FIFONUM 1 32 }  { m_axi_Layer_Weights_WSTRB STRB 1 4 }  { m_axi_Layer_Weights_WLAST LAST 1 1 }  { m_axi_Layer_Weights_WID ID 1 1 }  { m_axi_Layer_Weights_WUSER DATA 1 1 }  { m_axi_Layer_Weights_ARVALID VALID 1 1 }  { m_axi_Layer_Weights_ARREADY READY 0 1 }  { m_axi_Layer_Weights_ARADDR ADDR 1 64 }  { m_axi_Layer_Weights_ARID ID 1 1 }  { m_axi_Layer_Weights_ARLEN SIZE 1 32 }  { m_axi_Layer_Weights_ARSIZE BURST 1 3 }  { m_axi_Layer_Weights_ARBURST LOCK 1 2 }  { m_axi_Layer_Weights_ARLOCK CACHE 1 2 }  { m_axi_Layer_Weights_ARCACHE PROT 1 4 }  { m_axi_Layer_Weights_ARPROT QOS 1 3 }  { m_axi_Layer_Weights_ARQOS REGION 1 4 }  { m_axi_Layer_Weights_ARREGION USER 1 4 }  { m_axi_Layer_Weights_ARUSER DATA 1 1 }  { m_axi_Layer_Weights_RVALID VALID 0 1 }  { m_axi_Layer_Weights_RREADY READY 1 1 }  { m_axi_Layer_Weights_RDATA FIFONUM 0 32 }  { m_axi_Layer_Weights_RLAST LAST 0 1 }  { m_axi_Layer_Weights_RID ID 0 1 }  { m_axi_Layer_Weights_RFIFONUM LEN 0 9 }  { m_axi_Layer_Weights_RUSER DATA 0 1 }  { m_axi_Layer_Weights_RRESP RESP 0 2 }  { m_axi_Layer_Weights_BVALID VALID 0 1 }  { m_axi_Layer_Weights_BREADY READY 1 1 }  { m_axi_Layer_Weights_BRESP RESP 0 2 }  { m_axi_Layer_Weights_BID ID 0 1 }  { m_axi_Layer_Weights_BUSER DATA 0 1 } } }
	sext_ln75 { ap_none {  { sext_ln75 in_data 0 62 } } }
	Layer3_Neurons_CPU { ap_memory {  { Layer3_Neurons_CPU_address0 mem_address 1 11 }  { Layer3_Neurons_CPU_ce0 mem_ce 1 1 }  { Layer3_Neurons_CPU_q0 mem_dout 0 32 } } }
	somme_61_out { ap_vld {  { somme_61_out out_data 1 32 }  { somme_61_out_ap_vld out_vld 1 1 } } }
}
