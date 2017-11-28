.section .text
.globl _start

_start:
    //rax: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000010
    movq $2, %rax
    movq $63, %rcx
    salq %cl, %rax
    // OF: undef CF: 1 SF: 0 PF:1 AF: undef ZF: 1
    nop
