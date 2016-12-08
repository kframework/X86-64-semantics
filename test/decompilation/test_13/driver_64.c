#include <stdlib.h>
#include <stdio.h>
#include "RegisterState.h"

extern void sub_0(RegState *);

int main(int argc, char *argv[]) {
  RegState            rState = {0};
  unsigned long   stack[4096*10];

  char    *foo[3];
  char    *a = malloc(sizeof("foo"));
  char    *b = malloc(sizeof("/stuff/"));
  char    *c = malloc(sizeof("bar"));

  memset(a, 0, sizeof("foo"));
  memset(b, 0, sizeof("/stuff/"));
  memset(c, 0, sizeof("bar"));
  strcpy(a, "foo");
  strcpy(b, "/stuff/");
  strcpy(c, "bar");
   
  foo[0] = a;
  foo[1] = b;
  foo[2] = c;

  printf("a == %s\n", a);
  printf("b == %s\n", b);
  printf("c == %s\n", c);

  
  //set up the stack 
  rState.RSP = (uint64_t) &stack[4096*9];
  rState.RDI = (uint64_t) foo;
  rState.RSI = (uint64_t) 3;

  sub_0(&rState);

  printf("a == %s\n", a);
  printf("b == %s\n", b);
  printf("c == %s\n", c);


  free(a);
  free(b);
  free(c);

  return 0;
}
