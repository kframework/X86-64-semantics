.section .text
.globl _start

_start:
    // %rax: 01111111 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    movq $0x7f00000000000000, %rax
    movq $0x1, %rcx
    shrq %cl, %rax
    // CF: 0, PF: 1 AF: undef zf: 0 sf: 0 of: 0 
    movq $0x0, %rcx
    shrq %cl, %rax
    // CF: 0, PF: 1 AF: undef zf: 0 sf: 0 of: 0 
    movq $0x0, %rcx
    nop
