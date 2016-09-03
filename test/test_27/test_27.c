#include <stdio.h>

int update(int a, int b, int c, int d, int e, int f,
     int*  arr){

  arr[a] = a;
  arr[b] = b;
  arr[c] = c;
  arr[d] = d;
  arr[e] = e;
  arr[f] = f;

  int sum  = 0 ;
  for(int i = 0  ; i < 6; i++) {
    sum += arr[i];
  }
  return sum;
}

int main(){
    int arr[6];
    return update(0,1,2,3,4,5,arr);
}

