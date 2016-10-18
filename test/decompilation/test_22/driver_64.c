#include <stdio.h>
#include <string.h>
#include <immintrin.h>
#include <mmintrin.h>
#include "RegisterState.h"

extern void mcsema_main(RegState *);

#ifdef __linux__
long double DoDemoFpu1(long double k) {
    RegState            rState = {0};
    unsigned long   stack[4096*10];
    nativefpu n;

    //set up the stack 
    memcpy(&stack[0x8ff5], &k, sizeof(k));
    rState.RSP = (unsigned long) &stack[0x8ff4];

    mcsema_main(&rState);

    // read ST(0)
    n = FPU_GET_REG(&rState, 0);
    return NATIVEFPU_TO_LD(&n);
}
#else
long double DoDemoFpu1(long double k) {
    __m128d foo;
    RegState            rState = {0};
    unsigned long   stack[4096*10];
    xmmregstate n;

    rState.RSP = (uint64_t) &stack[0x8ff4];
    foo = _mm_loadu_pd(&k);
    memcpy(rState.XMM0.tag, &foo, sizeof(foo)); 

    mcsema_main(&rState);
    long double bar;
    _mm_store_pd(&bar, *(__m128d*)(&rState.XMM0.tag));
    //return NATIVEFPU_TO_LD((nativefpu*)(rState.XMM0.tag));
    return bar;
}
#endif

int main(int argc, char *argv[]) {

    long double n = 2.0;
    long double k = DoDemoFpu1(n);

    printf("%0.16Lf -> %0.16Lf\n", n, k);

    return 0;
}
