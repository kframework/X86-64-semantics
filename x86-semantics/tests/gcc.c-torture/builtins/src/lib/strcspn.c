extern void abort (void);
extern int inside_main;
#include<stddef.h>

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
    for (q = s2; *q; q++)
      if (*p == *q)
	goto found;

 found:
  return p - s1;
}

void exit(int code) {
   __asm__ ("movq $-1, %rax\n\t"
            "jmp %rax\n\t");
}

void abort(void) {
   __asm__ ("movq $-1, %rax\n\t"
            "jmp %rax\n\t");
}

char *strchr(const char *s, int c) {
  while(*s != (char)c) {
    if(!*s++)
      return 0;
    return (char *)s;
  }
}

size_t strlen(const char *s) {
    size_t i;
    for (i = 0; s[i] != '\0'; i++) ;
    return i;
}

char *strcpy(char *dest, const char* src)
{
    char *ret = dest;
    while (*dest++ = *src++)
        ;
    return ret;
}

int strcmp(const char* s1, const char* s2)
{
    while(*s1 && (*s1==*s2))
        s1++,s2++;
    return *(const unsigned char*)s1-*(const unsigned char*)s2;
}

