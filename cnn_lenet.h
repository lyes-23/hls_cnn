
#ifndef CNN_LENET_H
#define CNN_LENET_H

#include "sigmoid.h"
#define HW_COSIM

void cnn_lenet(
		    float Layer1_Neurons_CPU[29*29],
			//float Layer2_Neurons_CPU[6*13*13],
			//float Layer3_Neurons_CPU[50*5*5],
		    float Layer1_Weights_CPU[156],
		    float Layer2_Weights_CPU[7800],
		    float Layer3_Weights_CPU[125100],
		    float Layer4_Neurons_CPU[100]
);


#endif
