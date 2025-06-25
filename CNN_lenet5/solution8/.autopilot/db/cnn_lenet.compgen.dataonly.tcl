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
Layer1_Neurons_CPU { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
Layer1_Weights_CPU { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
Layer2_Weights_CPU { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
Layer3_Weights_CPU { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
Layer4_Neurons_CPU { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
}
dict set axilite_register_dict control $port_control


