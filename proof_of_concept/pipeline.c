#include "main.h"
#include "stdio.h"
#include "math.h"
#include "stdlib.h"
#include "string.h"

int main (void)
{
    // int* input_image_row = (int*) malloc( BLOCK_SIZE * sizeof(int));
    // input_image_row[0] = 5;
    // input_image_row[1] = 10;
    // input_image_row[2] = 20;
    // input_image_row[3] = 40;

    // ====================================================================
    int dim_x = 192;
    int dim_y = 192;

    char const *filename = "test.txt";
    char str[192*192];

    double imagePix[dim_x][dim_y];
 
    FILE *fp = fopen(filename, "r");
    if (fp == NULL){
        printf("Could not open file %s",filename);
        return 1;
    }

    int counter = 0;
    int x = 0;
    int y = 0;

    while (fgets(str, 100000, fp) != NULL){
        //sscanf(str, );
        imagePix[y][x] = atof(str);
        if(x == dim_x-1){
            x = 0;
            y++;
        } else{
            x++;
        }
    }
    fclose(fp);

    // for(int i = 0; i < dim_y; i++){
    //     for(int j = 0; j < dim_x; j++){
    //         printf("%f ", imagePix[i][j]);
    //     }
    // }

    int c_size = 8;
    int num_chunks = (dim_y) / (c_size);
    double chunks[num_chunks][8][8];
    float result_blks[num_chunks][8][8];

    for(int j = 0; j < dim_y; j++){
        for(int k = 0; k < dim_x; k++){
            chunks[j/c_size][j][k] = imagePix[j][k];
        }
    }

    // ====================================================================
    
    for (int n = 0; n < num_chunks; n++){
        int* input_image = (int*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(int));
        int i;
        int j;

        float* output_bitstream = (float*) malloc(BLOCK_SIZE * BLOCK_SIZE * sizeof(float));

        // store the pixel values
        for (j = 0; j < c_size; j++) {
            for (int k = 0; k < c_size; k++) {
                input_image[8*j+k] = (int) chunks[n][j][k];
                //printf("%d ", input_image[8*j+k]);
            }
        }

        float* output_dct_coeffs = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
        compute_dct(input_image, output_dct_coeffs);
        for (i = 0; i < BLOCK_SIZE; i++)
        {
            for (j = 0; j < BLOCK_SIZE; j++)
            {    
                printf ("DCT Coefficient %d %d: %.3f\n", i, j, output_dct_coeffs[8*i + j]);
            }
        }

        // Quantize DCT Coeff's
        float* quantization_table = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
        for (i = 0; i < BLOCK_SIZE; i++)
        {
            for (j = 0; j < BLOCK_SIZE; j++)
            {    
                quantization_table[8*i + j] = 2;
            }
        }
        float* inverse_quantization_table = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
        for (i = 0; i < BLOCK_SIZE; i++)
        {
            for (j = 0; j < BLOCK_SIZE; j++)
            {    
                inverse_quantization_table[8*i + j] = 0.5;
            }
        }
        quantizer(output_dct_coeffs, inverse_quantization_table);
        for (i = 0; i < BLOCK_SIZE; i++)
        {
            for (j = 0; j < BLOCK_SIZE; j++)
            {    
                // printf ("Quantized DCT Coefficient %d %d: %.3f\n", i, j, output_dct_coeffs[8*i + j]);
            }
        }

        zig_zag(output_dct_coeffs, output_bitstream);
        float* encoded_bitstream = (float*) malloc(BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
        run_length_encoder(output_bitstream, encoded_bitstream);

        for(int i = 0; i < BLOCK_SIZE; i++){
            for(j = 0; j < BLOCK_SIZE; j++){
                result_blks[n][i][j] = encoded_bitstream[8*i + j];
            }
        }

            
        free(input_image);
        free(output_dct_coeffs);
        free(quantization_table);
        free(encoded_bitstream);
        free(output_bitstream);
        //free(inverse_quantization_table);
        //free(inverted_pixels);
        printf(" ###################### n = %d ###################### \n", n);
    }

    int newblk [dim_x][dim_y];
       printf("==================== Quantized & DCT 8x8 blocks: ================================\n");
    for(int n = 0; n < num_chunks; n++){
        for(int j = 0; j < 8; j++){
            for(int k = 0; k < 8; k++){
                printf("%f ", result_blks[n][j][k]);
            }
            printf("\n");
        }
        printf("\n");
        printf("------------------------------------------------------------\n");
    }
 
    for(int j = 0; j < dim_y; j++){
        for(int k = 0; k < dim_x; k++){
            //printf("%d ", newblk[j][k]);
        }
        //printf("\n");
    }

    // Dequantization followed by inverse DCT
    float results[num_chunks][8][8];
    float* quantization_table = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
    float* output_bitstream = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
    float* zigzagged = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));

    for (int i = 0; i < BLOCK_SIZE; i++)
    {
        for (int j = 0; j < BLOCK_SIZE; j++)
        {    
            quantization_table[8*i + j] = 2;
        }
    }

    for(int n = 0; n < num_chunks; n++){
        float* input_image = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(int));

        for (int j = 0; j < c_size; j++) {
            for (int k = 0; k < c_size; k++) {
                input_image[8*j+k] = result_blks[n][j][k];
            }
        }

        run_length_decoder(output_bitstream, input_image);
        de_zig_zag(zigzagged, output_bitstream);

        dequantizer(zigzagged, quantization_table);
        
        float* inverted_pixels = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
        
        compute_inverse_dct(input_image, inverted_pixels);

        for(int i = 0; i < BLOCK_SIZE; i++){
            for(int j = 0; j < BLOCK_SIZE; j++){
                results[n][i][j] = (int) inverted_pixels[8*i + j];
            }
        }

        free(zigzagged);
        free(output_bitstream);
        free(input_image);
    }

    printf("==================== Dequantized & IDCT 8x8 blocks: ================================\n");
    for(int n = 0; n < num_chunks; n++){
        for(int j = 0; j < 8; j++){
            for(int k = 0; k < 8; k++){
                printf("%f ", results[n][j][k]);
            }
            printf("\n");
        }
        printf("\n");
        printf("------------------------------------------------------------\n");
    }
    
}