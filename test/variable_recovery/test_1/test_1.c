typedef struct {
int x,y;
} Point;

int main(){
  int i;
  Point p[5];
  for(i=0;i<5;++i) {
    p[i].x = 1;
    p[i].y = 2;
  }
  return p[0].y;
}
