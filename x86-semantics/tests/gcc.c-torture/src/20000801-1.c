#include "mini_string.h"
#include "mini_stdlib.h"
extern void abort(void);
extern void exit(int);

void
foo (char *bp, unsigned n)
{
  char c;
  char *ep = bp + n;
  char *sp;

  while (bp < ep)
    {
      sp = bp + 3;
      c = *sp;
      *sp = *bp;
      *bp++ = c;
      sp = bp + 1;
      c = *sp;
      *sp = *bp;
      *bp++ = c;
      bp += 2;
    }
}

int main(void)
{
  int one = 1;

  if (4 != 4 * 1)
    exit(0);

  foo((char *)&one, 4);
  foo((char *)&one, 4);

  if (one != 1)
    abort();

  exit(0);
}
