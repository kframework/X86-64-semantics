.section .text
.globl _start

_start:
    //rax: 10000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    movq $0x8000000000000000, %rax
    movq $0x000000000000003f, %rcx
    shrq %cl, %rax
    // OF: undef CF: 0 SF: 1 PF:0 AF: undef ZF: 0
    nop
