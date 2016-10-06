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
				break;
			case 's':
				break;
			case 'a':
				break;
			case 'd':
				break;
			default:
                                return 1;
		}
		i++;
	}
        return 1;
}
