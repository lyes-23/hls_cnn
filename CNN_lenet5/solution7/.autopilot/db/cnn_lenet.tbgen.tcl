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
	{ gmem int 32 regular {axi_master 2}  }
	{ Layer1_Neurons_CPU int 64 regular {axi_slave 0}  }
	{ Layer2_Neurons_CPU int 32 regular {array 1014 { 2 1 } 1 1 }  }
	{ Layer3_Neurons_CPU int 32 regular {array 1250 { 2 1 } 1 1 }  }
	{ Layer1_Weights_CPU int 32 regular {bram 156 { 1 1 } 1 1 }  }
	{ Layer2_Weights_CPU int 32 regular {bram 7800 { 1 1 } 1 1 }  }
	{ Layer3_Weights_CPU int 32 regular {bram 125100 { 1 1 } 1 1 }  }
	{ Layer4_Neurons_CPU int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "Layer1_Neurons_CPU","offset": { "type": "dynamic","port_name": "Layer1_Neurons_CPU","bundle": "control"},"direction": "READONLY"},{"cName": "Layer4_Neurons_CPU","offset": { "type": "dynamic","port_name": "Layer4_Neurons_CPU","bundle": "CTRL_bus"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "Layer1_Neurons_CPU", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "Layer2_Neurons_CPU", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "Layer3_Neurons_CPU", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "Layer1_Weights_CPU", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Layer2_Weights_CPU", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Layer3_Weights_CPU", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Layer4_Neurons_CPU", "interface" : "axi_slave", "bundle":"CTRL_bus","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} ]}
