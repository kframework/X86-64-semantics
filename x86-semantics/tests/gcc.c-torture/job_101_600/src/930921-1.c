#include "mini_string.h"
#include "mini_stdlib.h"
f (x)
     unsigned x;
{
  return (unsigned) (((unsigned long long) x * 0xAAAAAAAB) >> 32) >> 1;
}

main ()
{
  unsigned i;

  for (i = 0; i < 10; i++)
    if (f (i) != i / 3)
      abort ();
  exit (0);
}
