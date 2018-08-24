#include <stdio.h>
#include<stddef.h>
 
#define  LENGTH 80

size_t strlen(const char *s) {
    size_t i;
    for (i = 0; s[i] != '\0'; i++) ;
    return i;
}

 
int main(void)
{
   FILE *stream = stdout;
   FILE* pFile=fopen("alphabet.txt","w");
   int i, ch;
   char buffer[LENGTH + 1] = "Hello world";
 
   for ( i = 0;
        (i < strlen(buffer)) && ((ch = fputc(buffer[i], stream)) !=     EOF);
         ++i);

   for ( i = 0;
        (i < strlen(buffer)) && ((ch = fputc(buffer[i], pFile)) !=     EOF);
         ++i);

   fclose(pFile);
   
}
