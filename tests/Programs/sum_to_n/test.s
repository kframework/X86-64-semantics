sumToN:
  pushq %rbp
  movq %rsp, %rbp
  movl %edi, -20(%rbp)
  movl $0, -4(%rbp)
  movl -20(%rbp), %eax
  movl %eax, -8(%rbp)
L3:
  cmpl $0, -8(%rbp)
  jle L2
  movl -8(%rbp), %eax
  addl %eax, -4(%rbp)
  decl -8(%rbp)
  jmp L3
L2:
  movl -4(%rbp), %eax
  popq %rbp
  ret
main:
  pushq %rbp
  movq %rsp, %rbp
  movl $10, %edi
  call sumToN
  nop
  popq %rbp
  ret
