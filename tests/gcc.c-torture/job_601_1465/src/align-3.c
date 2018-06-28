#include "mini_string.h"
#include "mini_stdlib.h"
void func(void) __attribute__((aligned(256)));

void func(void) 
{
}

int main()
{
  if (__alignof__(func) != 256)
    abort ();
  return 0;
}
