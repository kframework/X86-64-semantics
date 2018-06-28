#include "mini_string.h"
#include "mini_stdlib.h"
extern void abort (void);

void __attribute__((noinline,noclone))
     test1(int i)
{
  if (i == 12)
    return;
  if (i != 17)
    {
      if (i == 15)
	return;
      abort ();
    }
}

int main() { test1 (15); return 0; }
