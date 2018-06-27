#include <stdint.h>

int popcnt(uint64_t x) {
  int res = 0;
  for (int i = 0  ; i < 64 ; i++ ) {
    res += x & 0x1ull;
    x >>= 1;
  }
  return res;
}
   
