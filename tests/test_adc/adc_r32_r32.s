.section .text
.globl _start

_start:
    addq $2147483647, %rax
    addq $2, %rcx
    adcl %ecx,%eax
    nop
