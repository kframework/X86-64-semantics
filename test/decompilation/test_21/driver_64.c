#include <stdlib.h>
#include <stdio.h>
#include "RegisterState.h"

extern void sub_0(RegState *);

int main(int argc, char *argv[]) {

  RegState            rState = {0};
  unsigned long   stack[4096*10];

  //set up the stack 
  rState.RSP = (uint64_t) &stack[4096*9];
  uint64_t foo = 0xFFFFFFFF00000000ULL;
  rState.RDI = 16;
  rState.RSI = (uint64_t) &foo;

  sub_0(&rState);

  printf("We have: 0x%lx\n", foo);

  return 0;
}
