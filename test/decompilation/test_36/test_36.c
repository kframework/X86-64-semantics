#include <stdio.h>

double fun(double a , double b){
  return a*a + b*b;
}

int main() {
  printf("%f\n", fun(5.0, 5.0));
  return 0;
}
