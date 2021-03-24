#include "../../vanilla/src/main.h"

void compute_am (int l, float* am_values)
{
    int m;
    for (m = 0; m < BLOCK_SIZE/2; m++)
    {
        *(am_values + m) = 0.5 * cos((2*m + 1)*l*PI/(2*BLOCK_SIZE));
        if (l == 0)
        {
        	*(am_values + m) = 1/sqrt(2) * am_values[m];
        }
    }
}

// Compute sums and differences of xm
void compute_um (int l, int* xm_values, int* um_values)
{
    int m;
    for (m = 0; m < BLOCK_SIZE/2; m++)
    {
        switch (l%2)
        {
            case 0:
                // l is even
                *(um_values + m) = xm_values[m] + xm_values[BLOCK_SIZE-1-m];
                break;
            case 1:
                // l is odd
            	*(um_values + m) = xm_values[m] - xm_values[BLOCK_SIZE-1-m];
                break;
        }
    }
}

float compute_Fa (int j, float* am_values, int* um_values)
{
    int m;
    float Fa_value = 0;
    int um_bit_value = 0;
    for (m = 0; m < BLOCK_SIZE/2; m++)
    {
        // Extract um bit
        um_bit_value = (um_values[m] >> j) & 0x1;
        // printf("um bit value %d: %d\n", m, um_bit_value);
        Fa_value += am_values[m] * um_bit_value;
    }
    return Fa_value;
}

float compute_dct_coeff(int l, int* xm_values)
{
    // 1. Calculate am values (cosine values)
    float* am_values = (float*) malloc( BLOCK_SIZE / 2 * sizeof(float));
    compute_am(l, am_values);
    // for (int i = 0; i < BLOCK_SIZE / 2; i++)
    // {
    //     printf("a%d: %.2f\n", i, am_values[i]);
    // }
    // 2. Calculate um values (sums and differences of xm terms)
    signed int * um_values = (int*) malloc( BLOCK_SIZE / 2 * sizeof(signed int));
    compute_um(l, xm_values, um_values);
    // for (int i = 0; i < BLOCK_SIZE/2; i++)
    // {
    //     printf("u%d: %d\n", i, um_values[i]);
    // }
    // 3. Compute Fa values
    int j;
    double dct_coeff = -1*compute_Fa(PIXEL_WIDTH-1, am_values, um_values)*pow(2,PIXEL_WIDTH-1);
    double dct_coeff_increment = 0;
    for (j = 0; j < PIXEL_WIDTH-1; j++)
    {
        dct_coeff_increment = compute_Fa(j, am_values, um_values)*pow(2,j);
        // printf("dct coeff %d: %.3f\n", j, dct_coeff_increment);
        dct_coeff += dct_coeff_increment;
    }
    // 4. Cleanup
    free(am_values);
    free(um_values);
    return dct_coeff;
}

void compute_one_dimensional_dct(int* xm_values, float* yl_values)
{
    int l;
    for (l = 0; l < BLOCK_SIZE; l++)
    {
        *(yl_values + l) = compute_dct_coeff(l, xm_values);
    }
}

void compute_dct(int* image, float* dct_coeffs)
{
    // Input: matrix with BLOCK_SIZE x BLOCK_SIZE values
    // Output: matrix with BLOCK_SIZE x BLOCK_SIZE coefficients
    // i represents the rows, j represents the columns
    int i;
    int j;
    // 1. Perform 1-D DCT on the rows of the image
    int* xm_values = (int*) malloc(BLOCK_SIZE * sizeof(int));
    float* yl_values = (float*) malloc(BLOCK_SIZE * sizeof(float));

    for (i = 0; i < BLOCK_SIZE; i++)
    {
        for (j = 0; j < BLOCK_SIZE; j++)
        {
            *(xm_values + j) = image[8*i + j];
            // printf("xm_value %d: %d\n", j, xm_values[j]);
        }
        compute_one_dimensional_dct(xm_values, yl_values);
        for (j = 0; j < BLOCK_SIZE; j++)
        {
            *(dct_coeffs + 8*i + j) = yl_values[j];
            // printf("dct_value %d: %.3f\n", j, yl_values[j]);
        }
    }
    // 2. Transpose the coefficients
    transpose_matrix(dct_coeffs);
    // 3. Perform the 1-D DCT again
    for (i = 0; i < BLOCK_SIZE; i++)
    {
        for (j = 0; j < BLOCK_SIZE; j++)
        {
            *(xm_values + j) = dct_coeffs[8*i + j];
        }
        compute_one_dimensional_dct(xm_values, yl_values);
        for (j = 0; j < BLOCK_SIZE; j++)
        {
            *(dct_coeffs + 8*i + j) = yl_values[j];
        }
    }
    free(xm_values);
    free(yl_values);
}

