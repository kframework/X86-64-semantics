.section .text
.globl _start

_start:
    addq $65535, %rax
    adcb %al,%al
    nop
