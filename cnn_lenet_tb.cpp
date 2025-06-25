#include <stdio.h>
#include <math.h>
#include "cnn_lenet.h"
//#include "input_data.h"

int main(int argc, char **argv) {





    float Layer3_Neurons_CPU_expected[50 * 5 * 5];

    float Layer2_Neurons_CPU[6*13*13];
    float Layer3_Neurons_CPU[50 * 5 * 5];
    float Layer4_Neurons_CPU[100];

    double Layer5_Neurons_CPU[10];


    cnn_lenet( Layer1_Neurons_CPU,
			   Layer3_Neurons_CPU
		);


    float somme;
    int i, j, k, m, n;
        for (int i = 0; i < 6; i++) {
            for (int j = 0; j < 13; j++) {
                for (int k = 0; k < 13; k++) {
                     somme = Layer1_Weights_CPU[26 * i];
                    for (int m = 0; m < 5; m++) {
                        for (int n = 0; n < 5; n++) {
                            if ((m + 2 * j) < 29 && (n + 2 * k) < 29) {
                                somme += Layer1_Weights_CPU[26 * i + 5 * m + n + 1] *
                                         Layer1_Neurons_CPU[29 * (m + 2 * j) + n + 2 * k];
                            }
                        }
                    }
                    Layer2_Neurons_CPU[13 * 13 * i + 13 * j + k] = (1.7159* tanh(0.66666667*(float)somme));
                }
            }
        }


    	for( i=0;i<50;i++)
    		for(j=0;j<5;j++)
    			for(k=0;k<5;k++){
    				somme = Layer2_Weights_CPU[26*6*i];

    				for( m=0;m<5;m++)
    					for( n=0;n<5;n++){
    						somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)	] * Layer2_Neurons_CPU[13*13*0+13*(2*j+m)+(2*k+n)];
    						somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+1] * Layer2_Neurons_CPU[13*13*1+13*(2*j+m)+(2*k+n)];
    						somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+2] * Layer2_Neurons_CPU[13*13*2+13*(2*j+m)+(2*k+n)];
    						somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+3] * Layer2_Neurons_CPU[13*13*3+13*(2*j+m)+(2*k+n)];
    						somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+4] * Layer2_Neurons_CPU[13*13*4+13*(2*j+m)+(2*k+n)];
    						somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+5] * Layer2_Neurons_CPU[13*13*5+13*(2*j+m)+(2*k+n)];

    					}
    				Layer3_Neurons_CPU_expected[5*5*i+5*j+k] = (1.7159* tanh(0.66666667*(float)somme));
    			}

    	for( i=0;i<100;i++){
    		somme = Layer3_Weights_CPU[i*(1+50*25)];
    		for( j=0;j<50;j++)
    			for( k=0;k<5;k++)
    				for ( m=0;m<5;m++)
    					somme += Layer3_Weights_CPU[i*(1+50*25)+1 + m + k*5 + j*25] * Layer3_Neurons_CPU[m+5*k+25*j];

    		Layer4_Neurons_CPU[i] = (1.7159* tanh(0.66666667*(float)somme));
    	}




    	// Compare the output from Layer 3 with the expected output
    	    int error_count3 = 0;
    	    for (int i = 0; i < 1250; i++) {
    	        if (fabs(Layer3_Neurons_CPU[i] - Layer3_Neurons_CPU_expected[i]) > 0.3f) {
    	            error_count3++;
    	            printf("Mismatch at index %d: Expected %f, Got %f\n", i, Layer3_Neurons_CPU_expected[i], Layer3_Neurons_CPU[i]);
    	        }
    	    }
    	    double sum,moy;
    	    for (int i = 0; i < 1250; i++) {
    	        sum =+ fabs(Layer3_Neurons_CPU[i] - Layer3_Neurons_CPU_expected[i]);
    	        }
    	    moy = sum / 1250;
    	    printf("La moyenne des erreurs de la cosimulation sw et hw :%f\n",moy);

    	    // Print the result
    	    if (error_count3 == 0) {
    	        printf("Layer 3 Test Passed!\n");
    	    } else {
    	        printf("Layer 3 Test Failed with %d errors!\n", error_count3);
    	    }


    //calculate layer 5
    for( i=0;i<10;i++){
    		somme = Layer4_Weights_CPU[101*i];
    		for( j=0;j<100;j++)
    			somme += Layer4_Weights_CPU[1+101*i+j] * Layer4_Neurons_CPU[j];
    		Layer5_Neurons_CPU[i] = (1.7159* tanh(0.66666667*(float)somme));
    	}


    double scoremax;
    int indexmax=-1;
    	for(i=0;i<10;i++)
    	{
    		printf("%d : %f\n",i,Layer5_Neurons_CPU[i]);
    		if(Layer5_Neurons_CPU[i]>scoremax)
    		{
    			scoremax = Layer5_Neurons_CPU[i];
    			indexmax = i;
    		}
    	}
    	printf("Le resultat est : %d \n",indexmax);

    return error_count3;
}
