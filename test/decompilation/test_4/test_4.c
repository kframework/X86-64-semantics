#include<stdio.h>

int foo(int a, int b, int c, int d, int e, int f, int size1, int* arr1, int size2, int* arr2) { 
  unsigned int sum = 0 ;

  for(int i = 0 ; i < size1 ; i ++) {
    sum += (arr1[i]  - arr2[i]);
  }
  return sum*(a+b+c+d+e+f);
}

int main(int argc, char** argv) {
  int arr1[] = {11,12,13,14,15,16,17,18,19,20};
  int arr2[] = {1,2,3,4,5,6,7,8,9,10};
  return foo(100, 200, 300, 400, 500, 600, 10, arr1, 10, arr2);
}
