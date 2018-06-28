#include "mini_string.h"
#include "mini_stdlib.h"
struct s1
{
  int __attribute__ ((aligned (8))) a;
};

struct
{
  char c;
  struct s1 m;
} v;

int
main (void)
{
  if ((int)&v.m & 7)
    abort ();
  exit (0);
}
