#ifndef CALCULATELAYER4_H
#define CALCULATELAYER4_H

#include "calculateLayer3.h"

typedef ap_fixed<16, 5> fixed_p;

#define HW_COSIM


#define  SIGMOID(x) (1.7159* hls::tanh(0.66666667*x))

void calculateLayer4(
		float Layer3_Neurons_CPU [50*5*5],
		float Layer3_Weights_CPU [125100],
		float Layer4_Neurons_CPU [100]

);

#endif
