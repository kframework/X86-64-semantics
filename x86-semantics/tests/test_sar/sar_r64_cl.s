.section .text
.globl _start

_start:
    //rax: 10000000 00000000 00000000 00000000 00000000 00000000 00000000 00000001
    movq $-9223372036854775807, %rax
    movq $1, %rcx
    sarq %cl, %rax
    // OF: 0 CF: 1 SF: 1 PF:1 AF: undef ZF: 0
    movq $0, %rcx
    sarq %cl, %rax
    // OF: 0 CF: 1 SF: 1 PF:1 AF: undef ZF: 0

    // %rax: 01111111 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    movq $9151314442816847872, %rax
    movq $1, %rcx
    sarq %cl, %rax
    // CF: 0, PF: 1 AF: undef zf: 0 sf: 0 of: 0 
    movq $0, %rcx
    sarq %cl, %rax
    // CF: 0, PF: 1 AF: undef zf: 0 sf: 0 of: 0 
    movq $0, %rcx

    //rax: 10000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    movq $-9223372036854775808, %rax
    movq $63, %rcx
    sarq %cl, %rax
    // OF: undef CF: 0 SF: 1 PF:0 AF: undef ZF: 0

    //rax: 01000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
    movq $4611686018427387904, %rax
    movq $63, %rcx
    sarq %cl, %rax
    // OF: undef CF: 1 SF: 0 PF:1 AF: undef ZF: 1

    // %rax: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000100
    movq $4, %rax
    movq $66, %rcx
    sarq %cl, %rax
    // CF: 0, PF: 0 AF: undef zf: 0 sf: 0 of: undef 
    nop
