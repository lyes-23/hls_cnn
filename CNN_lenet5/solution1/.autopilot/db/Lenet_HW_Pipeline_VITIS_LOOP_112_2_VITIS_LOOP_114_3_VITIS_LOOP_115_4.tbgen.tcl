set moduleName Lenet_HW_Pipeline_VITIS_LOOP_112_2_VITIS_LOOP_114_3_VITIS_LOOP_115_4
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
set C_modelName {Lenet_HW_Pipeline_VITIS_LOOP_112_2_VITIS_LOOP_114_3_VITIS_LOOP_115_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ somme float 32 regular  }
	{ phi_mul int 11 regular  }
	{ Layer3_Neurons_CPU float 32 regular {array 1250 { 1 3 } 1 1 }  }
	{ Layer3_Weights_stream int 32 regular {axi_s 0 volatile  { Layer3_Weights_stream Data } }  }
	{ somme_52_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "somme", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "phi_mul", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "Layer3_Neurons_CPU", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Layer3_Weights_stream", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "somme_52_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Layer3_Weights_stream_TVALID sc_in sc_logic 1 invld 3 } 
	{ somme sc_in sc_lv 32 signal 0 } 
	{ phi_mul sc_in sc_lv 11 signal 1 } 
	{ Layer3_Neurons_CPU_address0 sc_out sc_lv 11 signal 2 } 
	{ Layer3_Neurons_CPU_ce0 sc_out sc_logic 1 signal 2 } 
	{ Layer3_Neurons_CPU_q0 sc_in sc_lv 32 signal 2 } 
	{ Layer3_Weights_stream_TDATA sc_in sc_lv 32 signal 3 } 
	{ Layer3_Weights_stream_TREADY sc_out sc_logic 1 inacc 3 } 
	{ somme_52_out sc_out sc_lv 32 signal 4 } 
	{ somme_52_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ grp_fu_285_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_285_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_285_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_285_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_285_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_289_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_289_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_289_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_289_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Layer3_Weights_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "Layer3_Weights_stream", "role": "TVALID" }} , 
 	{ "name": "somme", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "somme", "role": "default" }} , 
 	{ "name": "phi_mul", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "phi_mul", "role": "default" }} , 
 	{ "name": "Layer3_Neurons_CPU_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "address0" }} , 
 	{ "name": "Layer3_Neurons_CPU_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "ce0" }} , 
 	{ "name": "Layer3_Neurons_CPU_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "q0" }} , 
 	{ "name": "Layer3_Weights_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Weights_stream", "role": "TDATA" }} , 
 	{ "name": "Layer3_Weights_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "Layer3_Weights_stream", "role": "TREADY" }} , 
 	{ "name": "somme_52_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "somme_52_out", "role": "default" }} , 
 	{ "name": "somme_52_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "somme_52_out", "role": "ap_vld" }} , 
 	{ "name": "grp_fu_285_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_285_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_285_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_285_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_285_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_285_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_285_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_285_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_285_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_285_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_289_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_289_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_289_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_289_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_289_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_289_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_289_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_289_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Lenet_HW_Pipeline_VITIS_LOOP_112_2_VITIS_LOOP_114_3_VITIS_LOOP_115_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1254", "EstimateLatencyMax" : "1254",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "somme", "Type" : "None", "Direction" : "I"},
			{"Name" : "phi_mul", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer3_Neurons_CPU", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Layer3_Weights_stream", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Layer3_Weights_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "somme_52_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_112_2_VITIS_LOOP_114_3_VITIS_LOOP_115_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Lenet_HW_Pipeline_VITIS_LOOP_112_2_VITIS_LOOP_114_3_VITIS_LOOP_115_4 {
		somme {Type I LastRead 0 FirstWrite -1}
		phi_mul {Type I LastRead 0 FirstWrite -1}
		Layer3_Neurons_CPU {Type I LastRead 0 FirstWrite -1}
		Layer3_Weights_stream {Type I LastRead 0 FirstWrite -1}
		somme_52_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1254", "Max" : "1254"}
	, {"Name" : "Interval", "Min" : "1254", "Max" : "1254"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	somme { ap_none {  { somme in_data 0 32 } } }
	phi_mul { ap_none {  { phi_mul in_data 0 11 } } }
	Layer3_Neurons_CPU { ap_memory {  { Layer3_Neurons_CPU_address0 mem_address 1 11 }  { Layer3_Neurons_CPU_ce0 mem_ce 1 1 }  { Layer3_Neurons_CPU_q0 in_data 0 32 } } }
	Layer3_Weights_stream { axis {  { Layer3_Weights_stream_TVALID in_vld 0 1 }  { Layer3_Weights_stream_TDATA in_data 0 32 }  { Layer3_Weights_stream_TREADY in_acc 1 1 } } }
	somme_52_out { ap_vld {  { somme_52_out out_data 1 32 }  { somme_52_out_ap_vld out_vld 1 1 } } }
}
