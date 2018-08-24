#include <stdio.h>
#include <stdlib.h>
int main ()
{
  FILE * pFile;
  char c;

  //pFile=fopen("alphabet.txt","wt");
  for (c = 'A' ; c <= 'Z' ; c++) {
    putc (c , stdout);
    }
  //fclose (pFile);
  return 0;
}
