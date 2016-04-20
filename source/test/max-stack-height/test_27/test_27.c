#include <stdio.h>

void update(int a, int b, int c, int d, int e, int f,
     int*  arr){

  arr[a] = a;
  arr[b] = b;
  arr[c] = c;
  arr[d] = d;
  arr[e] = e;
  arr[f] = f;


}

int main(){
    int arr[6];
    update(0,1,2,3,4,5,arr);
    return 0;
}

