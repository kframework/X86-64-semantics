#include "mini_string.h"
#include "mini_stdlib.h"
f (n)
     unsigned n;
{
  if ((int) n >= 0)
    abort ();
}

main ()
{
  unsigned x = ~0;
  f (x);
  exit (0);
}
