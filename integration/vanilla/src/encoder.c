/*
 * encoder.c
 *
 *  Created on: Mar 3, 2021
 *      Author: poyisamu
 */

#include "../../vanilla/src/main.h"

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

