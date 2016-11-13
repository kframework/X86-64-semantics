#include <stdio.h>



int fib(int n) {
  if(1 == n || 0 == n) {
    return 1;
  }

  return fib(n-1) + fib(n-2);

}
int main() {
  printf("%d\n", fib(5));
  return 0;
}
