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
   char *str;

   /* Initial memory allocation */
   str = (char *) malloc(15);
   strcpy(str, "tutorialspoint");
   //printf("String = %s,  Address = %u\n", str, str);
   printf("String = %s\n", str);

   free(str);
   
   return(0);
}
