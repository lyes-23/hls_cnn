set moduleName calculateLayer3
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
set C_modelName {calculateLayer3}
set C_modelType { void 0 }
set C_modelArgList {
	{ Layer2_Neurons_CPU int 32 regular {axi_slave 0}  }
	{ Layer2_Weights_CPU int 32 regular {bram 7800 { 1 1 } 1 1 }  }
	{ Layer3_Neurons_CPU int 32 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "Layer2_Neurons_CPU", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":4096}, "offset_end" : {"in":8191}} , 
 	{ "Name" : "Layer2_Weights_CPU", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Layer3_Neurons_CPU", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":8192}, "offset_end" : {"out":16383}} ]}
# RTL Port declarations: 
set portNum 51
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ Layer2_Weights_CPU_Addr_A sc_out sc_lv 32 signal 1 } 
	{ Layer2_Weights_CPU_EN_A sc_out sc_logic 1 signal 1 } 
	{ Layer2_Weights_CPU_WEN_A sc_out sc_lv 4 signal 1 } 
	{ Layer2_Weights_CPU_Din_A sc_out sc_lv 32 signal 1 } 
	{ Layer2_Weights_CPU_Dout_A sc_in sc_lv 32 signal 1 } 
	{ Layer2_Weights_CPU_Clk_A sc_out sc_logic 1 signal 1 } 
	{ Layer2_Weights_CPU_Rst_A sc_out sc_logic 1 signal 1 } 
	{ Layer2_Weights_CPU_Addr_B sc_out sc_lv 32 signal 1 } 
	{ Layer2_Weights_CPU_EN_B sc_out sc_logic 1 signal 1 } 
	{ Layer2_Weights_CPU_WEN_B sc_out sc_lv 4 signal 1 } 
	{ Layer2_Weights_CPU_Din_B sc_out sc_lv 32 signal 1 } 
	{ Layer2_Weights_CPU_Dout_B sc_in sc_lv 32 signal 1 } 
	{ Layer2_Weights_CPU_Clk_B sc_out sc_logic 1 signal 1 } 
	{ Layer2_Weights_CPU_Rst_B sc_out sc_logic 1 signal 1 } 
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
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 14 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 14 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_bus_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "AWADDR" },"address":[{"name":"calculateLayer3","role":"start","value":"0","valid_bit":"0"},{"name":"calculateLayer3","role":"continue","value":"0","valid_bit":"4"},{"name":"calculateLayer3","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CTRL_bus_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_bus_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_bus_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_bus_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_bus_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_bus_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_bus_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "ARADDR" },"address":[{"name":"calculateLayer3","role":"start","value":"0","valid_bit":"0"},{"name":"calculateLayer3","role":"done","value":"0","valid_bit":"1"},{"name":"calculateLayer3","role":"idle","value":"0","valid_bit":"2"},{"name":"calculateLayer3","role":"ready","value":"0","valid_bit":"3"},{"name":"calculateLayer3","role":"auto_start","value":"0","valid_bit":"7"}] },
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"Layer2_Neurons_CPU","role":"data","value":"4096"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"Layer3_Neurons_CPU","role":"data","value":"8192"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "Layer2_Weights_CPU_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer2_Weights_CPU", "role": "Addr_A" }} , 
 	{ "name": "Layer2_Weights_CPU_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer2_Weights_CPU", "role": "EN_A" }} , 
 	{ "name": "Layer2_Weights_CPU_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer2_Weights_CPU", "role": "WEN_A" }} , 
 	{ "name": "Layer2_Weights_CPU_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer2_Weights_CPU", "role": "Din_A" }} , 
 	{ "name": "Layer2_Weights_CPU_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer2_Weights_CPU", "role": "Dout_A" }} , 
 	{ "name": "Layer2_Weights_CPU_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer2_Weights_CPU", "role": "Clk_A" }} , 
 	{ "name": "Layer2_Weights_CPU_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer2_Weights_CPU", "role": "Rst_A" }} , 
 	{ "name": "Layer2_Weights_CPU_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer2_Weights_CPU", "role": "Addr_B" }} , 
 	{ "name": "Layer2_Weights_CPU_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer2_Weights_CPU", "role": "EN_B" }} , 
 	{ "name": "Layer2_Weights_CPU_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer2_Weights_CPU", "role": "WEN_B" }} , 
 	{ "name": "Layer2_Weights_CPU_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer2_Weights_CPU", "role": "Din_B" }} , 
 	{ "name": "Layer2_Weights_CPU_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer2_Weights_CPU", "role": "Dout_B" }} , 
 	{ "name": "Layer2_Weights_CPU_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer2_Weights_CPU", "role": "Clk_B" }} , 
 	{ "name": "Layer2_Weights_CPU_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer2_Weights_CPU", "role": "Rst_B" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "8", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "calculateLayer3",
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
			{"Name" : "Layer2_Weights_CPU", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "Layer3_Neurons_CPU", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sigmoidLUT_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_SIGMOID_fu_2915", "Port" : "sigmoidLUT_1", "Inst_start_state" : "609", "Inst_end_state" : "618"}]}],
		"Loop" : [
			{"Name" : "calculateLayer3_loop_row_Loop_col_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "152", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_2915", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_2915.sigmoidLUT_1_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_2915.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_2915.fcmp_32ns_32ns_1_2_no_dsp_1_U2", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_2915.fcmp_32ns_32ns_1_2_no_dsp_1_U3", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_2915.fcmp_32ns_32ns_1_2_no_dsp_1_U4", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_2915.dmul_64ns_64ns_64_4_max_dsp_1_U5", "Parent" : "1"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_bus_s_axi_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U11", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U12", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6ns_9ns_14_1_1_U13", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_3ns_6ns_8_1_1_U14", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_6ns_5ns_3ns_11_4_1_U15", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	calculateLayer3 {
		Layer2_Neurons_CPU {Type I LastRead 150 FirstWrite -1}
		Layer2_Weights_CPU {Type I LastRead 76 FirstWrite -1}
		Layer3_Neurons_CPU {Type O LastRead -1 FirstWrite 617}
		sigmoidLUT_1 {Type I LastRead -1 FirstWrite -1}}
	SIGMOID {
		x {Type I LastRead 0 FirstWrite -1}
		sigmoidLUT_1 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "190467", "Max" : "190467"}
	, {"Name" : "Interval", "Min" : "190468", "Max" : "190468"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Layer2_Weights_CPU { bram {  { Layer2_Weights_CPU_Addr_A MemPortADDR2 1 32 }  { Layer2_Weights_CPU_EN_A MemPortCE2 1 1 }  { Layer2_Weights_CPU_WEN_A MemPortWE2 1 4 }  { Layer2_Weights_CPU_Din_A MemPortDIN2 1 32 }  { Layer2_Weights_CPU_Dout_A MemPortDOUT2 0 32 }  { Layer2_Weights_CPU_Clk_A mem_clk 1 1 }  { Layer2_Weights_CPU_Rst_A mem_rst 1 1 }  { Layer2_Weights_CPU_Addr_B MemPortADDR2 1 32 }  { Layer2_Weights_CPU_EN_B MemPortCE2 1 1 }  { Layer2_Weights_CPU_WEN_B MemPortWE2 1 4 }  { Layer2_Weights_CPU_Din_B MemPortDIN2 1 32 }  { Layer2_Weights_CPU_Dout_B MemPortDOUT2 0 32 }  { Layer2_Weights_CPU_Clk_B mem_clk 1 1 }  { Layer2_Weights_CPU_Rst_B mem_rst 1 1 } } }
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
