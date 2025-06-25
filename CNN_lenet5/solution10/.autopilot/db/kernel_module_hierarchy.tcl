set ModuleHierarchy {[{
"Name" : "cnn_lenet","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_cnn_lenet_Pipeline_calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop_fu_78","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "calculateLayer2_loop_OutputRow_Loop_OutputColumn_Loop","ID" : "2","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "SIGMOID","ID" : "3","Type" : "pipeline"},]},]},
	{"Name" : "grp_cnn_lenet_Pipeline_calculateLayer3_loop_row_Loop_col_loop_fu_102","ID" : "4","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "calculateLayer3_loop_row_Loop_col_loop","ID" : "5","Type" : "pipeline",
		"SubInsts" : [
		{"Name" : "SIGMOID","ID" : "6","Type" : "pipeline"},]},]},]
}]}