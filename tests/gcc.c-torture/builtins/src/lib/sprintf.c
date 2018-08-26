//#include <stdio.h>
//#include <stdarg.h>
//extern void abort (void);
//extern int inside_main;
//
//__attribute__ ((__noinline__))
//int
//(sprintf) (char *buf, const char *fmt, ...)
//{
//  va_list ap;
//  int r;
//#ifdef __OPTIMIZE__
//  if (inside_main)
//    abort ();
//#endif
//  va_start (ap, fmt);
//  r = vsprintf (buf, fmt, ap);
//  va_end (ap);
//  return r;
//}

#include<stddef.h>

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

