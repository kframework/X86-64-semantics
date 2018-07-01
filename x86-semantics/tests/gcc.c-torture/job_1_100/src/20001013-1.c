#include "mini_string.h"
#include "mini_stdlib.h"
typedef struct x {
	int a, b;
} X;


int foo(struct x *p, int y)
{
  if ((y & 0xff) != y || -p->b >= p->a)
    return 1;
  return 0;
}

main()
{

X z = { -4028, 4096 };
  if (foo (&z, 10))
    abort ();
  exit (0);
}
