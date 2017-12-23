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

    // %rax: 01111111 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    movq $0x7f00000000000000, %rax
    movq $0x1, %rcx
    shrq %cl, %rax
    // CF: 0, PF: 1 AF: undef zf: 0 sf: 0 of: 0 
    movq $0x0, %rcx
    shrq %cl, %rax
    // CF: 0, PF: 1 AF: undef zf: 0 sf: 0 of: 0 
    movq $0x0, %rcx

    //rax: 10000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    movq $0x8000000000000000, %rax
    movq $0x000000000000003f, %rcx
    shrq %cl, %rax
    // OF: undef CF: 0 SF: 1 PF:0 AF: undef ZF: 0

    //rax: 01000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    movq $0x4000000000000000, %rax
    movq $0x000000000000003f, %rcx
    shrq %cl, %rax
    // OF: undef CF: 1 SF: 0 PF:1 AF: undef ZF: 1

    // %rax: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000100
    movq $0x4, %rax
    movq $0x0000000000000042, %rcx
    shrq %cl, %rax
    // CF: 0, PF: 0 AF: undef zf: 0 sf: 0 of: undef 
    nop
