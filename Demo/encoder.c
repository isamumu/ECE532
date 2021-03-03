#include "main.h"

// Modes for Zig-Zag
#define MODE_ZZ_DIAGONAL 0
#define MODE_ZZ_VERTICAL 1 // zig-zag is currently located at a vertical wall (eg. j = 0 or j = BLOCK_SIZE - 1) and therefore the next move must be down
#define MODE_ZZ_HORIZONTAL 2 // zig-zag is currently located at a horizontal wall (eg. i = 0 or i = BLOCK_SIZE - 1) and therefore the next move must be to the right

// Modes for Run-Length Encoder
#define MODE_RLE_INITIAL 0 // encoder is currently waiting for the next block of 64 values
#define MODE_RLE_ENCODE 1 // encoder expects 1 value input per cycle, and will enter MODE_RLE_INITIAL the cycle after BLOCK_SIZE * BLOCK_SIZE read


void zig_zag(float* dct_coeffs, float* bitstream)
{
    /*
        Zigzagging implemented using an FSM

    */
    int i = 0;
    int j = 0;
    int k = 0;
    int mode = MODE_ZZ_HORIZONTAL;
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
        if (i == BLOCK_SIZE-1 && j == BLOCK_SIZE-1)
        {
            break;
        }
        switch(mode)
        {
            case MODE_ZZ_DIAGONAL:
                i -= direction;
                j += direction;
                if (i == 0 || i == BLOCK_SIZE-1) // Prioritize horizontal mode first, because at all corners we want to move horizontally
                {
                    mode = MODE_ZZ_HORIZONTAL;
                }
                else if (j == 0 || j == BLOCK_SIZE-1)
                {
                    mode = MODE_ZZ_VERTICAL;
                }
                break;
            case MODE_ZZ_VERTICAL:
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
                mode = MODE_ZZ_DIAGONAL;
                break;
            case MODE_ZZ_HORIZONTAL:
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
                mode = MODE_ZZ_DIAGONAL;
                break;
        }
    }
}

void de_zig_zag(float* bitstream, float* dct_coeffs)
{
    /*
        Zigzagging implemented using an FSM

    */
    int i = 0;
    int j = 0;
    int k = 0;
    int mode = MODE_ZZ_HORIZONTAL;
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
        dct_coeffs[8*i + j] = bitstream[k];
        k += 1;
        if (i == BLOCK_SIZE-1 && j == BLOCK_SIZE-1)
        {
            break;
        }
        switch(mode)
        {
            case MODE_ZZ_DIAGONAL:
                i -= direction;
                j += direction;
                if (i == 0 || i == BLOCK_SIZE-1) // Prioritize horizontal mode first, because at all corners we want to move horizontally
                {
                    mode = MODE_ZZ_HORIZONTAL;
                }
                else if (j == 0 || j == BLOCK_SIZE-1)
                {
                    mode = MODE_ZZ_VERTICAL;
                }
                break;
            case MODE_ZZ_VERTICAL:
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
                mode = MODE_ZZ_DIAGONAL;
                break;
            case MODE_ZZ_HORIZONTAL:
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
                mode = MODE_ZZ_DIAGONAL;
                break;
        }
    }
}

