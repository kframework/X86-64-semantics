.section .text
.globl _start

_start:
    addq $0x000000007fffffff, %rax
    popcntq %rax, %rbx
    popcntq %rbx, %rax
    popcntq %rax, %rbx
    popcntq %rbx, %rax
    nop
