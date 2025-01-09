
#include <math.h>
#include "calculateLayer3.h"

void calculateLayer3(
			float Layer2_Neurons_CPU [6*13*13],
			float Layer2_Weights_CPU [7800],
			float Layer3_Neurons_CPU [50*5*5]
		)
{

#pragma HLS INTERFACE axis port=Layer2_Neurons_CPU
#pragma HLS INTERFACE axis port=Layer2_Weights_CPU
#pragma HLS INTERFACE axis port=Layer3_Neurons_CPU

#pragma HLS ARRAY_PARTITION variable=Layer2_Weights_CPU type=complete



float somme;
int i,j,k,m,n;

calculateLayer3_loop: for( i=0;i<50;i++)

	row_Loop: for(j=0;j<5;j++)
		col_loop: for(k=0;k<5;k++){
#pragma HLS PIPELINE II=5
			somme = Layer2_Weights_CPU[26*6*i];
			kernelRow_Loop: for( m=0;m<5;m++)
				kernelCol_Loop: for( n=0;n<5;n++){
#pragma HLS UNROLL factor=2
					somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)	] * Layer2_Neurons_CPU[13*13*0+13*(2*j+m)+(2*k+n)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+1] * Layer2_Neurons_CPU[13*13*1+13*(2*j+m)+(2*k+n)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+2] * Layer2_Neurons_CPU[13*13*2+13*(2*j+m)+(2*k+n)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+3] * Layer2_Neurons_CPU[13*13*3+13*(2*j+m)+(2*k+n)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+4] * Layer2_Neurons_CPU[13*13*4+13*(2*j+m)+(2*k+n)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+5] * Layer2_Neurons_CPU[13*13*5+13*(2*j+m)+(2*k+n)];
						}

					Layer3_Neurons_CPU[5*5*i+5*j+k] = (float) SIGMOID(somme);

					}
}


