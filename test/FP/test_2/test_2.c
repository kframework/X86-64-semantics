#ifndef __STDC_LIMIT_MACROS
#define __STDC_LIMIT_MACROS 1
#endif
#include <inttypes.h>

extern int printf(const char *, ...);

void testL(int64_t Arg) {
  int z = Arg / ((int64_t)1 << 46);
  printf("%d\n", z);
}

int main() {
  int64_t B53 = - ((int64_t)1 << 53);


  testL(B53 + 64);

  return 0;
}
