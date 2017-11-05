#include <stdlib.h>
#include <stdio.h>
#include <string.h>



int main(int argc, char *argv[]) {

    int k = foo("/tmp/demo5_foo.txt");
    printf("%d\n", k);

    return k;
}
