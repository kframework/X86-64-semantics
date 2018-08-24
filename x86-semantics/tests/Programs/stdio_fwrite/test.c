#include <stdio.h>

int main () {
   FILE *fp;

   fp = fopen("file.txt", "w+");

   fputs("This is c programming.", fp);
   fputs("This is a system programming language.", fp);

   fclose(fp);
   
   return(0);
}
