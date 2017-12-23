.section .text
.globl _start

_start:
    addq $61438, %rax
    addq $16777215, %rcx
    adcw %ax,%ax
    adcw %cx,%ax
    addq $2147483647, %rax
    addq $2, %rcx
    adcl %ecx,%eax
    addq $2147483647, %rax
    addq $1, %rcx
    adcq %rax,%rax
    adcq %rcx,%rax
    addq $61438, %rax
    addq $1, %rcx
    adcb %cl,%al
    adcb %cl,%al
    nop
