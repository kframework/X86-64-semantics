extern void abort (void);
extern int inside_main;
#include<stddef.h>
#include "mini_string.h"
#include "mini_stdlib.h"

__attribute__ ((__noinline__))
void *
mempcpy (void *dst, const void *src, __SIZE_TYPE__ n)
{
  const char *srcp;
  char *dstp;

#ifdef __OPTIMIZE__
  if (inside_main)
    abort ();
#endif

  srcp = src;
  dstp = dst;
  while (n-- != 0)
    *dstp++ = *srcp++;

  return dstp;
}
