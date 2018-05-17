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
  movl %edi, -4(%rbp)
  movl %esi, -8(%rbp)
  movl %edx, -12(%rbp)
  cmpl $0, -12(%rbp)
  jne L2
  movl -4(%rbp), %eax
  cmpl -8(%rbp), %eax
  jge L3
  movl -8(%rbp), %eax
  subl -4(%rbp), %eax
  movl %eax, -12(%rbp)
  jmp L5
L3:
  movl -4(%rbp), %edx
  movl -8(%rbp), %eax
  addl %edx, %eax
  movl %eax, -12(%rbp)
  jmp L5
L2:
  movl -4(%rbp), %eax
  cmpl -8(%rbp), %eax
  jg L6
  movl -8(%rbp), %eax
  subl -4(%rbp), %eax
  addl %eax, -12(%rbp)
  jmp L5
L6:
  movl -4(%rbp), %edx
  movl -8(%rbp), %eax
  addl %edx, %eax
  addl %eax, -12(%rbp)
L5:
  movl -12(%rbp), %eax
  popq %rbp
  ret

