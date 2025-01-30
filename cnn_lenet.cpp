#include "sigmoid.h"
#include <math.h>


void cnn_lenet(
    float Layer1_Neurons_CPU[29*29],
	//float Layer2_Neurons_CPU[6*13*13],
	//float Layer3_Neurons_CPU[50*5*5],
    float Layer1_Weights_CPU[156],
    float Layer2_Weights_CPU[7800],
    float Layer3_Weights_CPU[125100],
    float Layer4_Neurons_CPU[100]
)
{

#pragma HLS INTERFACE mode=m_axi  port=Layer1_Neurons_CPU depth=841    offset=slave bundle=Layer_Neurons
#pragma HLS INTERFACE mode=m_axi  port=Layer1_Weights_CPU depth=156    offset=slave bundle=Layer_Weights
#pragma HLS INTERFACE mode=m_axi  port=Layer2_Weights_CPU depth=7800   offset=slave bundle=Layer_Weights
#pragma HLS INTERFACE mode=m_axi  port=Layer3_Weights_CPU depth=125100 offset=slave bundle=Layer_Weights
#pragma HLS INTERFACE mode=m_axi  port=Layer4_Neurons_CPU depth=100    offset=slave bundle=Layer_Neurons
#pragma HLS INTERFACE mode=s_axilite port=return bundle=CTRL_bus




	float Layer2_Neurons_CPU[6*13*13];
    float Layer3_Neurons_CPU[50*5*5];

    float somme;
    int i, j, k, m, n;


    calculateLayer2_loop: for (i = 0; i < 6; i++) {
        OutputRow_Loop: for (j = 0; j < 13; j++) {
            OutputColumn_Loop: for (k = 0; k < 13; k++) {
                #pragma HLS PIPELINE II=26
                somme = Layer1_Weights_CPU[26 * i];
                convolutionRow: for (m = 0; m < 5; m++) {
                    convolutionColumn: for (n = 0; n < 5; n++) {
#pragma HLS PIPELINE II=2
                        somme += Layer1_Weights_CPU[26*i + 5*m + n + 1] *
                                 Layer1_Neurons_CPU[29*(m + 2*j) + n + 2*k];
                    }
                }
                Layer2_Neurons_CPU[13*13*i + 13*j + k] = SIGMOID(somme);
            }
        }
    }

    // Calculate Layer 3
    calculateLayer3_loop: for( i = 0; i < 50; i++) {
        row_Loop: for(j = 0; j < 5; j++) {
            col_loop: for(k = 0; k < 5; k++){
#pragma HLS PIPELINE II=152
                somme = Layer2_Weights_CPU[26*6*i];
                kernelRow_Loop: for(m = 0; m < 5; m++) {
                    kernelCol_Loop: for(n = 0; n < 5; n++){
#pragma HLS PIPELINE II=2
                        somme += Layer2_Weights_CPU[26*6*i + 1 + 6*(n + 5*m)] * Layer2_Neurons_CPU[13*13*0 + 13*(2*j + m) + (2*k + n)];
                        somme += Layer2_Weights_CPU[26*6*i + 1 + 6*(n + 5*m) + 1] * Layer2_Neurons_CPU[13*13*1 + 13*(2*j + m) + (2*k + n)];
                        somme += Layer2_Weights_CPU[26*6*i + 1 + 6*(n + 5*m) + 2] * Layer2_Neurons_CPU[13*13*2 + 13*(2*j + m) + (2*k + n)];
                        somme += Layer2_Weights_CPU[26*6*i + 1 + 6*(n + 5*m) + 3] * Layer2_Neurons_CPU[13*13*3 + 13*(2*j + m) + (2*k + n)];
                        somme += Layer2_Weights_CPU[26*6*i + 1 + 6*(n + 5*m) + 4] * Layer2_Neurons_CPU[13*13*4 + 13*(2*j + m) + (2*k + n)];
                        somme += Layer2_Weights_CPU[26*6*i + 1 + 6*(n + 5*m) + 5] * Layer2_Neurons_CPU[13*13*5 + 13*(2*j + m) + (2*k + n)];
                    }
                }
                Layer3_Neurons_CPU[5*5*i + 5*j + k] = SIGMOID(somme);
            }
        }
    }

    // Calculate Layer 4
calculateLayer4_loop: for( i=0;i<100;i++){
	somme = Layer3_Weights_CPU[i*(1+50*25)];
	 col_loop2:for( j=0;j<50;j++)
		 kernelRow_Loop2: for( k=0;k<5;k++)
			 kernelCol_loop2: for ( m=0;m<5;m++)
#pragma HLS PIPELINE II=3
				somme += Layer3_Weights_CPU[i*(1+50*25)+1 + m + k*5 + j*25] * Layer3_Neurons_CPU[m+5*k+25*j];
	Layer4_Neurons_CPU[i] =  SIGMOID(somme);
}


}
