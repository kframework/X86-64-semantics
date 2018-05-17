.section .text
.globl main

main:
  pushq %rbp
  movq %rsp, %rbp
  movl $10, %edx
  movl $3, %esi
  movl $2, %edi
  call test
  nop
  popq %rbp
  ret

test:
  pushq %rbp
  movq %rsp, %rbp
  movl %edi, -20(%rbp)
  movl %esi, -24(%rbp)
  movl %edx, -28(%rbp)
  movl $0, -4(%rbp)
  movl $0, -8(%rbp)
L5:
  movl -4(%rbp), %eax
  cmpl -28(%rbp), %eax
  jge L2
  movl -4(%rbp), %eax
  andl $1, %eax
  testl %eax, %eax
  jne L3
  movl -20(%rbp), %eax
  addl %eax, -8(%rbp)
  jmp L4
L3:
  movl -24(%rbp), %eax
  addl %eax, -8(%rbp)
L4:
  addl $1, -4(%rbp)
  jmp L5
L2:
  movl -8(%rbp), %eax
  popq %rbp
  ret
