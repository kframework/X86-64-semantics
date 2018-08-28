#include "mini_string.h"
#include "mini_stdlib.h"
extern void abort (void);

void xtest(double f, double i)
{
  if (f == __builtin_inf())
    abort ();
  if (f == -__builtin_inf())
    abort ();
  if (i == -__builtin_inf())
    abort ();
  if (i != __builtin_inf())
    abort ();

  if (f >= __builtin_inf())
    abort ();
  if (f > __builtin_inf())
    abort ();
  if (i > __builtin_inf())
    abort ();
  if (f <= -__builtin_inf())
    abort ();
  if (f < -__builtin_inf())
    abort ();
}

void xtestf(float f, float i)
{
#ifndef __SPU__
  /* The SPU single-precision floating point format does not support Inf.  */

  if (f == __builtin_inff())
    abort ();
  if (f == -__builtin_inff())
    abort ();
  if (i == -__builtin_inff())
    abort ();
  if (i != __builtin_inff())
    abort ();

  if (f >= __builtin_inff())
    abort ();
  if (f > __builtin_inff())
    abort ();
  if (i > __builtin_inff())
    abort ();
  if (f <= -__builtin_inff())
    abort ();
  if (f < -__builtin_inff())
    abort ();
#endif
}

void xtestl(long double f, long double i)
{
  if (f == __builtin_infl())
    abort ();
  if (f == -__builtin_infl())
    abort ();
  if (i == -__builtin_infl())
    abort ();
  if (i != __builtin_infl())
    abort ();

  if (f >= __builtin_infl())
    abort ();
  if (f > __builtin_infl())
    abort ();
  if (i > __builtin_infl())
    abort ();
  if (f <= -__builtin_infl())
    abort ();
  if (f < -__builtin_infl())
    abort ();
}

int main()
{
  xtest (34.0, __builtin_inf());
  xtestf (34.0f, __builtin_inff());
  xtestl (34.0l, __builtin_infl());
  return 0;
}

