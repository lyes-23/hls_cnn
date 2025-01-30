
#ifndef CNN_LENET_H
#define CNN_LENET_H

#include "sigmoid.h"
#define HW_COSIM

void cnn_lenet(
		 float Layer1_Neurons_CPU[29*29],      // Input layer neurons
		 float Layer1_Weights_CPU[156],         // Layer 1 weights
		 float Layer2_Weights_CPU[7800],        // Layer 2 weights
		 float Layer3_Weights_CPU[125100],      // Layer 3 weights
		 float Layer4_Neurons_CPU[100]
);


#endif
