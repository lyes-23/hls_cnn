set ModuleHierarchy {[{
"Name" : "Lenet_HW","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_calculateLayer2_fu_107","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_43_1_VITIS_LOOP_44_2_VITIS_LOOP_45_3","ID" : "2","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "generic_tanh_double_s","ID" : "3","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "grp_exp_generic_double_s_fu_89","ID" : "4","Type" : "pipeline"},]},]},]},
	{"Name" : "grp_calculateLayer3_fu_122","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_76_1_VITIS_LOOP_77_2_VITIS_LOOP_78_3","ID" : "6","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "generic_tanh_double_s","ID" : "7","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "grp_exp_generic_double_s_fu_89","ID" : "8","Type" : "pipeline"},]},]},]},],
"SubLoops" : [
	{"Name" : "VITIS_LOOP_109_1","ID" : "9","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_Lenet_HW_Pipeline_VITIS_LOOP_112_2_VITIS_LOOP_114_3_VITIS_LOOP_115_4_fu_136","ID" : "10","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_112_2_VITIS_LOOP_114_3_VITIS_LOOP_115_4","ID" : "11","Type" : "pipeline"},]},
	{"Name" : "grp_generic_tanh_double_s_fu_146","ID" : "12","Type" : "pipeline",
			"SubInsts" : [
			{"Name" : "grp_exp_generic_double_s_fu_89","ID" : "13","Type" : "pipeline"},]},]},]
}]}