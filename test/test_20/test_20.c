#include <stdio.h>

int switches(int input)
{
  int sum = 0;
    switch(input) {
        case 0: 
            //printf("Input was zero\n");
            sum += 0;
            break;
        case 1: 
            //printf("Input was one\n");
            sum += 1;
            break;
        case 2: 
            //printf("Input was two\n");
            sum += 2;
            break;
        case 4: 
            //printf("Input was four\n");
            sum += 4;
            break;
        case 6: 
            //printf("Input was six\n");
            sum += 6;
            break;
        case 12: 
            //printf("Input was twelve\n");
            sum += 12;
            break;
        case 13: 
            //printf("Input was thirteen\n");
            sum += 13;
            break;
        case 19: 
            //printf("Input was nineteen\n");
            sum += 19;
            break;
        case 255: 
            //printf("Input was two hundred fifty-five\n");
            sum += 255;
            break;
        case 0x12389:
            //printf("Really big input:  0x12389\n");
            sum += 0x12389;
            break;
        case 0x1238A:
            //printf("Really big input:  0x1238A\n");
            sum += 0x1238A;
            break;
        case 0x1238B:
            //printf("Really big input:  0x1238B\n");
            sum += 0x1238B;
            break;
        case 0x1238C:
            //printf("Really big input:  0x1238C\n");
            sum += 0x1238C;
            break;
        case 0x1238D:
            //printf("Really big input:  0x1238D\n");
            sum += 0x1238D;
            break;
        case 0x1238F:
            //printf("Really big input:  0x1238F\n");
            sum += 0x1238F;
            break;
        case 0x12390:
            //printf("Really big input:  0x12390\n");
            sum += 0x12390;
            break;
        case 0x12391:
            //printf("Really big input:  0x12391\n");
            sum += 0x12391;
            break;
        case 0x12392:
            //printf("Really big input:  0x12392\n");
            sum += 0x12392;
            break;
        case 0x12393:
            //printf("Really big input:  0x12393\n");
            sum += 0x12393;
            break;
	default:
            //printf("Unknown input: %d\n", input);
            sum += 0;
    }

    return sum;
}
