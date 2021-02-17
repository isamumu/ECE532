import math

def one_dimensional_dct(input_row):
    output_row = []
    for i in range(0, len(input_row)):
        yl = 0
        for j in range(0, len(input_row)):
            yl+= input_row[j] * math.cos((2*j+1)*i*math.pi/16)
        if (i == 0):
            yl = yl/math.sqrt(2)
        output_row.append(yl/2)
    return output_row

def transpose(matrix, num_rows, num_cols):
    for i in range(0, num_rows):
        for j in range(i, num_cols):
            temp_val = matrix[num_cols*i + j]
            matrix[num_cols*i + j] = matrix[num_rows*j + i]
            matrix[num_cols*j + i] = temp_val
    return matrix

def compute_dct(input_image, num_rows, num_cols):
    output_coefficients = []
    final_output_coefficients = []
    for i in range(0, num_rows):
        input_row = input_image[num_cols*i:(num_cols*i + num_rows)]
        output_row = one_dimensional_dct(input_row)
        for j in range(0, num_cols):
            output_coefficients.append(output_row[j])
    transposed_coefficients = transpose(output_coefficients, num_rows, num_cols)
    for i in range(0, num_rows):
        input_row = transposed_coefficients[num_cols*i:(num_cols*i + num_rows)]
        output_row = one_dimensional_dct(input_row)
        for j in range(0, num_cols):
            final_output_coefficients.append(output_row[j])
    return final_output_coefficients

if (__name__ == '__main__'):
    input_image = []
    for i in range(0, 64):
        input_image.append(i + 1)
    # output_row = one_dimensional_dct(input_row)
    # for i in range(0, len(output_row)):
    #     print("Output Coefficient %d: %4.3f" % (i, output_row[i]))
    num_rows = 8
    num_cols = 8
    output_coeffs = compute_dct(input_image, num_rows, num_cols)
    for i in range(0, num_rows):
        for j in range(0, num_cols):
            print("Output Coefficient %d %d: %.3f" % (i, j, output_coeffs[num_cols*i + j]))