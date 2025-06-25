#ifndef CALCULATELAYER2_H
#define CALCULATELAYER2_H

#include <math.h>
#include "sigmoid.h"


#define HW_COSIM



void calculateLayer2(
		   float Layer1_Neurons_CPU[29*29],
		   float Layer1_Weights_CPU [156],
		   float Layer2_Neurons_CPU [6*13*13]
);

#endif
