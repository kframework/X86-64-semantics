#include "mini_string.h"
#include "mini_stdlib.h"

void foo (int *BM_tab, int j)
{
  int *BM_tab_base;

  BM_tab_base = BM_tab;
  BM_tab += 40;
  while (BM_tab_base != BM_tab)
    {
      *--BM_tab = j;
      *--BM_tab = j;
      *--BM_tab = j;
      *--BM_tab = j;
    }
}

int main ()
{
  int BM_tab[40];
  memset (BM_tab, 0, my_sizeof (BM_tab));
  foo (BM_tab, 6);
  if (BM_tab[0] != 6)
    abort ();
  return 0;
}
