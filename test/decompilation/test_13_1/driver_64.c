#include <stdlib.h>
#include <stdio.h>
#include "RegisterState.h"

extern void sub_10(RegState *);

int main(int argc, char *argv[]) {
  RegState            rState = {0};
  unsigned long   stack[4096*10];

  rState.RSP = (uint64_t) &stack[4096*9];

  sub_10(&rState);
  printf("%lu\n", rState.RAX);

  return 0;
}
