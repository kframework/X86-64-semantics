#include "mini_string.h"
#include "mini_stdlib.h"
/* { dg-add-options stack_size } */

f()
{
  int x = 1;
#if defined(STACK_SIZE)
  char big[STACK_SIZE/2];
#else
  char big[0x10];
#endif

  ({
    __label__ mylabel;
  mylabel:
    x++;
    if (x != 3)
      goto mylabel;
  });
  exit(0);
}

main()
{
  f();
}
