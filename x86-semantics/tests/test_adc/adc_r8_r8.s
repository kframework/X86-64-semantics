.section .text
.globl _start

_start:
    addq $61438, %rax
    adcb %al,%al
    nop
