#include "mini_string.h"
#include "mini_stdlib.h"
int
f (b)
{
  return (b >> 1) > 0;
}

main ()
{
  if (!f (9))
    abort ();
  if (f (-9))
    abort ();
  exit (0);
}
