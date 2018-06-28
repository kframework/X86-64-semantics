#include "mini_string.h"
#include "mini_stdlib.h"
void f(long i)
{
  if ((signed char)i < 0 || (signed char)i == 0) 
    abort ();
  else
    exit (0);
}

main()
{
  f(0xffffff01);
}

