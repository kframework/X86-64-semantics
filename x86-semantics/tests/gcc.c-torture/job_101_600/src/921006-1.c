#include "mini_string.h"
#include "mini_stdlib.h"
/* REPRODUCED:RUN:SIGNAL MACHINE:i386 OPTIONS:-O */
main()
{
if(strcmp("X","")<0)abort();
exit(0);
}
