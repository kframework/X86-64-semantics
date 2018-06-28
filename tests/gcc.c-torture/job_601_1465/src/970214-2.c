#include "mini_string.h"
#include "mini_stdlib.h"
#define m(L) (L'1' + (L))
main ()
{
  exit (m (0) != L'1');
}
