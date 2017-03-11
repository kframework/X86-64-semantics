#include<stdio.h>

typedef struct { 
  int x, y; 
} Point; 

Point foo(int a, int b) {
  Point p, *pp; 
  pp= &p; 
  pp->x= a; 
  pp->y= b; 

  return *pp;
}

int main() {
  Point pp = foo(1,2);
  printf("%d\n", pp.y);
  return pp.y; 
}
