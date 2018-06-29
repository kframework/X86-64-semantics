#include "mini_string.h"
#include "mini_stdlib.h"

int * foo (int *x, int b)
{

  *(x++) = 55;
  if (b)
    *(x++) = b;

  return x;
}

main()
{
  int a[5];
  a[0] = 1;
  a[1] = 1;
  a[2] = 1;
  a[3] = 1;
  a[4] = 1;

  //memset (a, 1, sizeof (a));

  if (foo(a, 0) - a != 1 || a[0] != 55 || a[1] != a[4])
    abort();

  //memset (a, 1, sizeof (a));
  a[0] = 1;
  a[1] = 1;
  a[2] = 1;
  a[3] = 1;
  a[4] = 1;

  if (foo(a, 2) - a != 2 || a[0] != 55 || a[1] != 2)
    abort();

  exit (0);
}
