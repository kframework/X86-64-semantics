int test(int a, int b, int c) {

   int i = 0;
   int sum = 0;
   for(; i<c; i++) {
       if(i%2 == 0) {
           sum += a; 
       } else {
           sum += b;
       }
   } 
  

  return sum;
}

int main() {
    return test(2, 3 , 10);
}
