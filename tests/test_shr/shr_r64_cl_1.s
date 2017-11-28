.section .text
.globl _start

_start:
    //rax: 10000000 00000000 00000000 00000000 00000000 00000000 00000000 00000001
    movq $-9223372036854775807, %rax
    movq $1, %rcx
    shrq %cl, %rax
    // OF: 0 CF: 1 SF: 1 PF:1 AF: undef ZF: 0
    movq $0, %rcx
    shrq %cl, %rax
    // OF: 0 CF: 1 SF: 1 PF:1 AF: undef ZF: 0
    nop
