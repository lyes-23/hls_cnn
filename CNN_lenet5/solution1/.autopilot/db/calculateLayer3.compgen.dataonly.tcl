# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL_bus {
Layer2_Neurons_CPU { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
Layer2_Weights_CPU { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
Layer3_Neurons_CPU { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL_bus $port_CTRL_bus


