/* -*- mode: c -*-
 * $Id$
 * http://www.bagley.org/~doug/shootout/
 */

int atoi(char *);
#include <stdio.h>

unsigned long
fib(unsigned long n) {
    if (n < 2)
	return(1);
    else
	return(fib(n-2) + fib(n-1));
}

int
main(int argc, char *argv[]) {
#define LENGTH 43
    int N = ((argc == 2) ? atoi(argv[1]) : LENGTH);
    printf("%ld\n", fib(N));
    return(0);
}
