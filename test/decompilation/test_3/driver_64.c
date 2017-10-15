#include <stdlib.h>
#include <stdio.h>
#include "RegisterState.h"

extern "C" void mcsema_main(RegState *);

int main(int argc, char *argv[]) {

  RegState            rState = {0};
  unsigned long   stack[4096*10];
  unsigned int arr[] = {1,2,3,4,5,6,7,8,9,10};

  //set up the stack 
  rState.RSP = (uint64_t) &stack[4096*9];
  rState.RDI = (uint64_t) &arr;
  rState.RSI = (uint64_t) 10;

  mcsema_main(&rState);

  printf("%lu",rState.RAX );

  return 0;
}
