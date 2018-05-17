.section .text
.globl main

fun:
  pushq %rbp
  movq %rsp, %rbp
  movl %edi, -4(%rbp)
  movl -4(%rbp), %eax
  addl $10, %eax
  popq %rbp
  ret
main:
  pushq %rbp
  movq %rsp, %rbp
  subq $16, %rsp
  movq $fun, -8(%rbp)
  movq -8(%rbp), %rax
  movl $10, %edi
  call %rax
  nop
  leave
  ret
