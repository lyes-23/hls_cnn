# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL_bus {
Layer4_Neurons_CPU { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
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
}
dict set axilite_register_dict control $port_control


