.section .text
.globl _start

_start:
    // %rax: 01111111 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    movq $9151314442816847872, %rax
    movq $1, %rcx
    sarq %cl, %rax
    // CF: 0, PF: 1 AF: undef zf: 0 sf: 0 of: 0 
    movq $0, %rcx
    sarq %cl, %rax
    // CF: 0, PF: 1 AF: undef zf: 0 sf: 0 of: 0 
    movq $0, %rcx
    nop
