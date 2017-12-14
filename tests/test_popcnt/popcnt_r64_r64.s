.section .text
.globl _start

_start:
    inforegisters
    addq $0x000000007fffffff, %rax
    inforegisters
    popcntq %rax, %rbx
    inforegisters
    popcntq %rbx, %rax
    inforegisters
    popcntq %rax, %rbx
    inforegisters
    popcntq %rbx, %rax
    inforegisters
    nop
