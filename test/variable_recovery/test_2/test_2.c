#include<stdio.h>
extern int fooA(int *);
extern int fooB(short *, short *);

int foo (int a) {
  if(a < 3) {
    int a;
    fooA(&a);
    printf("%d", a);
  } else {
    short a, b;
    fooB(&a, &b);
    printf("%hd %hd", a, b);
  }
  return 0;
}

