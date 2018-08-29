#include "mini_string.h"
#include "mini_stdlib.h"
short int i = -1;
const char * const wordlist[8];

const char * const *
foo(void)
{
  register const char * const *wordptr = &wordlist[8u + i];
  return wordptr;
}

int
main()
{
  if (foo() != &wordlist[7])
    abort ();
  exit(0);
}
