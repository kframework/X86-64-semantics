#include <stdio.h>
#include <stdlib.h>

int main() {
    const int sz = 5;
    int * a = (int*)malloc(sz*sizeof(int));
    for (int i = 0; i < sz; ++i) {
        a[i] = i;
    }
    int * b = (int*)malloc(sz*sizeof(int));
    for (int i = 0; i < sz; ++i) {
        b[i] = i;
    }
    for (int i = 0; i < sz; ++i) {
        printf("%d\n", a[i]);
    }
    for (int i = 0; i < sz; ++i) {
        printf("%d\n", b[i]);
    }
    free(a);
    a = (int*)malloc(2*sz*sizeof(int));
    for (int i = 0; i < 2*sz; ++i) {
        a[i] = 10*i;
    }
    for (int i = 0; i < sz; ++i) {
        printf("%d\n", a[i]);
    }
    free(a);
    free(b);
}
