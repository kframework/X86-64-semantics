#include <stdio.h>
#include <stddef.h>
extern void abort (void);
extern int inside_main;
extern size_t strlen(const char *);

size_t strlen(const char *s) {
    size_t i;
    for (i = 0; s[i] != '\0'; i++) ;
    return i;
}


int
fputs(const char *string, FILE *stream)
{
  size_t n = strlen(string);
  size_t r;
#if defined __OPTIMIZE__ && !defined __OPTIMIZE_SIZE__
  if (inside_main)
    abort();
#endif
  r = fwrite (string, 1, n, stream);
  return n > r ? EOF : 0;
}

/* Locking stdio doesn't matter for the purposes of this test.  */
int
fputs_unlocked(const char *string, FILE *stream)
{
  return fputs (string, stream);
}
