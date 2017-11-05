#include <stdio.h>
#include <string.h>

//extern "C" long double timespi(long double k);

long double DoDemoFpu1(long double k) {
    return timespi(k);
}

int main(int argc, char *argv[]) {

    long double n = 2.0;
    long double k = DoDemoFpu1(n);

    printf("%0.16Lf -> %0.16Lf\n", n, k);

    return 0;
}
