.section .text
.globl _start

_start:
    //rbx: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000001
    movq $1, %rax
    movq $63, %rcx
    salq %cl, %rax
    // OF: undef CF: 0 SF: 1 PF:1 AF: undef ZF:0
    nop
