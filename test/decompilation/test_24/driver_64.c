#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "RegisterState.h"

extern void mcsema_main(RegState *);
  
uint32_t to_byte(uint8_t b) {
    if(b <= '9') {return b - '0';}
    if(b <= 'F') {return b - '7';}
    if(b <= 'f') {return b - 'W';}

    return 0;
}

uint32_t read_bytes(uint32_t base, const char *p, int l)
{
    int i;
    for(i = 0; i < l; i++)
    {
        base <<= 4;
        base |= to_byte(p[i]);
    }

    return base;
}

int main(int argc, char *argv[]) {
    char *key;
    int ret;
    if(argc < 2)
    {
        fprintf(stderr, "give me a key in the format key{hex}\n");
        return -1;
    }

    key = argv[1]; //"key{d9dd1cb9dc13ebc3dc3780d76123ee34}";
    RegState            rState = {0};
    unsigned long   stack[4096*10];

    //set up the stack 
    rState.RSP = (uint64_t) &stack[4096*9];
    rState.RDI =  (uint64_t) key;
    mcsema_main(&rState);

    ret = rState.RAX;
    if(ret == 0) {
        printf("a winner is you!\n");
    } else {
        printf("set sail for fail: %d\n",ret );
    }

    return ret;
}
