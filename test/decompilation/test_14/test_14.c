#include <string.h>

void foo(void) {
    return;
}

int checkFn(char *f) {
    char *foostr = "foo";
    return strcmp(f, foostr);
}

