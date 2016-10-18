#include <stdlib.h>
#include <string.h>
#define CHAR char

int foo(int a) { return a+1; }

CHAR *doTrans(CHAR *inS) {
    size_t  oldS = strlen(inS)+sizeof(CHAR);
    CHAR    *newS = malloc(oldS);

    if( newS ) {
        CHAR    *curP = inS;
        CHAR    *curN = newS;
       
        memset(newS, 0, oldS);

        while( *curP != 0 ) {
            if( *curP == '/' ) {
                *curN = '\\';
            } else {
                *curN = *curP;
            }

            ++curP;
            ++curN;
        }

        return newS;
    } else {
        return NULL;
    }
}
