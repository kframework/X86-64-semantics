int rl_character_len (int c, int pos)
{
  return c == 'a' ? 1 : 2;
}

int main(void)
{
  int (*x)(int, int) = rl_character_len;
  return x('b', 1);
}
