#include "mini_string.h"
#include "mini_stdlib.h"
/* { dg-add-options stack_size } */

/* PR optimization/8750
   Used to fail under Cygwin with 
   -O2 -fomit-frame-pointer        
   Testcase by David B. Trout     */

#define ARRAY_SIZE 32
#define STRLEN     8
extern void *memset (void *, int, __SIZE_TYPE__);
extern void abort (void);

static void foo ()
{
    char a[ARRAY_SIZE];

    a[0]=0;
    memset( &a[0], 0xCD, STRLEN );
    a[STRLEN]=0;
    if (strlen(a) != STRLEN)
      abort ();
}

int main ( int argc, char* argv[] )
{
    foo();
    return 0;
}
