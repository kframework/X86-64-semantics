swap:
  pushq %rbp
  movq %rsp, %rbp
  movq %rdi, -24(%rbp)
  movq %rsi, -32(%rbp)
  movq -24(%rbp), %rax
  movl (%rax), %eax
  movl %eax, -4(%rbp)
  movq -32(%rbp), %rax
  movl (%rax), %edx
  movq -24(%rbp), %rax
  movl %edx, (%rax)
  movq -32(%rbp), %rax
  movl -4(%rbp), %edx
  movl %edx, (%rax)
  nop
  popq %rbp
  ret
bubbleSort:
  pushq %rbp
  movq %rsp, %rbp
  subq $16, %rsp
  movq %rdi, -8(%rbp)
  movq %rsi, -16(%rbp)
  movq -8(%rbp), %rax
  movl (%rax), %edx
  movq -16(%rbp), %rax
  movl (%rax), %eax
  cmpl %eax, %edx
  jle L4
  movq -16(%rbp), %rdx
  movq -8(%rbp), %rax
  movq %rdx, %rsi
  movq %rax, %rdi
  call swap
L4:
  nop
  leave
  ret
main:
  pushq %rbp
  movq %rsp, %rbp
  subq $16, %rsp
  movl $4, -4(%rbp)
  movl $3, -8(%rbp)
  leaq -8(%rbp), %rdx
  leaq -4(%rbp), %rax
  movq %rdx, %rsi
  movq %rax, %rdi
  call bubbleSort
  movl $0, %eax
  leave
  ret
