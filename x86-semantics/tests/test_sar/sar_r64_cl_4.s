.section .text
.globl _start

_start:
    //rax: 01000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    movq $4611686018427387904, %rax
    movq $63, %rcx
    sarq %cl, %rax
    // OF: undef CF: 1 SF: 0 PF:1 AF: undef ZF: 1
    nop
