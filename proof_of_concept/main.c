#include "main.h"

int main (void)
{
    // int* input_image_row = (int*) malloc( BLOCK_SIZE * sizeof(int));
    // input_image_row[0] = 5;
    // input_image_row[1] = 10;
    // input_image_row[2] = 20;
    // input_image_row[3] = 40;

    int* input_image = (int*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(int));
    int i;
    int j;
    for (i = 0; i < BLOCK_SIZE * BLOCK_SIZE; i++)
    {
        input_image[i] = i + 1;
    }
    for (i = 0; i < BLOCK_SIZE; i++)
    {
        for (j = 0; j < BLOCK_SIZE; j++)
        {    
            printf ("Original Pixel %d %d: %d\n", i, j, input_image[8*i + j]);
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
            printf ("Quantized DCT Coefficient %d %d: %.3f\n", i, j, output_dct_coeffs[8*i + j]);
        }
    }

    // De-Quantize the coefficients
    dequantizer(output_dct_coeffs, quantization_table);
    for (i = 0; i < BLOCK_SIZE; i++)
    {
        for (j = 0; j < BLOCK_SIZE; j++)
        {    
            printf ("Dequantized DCT Coefficient %d %d: %.3f\n", i, j, output_dct_coeffs[8*i + j]);
        }
    }

    // Compute inverse DCT Coeffs
    float* inverted_pixels = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
    compute_inverse_dct(output_dct_coeffs, inverted_pixels);
    for (i = 0; i < BLOCK_SIZE; i++)
    {
        for (j = 0; j < BLOCK_SIZE; j++)
        {    
            printf ("Inverted Pixel %d %d: %.3f\n", i, j, inverted_pixels[8*i + j]);
        }
    }

    test_zig_zag();

    test_run_length_encoder();
    
    free(input_image);
    free(output_dct_coeffs);
    free(quantization_table);
    free(inverse_quantization_table);
    free(inverted_pixels);
    // float* output_dct_coeffs = (float*) malloc( BLOCK_SIZE * sizeof(float));
    // int l;
    // for (l = 0; l < BLOCK_SIZE; l++)
    // {
    //     printf("L is %d\n", l);
    //     output_dct_coeffs[l] = compute_dct_coeff(l, input_image_row);
    //     printf("DCT Coefficient %d: %.3f\n", l, output_dct_coeffs[l]);
    //     // compute_um(l, input_image_row, um_values);
    //     // for (int i = 0; i < BLOCK_SIZE; i++)
    //     // {
    //     //     printf("%d\n", um_values[i]);
    //     // }
    // }



    // // Compute inverse DCT Coeffs
    // float* inverted_pixels = (float*) malloc( BLOCK_SIZE * sizeof(float));
    // for (l = 0; l < BLOCK_SIZE / 2; l++)
    // {
    //     struct Tuple pixels = compute_inverse_dct_coeff(l, output_dct_coeffs);
    //     inverted_pixels[l] = pixels.x_l;
    //     inverted_pixels[BLOCK_SIZE-1-l] = pixels.x_l_other_end;
    // }
    // for (l = 0; l < BLOCK_SIZE; l++)
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