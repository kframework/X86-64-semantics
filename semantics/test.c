#include <stdio.h>
#include <stdlib.h>

size_t fib(const int n) {
    if (n == 0) {
        return 0;
    } else if (n == 1) {
        return 1;
    } else {
        size_t nums[n + 1];
        nums[0] = 0;
        nums[1] = 1;
        for (int i = 2; i <= n; ++i) {
            nums[i] = nums[i - 1] + nums[i - 2];
        }
        return nums[n];
    }
}

const int elems[] = {0, 1, 5, 10, 20, 40};

int main() {
    for (int i = 0; i < sizeof(elems) / sizeof(int); ++i) {
        printf("%d: %lu\n", elems[i], fib(elems[i]));
    }
}
