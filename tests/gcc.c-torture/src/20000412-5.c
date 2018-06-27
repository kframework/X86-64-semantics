#include "mini_string.h"
#include "mini_stdlib.h"
int main( void ) {
    struct {
	int node;
	int type;
    } lastglob[1] = { { 0   , 1  } };

    if (lastglob[0].node != 0 || lastglob[0].type != 1)
      abort ();
    exit (0);
}

