int sumToN(int N) {
  int s = 0;
  int n = N;
  while (n > 0) {
    s = s + n;
    n = n - 1;
  }
  return s;
}

int main(){
    return sumToN(10);
}
