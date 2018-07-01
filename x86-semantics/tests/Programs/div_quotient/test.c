foo (unsigned long long x, unsigned long long y, unsigned long long z)
{
  unsigned long long a = x / y;
  unsigned long long b = x % y;
  a |= z;
  b ^= z;
  return a + b;
}

int
main ()
{
  return foo (64, 7, 0);
}

