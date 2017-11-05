int foo(int* arr, int n) { 
  unsigned int sum = 0 ;

  int i = 0;
  for(; i < n ; i ++) {
    sum += arr[i];
  }
  return sum;
}
