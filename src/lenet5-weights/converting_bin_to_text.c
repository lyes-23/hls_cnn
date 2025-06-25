#include <stdio.h>
#include <stdlib.h>

void writeWeightsToText(const char *binaryFileName, const char *textFileName, int count) {
    FILE *binaryFile = fopen(binaryFileName, "rb");
    FILE *textFile = fopen(textFileName, "w");

    if (!binaryFile) {
        printf("Error: Could not open binary file %s\n", binaryFileName);
        return;
    }
    if (!textFile) {
        printf("Error: Could not open text file %s\n", textFileName);
        fclose(binaryFile);
        return;
    }

    float *weights = (float *)malloc(count * sizeof(float));
    if (!weights) {
        printf("Error: Memory allocation failed\n");
        fclose(binaryFile);
        fclose(textFile);
        return;
    }

    fread(weights, sizeof(float), count, binaryFile);

    for (int i = 0; i < count; i++) {
        fprintf(textFile, "%f", weights[i]);
        if (i < count - 1) {
            fprintf(textFile, ","); // Add a comma except for the last weight
        }
    }

    free(weights);
    fclose(binaryFile);
    fclose(textFile);
    printf("Successfully wrote %s to %s\n", binaryFileName, textFileName);
}

int main() {
    // Layer 1 weights
    writeWeightsToText("lw1.wei", "lw1.txt", 156);

    // Layer 2 weights
    writeWeightsToText("lw2.wei", "lw2.txt", 7800);

    // Layer 3 weights
    writeWeightsToText("lw3.wei", "lw3.txt", 125100);

    // Layer 4 weights
    writeWeightsToText("lw4.wei", "lw4.txt", 1010);

    return 0;
}
