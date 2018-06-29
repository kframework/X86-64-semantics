#include "mini_string.h"
#include "mini_stdlib.h"
/* { dg-options "-fgnu89-inline" } */

extern void exit (int);

inline void
f (int x)
{
  int *(p[2]);
  int m[2*7];
  int i;

  for (i = 0; i < 2; i++)
    p[i] = m + x*i;

  p[1][0] = 0;
}

int
main ()
{
  f (7);
  exit (0);
}
