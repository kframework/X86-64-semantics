#include "mini_string.h"
#include "mini_stdlib.h"

void foo(int *sp, int cnt)
{
  int *p, *top;

  top = sp; sp -= cnt;

  for(p = sp; p <= top; p++)
    if (*p < 2) exit(0);
}

int main()
{
int a[2] = { 2, 0 };
  foo(a + 1, 1);
  abort();
}
