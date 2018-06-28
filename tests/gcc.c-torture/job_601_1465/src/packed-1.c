#include "mini_string.h"
#include "mini_stdlib.h"
short x1 = 17;

struct
{
  short i __attribute__ ((packed));
} t;

f ()
{
  t.i = x1;
  if (t.i != 17)
    abort ();
}

main ()
{
  f ();
  exit (0);
}