void compute_inverse_al (int l, float* al_values, int is_odd)
{
    int m, n;
    for (m = 0; m < BLOCK_SIZE/2; m++)
    {
        n = (is_odd == 1) ? 2*m + 1: 2*m;
        *(al_values + m) = 0.5 * cos((2*l + 1)*n*PI/(2*BLOCK_SIZE));
        if (n == 0)
        {
            *(al_values + m) = 1/sqrt(2) * al_values[m];
        }
    }
}

struct Tuple compute_inverse_dct_coeff(int l, float* ym_values)
{
    // printf("l: %d\n", l);
    // 1. Calculate am values (cosine values)
    float* al_values_even = (float*) malloc( BLOCK_SIZE / 2 * sizeof(float));
    compute_inverse_al(l, al_values_even, 0);
    // for (int i = 0; i < BLOCK_SIZE/2; i++)
    // {
    //     printf("Even AL Value %d: %.2f\n", i, al_values_even[i]);
    // }
    float* al_values_odd = (float*) malloc( BLOCK_SIZE / 2 * sizeof(float));
    compute_inverse_al(l, al_values_odd, 1);
    // for (int i = 0; i < BLOCK_SIZE/2; i++)
    // {
    //     printf("Odd AL Value %d: %.2f\n", i, al_values_odd[i]);
    // }
    // 2. Compute u and v
    double u = 0;
    double v = 0;
    int m;
    for (m = 0; m < BLOCK_SIZE / 2; m++)
    {
        u += al_values_even[m] * ym_values[2*m];
        v += al_values_odd[m] * ym_values[2*m + 1];
    }
    // 3. Compute coefficients
    int correction_value = 1;
    double x_l = correction_value * (u + v);
    double x_l_other_end = correction_value * (u - v);
    // printf("x_l: %.2f\n", x_l);
    // printf("x_l_other: %.2f\n", x_l_other_end);
    struct Tuple pixels = {x_l, x_l_other_end};
    return pixels;
}

void compute_one_dimensional_inverse_dct(float* yl_values, float* xm_values)
{
    int l;
    struct Tuple pixels;
    for (l = 0; l < BLOCK_SIZE / 2; l++)
    {
        pixels = compute_inverse_dct_coeff(l, yl_values);
        *(xm_values + l) = pixels.x_l;
        *(xm_values + BLOCK_SIZE-1-l) = pixels.x_l_other_end;
    }
}

void compute_inverse_dct(float* dct_coeffs, float* image)
{
    // Input: matrix with BLOCK_SIZE x BLOCK_SIZE coefficients
    // Output: matrix with BLOCK_SIZE x BLOCK_SIZE pixels
    // i represents the rows, j represents the columns
    int i;
    int j;
    // 1. Perform 1-D IDCT on the rows of the coefficients
    float* xm_values = (float*) malloc(BLOCK_SIZE * sizeof(float));
    float* yl_values = (float*) malloc(BLOCK_SIZE * sizeof(float));
    for (i = 0; i < BLOCK_SIZE; i++)
    {
        for (j = 0; j < BLOCK_SIZE; j++)
        {
            *(yl_values + j) = dct_coeffs[8*i + j];
            xil_printf("%f", yl_values[j]);
        }
        compute_one_dimensional_inverse_dct(yl_values, xm_values);
        for (j = 0; j < BLOCK_SIZE; j++)
        {
            *(image + 8*i + j) = xm_values[j];
        }
    }
    // 2. Transpose the coefficients
    transpose_matrix(image);
    // 3. Perform the 1-D DCT again
    for (i = 0; i < BLOCK_SIZE; i++)
    {
        for (j = 0; j < BLOCK_SIZE; j++)
        {
            *(yl_values + j) = image[8*i + j];
        }
        compute_one_dimensional_inverse_dct(yl_values, xm_values);
        for (j = 0; j < BLOCK_SIZE; j++)
        {
            *(image + 8*i + j) = xm_values[j];
        }
    }
    free(xm_values);
    free(yl_values);
}
