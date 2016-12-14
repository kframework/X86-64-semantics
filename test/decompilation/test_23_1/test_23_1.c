#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

// ssss dddd ww aa ww dddd ssss dd wwww
// ssssssss dddddddddd wwwwwww aa
//   8        10             7  2
int
main ()
{
	int i = 0;    //Iteration number
        int res = 0;
	char program[]  = "ssssdddd";
	while(i < 8)
	{
		switch (program[i])
		{
			case 'w':
                                res = res + 1;
				break;
			case 's':
                                res = res + 2;
				break;
			case 'a':
                                res = res - 2;
				break;
			case 'd':
                                res = res - 1;
				break;
			default:
                                return 1;
		}
		i++;
	}
        printf("%d\n", res);
        return 1;
}
