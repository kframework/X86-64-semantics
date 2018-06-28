#include "mini_string.h"
#include "mini_stdlib.h"
main()
{
  double x,y=0.5;
  x=y/0.2;
  if(x!=x)
    abort();
  exit(0);
}
