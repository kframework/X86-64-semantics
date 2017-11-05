#include<stdio.h>
#include<stdlib.h>

int foo(int a, int b, int c, int d, int e, int f, int size1, int* arr1, int size2, int* arr2) { 
  unsigned int sum = 0 ;

  int i = 0;
  for(; i < size1 ; i ++) {
    sum += (arr1[i]  - arr2[i]);
  }
  return sum*(a+b+c+d+e+f);
}

int main(int argc, char** argv) {
  int* arr1 = (int *) malloc(sizeof(int) * 10);
  int* arr2 = (int *) malloc(sizeof(int) * 10);

  int i = 0;
  for(; i < 10 ; i ++) {
    arr1[i]  = 10 + i+1;
  }
  i = 0;
  for(; i < 10 ; i ++) {
    arr2[i]  = i+1;
  }
  int z =  foo(100, 200, 300, 400, 500, 600, 10, arr1, 10, arr2);
  printf("%d\n", z);
  return z;
}
