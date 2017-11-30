.section .text
.globl _start

_start:
    //rax: 10000000 00000000 00000000 00000000 00000000 00000000 00000000 00000001
    movq $0x8000000000000001, %rax
    movq $0x1, %rcx
    shrq %cl, %rax
    // OF: 0 CF: 1 SF: 1 PF:1 AF: undef ZF: 0
    movq $0x0, %rcx
    shrq %cl, %rax
    // OF: 0 CF: 1 SF: 1 PF:1 AF: undef ZF: 0
    nop
