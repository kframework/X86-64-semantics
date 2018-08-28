#include "mini_string.h"
#include "mini_stdlib.h"
extern void abort (void);

void xtest(double f, double i)
{
  if (f == __builtin_huge_val())
    abort ();
  if (f == -__builtin_huge_val())
    abort ();
  if (i == -__builtin_huge_val())
    abort ();
  if (i != __builtin_huge_val())
    abort ();

  if (f >= __builtin_huge_val())
    abort ();
  if (f > __builtin_huge_val())
    abort ();
  if (i > __builtin_huge_val())
    abort ();
  if (f <= -__builtin_huge_val())
    abort ();
  if (f < -__builtin_huge_val())
    abort ();
}

void xtestf(float f, float i)
{
  if (f == __builtin_huge_valf())
    abort ();
  if (f == -__builtin_huge_valf())
    abort ();
  if (i == -__builtin_huge_valf())
    abort ();
  if (i != __builtin_huge_valf())
    abort ();

  if (f >= __builtin_huge_valf())
    abort ();
  if (f > __builtin_huge_valf())
    abort ();
  if (i > __builtin_huge_valf())
    abort ();
  if (f <= -__builtin_huge_valf())
    abort ();
  if (f < -__builtin_huge_valf())
    abort ();
}

void xtestl(long double f, long double i)
{
  if (f == __builtin_huge_vall())
    abort ();
  if (f == -__builtin_huge_vall())
    abort ();
  if (i == -__builtin_huge_vall())
    abort ();
  if (i != __builtin_huge_vall())
    abort ();

  if (f >= __builtin_huge_vall())
    abort ();
  if (f > __builtin_huge_vall())
    abort ();
  if (i > __builtin_huge_vall())
    abort ();
  if (f <= -__builtin_huge_vall())
    abort ();
  if (f < -__builtin_huge_vall())
    abort ();
}

int main()
{
  xtest (34.0, __builtin_huge_val());
  xtestf (34.0f, __builtin_huge_valf());
  xtestl (34.0l, __builtin_huge_vall());
  return 0;
}

