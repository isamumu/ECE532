#include "main.h"
#include "stdio.h"
#include "math.h"
#include "stdlib.h"
#include "string.h"

int main (void)
{
    // int* input_image_row = (int*) malloc( PICTURE_SIZE * sizeof(int));
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
    int result_blks[num_chunks][8][8];

    for(int j = 0; j < dim_y; j++){
        for(int k = 0; k < dim_x; k++){
            chunks[j/c_size][j][k] = imagePix[j][k];
        }
    }

    // ====================================================================
    
    for (int n = 0; n < num_chunks; n++){
        int* input_image = (int*) malloc( PICTURE_SIZE * PICTURE_SIZE * sizeof(int));
        int i;
        int j;
        // for (i = 0; i < PICTURE_SIZE * PICTURE_SIZE; i++)
        // {
        //     input_image[i] = i + 1;
        // }
        // for (i = 0; i < PICTURE_SIZE; i++)
        // {
        //     for (j = 0; j < PICTURE_SIZE; j++)
        //     {    
        //         printf ("Original Pixel %d %d: %d\n", i, j, input_image[8*i + j]);
        //     }
        // }

        // store the pixel values
        for (j = 0; j < c_size; j++) {
            for (int k = 0; k < c_size; k++) {
                input_image[8*j+k] = (int) chunks[n][j][k];
                printf("%d ", input_image[8*j+k]);
            }
        }

        float* output_dct_coeffs = (float*) malloc( PICTURE_SIZE * PICTURE_SIZE * sizeof(float));
        compute_dct(input_image, output_dct_coeffs);
        for (i = 0; i < PICTURE_SIZE; i++)
        {
            for (j = 0; j < PICTURE_SIZE; j++)
            {    
                printf ("DCT Coefficient %d %d: %.3f\n", i, j, output_dct_coeffs[8*i + j]);
            }
        }

        // Quantize DCT Coeff's
        float* quantization_table = (float*) malloc( PICTURE_SIZE * PICTURE_SIZE * sizeof(float));
        for (i = 0; i < PICTURE_SIZE; i++)
        {
            for (j = 0; j < PICTURE_SIZE; j++)
            {    
                quantization_table[8*i + j] = 2;
            }
        }
        float* inverse_quantization_table = (float*) malloc( PICTURE_SIZE * PICTURE_SIZE * sizeof(float));
        for (i = 0; i < PICTURE_SIZE; i++)
        {
            for (j = 0; j < PICTURE_SIZE; j++)
            {    
                inverse_quantization_table[8*i + j] = 0.5;
            }
        }
        quantizer(output_dct_coeffs, inverse_quantization_table);
        for (i = 0; i < PICTURE_SIZE; i++)
        {
            for (j = 0; j < PICTURE_SIZE; j++)
            {    
                printf ("Quantized DCT Coefficient %d %d: %.3f\n", i, j, output_dct_coeffs[8*i + j]);
            }
        }

        for(int i = 0; i < PICTURE_SIZE; i++){
            for(j = 0; j < PICTURE_SIZE; j++){
                result_blks[n][i][j] = output_dct_coeffs[8*i + j];
            }
        }

            
        free(input_image);
        free(output_dct_coeffs);
        free(quantization_table);
        //free(inverse_quantization_table);
        //free(inverted_pixels);
        printf(" ###################### n = %d ###################### \n", n);
    }

    int newblk [dim_x][dim_y];
    
    for(int j = 0; j < dim_y; j++){
        for(int k = 0; k < dim_x; k++){
            newblk[j][k] = result_blks[j/c_size][j][k];
        }
    }

    for(int j = 0; j < dim_y; j++){
        for(int k = 0; k < dim_x; k++){
            printf("%d ", newblk[j][k]);
        }
        printf("\n");
    }

    FILE *f = fopen("coeffs.txt", "w");
     for(int j = 0; j < dim_y; j++){
        for(int k = 0; k < dim_x; k++){
            fprintf(fp, "%d\n", newblk[j][k]);
        }
    }
    fclose(fp);


    // // De-Quantize the coefficients
    // dequantizer(output_dct_coeffs, quantization_table);
    // for (i = 0; i < PICTURE_SIZE; i++)
    // {
    //     for (j = 0; j < PICTURE_SIZE; j++)
    //     {    
    //         printf ("Dequantized DCT Coefficient %d %d: %.3f\n", i, j, output_dct_coeffs[8*i + j]);
    //     }
    // }

    // // Compute inverse DCT Coeffs
    // float* inverted_pixels = (float*) malloc( PICTURE_SIZE * PICTURE_SIZE * sizeof(float));
    // compute_inverse_dct(output_dct_coeffs, inverted_pixels);
    // for (i = 0; i < PICTURE_SIZE; i++)
    // {
    //     for (j = 0; j < PICTURE_SIZE; j++)
    //     {    
    //         printf ("Inverted Pixel %d %d: %.3f\n", i, j, inverted_pixels[8*i + j]);
    //     }
    // }

    // test_zig_zag();

    // float* output_dct_coeffs = (float*) malloc( PICTURE_SIZE * sizeof(float));
    // int l;
    // for (l = 0; l < PICTURE_SIZE; l++)
    // {
    //     printf("L is %d\n", l);
    //     output_dct_coeffs[l] = compute_dct_coeff(l, input_image_row);
    //     printf("DCT Coefficient %d: %.3f\n", l, output_dct_coeffs[l]);
    //     // compute_um(l, input_image_row, um_values);
    //     // for (int i = 0; i < PICTURE_SIZE; i++)
    //     // {
    //     //     printf("%d\n", um_values[i]);
    //     // }
    // }



    // // Compute inverse DCT Coeffs
    // float* inverted_pixels = (float*) malloc( PICTURE_SIZE * sizeof(float));
    // for (l = 0; l < PICTURE_SIZE / 2; l++)
    // {
    //     struct Tuple pixels = compute_inverse_dct_coeff(l, output_dct_coeffs);
    //     inverted_pixels[l] = pixels.x_l;
    //     inverted_pixels[PICTURE_SIZE-1-l] = pixels.x_l_other_end;
    // }
    // for (l = 0; l < PICTURE_SIZE; l++)
    // {
    //     printf ("Inverted Pixel %d: %.3f\n", l, inverted_pixels[l]);
    // }
    // // free (input_image_row);
    // free (output_dct_coeffs); 
    // free (inverted_pixels);

    // float* transposed_matrix = (float*) malloc(64 * sizeof(float));
    // int i;
    // int j;
    // for (i = 0; i < 64; i++)
    // {
    //     transposed_matrix[i] = i+1;
    // }
    // // for (i = 0; i < 8; i++)
    // // {
    // //     for (j = 0; j < 8; j++)
    // //     {
    // //         printf("%d %d: %.2f\n", i, j, transposed_matrix[8*i + j]);
    // //     }
    // // }
    // transpose_matrix(transposed_matrix);
    // for (i = 0; i < 8; i++)
    // {
    //     for (j = 0; j < 8; j++)
    //     {
    //         printf("%d %d: %.2f\n", i, j, transposed_matrix[8*i + j]);
    //     }
    // }
    // free(transposed_matrix);
}