#include "mini_string.h"
#include "mini_stdlib.h"
//int x,*p=&x;

int main()
{
int x,*p=&x;
  int i=0;
  x=1;
  p[i]=2;
  if (x != 2)
    abort ();
  exit (0);
}
