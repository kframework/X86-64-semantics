#include "mini_string.h"
#include "mini_stdlib.h"
//int a[2] = { 18, 6 };

int main ()
{
  int a[2] = { 18, 6 };
  int b = (-3 * a[0] -3 * a[1]) / 12;
  if (b != -6)
    abort ();
  exit (0);
}
