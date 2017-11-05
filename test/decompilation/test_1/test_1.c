#include<stdio.h>

int foo(int a, int b) { 
  return a+b;
}

int main() {
  int z = foo(10,20); 
  printf("%d\n", z);
  return z;
}

