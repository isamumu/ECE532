#include <iostream>
using namespace std;

int main()
{
    int dim_x = 192;
    int dim_y = 192;

    char const *filename = "test.txt";
    char str[192*192];

    int imagePix[dim_x][dim_y];
 
    FILE *fp = fopen(filename, "r");
    if (fp == NULL){
        printf("Could not open file %s",filename);
        return 1;
    }
    int counter = 0;
    int x = 0;
    int y = 0;

    while (fgets(str, 100000, fp) != NULL){
        sscanf(str, )
        imagePix[x][y] = atoi(str);
        x++;
        if(x == dim_x){
            x = 0;
            y++;
        }
        
        printf("at x=%d and y=%d: %d\n ", x,y, imagePix[x][y]);
    }
    fclose(fp);

    // for(int i = 0; i < 192; i++){
    //     for(int j = 0; j < 192; j++){
    //         printf("%s\n", imagePix[i][j]);
    //     }
    // }
    return 0;

}