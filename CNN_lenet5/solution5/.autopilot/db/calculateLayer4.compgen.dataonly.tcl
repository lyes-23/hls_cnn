# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL_bus {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL_bus $port_CTRL_bus


set port_control {
Layer4_Neurons_CPU { 
	dir O
	width 32
	depth 100
	mode ap_memory
	offset 512
	offset_end 1023
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
Layer3_Neurons_CPU { 
	dir I
	width 32
	depth 1250
	mode ap_memory
	offset 8192
	offset_end 16383
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
Layer3_Weights_CPU { 
	dir I
	width 32
	depth 125100
	mode ap_memory
	offset 524288
	offset_end 1048575
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
}
dict set axilite_register_dict control $port_control


