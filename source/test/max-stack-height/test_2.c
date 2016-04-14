#include<stdio.h>

int foo(int a, int b) { 
  int temp1, temp2; 
  temp1 = a+b;

  if(a > 40 ) {
    temp2 = temp1 + 10;
  } else {
    temp2 = temp1 - 10;
  }
  return temp2;
}

int main() {
  int z; 
  z = foo(10,20); 
  return z;
}

