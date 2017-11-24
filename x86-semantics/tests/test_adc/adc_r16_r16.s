.section .text
.globl _start

_start:
    addq $61438, %rax
    addq $16777215, %rcx
    adcw %ax,%ax
    adcw %cx,%ax
    nop
