#include <stdio.h>
#include "demo11_bigdata.h"

int printdata(void) {
    int i;
    unsigned int sum = 0;

    for(i = 0; 
        i < sizeof(readdata)/sizeof(readdata[0]); 
        i++) 
    {
        if(readdata[i] != NULL) {
            //printf("readdata[%d] = %p => 0x%06X\n", i, readdata[i], *(readdata[i]));
            sum +=  *(readdata[i]);
        }
    }

    //return 0;
    return sum;

}
