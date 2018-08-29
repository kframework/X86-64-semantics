extern void abort(void);
extern int inside_main;

typedef __SIZE_TYPE__ size_t;

__attribute__ ((__noinline__))
char *
strncpy(char *s1, const char *s2, size_t n)
{
  char *dest = s1;
#ifdef __OPTIMIZE__
  if (inside_main)
    abort();
#endif
  for (; *s2 && n; n--)
    *s1++ = *s2++;
  while (n--)
    *s1++ = 0;
  return dest;
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
int memcmp(const void* s1, const void* s2,size_t n)
{
    const unsigned char *p1 = s1, *p2 = s2;
    while(n--)
        if( *p1 != *p2 )
            return *p1 - *p2;
        else
            p1++,p2++;
    return 0;
}

void __stack_chk_fail() {
   __asm__ ("movq $-1, %rax\n\t"
            "jmp %rax\n\t");
}


void exit(int code) {
   __asm__ ("movq $-1, %rax\n\t"
            "jmp %rax\n\t");
}

void abort(void) {
   __asm__ ("movq $-1, %rax\n\t"
            "jmp %rax\n\t");
}
