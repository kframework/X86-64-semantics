extern void abort (void);
extern int inside_main;
#include<stddef.h>
#include "mini_string.h"
#include "mini_stdlib.h"

__attribute__ ((__noinline__))
char *
stpcpy (char *dst, const char *src)
{
#ifdef __OPTIMIZE__
  if (inside_main)
    abort ();
#endif

  while (*src != 0)
    *dst++ = *src++;

  *dst = 0;
  return dst;
}
