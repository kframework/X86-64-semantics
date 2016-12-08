#include<stdio.h>

int foo(int a, int b) { 
  int temp1, temp2; 
  temp1 = a+b;

  while(a >= 0) {
    if(a%2 == 0 ) {
      temp2 = temp1 + 10;
    } else {
      temp1 = temp1 - 10;
    }
    a --;
  }
  return temp2;
}

int main() {
  int z; 
  z = foo(10,20); 
  printf("%d\n", z);
  return z;
}

