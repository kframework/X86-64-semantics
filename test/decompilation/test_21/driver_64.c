#include <stdio.h>
#include <stdint.h>

//extern "C" void shiftit(int amt, uint64_t *orig);

int main(int argc, char *argv[]) {
    uint64_t foo = 0xFFFFFFFF00000000ULL;

    shiftit(16, &foo);
    printf("We have: 0x%lx\n", foo);

    return 0;
}
