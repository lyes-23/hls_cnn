#include "xcnn_lenet.h"

XCnn_lenet_Config XCnn_lenet_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,cnn-lenet-1.0", /* compatible */
		0x40030000,
		0x40040000 /* reg */
	},
	 {
		 NULL
	}
};