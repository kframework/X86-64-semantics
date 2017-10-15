#include <stdlib.h>
#include <stdio.h>

extern "C" int foo(int *, int);

int main(int argc, const char *argv[]) {
    int* arr = ( int *)malloc(sizeof( int)*10 );
    for(int i  = 0 ; i < 10 ; i ++) {
      arr[i] = i +1;
    }
    printf("%d\n", foo(arr, 10));
}
