#include "mini_string.h"
#include "mini_stdlib.h"
typedef struct x { int a; int b; } __attribute__((aligned(32))) X;
typedef struct y { X x[32]; int c; } Y;


int main(void)
{
Y y[2];
  if (((char *)&y[1] - (char *)&y[0]) & 31)
    abort ();
  exit (0);
}                
