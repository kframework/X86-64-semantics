#include "mini_string.h"
#include "mini_stdlib.h"
/* { dg-require-effective-target alloca } */
//#include <string.h>
//#include <stdio.h>

void
a(void *x,int y)
{
  if (y != 1234)
    abort ();
}

int
main()
{
  char p[100];
  //a(strcpy(alloca(100),"abc"),1234);
  a(strcpy(p,"abc"),1234);
  return 0;
}
