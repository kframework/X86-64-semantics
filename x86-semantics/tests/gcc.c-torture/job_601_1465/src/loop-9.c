#include "mini_string.h"
#include "mini_stdlib.h"
/* Source: Neil Booth, from PR # 115.  */

int my_false()
{
  return 0;
}

extern void abort (void);

int main (int argc,char *argv[])
{
  int count = 0;

  while (my_false() || count < -123)
    ++count;

  if (count)
    abort ();

  return 0;
}
