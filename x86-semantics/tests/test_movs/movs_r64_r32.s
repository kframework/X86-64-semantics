.section .text
.globl _start

_start:
    movq $4294967295, %rax
    movswq %ax, %rax
    addq $2147483647, %rbx
    movswq %bx, %rcx
    nop
