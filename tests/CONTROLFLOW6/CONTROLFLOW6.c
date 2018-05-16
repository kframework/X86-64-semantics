int test(int *arr, int size) {

   int i = 0;
   int sum = 0;
   for(; i<size; i++) {
       sum += arr[i];
   } 
  

  return sum;
}

int main() {
    int arr[5] = {0,1,2,3,4};
    return test(arr, 5);
}
