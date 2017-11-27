.section .text
.globl _start

_start:
    // Init rax
    addq $0, %rax
    orq %rax,%rax
    nop
