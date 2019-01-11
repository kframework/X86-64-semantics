#include <stdio.h>
int main()
{
char mybuffer[80];
   FILE * pFile;
   pFile = fopen ("example.txt","w");
     fputs ("test",pFile);
     fflush (pFile);    // flushing or repositioning required
     fclose (pFile);

     pFile = fopen ("example.txt","r");
     fgets (mybuffer,80,pFile);
     puts (mybuffer);
     fclose (pFile);
     return 0;
}
