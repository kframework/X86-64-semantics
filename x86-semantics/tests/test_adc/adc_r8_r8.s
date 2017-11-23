.section .text
.globl _start

_start:
    addq $61438, %rax
    addq $1, %rcx
    adcb %cl,%al
    adcb %cl,%al
    nop
