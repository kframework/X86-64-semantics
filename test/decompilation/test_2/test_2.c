#include<stdio.h>
//Passing scalar arguments in stack
int foo(int a, int b, int c, int d, 
    int e, int f, int g, int h) { 
  int temp1, temp2; 
  temp1 = a + b + c + d + e + f + g;

  if(temp1 > 40 ) {
    temp2 = temp1 + h;
  } else {
    temp2 = temp1 - h;
  }
  return temp2;
}

int main() {
  int z; 
  z = foo(10,20,30,40,50,60,  70, 80); 
  printf("%d\n", z);
  return z;
}

