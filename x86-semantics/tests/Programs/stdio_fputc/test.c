#include <stdio.h>
#include <string.h>
 
#define  LENGTH 80
 
int main(void)
{
   FILE *stream = stdout;
   int i, ch;
   char buffer[LENGTH + 1] = "Hello world";
 
   for ( i = 0;
        (i < strlen(buffer)) && ((ch = fputc(buffer[i], stream)) !=     EOF);
         ++i);
}
