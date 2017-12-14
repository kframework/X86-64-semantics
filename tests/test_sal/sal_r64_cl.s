.section .text
.globl _start

_start:
    inforegisters
    //rax: 10000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    movq $-9223372036854775808, %rax
    inforegisters
    movq $1, %rcx
    inforegisters
    salq %cl, %rax
    inforegisters
    // OF: 1 CF: 1 SF: 0 PF:1 AF: undef ZF: 1
    movq $0, %rcx
    inforegisters
    salq %cl, %rax
    inforegisters
    // OF: 1 CF: 1 SF: 0 PF:1 AF: undef ZF: 1

    // %rax: 11001111 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    movq $-3530822107858468864, %rax
    inforegisters
    movq $1, %rcx
    inforegisters
    salq %cl, %rax
    inforegisters
    // CF: 1, PF: 0 AF: undef zf: 0 sf: 1 of: 0 
    movq $0, %rcx
    inforegisters
    salq %cl, %rax
    inforegisters
    // CF: 1, PF: 0 AF: undef zf: 0 sf: 1 of: 0 
    movq $0, %rcx
    inforegisters

    //rax: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000010
    movq $2, %rax
    inforegisters
    movq $63, %rcx
    inforegisters
    salq %cl, %rax
    inforegisters
    // OF: undef CF: 1 SF: 0 PF:1 AF: undef ZF: 1

    //rbx: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000001
    movq $1, %rax
    inforegisters
    movq $63, %rcx
    inforegisters
    salq %cl, %rax
    inforegisters
    // OF: undef CF: 0 SF: 1 PF:1 AF: undef ZF:0

    // %rax: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000001
    movq $1, %rax
    inforegisters
    movq $66, %rcx
    inforegisters
    salq %cl, %rax
    inforegisters
    // CF: 1, PF: 1 AF: undef zf: 0 sf: 0 of: undef 
    nop
