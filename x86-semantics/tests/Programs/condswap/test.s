.section .text
.globl main
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
main:
  pushq %rbp
  movq %rsp, %rbp
  subq $32, %rsp
  movl $4, -20(%rbp)
  movl $3, -16(%rbp)
  movl $10, -12(%rbp)
  movl $0, -4(%rbp)
L7:
  cmpl $0, -4(%rbp)
  jg L3
  movl $0, -8(%rbp)
L6:
  movl $1, %eax
  subl -4(%rbp), %eax
  cmpl %eax, -8(%rbp)
  jge L4
  movl -8(%rbp), %eax
  cltq
  movl -20(%rbp,%rax,4), %edx
  movl -8(%rbp), %eax
  incl %eax
  cltq
  movl -20(%rbp,%rax,4), %eax
  cmpl %eax, %edx
  jle L5
  movl -8(%rbp), %eax
  leal 1(%rax), %edx
  leaq -20(%rbp), %rax
  movslq %edx, %rdx
  salq $2, %rdx
  addq %rax, %rdx
  leaq -20(%rbp), %rax
  movl -8(%rbp), %ecx
  movslq %ecx, %rcx
  salq $2, %rcx
  addq %rcx, %rax
  movq %rdx, %rsi
  movq %rax, %rdi
  call swap
L5:
  incl -8(%rbp)
  jmp L6
L4:
  incl -4(%rbp)
  jmp L7
L3:
  movl -20(%rbp), %eax
  leave
  ret
