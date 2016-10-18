
typedef struct { 
  int x, y; 
} Point; 

int main() {
  Point p, *pp; 
  pp= &p; 
  pp->x= 1; 
  pp->y= 2; 

  return pp->y; 
}
