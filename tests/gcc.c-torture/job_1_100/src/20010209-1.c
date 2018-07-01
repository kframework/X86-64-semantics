#include "mini_string.h"
#include "mini_stdlib.h"
/* { dg-require-effective-target alloca } */
//int b;
int foo (void)
{
  int x[6];
  int bar (int t[6])
  {
    int i;
    for (i = 0; i < 6; i++)
      t[i] = i + (i > 0 ? t[i-1] : 0);
    return t[5];
  }
  return bar (x);
}

int main ()
{
  //b = 6;
  if (foo () != 15)
    abort ();
  exit (0);
}
