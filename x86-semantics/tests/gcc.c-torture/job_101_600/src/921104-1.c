#include "mini_string.h"
#include "mini_stdlib.h"
main ()
{
  unsigned long val = 1;

  if (val > (unsigned long) ~0)
    abort();
  exit (0);
}
