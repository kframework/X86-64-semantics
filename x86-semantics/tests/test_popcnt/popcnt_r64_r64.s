.section .text
.globl _start

_start:
    addq $127, %rax
    popcntq %rax, %rbx
    nop
