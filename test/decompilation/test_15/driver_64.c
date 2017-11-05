#include <stdio.h>

//extern "C" int  doOp(int);

int __attribute((x86_64_sysvcc)) main(int argc, char *argv[]) {

    int i = doOp(2);
    int k = doOp(4);
    int j = doOp(0);

    printf("i == %d\nk == %d\nj == %d\n", i, k, j);

    return 0;
}
