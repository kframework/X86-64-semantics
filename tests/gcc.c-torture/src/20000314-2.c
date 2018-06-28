#include "mini_string.h"
#include "mini_stdlib.h"
typedef unsigned long long uint64;
//const uint64 bigconst = 1ULL << 34;

//int a = 1;

static
uint64 getmask(void)
{
   // if (a)
      return 17179869184;
  //  else
  //    return 0;
}

main()
{
    uint64 f = getmask();
    //if (sizeof (long long) == 8
    if (8 == 8
	&& f != 17179869184) abort ();
    exit (0);
}


