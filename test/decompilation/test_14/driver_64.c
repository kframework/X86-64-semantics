#include <stdlib.h>
#include <stdio.h>
#include "RegisterState.h"

extern void sub_10(RegState *);

int main(int argc, char *argv[]) {

  RegState            rState = {0};
  unsigned long   stack[4096*10];

  //set up the stack 
  rState.RSP = (uint64_t) &stack[4096*9];

  rState.RDI = (uint64_t) "bar";
  sub_10(&rState);
  int i = (uint64_t) rState.RAX;

  rState.RDI = (uint64_t) "foo";
  sub_10(&rState);
  int k = (uint64_t) rState.RAX;

  rState.RDI = (uint64_t) "foobar";
  sub_10(&rState);
  int j = (uint64_t) rState.RAX;

  printf("i == %d\nk == %d\nj == %d\n", i, k, j);

  return 0;
}