void test_zig_zag()
{   
    int i;
    int test_failed = 0;
    float* original_pixels = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
    for (i = 0; i < BLOCK_SIZE * BLOCK_SIZE; i++)
    {
        original_pixels[i] = i + 1;
    }    
    float* zig_zagged_pixels = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
    float* correct_pixels = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
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
    float* output_pixels = (float*) malloc( BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
    for (i = 0; i < BLOCK_SIZE * BLOCK_SIZE; i++)
    {
        output_pixels[i] = -1;
    }   
    zig_zag(original_pixels, zig_zagged_pixels);
    for (i = 0; i < BLOCK_SIZE * BLOCK_SIZE; i++)
    {
        if (zig_zagged_pixels[i] != correct_pixels[i])
        {
            printf("Error at value %d: expected: %.2f, received: %.2f\n", i, correct_pixels[i], zig_zagged_pixels[i]);
            test_failed = 1;
        }
    }

    de_zig_zag(zig_zagged_pixels, output_pixels);
    for (i = 0; i < BLOCK_SIZE * BLOCK_SIZE; i++)
    {
        if (output_pixels[i] != original_pixels[i])
        {
            printf("Error at output %d: expected: %.2f, received: %.2f\n", i, original_pixels[i], output_pixels[i]);
            test_failed = 1;
        }
        printf("De-zig-zagged pixel %d: %.2f\n", i, output_pixels[i]);
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
    free(output_pixels);
}

// Cycle-accurate simulation of a run-length encoder
void run_length_encoder(float* bitstream, float* encoded_bitstream)
{
    int i = 0;
    int j = 0;

    int mode = MODE_RLE_INITIAL;
    int data_read = 0;
    float threshold;
    float input;
    float i_temp;
    int i_counter;
    int i_start;
    float output;
    int o_counter;
    int o_valid;

    // Initial values (reset)
    mode = MODE_RLE_INITIAL;
    data_read = 0;
    threshold = 0.0001;
    i_temp = 0;
    i_counter = 0;
    output = 0;
    o_counter = 0;
    o_valid = 0;

    // First input
    input = bitstream[0];
    i = 1;
    i_start = 1;

    while(data_read <= 64)
    {
        // Each iteration of this while loop acts like a clock cycle
        switch(mode)
        {
            case MODE_RLE_INITIAL:
                if (i_start == 1)
                {
                    i_temp = input;
                    i_counter = 1;
                    data_read = 1;
                    mode = MODE_RLE_ENCODE;
                }
                else
                {
                    i_temp = 0;
                    i_counter = 0;
                    data_read = 0;
                    mode = MODE_RLE_INITIAL;
                }
                break;

            case MODE_RLE_ENCODE:
                // Case 1: Need to send output (output and input differ, input is same but counter is already 7, data_read is 64)
                if ((fabs(input - i_temp) >= threshold) || (fabs(input - i_temp) < threshold && i_counter == 7) || (data_read == BLOCK_SIZE * BLOCK_SIZE))
                {
                    // Output value and its frequency
                    output = i_temp;
                    o_counter = i_counter;
                    o_valid = 1;
                    // Reset counter
                    i_temp = input;
                    i_counter = 1;
                }
                else
                {
                    output = 0;
                    o_counter = 0;
                    o_valid = 0;
                    i_counter = i_counter + 1;
                }
                mode = (data_read == 64) ? MODE_RLE_INITIAL : MODE_RLE_ENCODE;
                data_read += 1;
                break;
        }
        // printf("Cycle %d: input=%.2f, i_temp=%.2f, i_counter=%d, output=%.2f, o_counter=%d, o_valid=%d\n", data_read, input, i_temp, i_counter, output, o_counter, o_valid);
        if (o_valid == 1)
        {
            encoded_bitstream[j] = output;
            encoded_bitstream[j+1] = o_counter;
            j += 2;
        }
      
        input = bitstream[i];
        i += 1;
        i_start = 0;
    }
}

void run_length_decoder(float* encoded_bitstream, float* bitstream)
{
    int i;
    int j;
    int curr_pos_bitstream = 0;
    int value_frequency;
    for (i = 0; i < BLOCK_SIZE * BLOCK_SIZE; i += 2)
    {
        value_frequency = encoded_bitstream[i + 1];
        for (j = 0; j < value_frequency; j++)
        {
            bitstream[curr_pos_bitstream + j] = encoded_bitstream[i];
        }
        curr_pos_bitstream += value_frequency;
    }
}

void test_run_length_encoder()
{
    int i;
    float* input_bitstream = (float*) malloc(BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
    float* output_bitstream = (float*) malloc(BLOCK_SIZE * BLOCK_SIZE * sizeof(float));
    for (i = 0; i < BLOCK_SIZE * BLOCK_SIZE; i++)
    {
        if (i >=0 && i < 10)
        {
            input_bitstream[i] = 5;
        }
        else if (i >= 10 && i < 12)
        {
            input_bitstream[i] = 3;
        }
        else
        {
            input_bitstream[i] = 0;
        }
        output_bitstream[i] = -1;
    }
    run_length_encoder(input_bitstream, output_bitstream);
    for (i = 0; i < BLOCK_SIZE * BLOCK_SIZE; i+=2)
    {
        printf("Output Value: %.2f, Output frequency: %.2f\n", output_bitstream[i], output_bitstream[i+1]);
    }

    for (i = 0; i < BLOCK_SIZE * BLOCK_SIZE; i++)
    {
        input_bitstream [i] = -1;
    }
    run_length_decoder(output_bitstream, input_bitstream);
    for (i = 0; i < BLOCK_SIZE * BLOCK_SIZE; i++)
    {
        printf("Decoded Value %d: %.2f\n", i, input_bitstream[i]);
    }

    free(input_bitstream);
    free(output_bitstream);
}


// // The following functionality is meant to run in a single cycle
// void run_length_encoder_single_cycle(float input, float* i_temp, int* i_counter, int* i_data_read, float* output, int* o_counter, int* o_valid)
// {
//     float threshold = 0.0001;
//     // Case 0: Reached the last value (64th value)
//     if (*i_data_read == BLOCK_SIZE * BLOCK_SIZE)
//     {
//         *output = *i_temp;
//         *o_counter = *i_counter;
//         *o_valid = 1;
//         *i_counter = 0;
//     }
//     // Case 1: input = stored input
//     if (fabs(input - *i_temp) < threshold)
//     {
//         // Counter saturates at 7, so we need to send it when it reaches 7
//         if (*i_counter == 7)
//         {
//             *output = *i_temp;
//             *o_counter = *i_counter;
//             *o_valid = 1;
//             *i_counter = 1;
//         }
//         else
//         {
//             // Won't be necessary in Verilog because these will be different registers (updated on different clock cycles)
//             *output = 0;
//             *o_counter = 0;
//             *o_valid = 0;
//             *i_counter = *i_counter + 1;
//         }
//     }
//     // Case 2: input is different from stored input
//     else
//     {
//         // Output value and its frequency
//         *output = *i_temp;
//         *o_counter = *i_counter;
//         *o_valid = 1;
//         // Reset counter
//         *i_temp = input;
//         *i_counter = 1;
//     }
// }