#include "mini_string.h"
#include "mini_stdlib.h"
struct { long f8:8; long f24:24; } a;
struct { long f32:32; } b;

main ()
{
  if (sizeof (a) != sizeof (b))
    abort ();
  exit (0);
}
