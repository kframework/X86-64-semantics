#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main () {
   const char * str = "The quick brown fox jumped over the lazy dog";
   const int len = strlen(str);
   const char * space = " ";
   char buf[len + 1];
   strncpy(buf, str, len);
   puts(buf);
   for (int i = 'a'; i <= 'z'; ++i) {
       char * ptr;
       while (ptr = strchr(buf, i)) {
           *ptr = '_';
       }
       puts(buf);
   }
   return 0;
}
