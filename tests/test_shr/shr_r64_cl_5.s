.section .text
.globl _start

_start:
    // %rax: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000100
    movq $0x4, %rax
    movq $0x0000000000000042, %rcx
    shrq %cl, %rax
    // CF: 0, PF: 0 AF: undef zf: 0 sf: 0 of: undef 
    nop
