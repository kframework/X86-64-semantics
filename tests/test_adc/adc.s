.section .text
.globl _start

_start:
    inforegisters
    addq $61438, %rax
    inforegisters
    addq $16777215, %rcx
    inforegisters
    adcw %ax,%ax
    inforegisters
    adcw %cx,%ax
    inforegisters
    addq $2147483647, %rax
    inforegisters
    addq $2, %rcx
    inforegisters
    adcl %ecx,%eax
    inforegisters
    addq $2147483647, %rax
    inforegisters
    addq $1, %rcx
    inforegisters
    adcq %rax,%rax
    inforegisters
    adcq %rcx,%rax
    inforegisters
    addq $61438, %rax
    inforegisters
    addq $1, %rcx
    inforegisters
    adcb %cl,%al
    inforegisters
    adcb %cl,%al
    inforegisters
    nop
