#include "mini_string.h"
#include "mini_stdlib.h"
__volatile int a = 0;

extern void abort (void);
extern void exit (int);

int
main (void)
{
  if (__builtin_ffs (a) != 0)
    abort ();
  exit (0);
}
