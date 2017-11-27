.section .text
.globl _start

_start:
    addq $2147483647, %rax
    popcntq %rax, %rbx
    popcntq %rbx, %rax
    popcntq %rax, %rbx
    popcntq %rbx, %rax
    nop
