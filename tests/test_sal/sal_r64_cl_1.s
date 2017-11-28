.section .text
.globl _start

_start:
    //rax: 10000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    movq $-9223372036854775808, %rax
    movq $1, %rcx
    salq %cl, %rax
    // OF: 1 CF: 1 SF: 0 PF:1 AF: undef ZF: 1
    movq $0, %rcx
    salq %cl, %rax
    // OF: 1 CF: 1 SF: 0 PF:1 AF: undef ZF: 1
    nop
