#include "mini_string.h"
#include "mini_stdlib.h"
extern void abort(void);

int a = -1; 

int main ()
{
  int b = a == 0 ? 0 : -a;
  if (b < 1)
    abort ();
  return 0;
}
