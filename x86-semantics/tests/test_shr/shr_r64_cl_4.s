.section .text
.globl _start

_start:
    //rax: 01000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    movq $0x4000000000000000, %rax
    movq $0x000000000000003f, %rcx
    shrq %cl, %rax
    // OF: undef CF: 1 SF: 0 PF:1 AF: undef ZF: 1
    nop
