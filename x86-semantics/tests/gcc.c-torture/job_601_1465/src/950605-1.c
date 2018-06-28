#include "mini_string.h"
#include "mini_stdlib.h"
f (c)
    unsigned char c;
{
  if (c != 0xFF)
    abort ();
}

main ()
{
  f (-1);
  exit (0);
}
