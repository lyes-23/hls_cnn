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
	{ Layer_Neurons int 32 regular {axi_master 2}  }
	{ Layer_Weights int 32 regular {axi_master 0}  }
	{ Layer1_Neurons_CPU int 64 regular {axi_slave 0}  }
	{ Layer1_Weights_CPU int 64 regular {axi_slave 0}  }
	{ Layer2_Weights_CPU int 64 regular {axi_slave 0}  }
	{ Layer3_Weights_CPU int 64 regular {axi_slave 0}  }
	{ Layer4_Neurons_CPU int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "Layer_Neurons", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "Layer1_Neurons_CPU","offset": { "type": "dynamic","port_name": "Layer1_Neurons_CPU","bundle": "control"},"direction": "READONLY"},{"cName": "Layer4_Neurons_CPU","offset": { "type": "dynamic","port_name": "Layer4_Neurons_CPU","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "Layer_Weights", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "Layer1_Weights_CPU","offset": { "type": "dynamic","port_name": "Layer1_Weights_CPU","bundle": "control"},"direction": "READONLY"},{"cName": "Layer2_Weights_CPU","offset": { "type": "dynamic","port_name": "Layer2_Weights_CPU","bundle": "control"},"direction": "READONLY"},{"cName": "Layer3_Weights_CPU","offset": { "type": "dynamic","port_name": "Layer3_Weights_CPU","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "Layer1_Neurons_CPU", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "Layer1_Weights_CPU", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "Layer2_Weights_CPU", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "Layer3_Weights_CPU", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "Layer4_Neurons_CPU", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} ]}
