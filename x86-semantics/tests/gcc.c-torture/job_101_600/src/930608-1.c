#include "mini_string.h"
#include "mini_stdlib.h"
double f (double a) {}
double (* const a[]) (double) = {&f};

main ()
{
  double (*p) ();
  p = &f;
  if (p != a[0])
    abort ();
  exit (0);
}
