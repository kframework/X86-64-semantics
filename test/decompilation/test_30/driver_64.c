#include <stdlib.h>

//extern "C" int print_it(const char *words);

int stderr_driver(const char* words)
{
    return print_it(words);
}

int main(int argc, const char *argv[]) {
	return stderr_driver("this is output on stderr");
}
