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

    float imagePix[dim_x][dim_y];
 
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
        imagePix[x][y] = atof(str);
        if(x == dim_x-1){
            x = 0;
            y++;
        } else{
            x++;
        }
    }
    fclose(fp);
    
    
    // for(int j = 0; j < dim_y; j++){
    //     for(int k = 0; k < dim_x; k++){
    //         printf("%f ", imagePix[j][k]);
    //     }
    //     printf("\n");
    // }
        
    

    int c_size = 8;
    int num_chunks = (dim_y) / (c_size);
    float chunks[num_chunks][8][8];
    float result_blks[num_chunks][8][8];
    
    
    // for(int j = 0; j < dim_y; j++){
    //     for(int k = 0; k < dim_x; k++){
    //         chunks[j/c_size][j][k] = imagePix[j][k];
    //     }
    // }

    for(int n = 0; n < num_chunks; n++){
        for(int j = 0; j < c_size; j++){
            for(int k = 0; k < c_size; k++){
                chunks[n][j][k] = (int)imagePix[n * c_size + j][n * c_size + k];
            }
        }
    }

    // for(int n = 0; n < num_chunks; n++){
    //     for(int j = 0; j < c_size; j++){
    //         for(int k = 0; k < c_size; k++){
    //             if(j % 2 == 0)
    //                 chunks[n][j][k] = 200;
    //             else
    //                 chunks[n][j][k] = 100;
                
    //         }
    //     }
    // }

    printf("---------------------- input chunks ----------------------\n");
    for(int n = 0; n < num_chunks; n++){
        for(int j = 0; j < 8; j++){
            for(int k = 0; k < 8; k++){
                printf("%f ", chunks[n][j][k]);
            }
            printf("\n");
        }
        printf("\n");
        printf("------------------------------------------------------------\n");
    }

    // ====================================================================
    
    for (int n = 0; n < num_chunks; n++){
    
        int* input_image = (int*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(int));
        float* output_dct_coeffs = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));

        // store the pixel values
        printf("################ input block ##################\n");
        for (int j = 0; j < c_size; j++) {
            for (int k = 0; k < c_size; k++) {
                input_image[8*j+k] = (int) chunks[n][j][k];
                printf("%d ", input_image[8*j+k]);
            }
            printf("\n");
        }



        compute_dct(input_image, output_dct_coeffs);
    
        for (int i = 0; i < BLOCK_SIZE; i++)
        {
            for (int j = 0; j < BLOCK_SIZE; j++)
            {    
                // printf ("DCT Coefficient %d %d: %.3f\n", i, j, output_dct_coeffs[8*i + j]);
            }

        }

        float* inverse_quantization_table = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
        for (int i = 0; i < BLOCK_SIZE; i++)
        {
            for (int j = 0; j < BLOCK_SIZE; j++)
            {    
                inverse_quantization_table[8*i + j] = 0.5;
            }
        }
        quantizer(output_dct_coeffs, inverse_quantization_table);
        for (int i = 0; i < BLOCK_SIZE; i++)
        {
            for (int j = 0; j < BLOCK_SIZE; j++)
            {    
                // printf ("Quantized DCT Coefficient %d %d: %.3f\n", i, j, output_dct_coeffs[8*i + j]);
            }
        }

        float* output_bitstream = (float*) malloc(BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
        float* encoded_bitstream = (float*) malloc(BLOCK_SIZE * BLOCK_SIZE * sizeof(float));

        printf("zigzag bitstream ==========================================");
        zig_zag(output_dct_coeffs, output_bitstream);
        for(int i = 0; i < BLOCK_SIZE; i++){
            for(int j = 0; j < BLOCK_SIZE; j++){
                printf("%f ", output_bitstream[8*i + j]);
            }
        }
        printf("\n");

        printf("encoded bitstream ==========================================");
        run_length_encoder(output_bitstream, encoded_bitstream);
        for(int i = 0; i < BLOCK_SIZE; i++){
            for(int j = 0; j < BLOCK_SIZE; j++){
                printf("%f ", encoded_bitstream[8*i + j]);
            }
        }
        printf("\n");
        for(int i = 0; i < BLOCK_SIZE; i++){
            for(int j = 0; j < BLOCK_SIZE; j++){
                result_blks[n][i][j] = encoded_bitstream[8*i + j];
            }
        }
        printf("look at me");
        
        
      
        //free(inverted_pixels);
        printf(" ###################### n = %d ###################### \n", n);
    }

    free(inverse_quantization_table);
    free(output_dct_coeffs);
    //free(quantization_table);
    free(input_image);
    free(encoded_bitstream);
    free(output_bitstream);

    printf("==================== Quantized & DCTc & encoded 8x8 blocks: ================================\n");
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
 

    // Dequantization followed by inverse DCT
    float results[num_chunks][8][8];
    
    float* quantization_table = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));

    for (int i = 0; i < BLOCK_SIZE; i++)
    {
        for (int j = 0; j < BLOCK_SIZE; j++)
        {    
            quantization_table[8*i + j] = 2;
        }
    }

    for(int n = 0; n < num_chunks; n++){
        float* input_image = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(int));
        
        float* output_bitstream = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
        float* zigzagged = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));

        for (int j = 0; j < c_size; j++) {
            for (int k = 0; k < c_size; k++) {
                input_image[8*j+k] = result_blks[n][j][k];
            }
        }

        run_length_decoder(input_image, output_bitstream);
        de_zig_zag(output_bitstream, zigzagged);

        dequantizer(zigzagged, quantization_table);
        
        float* inverted_pixels = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
        
        compute_inverse_dct(zigzagged, inverted_pixels);

        for(int i = 0; i < BLOCK_SIZE; i++){
            for(int j = 0; j < BLOCK_SIZE; j++){
                results[n][i][j] = inverted_pixels[8*i + j];
            }
        }

        
        free(zigzagged);
        free(output_bitstream);
        free(input_image);
        free(inverted_pixels);
    }

    free(quantization_table);
    // segs?
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