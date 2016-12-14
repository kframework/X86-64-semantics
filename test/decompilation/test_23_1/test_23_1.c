#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

int
main ()
{
	int i = 0;    //Iteration number
	char program[1]  = "w";
	while(i < 1)
	{
		switch (program[i])
		{
			case 'w':
                                i = i + 1;
				break;
			case 's':
                                i = i + 2;
				break;
			case 'a':
                                i = i - 2;
				break;
			case 'd':
                                i = i - 1;
				break;
			default:
                                return 1;
		}
		i++;
	}
        printf("%d\n", i);
        return 1;
}
