#include<stdio.h>

int foo(int a, int b, int c, int d, int e, int f, int size1,  int size2) { 
  printf("%d\n", size1 + size2);
  return 0;
}

int main(int argc, char** argv) {
  return foo(100, 200, 300, 400, 500, 600, 10,20);
}
