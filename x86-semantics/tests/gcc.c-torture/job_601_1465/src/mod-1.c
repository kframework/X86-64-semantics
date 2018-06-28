#include "mini_string.h"
#include "mini_stdlib.h"
f (x, y)
{
  if (x % y != 0)
    abort ();
}

main ()
{
  f (-5, 5);
  exit (0);
}
