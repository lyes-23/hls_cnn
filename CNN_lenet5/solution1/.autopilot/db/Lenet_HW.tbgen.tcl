set moduleName Lenet_HW
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
set C_modelName {Lenet_HW}
set C_modelType { void 0 }
set C_modelArgList {
	{ Layer1_Neurons_stream int 32 regular {axi_s 0 volatile  { Layer1_Neurons_stream Data } }  }
	{ Layer1_Weights_stream int 32 regular {axi_s 0 volatile  { Layer1_Weights_stream Data } }  }
	{ Layer2_Weights_stream int 32 regular {axi_s 0 volatile  { Layer2_Weights_stream Data } }  }
	{ Layer3_Weights_stream int 32 regular {axi_s 0 volatile  { Layer3_Weights_stream Data } }  }
	{ Layer4_Neurons_stream int 32 regular {axi_s 1 volatile  { Layer4_Neurons_stream Data } }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "Layer1_Neurons_stream", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Layer1_Weights_stream", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Layer2_Weights_stream", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Layer3_Weights_stream", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Layer4_Neurons_stream", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Layer1_Neurons_stream_TDATA sc_in sc_lv 32 signal 0 } 
	{ Layer1_Neurons_stream_TVALID sc_in sc_logic 1 invld 0 } 
	{ Layer1_Neurons_stream_TREADY sc_out sc_logic 1 inacc 0 } 
	{ Layer1_Weights_stream_TDATA sc_in sc_lv 32 signal 1 } 
	{ Layer1_Weights_stream_TVALID sc_in sc_logic 1 invld 1 } 
	{ Layer1_Weights_stream_TREADY sc_out sc_logic 1 inacc 1 } 
	{ Layer2_Weights_stream_TDATA sc_in sc_lv 32 signal 2 } 
	{ Layer2_Weights_stream_TVALID sc_in sc_logic 1 invld 2 } 
	{ Layer2_Weights_stream_TREADY sc_out sc_logic 1 inacc 2 } 
	{ Layer3_Weights_stream_TDATA sc_in sc_lv 32 signal 3 } 
	{ Layer3_Weights_stream_TVALID sc_in sc_logic 1 invld 3 } 
	{ Layer3_Weights_stream_TREADY sc_out sc_logic 1 inacc 3 } 
	{ Layer4_Neurons_stream_TDATA sc_out sc_lv 32 signal 4 } 
	{ Layer4_Neurons_stream_TVALID sc_out sc_logic 1 outvld 4 } 
	{ Layer4_Neurons_stream_TREADY sc_in sc_logic 1 outacc 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Layer1_Neurons_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer1_Neurons_stream", "role": "TDATA" }} , 
 	{ "name": "Layer1_Neurons_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "Layer1_Neurons_stream", "role": "TVALID" }} , 
 	{ "name": "Layer1_Neurons_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "Layer1_Neurons_stream", "role": "TREADY" }} , 
 	{ "name": "Layer1_Weights_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer1_Weights_stream", "role": "TDATA" }} , 
 	{ "name": "Layer1_Weights_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "Layer1_Weights_stream", "role": "TVALID" }} , 
 	{ "name": "Layer1_Weights_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "Layer1_Weights_stream", "role": "TREADY" }} , 
 	{ "name": "Layer2_Weights_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer2_Weights_stream", "role": "TDATA" }} , 
 	{ "name": "Layer2_Weights_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "Layer2_Weights_stream", "role": "TVALID" }} , 
 	{ "name": "Layer2_Weights_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "Layer2_Weights_stream", "role": "TREADY" }} , 
 	{ "name": "Layer3_Weights_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Weights_stream", "role": "TDATA" }} , 
 	{ "name": "Layer3_Weights_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "Layer3_Weights_stream", "role": "TVALID" }} , 
 	{ "name": "Layer3_Weights_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "Layer3_Weights_stream", "role": "TREADY" }} , 
 	{ "name": "Layer4_Neurons_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer4_Neurons_stream", "role": "TDATA" }} , 
 	{ "name": "Layer4_Neurons_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Layer4_Neurons_stream", "role": "TVALID" }} , 
 	{ "name": "Layer4_Neurons_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "Layer4_Neurons_stream", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "10", "17", "19", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
		"CDFG" : "Lenet_HW",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "187789", "EstimateLatencyMax" : "187789",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Layer1_Neurons_stream", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_calculateLayer2_fu_107", "Port" : "Layer1_Neurons_stream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "Layer1_Weights_stream", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_calculateLayer2_fu_107", "Port" : "Layer1_Weights_stream", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "Layer2_Weights_stream", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_calculateLayer3_fu_122", "Port" : "Layer2_Weights_stream", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "Layer3_Weights_stream", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Layer3_Weights_stream_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_Lenet_HW_Pipeline_VITIS_LOOP_112_2_VITIS_LOOP_114_3_VITIS_LOOP_115_4_fu_136", "Port" : "Layer3_Weights_stream", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "Layer4_Neurons_stream", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "Layer4_Neurons_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_calculateLayer2_fu_107", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "10", "SubInstance" : "grp_calculateLayer3_fu_122", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "19", "SubInstance" : "grp_generic_tanh_double_s_fu_146", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "12", "Inst_end_state" : "35"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_calculateLayer2_fu_107", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "10", "SubInstance" : "grp_calculateLayer3_fu_122", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "19", "SubInstance" : "grp_generic_tanh_double_s_fu_146", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "12", "Inst_end_state" : "35"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_calculateLayer2_fu_107", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "10", "SubInstance" : "grp_calculateLayer3_fu_122", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "19", "SubInstance" : "grp_generic_tanh_double_s_fu_146", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Inst_start_state" : "12", "Inst_end_state" : "35"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_109_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "39", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state39"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Layer2_Neurons_CPU_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Layer3_Neurons_CPU_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_calculateLayer2_fu_107", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9"],
		"CDFG" : "calculateLayer2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26424", "EstimateLatencyMax" : "26424",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Layer1_Neurons_stream", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Layer1_Neurons_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Layer1_Weights_stream", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Layer1_Weights_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Layer2_Neurons_CPU", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "26", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage6", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage6_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculateLayer2_fu_107.conv_buff_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculateLayer2_fu_107.fptrunc_64ns_32_1_no_dsp_1_U32", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculateLayer2_fu_107.fpext_32ns_64_1_no_dsp_1_U33", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculateLayer2_fu_107.mac_muladd_3ns_8ns_4ns_10_4_1_U35", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculateLayer2_fu_107.mac_muladd_4ns_4ns_10ns_10_4_1_U36", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculateLayer2_fu_107.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_calculateLayer3_fu_122", "Parent" : "0", "Child" : ["11", "12", "13", "14", "15", "16"],
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculateLayer3_fu_122.conv_buff_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculateLayer3_fu_122.fptrunc_64ns_32_1_no_dsp_1_U47", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculateLayer3_fu_122.fpext_32ns_64_1_no_dsp_1_U48", "Parent" : "10"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculateLayer3_fu_122.mul_3ns_6ns_8_1_1_U50", "Parent" : "10"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculateLayer3_fu_122.mac_muladd_6ns_5ns_3ns_11_4_1_U51", "Parent" : "10"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_calculateLayer3_fu_122.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Lenet_HW_Pipeline_VITIS_LOOP_112_2_VITIS_LOOP_114_3_VITIS_LOOP_115_4_fu_136", "Parent" : "0", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Lenet_HW_Pipeline_VITIS_LOOP_112_2_VITIS_LOOP_114_3_VITIS_LOOP_115_4_fu_136.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146", "Parent" : "0", "Child" : ["20", "29", "30", "31", "32", "33", "34", "35", "36"],
		"CDFG" : "generic_tanh_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "23", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_exp_generic_double_s_fu_89", "Port" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array"}]},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_exp_generic_double_s_fu_89", "Port" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array"}]},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_exp_generic_double_s_fu_89", "Port" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146.grp_exp_generic_double_s_fu_89", "Parent" : "19", "Child" : ["21", "22", "23", "24", "25", "26", "27", "28"],
		"CDFG" : "exp_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146.grp_exp_generic_double_s_fu_89.table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146.grp_exp_generic_double_s_fu_89.table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146.grp_exp_generic_double_s_fu_89.table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146.grp_exp_generic_double_s_fu_89.mul_13s_71s_71_1_1_U1", "Parent" : "20"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146.grp_exp_generic_double_s_fu_89.mul_43ns_36ns_79_1_1_U2", "Parent" : "20"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146.grp_exp_generic_double_s_fu_89.mul_49ns_44ns_93_1_1_U3", "Parent" : "20"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146.grp_exp_generic_double_s_fu_89.mul_50ns_50ns_100_1_1_U4", "Parent" : "20"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146.grp_exp_generic_double_s_fu_89.mac_muladd_16s_15ns_19s_31_4_1_U5", "Parent" : "20"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146.dadddsub_64ns_64ns_64_2_full_dsp_1_U15", "Parent" : "19"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146.dadd_64ns_64ns_64_2_full_dsp_1_U16", "Parent" : "19"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146.dadd_64ns_64ns_64_2_full_dsp_1_U17", "Parent" : "19"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146.dadd_64ns_64ns_64_2_full_dsp_1_U18", "Parent" : "19"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146.dsub_64ns_64ns_64_2_full_dsp_1_U19", "Parent" : "19"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146.dmul_64ns_64ns_64_2_max_dsp_1_U20", "Parent" : "19"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146.ddiv_64ns_64ns_64_10_no_dsp_1_U21", "Parent" : "19"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_generic_tanh_double_s_fu_146.dcmp_64ns_64ns_1_1_no_dsp_1_U22", "Parent" : "19"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_1_no_dsp_1_U65", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_1_no_dsp_1_U66", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_2_max_dsp_1_U67", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_2_full_dsp_1_U68", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U69", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Layer1_Neurons_stream_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Layer1_Weights_stream_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Layer2_Weights_stream_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Layer3_Weights_stream_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_Layer4_Neurons_stream_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Lenet_HW {
		Layer1_Neurons_stream {Type I LastRead 25 FirstWrite -1}
		Layer1_Weights_stream {Type I LastRead 25 FirstWrite -1}
		Layer2_Weights_stream {Type I LastRead 25 FirstWrite -1}
		Layer3_Weights_stream {Type I LastRead 5 FirstWrite -1}
		Layer4_Neurons_stream {Type O LastRead -1 FirstWrite 37}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}}
	calculateLayer2 {
		Layer1_Neurons_stream {Type I LastRead 25 FirstWrite -1}
		Layer1_Weights_stream {Type I LastRead 25 FirstWrite -1}
		Layer2_Neurons_CPU {Type O LastRead -1 FirstWrite 84}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}}
	calculateLayer3 {
		Layer2_Neurons_CPU {Type I LastRead 13 FirstWrite -1}
		Layer2_Weights_stream {Type I LastRead 25 FirstWrite -1}
		Layer3_Neurons_CPU {Type O LastRead -1 FirstWrite 84}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}}
	Lenet_HW_Pipeline_VITIS_LOOP_112_2_VITIS_LOOP_114_3_VITIS_LOOP_115_4 {
		somme {Type I LastRead 0 FirstWrite -1}
		phi_mul {Type I LastRead 0 FirstWrite -1}
		Layer3_Neurons_CPU {Type I LastRead 0 FirstWrite -1}
		Layer3_Weights_stream {Type I LastRead 0 FirstWrite -1}
		somme_52_out {Type O LastRead -1 FirstWrite 2}}
	generic_tanh_double_s {
		t_in {Type I LastRead 0 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}}
	exp_generic_double_s {
		x {Type I LastRead 0 FirstWrite -1}
		table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}
		table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_array {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "187789", "Max" : "187789"}
	, {"Name" : "Interval", "Min" : "187790", "Max" : "187790"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Layer1_Neurons_stream { axis {  { Layer1_Neurons_stream_TDATA in_data 0 32 }  { Layer1_Neurons_stream_TVALID in_vld 0 1 }  { Layer1_Neurons_stream_TREADY in_acc 1 1 } } }
	Layer1_Weights_stream { axis {  { Layer1_Weights_stream_TDATA in_data 0 32 }  { Layer1_Weights_stream_TVALID in_vld 0 1 }  { Layer1_Weights_stream_TREADY in_acc 1 1 } } }
	Layer2_Weights_stream { axis {  { Layer2_Weights_stream_TDATA in_data 0 32 }  { Layer2_Weights_stream_TVALID in_vld 0 1 }  { Layer2_Weights_stream_TREADY in_acc 1 1 } } }
	Layer3_Weights_stream { axis {  { Layer3_Weights_stream_TDATA in_data 0 32 }  { Layer3_Weights_stream_TVALID in_vld 0 1 }  { Layer3_Weights_stream_TREADY in_acc 1 1 } } }
	Layer4_Neurons_stream { axis {  { Layer4_Neurons_stream_TDATA out_data 1 32 }  { Layer4_Neurons_stream_TVALID out_vld 1 1 }  { Layer4_Neurons_stream_TREADY out_acc 0 1 } } }
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
