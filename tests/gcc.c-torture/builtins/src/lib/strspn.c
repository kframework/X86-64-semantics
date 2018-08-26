#include<stddef.h>

extern void abort (void);
extern int inside_main;

__attribute__ ((__noinline__))
__SIZE_TYPE__
strcspn (const char *s1, const char *s2)
{
  const char *p, *q;

#ifdef __OPTIMIZE__
  if (inside_main)
    abort();
#endif

  for (p = s1; *p; p++)
    {
      for (q = s2; *q; q++)
	if (*p == *q)
	  goto proceed;
      break;

    proceed:;
    }
  return p - s1;
}

char *strchr(const char *s, int c) {
  while(*s != (char)c) {
    if(!*s++)
      return 0;
    return (char *)s;
  }
}


size_t strspn(const char *s1, const char *s2)
{
    size_t ret=0;
    while(*s1 && strchr(s2,*s1++))
        ret++;
    return ret;    
}
