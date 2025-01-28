#ifndef CALCULATELAYER3_H
#define CALCULATELAYER3_H

#include "calculateLayer2.h"



#define HW_COSIM




void calculateLayer3(
 		    float Layer2_Neurons_CPU[6*13*13],
			float Layer2_Weights_CPU [7800],
			float Layer3_Neurons_CPU [50*5*5]

);

#endif
