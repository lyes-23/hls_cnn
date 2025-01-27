
#include <math.h>
#include "calculateLayer4.h"
#include "sigmoid.h"

void calculateLayer4(
			float Layer3_Neurons_CPU [50*5*5],
			float Layer3_Weights_CPU [125100],
			float Layer4_Neurons_CPU [100]
		)
{

#pragma HLS INTERFACE mode=s_axilite port=Layer3_Neurons_CPU
#pragma HLS INTERFACE mode=s_axilite port=Layer3_Weights_CPU
#pragma HLS INTERFACE mode=s_axilite port=Layer4_Neurons_CPU
#pragma HLS INTERFACE mode=s_axilite port=return bundle= CTRL_bus

float somme;
int i,j,k,m,n;


calculateLayer4_loop: for( i=0;i<100;i++)
		col_loop: for( j=0;j<50;j++){
#pragma HLS PIPELINE II=8
			somme = Layer3_Weights_CPU[i*(1+50*25)];
			kernelRow_Loop: for( k=0;k<5;k++)

#pragma HLS UNROLL factor=5
				kernelCol_loop: for ( m=0;m<5;m++)
					#pragma HLS dependence variable= somme inter RAW distance=150 false
					somme += Layer3_Weights_CPU[i*(1+50*25)+1 + m + k*5 + j*25] * Layer3_Neurons_CPU[m+5*k+25*j];
		Layer4_Neurons_CPU[i] = (float) SIGMOID(somme);
	}
}



