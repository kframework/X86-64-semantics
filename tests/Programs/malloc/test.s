malloc:
  pushq %rbp
  movq %rsp, %rbp
  movq %rdi, -8(%rbp)
  movl $100, %eax
  popq %rbp
  ret
main:
  pushq %rbp
  movq %rsp, %rbp
  subq $16, %rsp
  movl $4, %edi
  call malloc
  movq %rax, -8(%rbp)
  movq -8(%rbp), %rax
  movl $10, (%rax)
  movq -8(%rbp), %rax
  movl (%rax), %eax
  cmpl $20, %eax
  jne L4
  movl $0, %eax
  jmp L5
L4:
  movl $1, %eax
L5:
  leave
  ret
