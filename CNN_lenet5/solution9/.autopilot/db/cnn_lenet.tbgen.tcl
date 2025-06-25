set moduleName cnn_lenet
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {cnn_lenet}
set C_modelType { void 0 }
set C_modelArgList {
	{ Layer1_Neurons_CPU int 32 regular {axi_slave 0}  }
	{ Layer3_Neurons_CPU int 32 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "Layer1_Neurons_CPU", "interface" : "axi_slave", "bundle":"Layer_Neurons","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":4096}, "offset_end" : {"in":8191}} , 
 	{ "Name" : "Layer3_Neurons_CPU", "interface" : "axi_slave", "bundle":"Layer_Neurons","type":"ap_memory","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":8192}, "offset_end" : {"out":16383}} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_CTRL_bus_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_bus_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_bus_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_bus_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_bus_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_bus_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_bus_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_bus_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_bus_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_bus_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_bus_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_bus_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_bus_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CTRL_bus_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CTRL_bus_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_bus_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_bus_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axi_Layer_Neurons_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_Layer_Neurons_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_Layer_Neurons_AWADDR sc_in sc_lv 14 signal -1 } 
	{ s_axi_Layer_Neurons_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_Layer_Neurons_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_Layer_Neurons_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_Layer_Neurons_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_Layer_Neurons_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_Layer_Neurons_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_Layer_Neurons_ARADDR sc_in sc_lv 14 signal -1 } 
	{ s_axi_Layer_Neurons_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_Layer_Neurons_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_Layer_Neurons_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_Layer_Neurons_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_Layer_Neurons_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_Layer_Neurons_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_Layer_Neurons_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_bus_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "AWADDR" },"address":[{"name":"cnn_lenet","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_lenet","role":"continue","value":"0","valid_bit":"4"},{"name":"cnn_lenet","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_bus_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_bus_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_bus_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_bus_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_bus_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_bus_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_bus_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "ARADDR" },"address":[{"name":"cnn_lenet","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_lenet","role":"done","value":"0","valid_bit":"1"},{"name":"cnn_lenet","role":"idle","value":"0","valid_bit":"2"},{"name":"cnn_lenet","role":"ready","value":"0","valid_bit":"3"},{"name":"cnn_lenet","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_bus_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "ARVALID" } },
	{ "name": "s_axi_CTRL_bus_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "ARREADY" } },
	{ "name": "s_axi_CTRL_bus_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "RVALID" } },
	{ "name": "s_axi_CTRL_bus_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "RREADY" } },
	{ "name": "s_axi_CTRL_bus_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "RDATA" } },
	{ "name": "s_axi_CTRL_bus_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "RRESP" } },
	{ "name": "s_axi_CTRL_bus_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "BVALID" } },
	{ "name": "s_axi_CTRL_bus_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "BREADY" } },
	{ "name": "s_axi_CTRL_bus_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "interrupt" } },
	{ "name": "s_axi_Layer_Neurons_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWADDR" },"address":[{"name":"Layer1_Neurons_CPU","role":"data","value":"4096"}] },
	{ "name": "s_axi_Layer_Neurons_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWVALID" } },
	{ "name": "s_axi_Layer_Neurons_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWREADY" } },
	{ "name": "s_axi_Layer_Neurons_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "WVALID" } },
	{ "name": "s_axi_Layer_Neurons_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "WREADY" } },
	{ "name": "s_axi_Layer_Neurons_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "WDATA" } },
	{ "name": "s_axi_Layer_Neurons_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "WSTRB" } },
	{ "name": "s_axi_Layer_Neurons_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "ARADDR" },"address":[{"name":"Layer3_Neurons_CPU","role":"data","value":"8192"}] },
	{ "name": "s_axi_Layer_Neurons_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "ARVALID" } },
	{ "name": "s_axi_Layer_Neurons_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "ARREADY" } },
	{ "name": "s_axi_Layer_Neurons_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "RVALID" } },
	{ "name": "s_axi_Layer_Neurons_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "RREADY" } },
	{ "name": "s_axi_Layer_Neurons_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "RDATA" } },
	{ "name": "s_axi_Layer_Neurons_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "RRESP" } },
	{ "name": "s_axi_Layer_Neurons_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "BVALID" } },
	{ "name": "s_axi_Layer_Neurons_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "BREADY" } },
	{ "name": "s_axi_Layer_Neurons_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "9", "15", "22", "23", "24", "25"],
		"CDFG" : "cnn_lenet",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "216925", "EstimateLatencyMax" : "216925",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Layer1_Neurons_CPU", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_54", "Port" : "Layer1_Neurons_CPU", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "Layer3_Neurons_CPU", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_66", "Port" : "Layer3_Neurons_CPU", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Layer1_Weights_CPU", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_54", "Port" : "Layer1_Weights_CPU", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "sigmoidLUT_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_54", "Port" : "sigmoidLUT_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_66", "Port" : "sigmoidLUT_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Layer2_Weights_CPU", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_66", "Port" : "Layer2_Weights_CPU", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Layer2_Neurons_CPU_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_54", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8"],
		"CDFG" : "cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26455", "EstimateLatencyMax" : "26455",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Layer1_Neurons_CPU", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Layer2_Neurons_CPU", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Layer1_Weights_CPU", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sigmoidLUT_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "26", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage11", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage11_subdone", "QuitState" : "ap_ST_fsm_pp0_stage11", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage11_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_54.Layer1_Weights_CPU_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_54.mul_3ns_6ns_8_1_1_U13", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_54.mul_4ns_7ns_10_1_1_U14", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_54.mac_muladd_3ns_8ns_4ns_10_4_1_U15", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_54.mac_muladd_4ns_4ns_10ns_10_4_1_U16", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_54.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_66", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14"],
		"CDFG" : "cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "190467", "EstimateLatencyMax" : "190467",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Layer2_Neurons_CPU", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Layer3_Neurons_CPU", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Layer2_Weights_CPU", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sigmoidLUT_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "calculateLayer3_loop_row_Loop_col_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "152", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_66.Layer2_Weights_CPU_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_66.mul_6ns_9ns_14_1_1_U26", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_66.mul_3ns_6ns_8_1_1_U27", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_66.mac_muladd_6ns_5ns_3ns_11_4_1_U28", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_66.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_77", "Parent" : "0", "Child" : ["16", "17", "18", "19", "20", "21"],
		"CDFG" : "SIGMOID",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "9", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "sigmoidLUT_1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_77.sigmoidLUT_1_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_77.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "15"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_77.fcmp_32ns_32ns_1_2_no_dsp_1_U2", "Parent" : "15"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_77.fcmp_32ns_32ns_1_2_no_dsp_1_U3", "Parent" : "15"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_77.fcmp_32ns_32ns_1_2_no_dsp_1_U4", "Parent" : "15"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_77.dmul_64ns_64ns_64_4_max_dsp_1_U5", "Parent" : "15"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_bus_s_axi_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Layer_Neurons_s_axi_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U34", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U35", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn_lenet {
		Layer1_Neurons_CPU {Type I LastRead 25 FirstWrite -1}
		Layer3_Neurons_CPU {Type O LastRead -1 FirstWrite 617}
		Layer1_Weights_CPU {Type I LastRead -1 FirstWrite -1}
		sigmoidLUT_1 {Type I LastRead -1 FirstWrite -1}
		Layer2_Weights_CPU {Type I LastRead -1 FirstWrite -1}}
	cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop {
		Layer1_Neurons_CPU {Type I LastRead 25 FirstWrite -1}
		Layer2_Neurons_CPU {Type O LastRead -1 FirstWrite 115}
		Layer1_Weights_CPU {Type I LastRead -1 FirstWrite -1}
		sigmoidLUT_1 {Type I LastRead -1 FirstWrite -1}}
	cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop {
		Layer2_Neurons_CPU {Type I LastRead 76 FirstWrite -1}
		Layer3_Neurons_CPU {Type O LastRead -1 FirstWrite 617}
		Layer2_Weights_CPU {Type I LastRead -1 FirstWrite -1}
		sigmoidLUT_1 {Type I LastRead -1 FirstWrite -1}}
	SIGMOID {
		x {Type I LastRead 0 FirstWrite -1}
		sigmoidLUT_1 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "216925", "Max" : "216925"}
	, {"Name" : "Interval", "Min" : "216926", "Max" : "216926"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