# RTL Port declarations: 
set portNum 140
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ Layer2_Neurons_CPU_address0 sc_out sc_lv 10 signal 2 } 
	{ Layer2_Neurons_CPU_ce0 sc_out sc_logic 1 signal 2 } 
	{ Layer2_Neurons_CPU_we0 sc_out sc_logic 1 signal 2 } 
	{ Layer2_Neurons_CPU_d0 sc_out sc_lv 32 signal 2 } 
	{ Layer2_Neurons_CPU_q0 sc_in sc_lv 32 signal 2 } 
	{ Layer2_Neurons_CPU_address1 sc_out sc_lv 10 signal 2 } 
	{ Layer2_Neurons_CPU_ce1 sc_out sc_logic 1 signal 2 } 
	{ Layer2_Neurons_CPU_q1 sc_in sc_lv 32 signal 2 } 
	{ Layer3_Neurons_CPU_address0 sc_out sc_lv 11 signal 3 } 
	{ Layer3_Neurons_CPU_ce0 sc_out sc_logic 1 signal 3 } 
	{ Layer3_Neurons_CPU_we0 sc_out sc_logic 1 signal 3 } 
	{ Layer3_Neurons_CPU_d0 sc_out sc_lv 32 signal 3 } 
	{ Layer3_Neurons_CPU_q0 sc_in sc_lv 32 signal 3 } 
	{ Layer3_Neurons_CPU_address1 sc_out sc_lv 11 signal 3 } 
	{ Layer3_Neurons_CPU_ce1 sc_out sc_logic 1 signal 3 } 
	{ Layer3_Neurons_CPU_q1 sc_in sc_lv 32 signal 3 } 
	{ Layer1_Weights_CPU_Addr_A sc_out sc_lv 32 signal 4 } 
	{ Layer1_Weights_CPU_EN_A sc_out sc_logic 1 signal 4 } 
	{ Layer1_Weights_CPU_WEN_A sc_out sc_lv 4 signal 4 } 
	{ Layer1_Weights_CPU_Din_A sc_out sc_lv 32 signal 4 } 
	{ Layer1_Weights_CPU_Dout_A sc_in sc_lv 32 signal 4 } 
	{ Layer1_Weights_CPU_Clk_A sc_out sc_logic 1 signal 4 } 
	{ Layer1_Weights_CPU_Rst_A sc_out sc_logic 1 signal 4 } 
	{ Layer1_Weights_CPU_Addr_B sc_out sc_lv 32 signal 4 } 
	{ Layer1_Weights_CPU_EN_B sc_out sc_logic 1 signal 4 } 
	{ Layer1_Weights_CPU_WEN_B sc_out sc_lv 4 signal 4 } 
	{ Layer1_Weights_CPU_Din_B sc_out sc_lv 32 signal 4 } 
	{ Layer1_Weights_CPU_Dout_B sc_in sc_lv 32 signal 4 } 
	{ Layer1_Weights_CPU_Clk_B sc_out sc_logic 1 signal 4 } 
	{ Layer1_Weights_CPU_Rst_B sc_out sc_logic 1 signal 4 } 
	{ Layer2_Weights_CPU_Addr_A sc_out sc_lv 32 signal 5 } 
	{ Layer2_Weights_CPU_EN_A sc_out sc_logic 1 signal 5 } 
	{ Layer2_Weights_CPU_WEN_A sc_out sc_lv 4 signal 5 } 
	{ Layer2_Weights_CPU_Din_A sc_out sc_lv 32 signal 5 } 
	{ Layer2_Weights_CPU_Dout_A sc_in sc_lv 32 signal 5 } 
	{ Layer2_Weights_CPU_Clk_A sc_out sc_logic 1 signal 5 } 
	{ Layer2_Weights_CPU_Rst_A sc_out sc_logic 1 signal 5 } 
	{ Layer2_Weights_CPU_Addr_B sc_out sc_lv 32 signal 5 } 
	{ Layer2_Weights_CPU_EN_B sc_out sc_logic 1 signal 5 } 
	{ Layer2_Weights_CPU_WEN_B sc_out sc_lv 4 signal 5 } 
	{ Layer2_Weights_CPU_Din_B sc_out sc_lv 32 signal 5 } 
	{ Layer2_Weights_CPU_Dout_B sc_in sc_lv 32 signal 5 } 
	{ Layer2_Weights_CPU_Clk_B sc_out sc_logic 1 signal 5 } 
	{ Layer2_Weights_CPU_Rst_B sc_out sc_logic 1 signal 5 } 
	{ Layer3_Weights_CPU_Addr_A sc_out sc_lv 32 signal 6 } 
	{ Layer3_Weights_CPU_EN_A sc_out sc_logic 1 signal 6 } 
	{ Layer3_Weights_CPU_WEN_A sc_out sc_lv 4 signal 6 } 
	{ Layer3_Weights_CPU_Din_A sc_out sc_lv 32 signal 6 } 
	{ Layer3_Weights_CPU_Dout_A sc_in sc_lv 32 signal 6 } 
	{ Layer3_Weights_CPU_Clk_A sc_out sc_logic 1 signal 6 } 
	{ Layer3_Weights_CPU_Rst_A sc_out sc_logic 1 signal 6 } 
	{ Layer3_Weights_CPU_Addr_B sc_out sc_lv 32 signal 6 } 
	{ Layer3_Weights_CPU_EN_B sc_out sc_logic 1 signal 6 } 
	{ Layer3_Weights_CPU_WEN_B sc_out sc_lv 4 signal 6 } 
	{ Layer3_Weights_CPU_Din_B sc_out sc_lv 32 signal 6 } 
	{ Layer3_Weights_CPU_Dout_B sc_in sc_lv 32 signal 6 } 
	{ Layer3_Weights_CPU_Clk_B sc_out sc_logic 1 signal 6 } 
	{ Layer3_Weights_CPU_Rst_B sc_out sc_logic 1 signal 6 } 
	{ s_axi_CTRL_bus_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_bus_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_bus_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_CTRL_bus_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_bus_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_bus_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CTRL_bus_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CTRL_bus_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CTRL_bus_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CTRL_bus_ARADDR sc_in sc_lv 5 signal -1 } 
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
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CTRL_bus_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "AWADDR" },"address":[{"name":"cnn_lenet","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_lenet","role":"continue","value":"0","valid_bit":"4"},{"name":"cnn_lenet","role":"auto_start","value":"0","valid_bit":"7"},{"name":"Layer4_Neurons_CPU","role":"data","value":"16"}] },
	{ "name": "s_axi_CTRL_bus_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "AWVALID" } },
	{ "name": "s_axi_CTRL_bus_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "AWREADY" } },
	{ "name": "s_axi_CTRL_bus_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "WVALID" } },
	{ "name": "s_axi_CTRL_bus_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "WREADY" } },
	{ "name": "s_axi_CTRL_bus_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "WDATA" } },
	{ "name": "s_axi_CTRL_bus_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "WSTRB" } },
	{ "name": "s_axi_CTRL_bus_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "CTRL_bus", "role": "ARADDR" },"address":[{"name":"cnn_lenet","role":"start","value":"0","valid_bit":"0"},{"name":"cnn_lenet","role":"done","value":"0","valid_bit":"1"},{"name":"cnn_lenet","role":"idle","value":"0","valid_bit":"2"},{"name":"cnn_lenet","role":"ready","value":"0","valid_bit":"3"},{"name":"cnn_lenet","role":"auto_start","value":"0","valid_bit":"7"}] },
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"Layer1_Neurons_CPU","role":"data","value":"16"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[] },
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
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "Layer2_Neurons_CPU_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "address0" }} , 
 	{ "name": "Layer2_Neurons_CPU_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "ce0" }} , 
 	{ "name": "Layer2_Neurons_CPU_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "we0" }} , 
 	{ "name": "Layer2_Neurons_CPU_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "d0" }} , 
 	{ "name": "Layer2_Neurons_CPU_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "q0" }} , 
 	{ "name": "Layer2_Neurons_CPU_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "address1" }} , 
 	{ "name": "Layer2_Neurons_CPU_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "ce1" }} , 
 	{ "name": "Layer2_Neurons_CPU_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer2_Neurons_CPU", "role": "q1" }} , 
 	{ "name": "Layer3_Neurons_CPU_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "address0" }} , 
 	{ "name": "Layer3_Neurons_CPU_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "ce0" }} , 
 	{ "name": "Layer3_Neurons_CPU_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "we0" }} , 
 	{ "name": "Layer3_Neurons_CPU_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "d0" }} , 
 	{ "name": "Layer3_Neurons_CPU_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "q0" }} , 
 	{ "name": "Layer3_Neurons_CPU_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "address1" }} , 
 	{ "name": "Layer3_Neurons_CPU_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "ce1" }} , 
 	{ "name": "Layer3_Neurons_CPU_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU", "role": "q1" }} , 
 	{ "name": "Layer1_Weights_CPU_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer1_Weights_CPU", "role": "Addr_A" }} , 
 	{ "name": "Layer1_Weights_CPU_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer1_Weights_CPU", "role": "EN_A" }} , 
 	{ "name": "Layer1_Weights_CPU_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer1_Weights_CPU", "role": "WEN_A" }} , 
 	{ "name": "Layer1_Weights_CPU_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer1_Weights_CPU", "role": "Din_A" }} , 
 	{ "name": "Layer1_Weights_CPU_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer1_Weights_CPU", "role": "Dout_A" }} , 
 	{ "name": "Layer1_Weights_CPU_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer1_Weights_CPU", "role": "Clk_A" }} , 
 	{ "name": "Layer1_Weights_CPU_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer1_Weights_CPU", "role": "Rst_A" }} , 
 	{ "name": "Layer1_Weights_CPU_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer1_Weights_CPU", "role": "Addr_B" }} , 
 	{ "name": "Layer1_Weights_CPU_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer1_Weights_CPU", "role": "EN_B" }} , 
 	{ "name": "Layer1_Weights_CPU_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer1_Weights_CPU", "role": "WEN_B" }} , 
 	{ "name": "Layer1_Weights_CPU_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer1_Weights_CPU", "role": "Din_B" }} , 
 	{ "name": "Layer1_Weights_CPU_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer1_Weights_CPU", "role": "Dout_B" }} , 
 	{ "name": "Layer1_Weights_CPU_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer1_Weights_CPU", "role": "Clk_B" }} , 
 	{ "name": "Layer1_Weights_CPU_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer1_Weights_CPU", "role": "Rst_B" }} , 
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
 	{ "name": "Layer2_Weights_CPU_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer2_Weights_CPU", "role": "Rst_B" }} , 
 	{ "name": "Layer3_Weights_CPU_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU", "role": "Addr_A" }} , 
 	{ "name": "Layer3_Weights_CPU_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU", "role": "EN_A" }} , 
 	{ "name": "Layer3_Weights_CPU_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU", "role": "WEN_A" }} , 
 	{ "name": "Layer3_Weights_CPU_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU", "role": "Din_A" }} , 
 	{ "name": "Layer3_Weights_CPU_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU", "role": "Dout_A" }} , 
 	{ "name": "Layer3_Weights_CPU_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU", "role": "Clk_A" }} , 
 	{ "name": "Layer3_Weights_CPU_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU", "role": "Rst_A" }} , 
 	{ "name": "Layer3_Weights_CPU_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU", "role": "Addr_B" }} , 
 	{ "name": "Layer3_Weights_CPU_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU", "role": "EN_B" }} , 
 	{ "name": "Layer3_Weights_CPU_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU", "role": "WEN_B" }} , 
 	{ "name": "Layer3_Weights_CPU_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU", "role": "Din_B" }} , 
 	{ "name": "Layer3_Weights_CPU_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU", "role": "Dout_B" }} , 
 	{ "name": "Layer3_Weights_CPU_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU", "role": "Clk_B" }} , 
 	{ "name": "Layer3_Weights_CPU_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU", "role": "Rst_B" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "7", "12", "14", "21", "22", "23", "24", "25"],
		"CDFG" : "cnn_lenet",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "218617", "EstimateLatencyMax" : "218617",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_96", "Port" : "gmem", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "12", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer4_loop_fu_122", "Port" : "gmem", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "Layer1_Neurons_CPU", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer2_Neurons_CPU", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_96", "Port" : "Layer2_Neurons_CPU", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "7", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_110", "Port" : "Layer2_Neurons_CPU", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Layer3_Neurons_CPU", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_110", "Port" : "Layer3_Neurons_CPU", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "12", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer4_loop_fu_122", "Port" : "Layer3_Neurons_CPU", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "Layer1_Weights_CPU", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_96", "Port" : "Layer1_Weights_CPU", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "Layer2_Weights_CPU", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_110", "Port" : "Layer2_Weights_CPU", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Layer3_Weights_CPU", "Type" : "Bram", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer4_loop_fu_122", "Port" : "Layer3_Weights_CPU", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "Layer4_Neurons_CPU", "Type" : "None", "Direction" : "I"},
			{"Name" : "sigmoidLUT_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_96", "Port" : "sigmoidLUT_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "7", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_110", "Port" : "sigmoidLUT_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "12", "SubInstance" : "grp_cnn_lenet_Pipeline_calculateLayer4_loop_fu_122", "Port" : "sigmoidLUT_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_96", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6"],
		"CDFG" : "cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25449", "EstimateLatencyMax" : "25449",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "Layer1_Weights_CPU", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "Layer1_Neurons_CPU", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer2_Neurons_CPU", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sigmoidLUT_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "25", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage22", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage22_subdone", "QuitState" : "ap_ST_fsm_pp0_stage22", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage22_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_96.mul_4ns_7ns_10_1_1_U13", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_96.mul_3ns_6ns_8_1_1_U14", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_96.mac_muladd_3ns_8ns_4ns_10_4_1_U15", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_96.mac_muladd_4ns_4ns_10ns_10_4_1_U16", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_96.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_110", "Parent" : "0", "Child" : ["8", "9", "10", "11"],
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
			{"Name" : "Layer2_Weights_CPU", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "Layer2_Neurons_CPU", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Layer3_Neurons_CPU", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sigmoidLUT_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "calculateLayer3_loop_row_Loop_col_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "152", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_110.mul_6ns_9ns_14_1_1_U26", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_110.mul_3ns_6ns_8_1_1_U27", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_110.mac_muladd_6ns_5ns_3ns_11_4_1_U28", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer4_loop_fu_122", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "cnn_lenet_Pipeline_calculateLayer4_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2691", "EstimateLatencyMax" : "2691",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "Layer3_Neurons_CPU", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln70", "Type" : "None", "Direction" : "I"},
			{"Name" : "Layer3_Weights_CPU", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "sigmoidLUT_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "calculateLayer4_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "26", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage11", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage11_subdone", "QuitState" : "ap_ST_fsm_pp0_stage11", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage11_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cnn_lenet_Pipeline_calculateLayer4_loop_fu_122.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_171", "Parent" : "0", "Child" : ["15", "16", "17", "18", "19", "20"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_171.sigmoidLUT_1_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_171.fpext_32ns_64_2_no_dsp_1_U1", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_171.fcmp_32ns_32ns_1_2_no_dsp_1_U2", "Parent" : "14"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_171.fcmp_32ns_32ns_1_2_no_dsp_1_U3", "Parent" : "14"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_171.fcmp_32ns_32ns_1_2_no_dsp_1_U4", "Parent" : "14"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_SIGMOID_fu_171.dmul_64ns_64ns_64_4_max_dsp_1_U5", "Parent" : "14"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.CTRL_bus_s_axi_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U38", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	cnn_lenet {
		gmem {Type IO LastRead 34 FirstWrite -1}
		Layer1_Neurons_CPU {Type I LastRead 0 FirstWrite -1}
		Layer2_Neurons_CPU {Type IO LastRead 76 FirstWrite -1}
		Layer3_Neurons_CPU {Type IO LastRead 13 FirstWrite -1}
		Layer1_Weights_CPU {Type I LastRead 14 FirstWrite -1}
		Layer2_Weights_CPU {Type I LastRead 76 FirstWrite -1}
		Layer3_Weights_CPU {Type I LastRead 13 FirstWrite -1}
		Layer4_Neurons_CPU {Type I LastRead 0 FirstWrite -1}
		sigmoidLUT_1 {Type I LastRead -1 FirstWrite -1}}
	cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop {
		gmem {Type I LastRead 34 FirstWrite -1}
		Layer1_Weights_CPU {Type I LastRead 14 FirstWrite -1}
		Layer1_Neurons_CPU {Type I LastRead 0 FirstWrite -1}
		Layer2_Neurons_CPU {Type O LastRead -1 FirstWrite 122}
		sigmoidLUT_1 {Type I LastRead -1 FirstWrite -1}}
	cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop {
		Layer2_Weights_CPU {Type I LastRead 76 FirstWrite -1}
		Layer2_Neurons_CPU {Type I LastRead 76 FirstWrite -1}
		Layer3_Neurons_CPU {Type O LastRead -1 FirstWrite 617}
		sigmoidLUT_1 {Type I LastRead -1 FirstWrite -1}}
	cnn_lenet_Pipeline_calculateLayer4_loop {
		gmem {Type O LastRead -1 FirstWrite 115}
		Layer3_Neurons_CPU {Type I LastRead 13 FirstWrite -1}
		sext_ln70 {Type I LastRead 0 FirstWrite -1}
		Layer3_Weights_CPU {Type I LastRead 13 FirstWrite -1}
		sigmoidLUT_1 {Type I LastRead -1 FirstWrite -1}}
	SIGMOID {
		x {Type I LastRead 0 FirstWrite -1}
		sigmoidLUT_1 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "218617", "Max" : "218617"}
	, {"Name" : "Interval", "Min" : "218618", "Max" : "218618"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	Layer2_Neurons_CPU { ap_memory {  { Layer2_Neurons_CPU_address0 mem_address 1 10 }  { Layer2_Neurons_CPU_ce0 mem_ce 1 1 }  { Layer2_Neurons_CPU_we0 mem_we 1 1 }  { Layer2_Neurons_CPU_d0 mem_din 1 32 }  { Layer2_Neurons_CPU_q0 mem_dout 0 32 }  { Layer2_Neurons_CPU_address1 MemPortADDR2 1 10 }  { Layer2_Neurons_CPU_ce1 MemPortCE2 1 1 }  { Layer2_Neurons_CPU_q1 MemPortDOUT2 0 32 } } }
	Layer3_Neurons_CPU { ap_memory {  { Layer3_Neurons_CPU_address0 mem_address 1 11 }  { Layer3_Neurons_CPU_ce0 mem_ce 1 1 }  { Layer3_Neurons_CPU_we0 mem_we 1 1 }  { Layer3_Neurons_CPU_d0 mem_din 1 32 }  { Layer3_Neurons_CPU_q0 mem_dout 0 32 }  { Layer3_Neurons_CPU_address1 MemPortADDR2 1 11 }  { Layer3_Neurons_CPU_ce1 MemPortCE2 1 1 }  { Layer3_Neurons_CPU_q1 MemPortDOUT2 0 32 } } }
	Layer1_Weights_CPU { bram {  { Layer1_Weights_CPU_Addr_A MemPortADDR2 1 32 }  { Layer1_Weights_CPU_EN_A MemPortCE2 1 1 }  { Layer1_Weights_CPU_WEN_A MemPortWE2 1 4 }  { Layer1_Weights_CPU_Din_A MemPortDIN2 1 32 }  { Layer1_Weights_CPU_Dout_A MemPortDOUT2 0 32 }  { Layer1_Weights_CPU_Clk_A mem_clk 1 1 }  { Layer1_Weights_CPU_Rst_A mem_rst 1 1 }  { Layer1_Weights_CPU_Addr_B MemPortADDR2 1 32 }  { Layer1_Weights_CPU_EN_B MemPortCE2 1 1 }  { Layer1_Weights_CPU_WEN_B MemPortWE2 1 4 }  { Layer1_Weights_CPU_Din_B MemPortDIN2 1 32 }  { Layer1_Weights_CPU_Dout_B MemPortDOUT2 0 32 }  { Layer1_Weights_CPU_Clk_B mem_clk 1 1 }  { Layer1_Weights_CPU_Rst_B mem_rst 1 1 } } }
	Layer2_Weights_CPU { bram {  { Layer2_Weights_CPU_Addr_A MemPortADDR2 1 32 }  { Layer2_Weights_CPU_EN_A MemPortCE2 1 1 }  { Layer2_Weights_CPU_WEN_A MemPortWE2 1 4 }  { Layer2_Weights_CPU_Din_A MemPortDIN2 1 32 }  { Layer2_Weights_CPU_Dout_A MemPortDOUT2 0 32 }  { Layer2_Weights_CPU_Clk_A mem_clk 1 1 }  { Layer2_Weights_CPU_Rst_A mem_rst 1 1 }  { Layer2_Weights_CPU_Addr_B MemPortADDR2 1 32 }  { Layer2_Weights_CPU_EN_B MemPortCE2 1 1 }  { Layer2_Weights_CPU_WEN_B MemPortWE2 1 4 }  { Layer2_Weights_CPU_Din_B MemPortDIN2 1 32 }  { Layer2_Weights_CPU_Dout_B MemPortDOUT2 0 32 }  { Layer2_Weights_CPU_Clk_B mem_clk 1 1 }  { Layer2_Weights_CPU_Rst_B mem_rst 1 1 } } }
	Layer3_Weights_CPU { bram {  { Layer3_Weights_CPU_Addr_A MemPortADDR2 1 32 }  { Layer3_Weights_CPU_EN_A MemPortCE2 1 1 }  { Layer3_Weights_CPU_WEN_A MemPortWE2 1 4 }  { Layer3_Weights_CPU_Din_A MemPortDIN2 1 32 }  { Layer3_Weights_CPU_Dout_A MemPortDOUT2 0 32 }  { Layer3_Weights_CPU_Clk_A mem_clk 1 1 }  { Layer3_Weights_CPU_Rst_A mem_rst 1 1 }  { Layer3_Weights_CPU_Addr_B MemPortADDR2 1 32 }  { Layer3_Weights_CPU_EN_B MemPortCE2 1 1 }  { Layer3_Weights_CPU_WEN_B MemPortWE2 1 4 }  { Layer3_Weights_CPU_Din_B MemPortDIN2 1 32 }  { Layer3_Weights_CPU_Dout_B MemPortDOUT2 0 32 }  { Layer3_Weights_CPU_Clk_B mem_clk 1 1 }  { Layer3_Weights_CPU_Rst_B mem_rst 1 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
