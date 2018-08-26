#include<stddef.h>

extern int inside_main;
extern void abort(void);

__attribute__ ((__noinline__))
char *
strcat (char *dst, const char *src)
{
  char *p = dst;
  
#ifdef __OPTIMIZE__
  if (inside_main)
    abort ();
#endif

  while (*p)
    p++;
  while ((*p++ = *src++))
    ;
  return dst;
}

void *memset(void *s, int c, size_t n)
{
    unsigned char* p=s;
    while(n--)
        *p++ = (unsigned char)c;
    return s;
}

void *memcpy(void *dest, const void *src, size_t n)
{
    char *dp = dest;
    const char *sp = src;
    while (n--)
        *dp++ = *sp++;
    return dest;
}

void exit(int code) {
   __asm__ ("movq $-1, %rax\n\t"
            "jmp %rax\n\t");
}

void abort(void) {
   __asm__ ("movq $-1, %rax\n\t"
            "jmp %rax\n\t");
}

