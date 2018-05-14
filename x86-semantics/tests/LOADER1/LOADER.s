_main:
  pushq %rbp
  movq %rsp, %rbp
  //subq $16, %rsp
  //movl %edi, -4(%rbp)
  //movq %rsi, -16(%rbp)
  //movl $3, %esi
  //movl $2, %edi
  // call testFunction(int, int)
  nop
  // leave
  // ret

_testFunction:
  pushq %rbp
  movq %rsp, %rbp
  //movl %edi, -4(%rbp)
  //movl %esi, -8(%rbp)
  //movl -4(%rbp), %edx
  //movl -8(%rbp), %eax
  //addl %edx, %eax
  popq %rbp
  //ret
