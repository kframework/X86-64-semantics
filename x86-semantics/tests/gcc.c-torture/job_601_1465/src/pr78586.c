#include "mini_string.h"
#include "mini_stdlib.h"
/* PR tree-optimization/78586 */

void
foo (unsigned long x)
{
  char a[30];
  unsigned long b = 4; //__builtin_sprintf (a, "%lu", x);
  if (b != 4)
    __builtin_abort ();
}

int
main ()
{
  foo (1000);
  return 0;
}
