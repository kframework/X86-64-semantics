#include "mini_string.h"
#include "mini_stdlib.h"
int v = 3;

f ()
{
  int v = 4;
  {
    extern int v;
    if (v != 3)
      abort ();
  }
}

main ()
{
  f ();
  exit (0);
}
