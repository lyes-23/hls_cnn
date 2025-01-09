#ifndef CALCULATELAYER3_H
#define CALCULATELAYER3_H

#include "calculateLayer2.h"

typedef ap_fixed<16, 5> fixed_p;

#define HW_COSIM


#define  SIGMOID(x) (1.7159* hls::tanh(0.66666667*x))

void calculateLayer3(
 		    float Layer2_Neurons_CPU[6*13*13],
			float Layer2_Weights_CPU [7800],
			float Layer3_Neurons_CPU [50*5*5]

);

#endif
