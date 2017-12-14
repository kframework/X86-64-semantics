.section .text
.globl _start

_start:
    // swap %rax %rbx using %rcx
    inforegisters
    movq $-71777214294589696, %rax
    inforegisters
    movq $71777214294589695, %rbx
    inforegisters
    movq %rax, %rcx
    inforegisters
    movq %rbx, %rax
    inforegisters
    movq %rcx, %rbx
    inforegisters
    // %rax: 00000000 11111111 00000000 11111111 00000000 11111111 00000000 11111111
    // %rbx: 11111111 00000000 11111111 00000000 11111111 00000000 11111111 00000000
    movb %ah, %al
    inforegisters
    // %rax: 00000000 11111111 00000000 11111111 00000000 11111111 00000000 00000000
    movq $255, %rcx
    inforegisters
    movb %cl, %ah
    inforegisters
    // %rax: 00000000 11111111 00000000 11111111 00000000 11111111 11111111 00000000

    nop
