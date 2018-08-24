#include <stdio.h>
#include <stdlib.h>


char *strcpy(char *dest, const char* src)
{
    char *ret = dest;
    while (*dest++ = *src++)
        ;
    return ret;
}

int main () {
   int day, year;
   char weekday[20], month[20], dtm[100];

   strcpy( dtm, "Saturday March 25 1989" );
   sscanf( dtm, "%s %s %d  %d", weekday, month, &day, &year );

   printf("%s %d, %d = %s\n", month, day, year, weekday );
    
   return(0);
}
