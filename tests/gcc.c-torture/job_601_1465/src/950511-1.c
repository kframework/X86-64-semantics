#include "mini_string.h"
#include "mini_stdlib.h"
main ()
{
  unsigned long long xx;
  unsigned long long *x = (unsigned long long *) &xx;

  *x = -3;
  *x = *x * *x;
  if (*x != 9)
    abort ();
  exit (0);
}
