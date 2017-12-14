.section .text
.globl _start

_start:
    // Init rax
    inforegisters
    addq $0, %rax
    inforegisters
    orq %rax,%rax
    inforegisters
    nop
