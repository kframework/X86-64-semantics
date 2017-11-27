.section .text
.globl _start

_start:
    addq $65535, %rax
    movswq %ax, %rax
    addq $32767, %rbx
    movswq %bx, %rcx
    nop
