#include <stdio.h>
int i = 10;
int s = 0;
int main ()
{
  for(;i >= 0;i--) {
      s = s + i;
  }
  return s;
}
