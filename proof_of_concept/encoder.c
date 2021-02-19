#include "main.h"

#define MODE_DIAGONAL 0
#define MODE_VERTICAL 1 // zig-zag is currently located at a vertical wall (eg. j = 0 or j = PICTURE_SIZE - 1) and therefore the next move must be down
#define MODE_HORIZONTAL 2 // zig-zag is currently located at a horizontal wall (eg. i = 0 or i = PICTURE_SIZE - 1) and therefore the next move must be to the right

void zig_zag(float* dct_coeffs, float* bitstream)
{
    /*
        Zigzagging implemented using an FSM

    */
    int i = 0;
    int j = 0;
    int k = 0;
    int mode = MODE_HORIZONTAL;
    /*
        Direction:
        | 1 2 3 4 |
        | 5 6 7 8 |
        | 9 A B C |
        | D E F 0 |
        1 represents moving in direction towards top right (eg. 6->3)
        -1 represents moving in direction towards bottom left (eg. 6->9)
    */
    int direction = 1;
    while (1)
    {
        bitstream[k] = dct_coeffs[8*i + j];
        k += 1;
        if (i == PICTURE_SIZE-1 && j == PICTURE_SIZE-1)
        {
            break;
        }
        switch(mode)
        {
            case MODE_DIAGONAL:
                i -= direction;
                j += direction;
                if (i == 0 || i == PICTURE_SIZE-1) // Prioritize horizontal mode first, because at all corners we want to move horizontally
                {
                    mode = MODE_HORIZONTAL;
                }
                else if (j == 0 || j == PICTURE_SIZE-1)
                {
                    mode = MODE_VERTICAL;
                }
                break;
            case MODE_VERTICAL:
                /*
                    Vertical wall:
                    | 1 2 3 4 |
                    | 5 6 7 8 |
                    | 9 A B C |
                    | D E F 0 |
                    For instance, when 2 -> 5, we hit a vertical wall. In this case, we must then transition down to 9 and reverse the diagonal direction, before proceeding diagonally again
                */
                i += 1;
                direction = direction * -1;
                mode = MODE_DIAGONAL;
                break;
            case MODE_HORIZONTAL:
                /*
                    Horizontal wall:
                    | 1 2 3 4 |
                    | 5 6 7 8 |
                    | 9 A B C |
                    | D E F 0 |
                    For instance, when 6 -> 3, we hit a vertical wall. In this case, we must then transition right to 4 and reverse the diagonal direction, before proceeding diagonally again
                */
                j += 1;
                direction = direction * -1;
                mode = MODE_DIAGONAL;
                break;
        }
    }
}

void test_zig_zag()
{   
    int i;
    int test_failed = 0;
    float* original_pixels = (float*) malloc( PICTURE_SIZE * PICTURE_SIZE * sizeof(float));
    for (i = 0; i < PICTURE_SIZE * PICTURE_SIZE; i++)
    {
        original_pixels[i] = i + 1;
    }    
    float* zig_zagged_pixels = (float*) malloc( PICTURE_SIZE * PICTURE_SIZE * sizeof(float));
    float* correct_pixels = (float*) malloc( PICTURE_SIZE * PICTURE_SIZE * sizeof(float));
    correct_pixels[0] = 1;
    correct_pixels[1] = 2;
    correct_pixels[2] = 9;
    correct_pixels[3] = 17;
    correct_pixels[4] = 10;
    correct_pixels[5] = 3;
    correct_pixels[6] = 4;
    correct_pixels[7] = 11;
    correct_pixels[8] = 18;
    correct_pixels[9] = 25;
    correct_pixels[10] = 33;
    correct_pixels[11] = 26;
    correct_pixels[12] = 19;
    correct_pixels[13] = 12;
    correct_pixels[14] = 5;
    correct_pixels[15] = 6;
    correct_pixels[16] = 13;
    correct_pixels[17] = 20;
    correct_pixels[18] = 27;
    correct_pixels[19] = 34;
    correct_pixels[20] = 41;
    correct_pixels[21] = 49;
    correct_pixels[22] = 42;
    correct_pixels[23] = 35;
    correct_pixels[24] = 28;
    correct_pixels[25] = 21;
    correct_pixels[26] = 14;
    correct_pixels[27] = 7;
    correct_pixels[28] = 8;
    correct_pixels[29] = 15;
    correct_pixels[30] = 22;
    correct_pixels[31] = 29;
    correct_pixels[32] = 36;
    correct_pixels[33] = 43;
    correct_pixels[34] = 50;
    correct_pixels[35] = 57;
    correct_pixels[36] = 58;
    correct_pixels[37] = 51;
    correct_pixels[38] = 44;
    correct_pixels[39] = 37;
    correct_pixels[40] = 30;
    correct_pixels[41] = 23;
    correct_pixels[42] = 16;
    correct_pixels[43] = 24;
    correct_pixels[44] = 31;
    correct_pixels[45] = 38;
    correct_pixels[46] = 45;
    correct_pixels[47] = 52;
    correct_pixels[48] = 59;
    correct_pixels[49] = 60;
    correct_pixels[50] = 53;
    correct_pixels[51] = 46;
    correct_pixels[52] = 39;
    correct_pixels[53] = 32;
    correct_pixels[54] = 40;
    correct_pixels[55] = 47;
    correct_pixels[56] = 54;
    correct_pixels[57] = 61;
    correct_pixels[58] = 62;
    correct_pixels[59] = 55;
    correct_pixels[60] = 48;
    correct_pixels[61] = 56;
    correct_pixels[62] = 63;
    correct_pixels[63] = 64;
    zig_zag(original_pixels, zig_zagged_pixels);
    for (i = 0; i < PICTURE_SIZE * PICTURE_SIZE; i++)
    {
        if (zig_zagged_pixels[i] != correct_pixels[i])
        {
            printf("Error at value %d: expected: %.2f, received: %.2f\n", i, correct_pixels[i], zig_zagged_pixels[i]);
            test_failed = 1;
        }
    }
    if (test_failed == 0)
    {
        printf("Zig-zag Test Passed\n");
    }
    else
    {
        printf("Zig-zag Test Failed\n");
    }
    free(original_pixels);
    free(zig_zagged_pixels);
    free(correct_pixels);
}
