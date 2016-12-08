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

S update(S a_r, S *b_r, S *c_r, int d, int e, int f,
      S a_s, S *b_s, S *c_s){
    S differ;

    differ.x = a_r.x  + b_r->x + c_r->x  + (a_s.x  + b_s->x + c_s->x);  
    differ.y = a_r.y  + b_r->y + c_r->y  + (a_s.y  + b_s->y + c_s->y);  
    differ.n.x = a_r.n.x  + b_r->n.x + c_r->n.x  + (a_s.n.x  + b_s->n.x + c_s->n.x);  

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

  S ret = update(t, &t, t1, 1,2,3, t, &t, t1);
  int z = ret.x + ret.y + ret.n.x;

  printf("%d\n", z);
  return z;
}

