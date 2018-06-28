#include "mini_string.h"
#include "mini_stdlib.h"
extern void abort(void);
typedef void (*frob)();
frob f[] = {abort};

int main(void)
{
  exit(0);
}
