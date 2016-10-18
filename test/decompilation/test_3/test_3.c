

int foo(int* arr, int n) { 
  unsigned int sum = 0 ;

  for(int i = 0 ; i < n ; i ++) {
    sum += arr[i];
  }
  return sum;
}
