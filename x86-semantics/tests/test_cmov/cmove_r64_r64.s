.section .text
.globl _start

_start:
    inforegisters
    addq $65535, %rax
    inforegisters
    addq $1, %rbx
    inforegisters
    adcw %bx, %ax
    inforegisters
    cmoveq %rax, %rbx
    inforegisters
    adcw %bx, %ax
    inforegisters
    cmoveq %rax, %rbx
    inforegisters
    nop
