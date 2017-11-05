#include<stdio.h>

/*
typedef void (*fp) (int) ;

void bar(int x) {
  printf("%d", x);
}

void foo(fp F) {
  (*F)(10);
}


int main() {
  foo(bar);
  return 0;
}
*/


void func(int k) {
  int i = 0;
  for( i = 0 ; i < k ; i++)
    printf("Hello World!");
} 

int main() {
  func(2);
  return 0;
}
