#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main () {
   const char * str = "The quick brown fox jumped over the lazy dog";
   const int len = strlen(str);
   const char * space = " ";
   char buf[len + 1];
   char * sptr = buf;
   strncpy(buf, str, len);
   while (sptr != NULL) {
       puts(strsep(&sptr, space));
   }
   return 0;
}
