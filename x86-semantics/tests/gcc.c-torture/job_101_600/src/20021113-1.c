#include "mini_string.h"
#include "mini_stdlib.h"
/* { dg-require-effective-target alloca } */

/* This program tests a data flow bug that would cause constant propagation
   to propagate constants through function calls.  */

foo (int *p)
{
  *p = 10;
}

main()
{
  //int *ptr = alloca (sizeof (int));
  int x;
  int *ptr = &x;

   *ptr = 5;
  foo (ptr);
  if (*ptr == 5)
    abort ();
  exit (0);
}
