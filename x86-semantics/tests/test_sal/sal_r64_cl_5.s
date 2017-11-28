.section .text
.globl _start

_start:
    // %rax: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000001
    movq $1, %rax
    movq $66, %rcx
    salq %cl, %rax
    // CF: 1, PF: 1 AF: undef zf: 0 sf: 0 of: undef 
    nop
