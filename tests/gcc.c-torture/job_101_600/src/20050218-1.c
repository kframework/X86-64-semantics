#include "mini_string.h"
#include "mini_stdlib.h"
/* PR tree-optimization/19828 */
typedef __SIZE_TYPE__ size_t;
extern size_t strlen (const char *s);
extern int strncmp (const char *s1, const char *s2, size_t n);
extern void abort (void);

const char *a[16] = { "a", "bc", "de", "fgh" };

int
strncmp(s1, s2, numChars)
     const char *s1, *s2;		/* Strings to compare. */
     size_t numChars;		/* Max number of chars to compare. */
{
    for ( ; numChars > 0; numChars -= 1) {
	if (*s1 != *s2) {
	    if (*s1 > *s2) {
		return 1;
	    } else {
		return -1;
	    }
	}
	if (*s1++ == 0) {
	    return 0;
	}
	s2 += 1;
    }
    return 0;
}

int
foo (char *x, const char *y, size_t n)
{
  size_t i, j = 0;
  for (i = 0; i < n; i++)
    {
      if (strncmp (x + j, a[i], strlen (a[i])) != 0)
        return 2;
      j += strlen (a[i]);
      if (y)
        j += strlen (y);
    }
  return 0;
}

int
main (void)
{
  if (foo ("abcde", (const char *) 0, 3) != 0)
    abort ();
  return 0;
}
