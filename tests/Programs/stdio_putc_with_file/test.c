#include <stdio.h>
#include <stdlib.h>
int main ()
{
  FILE * pFile;
  char c;

  pFile=fopen("alphabet.txt","w");
  for (c = 'A' ; c <= 'Z' ; c++) {
    putc (c , pFile);
    }
  fclose (pFile);
  return 0;
}
