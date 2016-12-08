#include <stdio.h>
#include <stdlib.h>

int  check(int a, int  b, int c, int d, int e, int f,  int * stack_arr_s){
  int sum = *stack_arr_s ;

  return sum;
}

int main(){
    int stack_arr[10];
    //int *stack_arr = (int *) malloc(sizeof(int) * 10);

    for(int i = 0 ;i < 10; i++) {
      stack_arr[i] = 21;
    }

    int z  =  check(10,  10, 10, 10, 10, 10, stack_arr);
    printf("%d\n", z);
    return z;
}

