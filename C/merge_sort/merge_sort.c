#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void printIntArray(int [], int);
int getIntArraySize(int []);
void merge_sort(int [], int);

int main() {
    int best_array[] = {0,1,2,3,4,5,6,7,8,9};
    int worst_array[] = {9,8,7,6,5,4,3,2,1,0};
    int some_array[] = {6,2,8,0,4,1,3,7,9,5};

    printf("best array: ");
    int size = sizeof(best_array) / sizeof(best_array[0]);
    printIntArray(best_array, size);
    printf("\n");

    printf("some array: ");
    size = sizeof(some_array) / sizeof(some_array[0]);
    printIntArray(some_array, size);
    printf("\n");

    merge_sort(some_array, size);

    printIntArray(some_array, size);
    printf("\n");

    printf("Hello, World!\n");
    return 0;
}

void merge_sort(int array[], int arr_size) {

    if(arr_size <= 1){
    } else {
        merge_sort(array, ceil(arr_size/2));
    }

}

void printIntArray(int array[], int arr_size) {
    for(int i = 0; i < arr_size; i++) {
        printf("%d ", array[i]);
    }
}