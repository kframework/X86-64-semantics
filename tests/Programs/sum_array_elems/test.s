 .text
.globl main

main:
  pushq %rbp
  movq %rsp, %rbp
  subq $32, %rsp
  movl $0, -32(%rbp)
  movl $1, -28(%rbp)
  movl $2, -24(%rbp)
  movl $3, -20(%rbp)
  movl $4, -16(%rbp)
  leaq -32(%rbp), %rax
  movl $5, %esi
  movq %rax, %rdi
  call test
  nop
  leave
  ret

test:
  pushq %rbp
  movq %rsp, %rbp
  movq %rdi, -24(%rbp)
  movl %esi, -28(%rbp)
  movl $0, -4(%rbp)
  movl $0, -8(%rbp)
L3:
  movl -4(%rbp), %eax
  cmpl -28(%rbp), %eax
  jge L2
  movl -4(%rbp), %eax
  cltq
  leaq 0(,%rax,4), %rdx
  movq -24(%rbp), %rax
  addq %rdx, %rax
  movl (%rax), %eax
  addl %eax, -8(%rbp)
  addl $1, -4(%rbp)
  jmp L3
L2:
  movl -8(%rbp), %eax
  popq %rbp
  ret
