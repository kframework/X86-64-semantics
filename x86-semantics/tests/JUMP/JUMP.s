.section .text
.globl main

main:
  pushq %rbp
  movq %rsp, %rbp
  movl $2, -8(%rbp)
  movl $3, -12(%rbp)
  movl $0, -4(%rbp)
  cmpl $0, -4(%rbp)
  jne L2
  movl -8(%rbp), %eax
  cmpl -12(%rbp), %eax
  jge L3
  movl -12(%rbp), %eax
  subl -8(%rbp), %eax
  movl %eax, -4(%rbp)
  jmp L5
L3:
  movl -8(%rbp), %edx
  movl -12(%rbp), %eax
  addl %edx, %eax
  movl %eax, -4(%rbp)
  jmp L5
L2:
  movl -8(%rbp), %eax
  cmpl -12(%rbp), %eax
  jle L6
  movl -12(%rbp), %eax
  subl -8(%rbp), %eax
  addl %eax, -4(%rbp)
  jmp L5
L6:
  movl -8(%rbp), %edx
  movl -12(%rbp), %eax
  addl %edx, %eax
  addl %eax, -4(%rbp)
L5:
  movl -4(%rbp), %eax
  popq %rbp
  ret
