set ModuleHierarchy {[{
"Name" : "cnn_lenet","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_207","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop","ID" : "2","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "SIGMOID","ID" : "3","Type" : "pipeline"},]},]},
	{"Name" : "grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_223","ID" : "4","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "calculateLayer3_loop_row_Loop_col_loop","ID" : "5","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "SIGMOID","ID" : "6","Type" : "pipeline"},]},]},],
"SubLoops" : [
	{"Name" : "calculateLayer4_loop","ID" : "7","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_cnn_lenet_Pipeline_col_loop2_kernelRow_Loop2_kernelCol_loop2_fu_234","ID" : "8","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "col_loop2_kernelRow_Loop2_kernelCol_loop2","ID" : "9","Type" : "pipeline"},]},
	{"Name" : "grp_SIGMOID_fu_244","ID" : "10","Type" : "pipeline"},]},]
}]}