# RTL Port declarations: 
set portNum 127
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_Layer_Neurons_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_Layer_Neurons_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_Layer_Neurons_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_Layer_Neurons_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_Layer_Neurons_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_Layer_Neurons_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_Layer_Neurons_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_Layer_Neurons_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_Layer_Neurons_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_Layer_Neurons_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_Layer_Neurons_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_Layer_Neurons_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_Layer_Neurons_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_Layer_Neurons_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_Layer_Neurons_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_Layer_Neurons_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_Layer_Neurons_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_Layer_Neurons_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_Layer_Neurons_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_Layer_Neurons_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_Layer_Neurons_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_Layer_Neurons_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_Layer_Neurons_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_Layer_Neurons_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_Layer_Neurons_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_Layer_Neurons_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_Layer_Neurons_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_Layer_Neurons_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_Layer_Neurons_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_Layer_Neurons_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_Layer_Neurons_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_Layer_Neurons_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_Layer_Neurons_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_Layer_Neurons_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_Layer_Neurons_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_Layer_Neurons_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_Layer_Neurons_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_Layer_Neurons_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_Layer_Neurons_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_Layer_Neurons_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_Layer_Neurons_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_Layer_Neurons_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_Layer_Neurons_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_Layer_Neurons_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_Layer_Neurons_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_Layer_Weights_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_Layer_Weights_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_Layer_Weights_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_Layer_Weights_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_Layer_Weights_AWLEN sc_out sc_lv 8 signal 1 } 
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
	{ m_axi_Layer_Weights_ARLEN sc_out sc_lv 8 signal 1 } 
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
	{ m_axi_Layer_Weights_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_Layer_Weights_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_Layer_Weights_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_Layer_Weights_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_Layer_Weights_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_Layer_Weights_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_Layer_Weights_BUSER sc_in sc_lv 1 signal 1 } 
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
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"Layer1_Neurons_CPU","role":"data","value":"16"},{"name":"Layer1_Weights_CPU","role":"data","value":"28"},{"name":"Layer2_Weights_CPU","role":"data","value":"40"},{"name":"Layer3_Weights_CPU","role":"data","value":"52"},{"name":"Layer4_Neurons_CPU","role":"data","value":"64"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
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
 	{ "name": "m_axi_Layer_Neurons_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWVALID" }} , 
 	{ "name": "m_axi_Layer_Neurons_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWREADY" }} , 
 	{ "name": "m_axi_Layer_Neurons_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWADDR" }} , 
 	{ "name": "m_axi_Layer_Neurons_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWID" }} , 
 	{ "name": "m_axi_Layer_Neurons_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_Layer_Neurons_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_Layer_Neurons_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "RUSER" }} , 
 	{ "name": "m_axi_Layer_Neurons_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "RRESP" }} , 
 	{ "name": "m_axi_Layer_Neurons_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "BVALID" }} , 
 	{ "name": "m_axi_Layer_Neurons_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "BREADY" }} , 
 	{ "name": "m_axi_Layer_Neurons_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "BRESP" }} , 
 	{ "name": "m_axi_Layer_Neurons_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "BID" }} , 
 	{ "name": "m_axi_Layer_Neurons_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Neurons", "role": "BUSER" }} , 
 	{ "name": "m_axi_Layer_Weights_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWVALID" }} , 
 	{ "name": "m_axi_Layer_Weights_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWREADY" }} , 
 	{ "name": "m_axi_Layer_Weights_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWADDR" }} , 
 	{ "name": "m_axi_Layer_Weights_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWID" }} , 
 	{ "name": "m_axi_Layer_Weights_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_Layer_Weights_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_Layer_Weights_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "RUSER" }} , 
 	{ "name": "m_axi_Layer_Weights_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "RRESP" }} , 
 	{ "name": "m_axi_Layer_Weights_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "BVALID" }} , 
 	{ "name": "m_axi_Layer_Weights_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "BREADY" }} , 
 	{ "name": "m_axi_Layer_Weights_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "BRESP" }} , 
 	{ "name": "m_axi_Layer_Weights_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "BID" }} , 
 	{ "name": "m_axi_Layer_Weights_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer_Weights", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "9", "14", "17", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "cnn_lenet",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "595147", "EstimateLatencyMax" : "595147",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Layer_Neurons", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "Layer_Neurons_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "Layer_Neurons_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "Layer_Neurons_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_207", "Port" : "Layer_Neurons", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "Layer_Weights", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "Layer_Weights_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "Layer_Weights_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_207", "Port" : "Layer_Weights", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_223", "Port" : "Layer_Weights", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "14", "SubInstance" : "grp_cnn_lenet_Pipeline_col_loop2_kernelRow_Loop2_kernelCol_loop2_fu_234", "Port" : "Layer_Weights", "Inst_start_state" : "15", "Inst_end_state" : "16"}]},
			{"Name" : "Layer1_Neurons_CPU", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer1_Weights_CPU", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer2_Weights_CPU", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer3_Weights_CPU", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer4_Neurons_CPU", "Type" : "None", "Direction" : "I"},
			{"Name" : "sigmoidLUT_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_207", "Port" : "sigmoidLUT_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "9", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_223", "Port" : "sigmoidLUT_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "17", "SubInstance" : "grp_SIGMOID_fu_244", "Port" : "sigmoidLUT_1", "Inst_start_state" : "17", "Inst_end_state" : "26"}]}],
		"Loop" : [
			{"Name" : "calculateLayer4_loop", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "32", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state27"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state28"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Layer2_Neurons_CPU_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Layer3_Neurons_CPU_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_207", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_207.mul_3ns_8ns_10_1_1_U13", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_207.mul_4ns_7ns_10_1_1_U14", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_207.mac_muladd_3ns_8ns_4ns_10_4_1_U15", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_207.mac_muladd_4ns_4ns_10ns_10_4_1_U16", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_207.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_223", "Parent" : "0", "Child" : ["10", "11", "12", "13"],
		"CDFG" : "cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "190475", "EstimateLatencyMax" : "190475",
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
			{"Name" : "Layer2_Weights_CPU", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer2_Neurons_CPU", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Layer3_Neurons_CPU", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sigmoidLUT_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "calculateLayer3_loop_row_Loop_col_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "152", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage17", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage17_subdone", "QuitState" : "ap_ST_fsm_pp0_stage17", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage17_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_223.mul_6ns_11ns_16_1_1_U28", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_223.mul_3ns_6ns_8_1_1_U29", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_223.mac_muladd_6ns_5ns_3ns_11_4_1_U30", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_223.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_col_loop2_kernelRow_Loop2_kernelCol_loop2_fu_234", "Parent" : "0", "Child" : ["15", "16"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_col_loop2_kernelRow_Loop2_kernelCol_loop2_fu_234.mac_muladd_6ns_5ns_3ns_11_4_1_U40", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_col_loop2_kernelRow_Loop2_kernelCol_loop2_fu_234.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_244", "Parent" : "0", "Child" : ["18", "19", "20", "21", "22", "23"],
		"CDFG" : "SIGMOID",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "9", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "sigmoidLUT_1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_244.sigmoidLUT_1_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_244.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "17"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_244.fcmp_32ns_32ns_1_2_no_dsp_1_U2", "Parent" : "17"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_244.fcmp_32ns_32ns_1_2_no_dsp_1_U3", "Parent" : "17"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_244.fcmp_32ns_32ns_1_2_no_dsp_1_U4", "Parent" : "17"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_244.dmul_64ns_64ns_64_4_max_dsp_1_U5", "Parent" : "17"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_bus_s_axi_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Layer_Neurons_m_axi_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Layer_Weights_m_axi_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U46", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U47", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn_lenet {
		Layer_Neurons {Type IO LastRead 34 FirstWrite -1}
		Layer_Weights {Type I LastRead 159 FirstWrite -1}
		Layer1_Neurons_CPU {Type I LastRead 0 FirstWrite -1}
		Layer1_Weights_CPU {Type I LastRead 0 FirstWrite -1}
		Layer2_Weights_CPU {Type I LastRead 0 FirstWrite -1}
		Layer3_Weights_CPU {Type I LastRead 0 FirstWrite -1}
		Layer4_Neurons_CPU {Type I LastRead 0 FirstWrite -1}
		sigmoidLUT_1 {Type I LastRead -1 FirstWrite -1}}
	cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop {
		Layer_Weights {Type I LastRead 34 FirstWrite -1}
		Layer_Neurons {Type I LastRead 34 FirstWrite -1}
		Layer1_Weights_CPU {Type I LastRead 0 FirstWrite -1}
		Layer1_Neurons_CPU {Type I LastRead 0 FirstWrite -1}
		Layer2_Neurons_CPU {Type O LastRead -1 FirstWrite 123}
		sigmoidLUT_1 {Type I LastRead -1 FirstWrite -1}}
	cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop {
		Layer_Weights {Type I LastRead 159 FirstWrite -1}
		Layer2_Weights_CPU {Type I LastRead 0 FirstWrite -1}
		Layer2_Neurons_CPU {Type I LastRead 76 FirstWrite -1}
		Layer3_Neurons_CPU {Type O LastRead -1 FirstWrite 625}
		sigmoidLUT_1 {Type I LastRead -1 FirstWrite -1}}
	cnn_lenet_Pipeline_col_loop2_kernelRow_Loop2_kernelCol_loop2 {
		somme {Type I LastRead 0 FirstWrite -1}
		Layer_Weights {Type I LastRead 4 FirstWrite -1}
		sext_ln75 {Type I LastRead 0 FirstWrite -1}
		Layer3_Neurons_CPU {Type I LastRead 3 FirstWrite -1}
		somme_61_out {Type O LastRead -1 FirstWrite 7}}
	SIGMOID {
		x {Type I LastRead 0 FirstWrite -1}
		sigmoidLUT_1 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "595147", "Max" : "595147"}
	, {"Name" : "Interval", "Min" : "595148", "Max" : "595148"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	Layer_Neurons { m_axi {  { m_axi_Layer_Neurons_AWVALID VALID 1 1 }  { m_axi_Layer_Neurons_AWREADY READY 0 1 }  { m_axi_Layer_Neurons_AWADDR ADDR 1 64 }  { m_axi_Layer_Neurons_AWID ID 1 1 }  { m_axi_Layer_Neurons_AWLEN SIZE 1 8 }  { m_axi_Layer_Neurons_AWSIZE BURST 1 3 }  { m_axi_Layer_Neurons_AWBURST LOCK 1 2 }  { m_axi_Layer_Neurons_AWLOCK CACHE 1 2 }  { m_axi_Layer_Neurons_AWCACHE PROT 1 4 }  { m_axi_Layer_Neurons_AWPROT QOS 1 3 }  { m_axi_Layer_Neurons_AWQOS REGION 1 4 }  { m_axi_Layer_Neurons_AWREGION USER 1 4 }  { m_axi_Layer_Neurons_AWUSER DATA 1 1 }  { m_axi_Layer_Neurons_WVALID VALID 1 1 }  { m_axi_Layer_Neurons_WREADY READY 0 1 }  { m_axi_Layer_Neurons_WDATA FIFONUM 1 32 }  { m_axi_Layer_Neurons_WSTRB STRB 1 4 }  { m_axi_Layer_Neurons_WLAST LAST 1 1 }  { m_axi_Layer_Neurons_WID ID 1 1 }  { m_axi_Layer_Neurons_WUSER DATA 1 1 }  { m_axi_Layer_Neurons_ARVALID VALID 1 1 }  { m_axi_Layer_Neurons_ARREADY READY 0 1 }  { m_axi_Layer_Neurons_ARADDR ADDR 1 64 }  { m_axi_Layer_Neurons_ARID ID 1 1 }  { m_axi_Layer_Neurons_ARLEN SIZE 1 8 }  { m_axi_Layer_Neurons_ARSIZE BURST 1 3 }  { m_axi_Layer_Neurons_ARBURST LOCK 1 2 }  { m_axi_Layer_Neurons_ARLOCK CACHE 1 2 }  { m_axi_Layer_Neurons_ARCACHE PROT 1 4 }  { m_axi_Layer_Neurons_ARPROT QOS 1 3 }  { m_axi_Layer_Neurons_ARQOS REGION 1 4 }  { m_axi_Layer_Neurons_ARREGION USER 1 4 }  { m_axi_Layer_Neurons_ARUSER DATA 1 1 }  { m_axi_Layer_Neurons_RVALID VALID 0 1 }  { m_axi_Layer_Neurons_RREADY READY 1 1 }  { m_axi_Layer_Neurons_RDATA FIFONUM 0 32 }  { m_axi_Layer_Neurons_RLAST LAST 0 1 }  { m_axi_Layer_Neurons_RID ID 0 1 }  { m_axi_Layer_Neurons_RUSER DATA 0 1 }  { m_axi_Layer_Neurons_RRESP RESP 0 2 }  { m_axi_Layer_Neurons_BVALID VALID 0 1 }  { m_axi_Layer_Neurons_BREADY READY 1 1 }  { m_axi_Layer_Neurons_BRESP RESP 0 2 }  { m_axi_Layer_Neurons_BID ID 0 1 }  { m_axi_Layer_Neurons_BUSER DATA 0 1 } } }
	Layer_Weights { m_axi {  { m_axi_Layer_Weights_AWVALID VALID 1 1 }  { m_axi_Layer_Weights_AWREADY READY 0 1 }  { m_axi_Layer_Weights_AWADDR ADDR 1 64 }  { m_axi_Layer_Weights_AWID ID 1 1 }  { m_axi_Layer_Weights_AWLEN SIZE 1 8 }  { m_axi_Layer_Weights_AWSIZE BURST 1 3 }  { m_axi_Layer_Weights_AWBURST LOCK 1 2 }  { m_axi_Layer_Weights_AWLOCK CACHE 1 2 }  { m_axi_Layer_Weights_AWCACHE PROT 1 4 }  { m_axi_Layer_Weights_AWPROT QOS 1 3 }  { m_axi_Layer_Weights_AWQOS REGION 1 4 }  { m_axi_Layer_Weights_AWREGION USER 1 4 }  { m_axi_Layer_Weights_AWUSER DATA 1 1 }  { m_axi_Layer_Weights_WVALID VALID 1 1 }  { m_axi_Layer_Weights_WREADY READY 0 1 }  { m_axi_Layer_Weights_WDATA FIFONUM 1 32 }  { m_axi_Layer_Weights_WSTRB STRB 1 4 }  { m_axi_Layer_Weights_WLAST LAST 1 1 }  { m_axi_Layer_Weights_WID ID 1 1 }  { m_axi_Layer_Weights_WUSER DATA 1 1 }  { m_axi_Layer_Weights_ARVALID VALID 1 1 }  { m_axi_Layer_Weights_ARREADY READY 0 1 }  { m_axi_Layer_Weights_ARADDR ADDR 1 64 }  { m_axi_Layer_Weights_ARID ID 1 1 }  { m_axi_Layer_Weights_ARLEN SIZE 1 8 }  { m_axi_Layer_Weights_ARSIZE BURST 1 3 }  { m_axi_Layer_Weights_ARBURST LOCK 1 2 }  { m_axi_Layer_Weights_ARLOCK CACHE 1 2 }  { m_axi_Layer_Weights_ARCACHE PROT 1 4 }  { m_axi_Layer_Weights_ARPROT QOS 1 3 }  { m_axi_Layer_Weights_ARQOS REGION 1 4 }  { m_axi_Layer_Weights_ARREGION USER 1 4 }  { m_axi_Layer_Weights_ARUSER DATA 1 1 }  { m_axi_Layer_Weights_RVALID VALID 0 1 }  { m_axi_Layer_Weights_RREADY READY 1 1 }  { m_axi_Layer_Weights_RDATA FIFONUM 0 32 }  { m_axi_Layer_Weights_RLAST LAST 0 1 }  { m_axi_Layer_Weights_RID ID 0 1 }  { m_axi_Layer_Weights_RUSER DATA 0 1 }  { m_axi_Layer_Weights_RRESP RESP 0 2 }  { m_axi_Layer_Weights_BVALID VALID 0 1 }  { m_axi_Layer_Weights_BREADY READY 1 1 }  { m_axi_Layer_Weights_BRESP RESP 0 2 }  { m_axi_Layer_Weights_BID ID 0 1 }  { m_axi_Layer_Weights_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict Layer_Neurons {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}
dict set maxi_interface_dict Layer_Weights {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ Layer_Neurons 1 }
	{ Layer_Weights 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ Layer_Neurons 1 }
	{ Layer_Weights 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
