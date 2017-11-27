.section .text
.globl _start

_start:
    addq $255, %rax
    movsbq %al, %rax
    addq $127, %rbx
    movsbq %bl, %rcx
    nop
