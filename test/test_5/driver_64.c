#include <stdlib.h>
#include <stdio.h>
#define TARGET_IA64
#include "mc-sema/common/RegisterState.h"

extern int mcsema_main(RegState *);

int maze_driver(int argc, const char* argv[])
{
    RegState        rState;
    unsigned long   stack[4096*10];
    unsigned int* arr = (unsigned int *)malloc(sizeof(unsigned int)*10 );
    for(int i  = 0 ; i < 10 ; i ++) {
      arr[i] = i +1;
    }

    memset(&rState, 0, sizeof(rState));

    //set up the stack 
    stack[(4096*9)+1] = (uint32_t)argc;
    stack[(4096*9)+2] = (uint32_t)argv;
    rState.RSP = (unsigned long) &stack[4096*9];
    rState.RDI = (unsigned long) arr;
    rState.RSI = (unsigned long) 10;

    mcsema_main(&rState);
    printf("%lu\n", rState.RAX);

    return 0;
}

int main(int argc, const char *argv[]) {
	return maze_driver(argc, argv);
}
