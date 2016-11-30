


int foo(int* arr, int n) { 
  unsigned int sum = 0 ;

  for(int i = 0 ; i < n ; i ++) {
    sum += arr[i];
  }
  return sum;
}

int main() {
  unsigned int arr[] = {1,2,3,4,5,6,7,8,9,10};
  int ret = foo(arr, 10);
  printf("%d",ret );

}
