#include <stdlib.h>
#include <stdio.h>
#include "mc-sema/common/RegisterState.h"

extern void mcsema_main(RegState *);

int main(int argc, char *argv[]) {

  RegState            rState = {0};
  unsigned long   stack[4096*10];

  //set up the stack 
  rState.RSP = (uint64_t) &stack[4096*9];

  char str[] = "abc";
  rState.RDI = (uint64_t) str;
  mcsema_main(&rState);

  return 0;
}
