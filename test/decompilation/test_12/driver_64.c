#include <stdlib.h>
#include <stdio.h>
#include "RegisterState.h"

extern void sub_0(RegState *);

int main(int argc, char *argv[]) {
  size_t  len = sizeof("/first/test/path");
  char    *a = malloc(len);
  char    *b = malloc(len);

  memset(b, 0, len);
  strcpy(a, "/first/test/path");

  RegState            rState = {0};
    unsigned long   stack[4096*10];

    //set up the stack 
    rState.RSP = (uint64_t) &stack[4096*9];
    rState.RDI = (uint64_t) "./demo5_foo.txt";

    sub_0(&rState);
    int k =  rState.RAX;
    printf("%d\n", k);

    return 0;
}
