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

    // %rax: 11001111 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    movq $-3530822107858468864, %rax
    movq $1, %rcx
    salq %cl, %rax
    // CF: 1, PF: 0 AF: undef zf: 0 sf: 1 of: 0 
    movq $0, %rcx
    salq %cl, %rax
    // CF: 1, PF: 0 AF: undef zf: 0 sf: 1 of: 0 
    movq $0, %rcx

    //rax: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000010
    movq $2, %rax
    movq $63, %rcx
    salq %cl, %rax
    // OF: undef CF: 1 SF: 0 PF:1 AF: undef ZF: 1

    //rbx: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000001
    movq $1, %rax
    movq $63, %rcx
    salq %cl, %rax
    // OF: undef CF: 0 SF: 1 PF:1 AF: undef ZF:0

    // %rax: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000001
    movq $1, %rax
    movq $66, %rcx
    salq %cl, %rax
    // CF: 1, PF: 1 AF: undef zf: 0 sf: 0 of: undef 
    nop
