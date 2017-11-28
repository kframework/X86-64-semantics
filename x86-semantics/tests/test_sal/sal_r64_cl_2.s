.section .text
.globl _start

_start:
    // %rax: 11001111 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    movq $-3530822107858468864, %rax
    movq $1, %rcx
    salq %cl, %rax
    // CF: 1, PF: 0 AF: undef zf: 0 sf: 1 of: 0 
    movq $0, %rcx
    salq %cl, %rax
    // CF: 1, PF: 0 AF: undef zf: 0 sf: 1 of: 0 
    movq $0, %rcx
    nop
