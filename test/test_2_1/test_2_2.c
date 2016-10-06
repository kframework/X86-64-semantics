#include<stdio.h>

int foo(int a, int b, int c, int d, int e, int f, int size1,  int size2) { 
  int sum = size1 + size2 ;

  return sum;
}

int main(int argc, char** argv) {
 // int arr1[] = {11,12,13,14,15,16,17,18,19,20};
 // int arr2[] = {1,2,3,4,5,6,7,8,9,10};
  return foo(100, 200, 300, 400, 500, 600, 10,20);
}
