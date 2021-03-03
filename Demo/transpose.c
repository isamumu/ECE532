#include "main.h"

// Input: 2x2 matrix
void transpose_stage_one(float** matrix)
{  
    /*
        Visualize pipeline:
        P1: I1 - - - -  |    | - reg1 - O1
        P2: I2 - reg2 - |    | - - - -  O2
    
        ctrl:
        0 - Pipelines don't intersect (P1 directs to O1)
        1 - Pipelines intersect - (P1 directs to O2, vice versa)
        Ctrl switches every cycle
    */
    int cycle;
    int ctrl = 0;
    float reg1;
    float reg2;
    for (cycle = 0; cycle < 3; cycle++)
    {
        if (cycle == 0)
        {
            reg1 = matrix[0][0];
            reg2 = matrix[1][0];
            ctrl = 1;
        }
        else if (cycle == 1)
        {
            matrix[0][0] = reg1;
            matrix[1][0] = matrix[0][1];
            reg1 = reg2;
            reg2 = matrix[1][1];
            ctrl = 0;
        }
        else if (cycle == 2)
        {
            // In reality this can happen in cycle 0
            matrix[0][1] = reg1;
            matrix[1][1] = reg2;
            ctrl = 1;
        }
    }
}

// Input: 2x4 matrix
void transpose_stage_two(float** matrix)
{
    /*
        Visualize pipeline:
        P1: I1 - - - - - - - - - |    | - reg11 - reg12 - O1
        P2: I2 - reg21 - reg22 - |    | - - - - - - - - - O2
    
        ctrl:
        0 - Pipelines don't intersect (P1 directs to O1)
        1 - Pipelines intersect - (P1 directs to O2, vice versa)
        ctrl switches every 2 cycles
    */
    float reg11;
    float reg12;
    float reg21;
    float reg22;
    int cycle;
    int input_col = 0;
    int output_col = 0;
    int ctrl = 0;
    for (cycle = 0; cycle < 6; cycle++)
    {
        if (cycle == 0 || cycle == 1)
        {
            reg12 = reg11;
            reg22 = reg21;
            // Read from Column 1
            reg11 = matrix[0][input_col];
            reg21 = matrix[1][input_col];
            input_col += 1;
            if (cycle == 1)
            {
            // On cycle 2 ctrl will be 1
            ctrl = 1;
            }
        }
        else if (cycle == 2 || cycle == 3)
        {
            matrix[0][output_col] = reg12;
            matrix[1][output_col] = matrix[0][input_col];
            reg12 = reg11;
            reg11 = reg22;
            reg22 = reg21;            
            reg21 = matrix[1][input_col];
            input_col += 1;
            output_col += 1;
            if (cycle == 3)
            {
            // On cycle 0 ctrl will be 0
            ctrl = 0;
            }            
        }
        else if (cycle == 4 || cycle == 5)
        {
            // Technically will be cycles 0 and 1, just used to clear the pipelines
            matrix[0][output_col] = reg12;
            matrix[1][output_col] = reg22;
            reg12 = reg11;
            reg22 = reg21;
            output_col += 1;
        }
    }
}

// Input: 2x8 matrix
void transpose_stage_three(float** matrix)
{
    /*
        Visualize pipeline:
        P1: I1 - - - - - - - - - - - - - - - - |    | - reg11 - reg12 - reg13 - reg14 - O1
        P2: I2 - reg21 - reg22 - reg23 - reg24 |    | - - - - - - - - - - - - - - - - - O2
    
        ctrl:
        0 - Pipelines don't intersect (P1 directs to O1)
        1 - Pipelines intersect - (P1 directs to O2, vice versa)
        ctrl switches every 4 cycles
    */
    float reg11;
    float reg12;
    float reg13;
    float reg14;
    float reg21;
    float reg22;
    float reg23;
    float reg24;
    int cycle;
    int input_col = 0;
    int output_col = 0;
    int ctrl = 0;
    for (cycle = 0; cycle < 12; cycle++)
    {
        if (cycle >= 0 && cycle < 4)
        {
            reg14 = reg13;
            reg13 = reg12;
            reg12 = reg11;
            reg24 = reg23;
            reg23 = reg22;
            reg22 = reg21;     
            // Read from Column 1
            reg11 = matrix[0][input_col];
            reg21 = matrix[1][input_col];
            input_col += 1;
            if (cycle == 3)
            {
            // On cycle 2 ctrl will be 1
            ctrl = 1;
            }
        }
        else if (cycle >= 4 && cycle < 8)
        {
            matrix[0][output_col] = reg14;
            matrix[1][output_col] = matrix[0][input_col];
            reg14 = reg13;
            reg13 = reg12;
            reg12 = reg11;
            reg11 = reg24;
            reg24 = reg23;
            reg23 = reg22;
            reg22 = reg21;          
            reg21 = matrix[1][input_col];
            input_col += 1;
            output_col += 1;
            if (cycle == 7)
            {
            // On cycle 0 ctrl will be 0
            ctrl = 0;
            }            
        }
        else if (cycle >= 8 || cycle < 12)
        {
            // Technically will be cycles 0-3, just used to clear the pipelines
            matrix[0][output_col] = reg14;
            matrix[1][output_col] = reg24;
            reg14 = reg13;
            reg13 = reg12;
            reg12 = reg11;
            reg24 = reg23;
            reg23 = reg22;
            reg22 = reg21;
            output_col += 1;
        }
    }
}

