.section .text
.globl _start

_start:
    addq $65535, %rax
    addq $1, %rbx
    adcw %bx, %ax
    cmoveq %rax, %rbx
    adcw %bx, %ax
    cmoveq %rax, %rbx
    nop
