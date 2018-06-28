#include "mini_string.h"
#include "mini_stdlib.h"
unsigned char x = 50;
volatile short y = -5;

int main ()
{
  x /= y;
  if (x != (unsigned char) -10)
    abort ();
  exit (0);
}
