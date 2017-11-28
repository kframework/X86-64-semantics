.section .text
.globl _start

_start:
    //rax: 10000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    movq $-9223372036854775808, %rax
    movq $63, %rcx
    sarq %cl, %rax
    // OF: undef CF: 0 SF: 1 PF:0 AF: undef ZF: 0
    nop
