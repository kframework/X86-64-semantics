#include "mini_string.h"
#include "mini_stdlib.h"
/* Origin: PR c/92 from Simon Marlow <t-simonm@microsoft.com>, adapted
   to a testcase by Joseph Myers <jsm28@cam.ac.uk>.
*/

typedef struct { } empty;

typedef struct {
  int i;
  empty e;
  int i2;
} st;


extern void abort (void);

int
main (void)
{
st s = { .i = 0, .i2 = 1 };
  if (s.i2 == 1)
    exit (0);
  else
    abort ();
}
