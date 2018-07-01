__attribute__((used, noinline, noclone)) unsigned long long
foo (unsigned long long x, unsigned long long y, unsigned long long z)
{
  unsigned long long a = x / y;
  unsigned long long b = x % y;
  a |= z;
  b ^= z;
  return a + b;
}

void abort(void) {
   __asm__ ("movq $-1, %rax\n\t"
            "jmp %rax\n\t");
}

int
main ()
{
  if (foo (64, 7, 0) != 10 || foo (28, 3, 2) != 14)
    abort ();
  return 0;
}

