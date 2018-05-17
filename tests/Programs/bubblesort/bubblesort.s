.section .text
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
  call bubbleSort
  movl $0, %eax
  leave
  ret
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
  subq $32, %rsp
  movq %rdi, -24(%rbp)
  movl %esi, -28(%rbp)
  movl $0, -4(%rbp)
L7:
  movl -28(%rbp), %eax
  decl %eax
  cmpl %eax, -4(%rbp)
  jge L8
  movl $0, -8(%rbp)
L6:
  movl -28(%rbp), %eax
  subl -4(%rbp), %eax
  decl %eax
  cmpl %eax, -8(%rbp)
  jge L4
  movl -8(%rbp), %eax
  cltq
  leaq 0(,%rax,4), %rdx
  movq -24(%rbp), %rax
  addq %rdx, %rax
  movl (%rax), %edx
  movl -8(%rbp), %eax
  cltq
  incq %rax
  leaq 0(,%rax,4), %rcx
  movq -24(%rbp), %rax
  addq %rcx, %rax
  movl (%rax), %eax
  cmpl %eax, %edx
  jle L5
  movl -8(%rbp), %eax
  cltq
  incq %rax
  leaq 0(,%rax,4), %rdx
  movq -24(%rbp), %rax
  addq %rax, %rdx
  movl -8(%rbp), %eax
  cltq
  leaq 0(,%rax,4), %rcx
  movq -24(%rbp), %rax
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
L8:
  nop
  leave
  ret
