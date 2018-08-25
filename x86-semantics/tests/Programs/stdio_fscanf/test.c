#include <stdio.h>
#include <stdlib.h>


int main () {
   char str1[10], str2[10], str3[10];
   char year[10];
   FILE * fp;

   fp = fopen ("file.txt", "w");
   fputs("We are in 2012", fp);
   
   fclose(fp);
   fp = fopen ("file.txt", "r");
   fscanf(fp, "%s %s %s %s", str1, str2, str3, year);
   
   printf("Read String1 |%s|\n", str1 );
   printf("Read String2 |%s|\n", str2 );
   printf("Read String3 |%s|\n", str3 );
   printf("Read Integer |%s|\n", year );

   fclose(fp);
   
   return(0);
}
