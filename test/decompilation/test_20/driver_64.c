#include <stdlib.h>
#include <stdio.h>
#include "RegisterState.h"

extern void sub_0(RegState *);

int main(int argc, char *argv[]) {

  RegState            rState = {0};
  unsigned long   stack[4096*10];

  //set up the stack 
  rState.RSP = (uint64_t) &stack[4096*9];

  int i = 0;

  for(i = 0; i <= 255; i++) {
    rState.RDI = i;
    sub_0(&rState);
  }

  printf("%lu\n", rState.RAX);

  return 0;
}
