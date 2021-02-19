#ifndef _MAIN_H_
#define _MAIN_H_
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define PICTURE_SIZE 8
#define PIXEL_WIDTH 12
#define PI 3.1415926

struct Tuple
{
    double x_l;
    double x_l_other_end;
};

// dct.c
void compute_am (int l, float* am_values);
void compute_um (int l, int* xm_values, int* um_values);
float compute_Fa (int j, float* am_values, int* um_values);
float compute_dct_coeff(int l, int* xm_values);
void compute_one_dimensional_dct(int* xm_values, float* yl_values);
void compute_dct(int* image, float* dct_coeffs);

void compute_inverse_al (int l, float* al_values, int is_odd);
struct Tuple compute_inverse_dct_coeff(int l, float* ym_values);
void compute_one_dimensional_inverse_dct(float* yl_values, float* xm_values);
void compute_inverse_dct(float* dct_coeffs, float* image);

// transpose.c
void transpose_stage_one(float** matrix);
void transpose_stage_two(float** matrix);
void transpose_stage_three(float** matrix);
void transpose_matrix(float* matrix);

// quantization.c
void bitwise_multiplier(float* dct_coeffs, float* quant_table);
void clipper(float* dct_coeffs);
void quantizer(float* dct_coeffs, float* inverse_quant_table);
void dequantizer(float*dct_coeffs, float* quant_table);

// encoder.c
void zig_zag(float* dct_coeffs, float* bitstream);
void test_zig_zag();

#endif