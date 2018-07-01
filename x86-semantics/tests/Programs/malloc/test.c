
#include<stdlib.h>

void* malloc(size_t n)  {
    return (void *)100;
}

int main (void)
{
  int *p = (int* )malloc(sizeof(int));
  *p = 10;
  if(*p == 20) {
      return 0;
  }
  return 1;
}
