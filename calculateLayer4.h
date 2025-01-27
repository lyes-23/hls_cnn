#ifndef CALCULATELAYER4_H
#define CALCULATELAYER4_H

#include "sigmoid.h"

#define HW_COSIM

void calculateLayer4(
		float Layer3_Neurons_CPU [50*5*5],
		float Layer3_Weights_CPU [125100],
		float Layer4_Neurons_CPU [100]

);

#endif
