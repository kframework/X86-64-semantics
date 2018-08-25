#include <stdio.h>

int main () {
    int a =10;
    float f = 1.8; // 1072064102
    double d = 2.3; // 4612361558371493478
    char *str = "Sandeep";
    int ret = printf("int=%d  char*=%s float=%f double=%f", a,str, f, d);

    return ret;
}

