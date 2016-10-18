#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#define HANDLE int
#define INVALID_HANDLE_VALUE (-1)
#define CloseHandle(x) close(x)

void bar(void) {
    return;
}

int foo(char *p) {
    HANDLE  h;
    h = open(p, O_RDONLY);

    if( h != INVALID_HANDLE_VALUE ) {
        CloseHandle(h);
        return 0;
    } else {
        return -1;
    }
}
