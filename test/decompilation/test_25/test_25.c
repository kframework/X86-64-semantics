#include <stdio.h>
#include <string.h>

int main(int argc, const char* argv[]) {
	int sum = 0, i = 0;
	int len = strlen(argv[1]);
	for(; i < len; i ++ ) {
    printf("I am: %s\n", argv[1]);
    		sum += argv[1][i];
	}
    //return 0;
    printf("%d\n", len);
    return len;
}
