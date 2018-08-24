#include<stdio.h>

int main () {
   char c;

   FILE* fp = fopen("file.txt","r");
   c = getc(fp);
   putc(c, stdout);
   fclose(fp);
   
   return(0);
}
