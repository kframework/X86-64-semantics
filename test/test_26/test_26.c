#include <stdio.h>
struct nested {
  int x;
};

struct TIME{
  int x;
  int y;
  struct nested n;
};

struct TIME update(int a, int b, int c, int d, int e, int f,
      struct TIME t){
    struct TIME differ;

    differ.x = t.x + a + b + c;
    differ.y = t.y + d + e + f;
    differ.n.x = t.n.x;

    return differ;
}

int main(){
    struct TIME t;
    t.x = 10;
    t.y = 20;
    t.n.x = 30;
    update(1,2,3,4,5,6,t);
    return 0;
}

