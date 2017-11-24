.section .text
.globl _start

_start:
    addq $2147483647, %rax
    addq $1, %rcx
    adcq %rax,%rax
    adcq %rcx,%rax
    nop
