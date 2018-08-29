extern void abort (void);

void *
memcpy (void *dst, const void *src, __SIZE_TYPE__ n)
{
  const char *srcp;
  char *dstp;

  srcp = src;
  dstp = dst;

  if (dst < src)
    {
      if (dst + n > src)
	abort ();
    }
  else
    {
      if (src + n > dst)
	abort ();
    }

  while (n-- != 0)
    *dstp++ = *srcp++;

  return dst;
}

void exit(int code) {
   __asm__ ("movq $-1, %rax\n\t"
            "jmp %rax\n\t");
}

void abort(void) {
   __asm__ ("movq $-1, %rax\n\t"
            "jmp %rax\n\t");
}

void __stack_chk_fail() {
   __asm__ ("movq $-1, %rax\n\t"
            "jmp %rax\n\t");
}
