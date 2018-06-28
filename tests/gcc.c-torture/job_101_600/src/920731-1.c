#include "mini_string.h"
#include "mini_stdlib.h"
f(x){int i;for(i=0;i<8&&(x&1)==0;x>>=1,i++);return i;}
main(){if(f(4)!=2)abort();exit(0);}
