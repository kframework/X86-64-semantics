#include <stdlib.h>
#include <stdio.h>
#include "RegisterState.h"

extern void mcsema_main(RegState *);

int main(int argc, char *argv[]) {
  size_t  len = sizeof("/first/test/path");
  char    *a = malloc(len);
  char    *b;
  strcpy(a, "/first/test/path");

  RegState            rState = {0};
    unsigned long   stack[4096*10];

    //set up the stack 
    rState.RSP = (uint64_t) &stack[4096*9];
    rState.RDI = (uint64_t) a;

    mcsema_main(&rState);
    b = (char*) rState.RAX;

    printf("%s -> %s\n", a, b);

    free(a);
    free(b);

    return 0;
}
