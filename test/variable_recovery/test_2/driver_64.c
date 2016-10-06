#include <stdlib.h>
#include <stdio.h>
#include "RegisterState.h"

extern void mcsema_main(RegState *);

int main(int argc, char *argv[]) {

  RegState            rState = {0};
  unsigned long   stack[4096*10];

  //set up the stack 
  rState.RSP = (uint64_t) &stack[4096*9];
  rState.RDI = (uint64_t) 4;
  mcsema_main(&rState);

  printf("%lu\n", rState.RAX);
  return 0;
}
