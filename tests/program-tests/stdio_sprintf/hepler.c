#include <stdio.h>
#include <math.h>

int main () {
   char str[80];

   int a = sprintf(str, "Value of Pi = %f", M_PI);
   puts(str);
  return a;
}
