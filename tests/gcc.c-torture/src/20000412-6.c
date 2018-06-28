#include "mini_string.h"
#include "mini_stdlib.h"
unsigned bug (unsigned short value, unsigned short *buffer,
              unsigned short *bufend);

int main()
{
unsigned short buf[] = {1, 4, 16, 64, 256};
  if (bug (512, buf, buf + 3) != 491)
    abort ();

  exit (0);
}

unsigned
bug (unsigned short value, unsigned short *buffer, unsigned short *bufend)
{
  unsigned short *tmp;

  for (tmp = buffer; tmp < bufend; tmp++)
    value -= *tmp;

  return value;
}