// Input: 8x8 matrix
void transpose_matrix(float* matrix)
{
    // Assume matrix is arranged in form of 64 entries, in the form of:
    /*
        [ 1, 2, 3, 4, 5, 6, 7, 8
          9, 10, 11, 12, 13, 14, 15, 16
          .....
    */
    // i represents row, j represents column
    int i;
    int j;
    int k;
    // 1. Stage 1: Compute all 2x2 transposes
    float* two_by_two_matrix[2];
    float two_by_two_temprow[2];
    for (i = 0; i < 2; i++)
    {
        two_by_two_matrix[i] = (float*) malloc (2 * sizeof(float));
    }
    for (j = 0; j < 8; j=j+2)
    {
        for (i = 0; i < 8; i=i+2)
        {   
            two_by_two_matrix[0][0] = matrix[8*i + j];
            two_by_two_matrix[0][1] = matrix[8*i + j+1];
            two_by_two_matrix[1][0] = matrix[8*(i+1) + j];
            two_by_two_matrix[1][1] = matrix[8*(i+1) + j+1];
            transpose_stage_one(two_by_two_matrix);
            matrix[8*i + j] = two_by_two_matrix[0][0];
            matrix[8*i + j+1] = two_by_two_matrix[0][1];
            matrix[8*(i+1) + j] = two_by_two_matrix[1][0];
            matrix[8*(i+1) + j+1] = two_by_two_matrix[1][1];
        }
        // After 2 columns have been transposed, perform inter-stage movement
        for (i = 0; i < 8; i=i+2)
        {
            switch(i)
            {
                case 0:
                case 4:
                    // Row 1 of these matrices swap with Row 0 of proceeding matrices
                    two_by_two_temprow[0] = matrix[8*(i+1) + j];
                    two_by_two_temprow[1] = matrix[8*(i+1) + j+1];
                    matrix[8*(i+1) + j] = matrix[8*(i+2) + j];
                    matrix[8*(i+1) + j+1] = matrix[8*(i+2) + j+1];
                    matrix[8*(i+2) + j] = two_by_two_temprow[0];
                    matrix[8*(i+2) + j+1] = two_by_two_temprow[1];
                    break;
            }
        }
    }
    for (i = 0; i < 2; i++)
    {
        free(two_by_two_matrix[i]);
    }
    // 2. Stage 2: Compute all 2x4 transposes
    float* two_by_four_matrix[2];
    float two_by_four_tempcol[8];
    for (i = 0; i < 2; i++)
    {
        two_by_four_matrix[i] = (float*) malloc (4 * sizeof(float));
    }
    for (j = 0; j < 8; j=j+4)
    {
        for (i = 0; i < 8; i=i+2)
        {
            two_by_four_matrix[0][0] = matrix[8*i + j];
            two_by_four_matrix[0][1] = matrix[8*i + j+1];
            two_by_four_matrix[0][2] = matrix[8*i + j+2];
            two_by_four_matrix[0][3] = matrix[8*i + j+3];
            two_by_four_matrix[1][0] = matrix[8*(i+1) + j];
            two_by_four_matrix[1][1] = matrix[8*(i+1) + j+1];
            two_by_four_matrix[1][2] = matrix[8*(i+1) + j+2];
            two_by_four_matrix[1][3] = matrix[8*(i+1) + j+3];
            transpose_stage_two(two_by_four_matrix);
            matrix[8*i + j] = two_by_four_matrix[0][0];
            matrix[8*i + j+1] = two_by_four_matrix[0][1];
            matrix[8*i + j+2] = two_by_four_matrix[0][2];
            matrix[8*i + j+3] = two_by_four_matrix[0][3];
            matrix[8*(i+1) + j] = two_by_four_matrix[1][0];
            matrix[8*(i+1) + j+1] = two_by_four_matrix[1][1];
            matrix[8*(i+1) + j+2] = two_by_four_matrix[1][2];
            matrix[8*(i+1) + j+3] = two_by_four_matrix[1][3];
        }
    }
    // Perform inter-stage movement
    for (j = 0; j < 8; j++)
    {
        for (i = 0; i < 8; i++)
        {
            two_by_four_tempcol[i] = matrix[8*i + j];
        }
        matrix[8*1 + j] = two_by_four_tempcol[4];
        matrix[8*3 + j] = two_by_four_tempcol[6];
        matrix[8*4 + j] = two_by_four_tempcol[1];
        matrix[8*6 + j] = two_by_four_tempcol[3];
    }
    for (i = 0; i < 2; i++)
    {
        free(two_by_four_matrix[i]);
    }    
    // 3. Stage 3: Compute all 2x8 transposes
    float* two_by_eight_matrix[2];
    float two_by_eight_tempcol[8];
    for (i = 0; i < 2; i++)
    {
        two_by_eight_matrix[i] = (float*) malloc (8 * sizeof(float));
    }
    for (i = 0; i < 8; i=i+2)
    {
        two_by_eight_matrix[0][0] = matrix[8*i];
        two_by_eight_matrix[0][1] = matrix[8*i + 1];
        two_by_eight_matrix[0][2] = matrix[8*i + 2];
        two_by_eight_matrix[0][3] = matrix[8*i + 3];
        two_by_eight_matrix[0][4] = matrix[8*i + 4];
        two_by_eight_matrix[0][5] = matrix[8*i + 5];
        two_by_eight_matrix[0][6] = matrix[8*i + 6];
        two_by_eight_matrix[0][7] = matrix[8*i + 7];
        two_by_eight_matrix[1][0] = matrix[8*(i+1)];
        two_by_eight_matrix[1][1] = matrix[8*(i+1) + 1];
        two_by_eight_matrix[1][2] = matrix[8*(i+1) + 2];
        two_by_eight_matrix[1][3] = matrix[8*(i+1) + 3];
        two_by_eight_matrix[1][4] = matrix[8*(i+1) + 4];
        two_by_eight_matrix[1][5] = matrix[8*(i+1) + 5];
        two_by_eight_matrix[1][6] = matrix[8*(i+1) + 6];
        two_by_eight_matrix[1][7] = matrix[8*(i+1) + 7];
        transpose_stage_three(two_by_eight_matrix);
        matrix[8*i ] = two_by_eight_matrix[0][0];
        matrix[8*i + 1] = two_by_eight_matrix[0][1];
        matrix[8*i + 2] = two_by_eight_matrix[0][2];
        matrix[8*i + 3] = two_by_eight_matrix[0][3];
        matrix[8*i + 4] = two_by_eight_matrix[0][4];
        matrix[8*i + 5] = two_by_eight_matrix[0][5];
        matrix[8*i + 6] = two_by_eight_matrix[0][6];
        matrix[8*i + 7] = two_by_eight_matrix[0][7];
        matrix[8*(i+1) ] = two_by_eight_matrix[1][0];
        matrix[8*(i+1) + 1] = two_by_eight_matrix[1][1];
        matrix[8*(i+1) + 2] = two_by_eight_matrix[1][2];
        matrix[8*(i+1) + 3] = two_by_eight_matrix[1][3];
        matrix[8*(i+1) + 4] = two_by_eight_matrix[1][4];
        matrix[8*(i+1) + 5] = two_by_eight_matrix[1][5];
        matrix[8*(i+1) + 6] = two_by_eight_matrix[1][6];
        matrix[8*(i+1) + 7] = two_by_eight_matrix[1][7];
    } 
    // After the columns have been transposed, perform inter-stage movement
    for (j = 0; j < 8; j++)
    {
        for (i = 0; i < 8; i++)
        {
            two_by_eight_tempcol[i] = matrix[8*i + j];
        }
        matrix[8*1 + j] = two_by_eight_tempcol[2];
        matrix[8*2 + j] = two_by_eight_tempcol[4];
        matrix[8*3 + j] = two_by_eight_tempcol[6];
        matrix[8*4 + j] = two_by_eight_tempcol[1];
        matrix[8*5 + j] = two_by_eight_tempcol[3];
        matrix[8*6 + j] = two_by_eight_tempcol[5];
    }
    for (i = 0; i < 2; i++)
    {
        free(two_by_eight_matrix[i]);
    }
}