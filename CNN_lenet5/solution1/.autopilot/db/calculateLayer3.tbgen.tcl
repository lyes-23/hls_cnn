set moduleName calculateLayer3
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
set C_modelName {calculateLayer3}
set C_modelType { void 0 }
set C_modelArgList {
	{ Layer2_Neurons_CPU float 32 regular {array 1014 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ Layer2_Weights_stream int 32 regular {axi_s 0 volatile  { Layer2_Weights_stream Data } }  }
	{ Layer3_Neurons_CPU float 32 regular {array 1250 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "Layer2_Neurons_CPU", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Layer2_Weights_stream", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Layer3_Neurons_CPU", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Layer2_Weights_stream_TVALID sc_in sc_logic 1 invld 1 } 
	{ Layer2_Neurons_CPU_address0 sc_out sc_lv 10 signal 0 } 
	{ Layer2_Neurons_CPU_ce0 sc_out sc_logic 1 signal 0 } 
	{ Layer2_Neurons_CPU_q0 sc_in sc_lv 32 signal 0 } 
	{ Layer2_Neurons_CPU_address1 sc_out sc_lv 10 signal 0 } 
	{ Layer2_Neurons_CPU_ce1 sc_out sc_logic 1 signal 0 } 
	{ Layer2_Neurons_CPU_q1 sc_in sc_lv 32 signal 0 } 
	{ Layer2_Weights_stream_TDATA sc_in sc_lv 32 signal 1 } 
	{ Layer2_Weights_stream_TREADY sc_out sc_logic 1 inacc 1 } 
	{ Layer3_Neurons_CPU_address0 sc_out sc_lv 11 signal 2 } 
	{ Layer3_Neurons_CPU_ce0 sc_out sc_logic 1 signal 2 } 
	{ Layer3_Neurons_CPU_we0 sc_out sc_logic 1 signal 2 } 
	{ Layer3_Neurons_CPU_d0 sc_out sc_lv 32 signal 2 } 
	{ grp_fu_285_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_285_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_285_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_285_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_285_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_289_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_289_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_289_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_289_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_163_p_din0 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_163_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_fu_163_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_163_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_generic_tanh_double_s_fu_146_p_din1 sc_out sc_lv 64 signal -1 } 
	{ grp_generic_tanh_double_s_fu_146_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_generic_tanh_double_s_fu_146_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_generic_tanh_double_s_fu_146_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_generic_tanh_double_s_fu_146_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_generic_tanh_double_s_fu_146_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_generic_tanh_double_s_fu_146_p_idle sc_in sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Layer2_Weights_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "Layer2_Weights_stream", "role": "TVALID" }} , 
 	{ "name": "Layer2_Neurons_CPU_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "address0" }} , 
 	{ "name": "Layer2_Neurons_CPU_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "ce0" }} , 
 	{ "name": "Layer2_Neurons_CPU_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "q0" }} , 
 	{ "name": "Layer2_Neurons_CPU_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "address1" }} , 
 	{ "name": "Layer2_Neurons_CPU_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "ce1" }} , 
 	{ "name": "Layer2_Neurons_CPU_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "q1" }} , 
 	{ "name": "Layer2_Weights_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer2_Weights_stream", "role": "TDATA" }} , 
 	{ "name": "Layer2_Weights_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "Layer2_Weights_stream", "role": "TREADY" }} , 
 	{ "name": "Layer3_Neurons_CPU_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "address0" }} , 
 	{ "name": "Layer3_Neurons_CPU_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "ce0" }} , 
 	{ "name": "Layer3_Neurons_CPU_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "we0" }} , 
 	{ "name": "Layer3_Neurons_CPU_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "d0" }} , 
 	{ "name": "grp_fu_285_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_285_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_285_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_285_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_285_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_285_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_285_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_285_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_285_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_285_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_289_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_289_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_289_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_289_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_289_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_289_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_289_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_289_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_163_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_163_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_163_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_163_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_163_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_163_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_163_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_163_p_ce", "role": "default" }} , 
 	{ "name": "grp_generic_tanh_double_s_fu_146_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_generic_tanh_double_s_fu_146_p_din1", "role": "default" }} , 
 	{ "name": "grp_generic_tanh_double_s_fu_146_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_generic_tanh_double_s_fu_146_p_dout0", "role": "default" }} , 
 	{ "name": "grp_generic_tanh_double_s_fu_146_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_generic_tanh_double_s_fu_146_p_ce", "role": "default" }} , 
 	{ "name": "grp_generic_tanh_double_s_fu_146_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_generic_tanh_double_s_fu_146_p_start", "role": "default" }} , 
 	{ "name": "grp_generic_tanh_double_s_fu_146_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_generic_tanh_double_s_fu_146_p_ready", "role": "default" }} , 
 	{ "name": "grp_generic_tanh_double_s_fu_146_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_generic_tanh_double_s_fu_146_p_done", "role": "default" }} , 
 	{ "name": "grp_generic_tanh_double_s_fu_146_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_generic_tanh_double_s_fu_146_p_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "calculateLayer3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32560", "EstimateLatencyMax" : "32560",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Layer2_Neurons_CPU", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Layer2_Weights_stream", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Layer2_Weights_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Layer3_Neurons_CPU", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_1_VITIS_LOOP_77_2_VITIS_LOOP_78_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "26", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage6", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage6_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_1_no_dsp_1_U47", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_1_no_dsp_1_U48", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_3ns_6ns_8_1_1_U50", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_6ns_5ns_3ns_11_4_1_U51", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	calculateLayer3 {
		Layer2_Neurons_CPU {Type I LastRead 13 FirstWrite -1}
		Layer2_Weights_stream {Type I LastRead 25 FirstWrite -1}
		Layer3_Neurons_CPU {Type O LastRead -1 FirstWrite 84}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "32560", "Max" : "32560"}
	, {"Name" : "Interval", "Min" : "32560", "Max" : "32560"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Layer2_Neurons_CPU { ap_memory {  { Layer2_Neurons_CPU_address0 mem_address 1 10 }  { Layer2_Neurons_CPU_ce0 mem_ce 1 1 }  { Layer2_Neurons_CPU_q0 mem_dout 0 32 }  { Layer2_Neurons_CPU_address1 MemPortADDR2 1 10 }  { Layer2_Neurons_CPU_ce1 MemPortCE2 1 1 }  { Layer2_Neurons_CPU_q1 in_data 0 32 } } }
	Layer2_Weights_stream { axis {  { Layer2_Weights_stream_TVALID in_vld 0 1 }  { Layer2_Weights_stream_TDATA in_data 0 32 }  { Layer2_Weights_stream_TREADY in_acc 1 1 } } }
	Layer3_Neurons_CPU { ap_memory {  { Layer3_Neurons_CPU_address0 mem_address 1 11 }  { Layer3_Neurons_CPU_ce0 mem_ce 1 1 }  { Layer3_Neurons_CPU_we0 mem_we 1 1 }  { Layer3_Neurons_CPU_d0 mem_din 1 32 } } }
}