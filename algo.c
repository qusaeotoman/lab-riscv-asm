#include <stdio.h>

#define N 4
#define M 4

int sum_diagonal(int arr[N][M]) {
    int sum = 0;
    for (int i = 0; i < N; i++) {
        sum += arr[i][i];  
    }
    return sum;
}

int main(void) {
    int arr[N][M] = {
        {  1,  2,  3,  4 },
        {  5,  6,  7,  8 },
        {  9, 10, 11, 12 },
        { 13, 14, 15, 16 }
    };

    int result = sum_diagonal(arr);
    printf("Diagonal sum: %d\n", result);
    return 0;
}
