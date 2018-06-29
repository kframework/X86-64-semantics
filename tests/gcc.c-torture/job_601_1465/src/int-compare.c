#include "mini_string.h"
#include "mini_stdlib.h"
#include <limits.h>

gt (a, b)
{
  return a > b;
}

ge (a, b)
{
  return a >= b;
}

lt (a, b)
{
  return a < b;
}

le (a, b)
{
  return a <= b;
}

void
my_true (c)
{
  if (!c)
    abort();
}

void
my_false (c)
{
  if (c)
    abort();
}

f ()
{
  my_true (gt (2, 1));
  my_false (gt (1, 2));

  my_true (gt (INT_MAX, 0));
  my_false (gt (0, INT_MAX));
  my_true (gt (INT_MAX, 1));
  my_false (gt (1, INT_MAX));

  my_false (gt (INT_MIN, 0));
  my_true (gt (0, INT_MIN));
  my_false (gt (INT_MIN, 1));
  my_true (gt (1, INT_MIN));

  my_true (gt (INT_MAX, INT_MIN));
  my_false (gt (INT_MIN, INT_MAX));

  my_true (ge (2, 1));
  my_false (ge (1, 2));

  my_true (ge (INT_MAX, 0));
  my_false (ge (0, INT_MAX));
  my_true (ge (INT_MAX, 1));
  my_false (ge (1, INT_MAX));

  my_false (ge (INT_MIN, 0));
  my_true (ge (0, INT_MIN));
  my_false (ge (INT_MIN, 1));
  my_true (ge (1, INT_MIN));

  my_true (ge (INT_MAX, INT_MIN));
  my_false (ge (INT_MIN, INT_MAX));

  my_false (lt (2, 1));
  my_true (lt (1, 2));

  my_false (lt (INT_MAX, 0));
  my_true (lt (0, INT_MAX));
  my_false (lt (INT_MAX, 1));
  my_true (lt (1, INT_MAX));

  my_true (lt (INT_MIN, 0));
  my_false (lt (0, INT_MIN));
  my_true (lt (INT_MIN, 1));
  my_false (lt (1, INT_MIN));

  my_false (lt (INT_MAX, INT_MIN));
  my_true (lt (INT_MIN, INT_MAX));

  my_false (le (2, 1));
  my_true (le (1, 2));

  my_false (le (INT_MAX, 0));
  my_true (le (0, INT_MAX));
  my_false (le (INT_MAX, 1));
  my_true (le (1, INT_MAX));

  my_true (le (INT_MIN, 0));
  my_false (le (0, INT_MIN));
  my_true (le (INT_MIN, 1));
  my_false (le (1, INT_MIN));

  my_false (le (INT_MAX, INT_MIN));
  my_true (le (INT_MIN, INT_MAX));
}

main ()
{
  f ();
  exit (0);
}
