#include <stdlib.h>
#include <stdio.h>
#include "RegisterState.h"

extern void mcsema_main(RegState *);

int main(int argc, char *argv[]) {

  RegState            rState = {0};
  unsigned long   stack[4096*10];

  //set up the stack 
  rState.RSP = (uint64_t) &stack[4096*9];

  rState.RDI = (uint64_t) "bar";
  mcsema_main(&rState);
  int i = (uint64_t) rState.RAX;

  rState.RDI = (uint64_t) "foo";
  mcsema_main(&rState);
  int k = (uint64_t) rState.RAX;

  rState.RDI = (uint64_t) "foobar";
  mcsema_main(&rState);
  int j = (uint64_t) rState.RAX;

  printf("i == %d\nk == %d\nj == %d\n", i, k, j);

  return 0;
}
