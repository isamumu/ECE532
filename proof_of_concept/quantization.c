#include "main.h"

void bitwise_multiplier(float* dct_coeffs, float* quant_table)
{
    int i;
    // Perform entire row's worth of division at a time
    for (i = 0; i < PICTURE_SIZE; i++)
    {
        dct_coeffs[8*i] = dct_coeffs[8*i] * quant_table[8*i];
        dct_coeffs[8*i + 1] = dct_coeffs[8*i + 1] * quant_table[8*i + 1];
        dct_coeffs[8*i + 2] = dct_coeffs[8*i + 2] * quant_table[8*i + 2];
        dct_coeffs[8*i + 3] = dct_coeffs[8*i + 3] * quant_table[8*i + 3];
        dct_coeffs[8*i + 4] = dct_coeffs[8*i + 4] * quant_table[8*i + 4];
        dct_coeffs[8*i + 5] = dct_coeffs[8*i + 5] * quant_table[8*i + 5];
        dct_coeffs[8*i + 6] = dct_coeffs[8*i + 6] * quant_table[8*i + 6];
        dct_coeffs[8*i + 7] = dct_coeffs[8*i + 7] * quant_table[8*i + 7];
    }
}

void clipper(float* dct_coeffs)
{
    int i;
    // Perform entire row's worth of clipping at a time
    for (i = 0; i < PICTURE_SIZE; i++)
    {
        dct_coeffs[8*i] = roundf(dct_coeffs[8*i]);
        dct_coeffs[8*i + 1] = roundf(dct_coeffs[8*i + 1]);
        dct_coeffs[8*i + 2] = roundf(dct_coeffs[8*i + 2]);
        dct_coeffs[8*i + 3] = roundf(dct_coeffs[8*i + 3]);
        dct_coeffs[8*i + 4] = roundf(dct_coeffs[8*i + 4]);
        dct_coeffs[8*i + 5] = roundf(dct_coeffs[8*i + 5]);
        dct_coeffs[8*i + 6] = roundf(dct_coeffs[8*i + 6]);
        dct_coeffs[8*i + 7] = roundf(dct_coeffs[8*i + 7]);
    }
}

void quantizer(float* dct_coeffs, float* inverse_quant_table)
{
    bitwise_multiplier(dct_coeffs, inverse_quant_table);
    clipper(dct_coeffs);
}

void dequantizer(float*dct_coeffs, float* quant_table)
{
    bitwise_multiplier(dct_coeffs, quant_table);
}