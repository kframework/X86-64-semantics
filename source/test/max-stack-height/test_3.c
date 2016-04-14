

int foo(int a, int b) { 
  int temp1, temp2; 
  temp1 = a+b;

  if(a > 40 ) {
    temp1 = temp1 + 10;
  } else {
    temp2 = temp1 - 10; // var accessed in this path only
  }
  return temp1;
}
