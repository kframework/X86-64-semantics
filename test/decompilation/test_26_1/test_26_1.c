#include <stdio.h>
#include <stdlib.h>
struct nested {
  int x;
};

typedef struct {
  int x;
  int y;
  struct nested n;
} S;

S update(int a, int b, int c, int d, int e, int f,
       S *b_s, S *c_s){
    S differ;

    differ.x =  b_s->x + c_s->x;  
    differ.y = b_s->y + c_s->y;  
    differ.n.x = b_s->n.x + c_s->n.x;  
    return differ;
}

int main(){
  S t;
  t.x = 10;
  t.y = 10;
  t.n.x = 10;

  S *t1 = (S *) malloc(sizeof(S)*2);
  t1->x = 5;  
  t1->y = 5;  
  t1->n.x = 5;  

  S ret = update(1, 2, 3, 1,2,3,  &t, t1);
  return ret.x + ret.y + ret.n.x;
}

