#include "mini_string.h"
#include "mini_stdlib.h"
//int loop_1 = 100;
//int loop_2 = 7;
// int flag = 0;

int test (void)
{
    int flag = 0;
    int i;
    int counter  = 0;

    //while (loop_1 > counter) {
    while (100 > counter) {
        if (flag & 1) {
            //for (i = 0; i < loop_2; i++) {
            for (i = 0; i < 7; i++) {
                counter++;
            }
        }
        flag++;
    }
    return 1;
}

int main()
{
    if (test () != 1)
      abort ();
    
    exit (0);
}

