#include <iostream>
using namespace std;


int main()
{
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


    for(int j = 0; j < dim_y; j++){
        for(int k = 0; k < dim_x; k++){
            chunks[j/c_size][j][k] = imagePix[j][k];
        }
    }

    for (int i = 0; i < num_chunks; i++) {
        for (int j = 0; j < c_size; j++) {
            for (int k = 0; k < c_size; k++) {
                printf("%3d ", (int) chunks[i][j][k]);
            }
            printf("\n");
        }
        printf("\n\n\n");
    }
    

    return 0;

}
