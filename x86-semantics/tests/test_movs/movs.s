.section .text
.globl _start

_start:
    // movs_r64_r16
    inforegisters
    addq $65535, %rax
    inforegisters
    movswq %ax, %rax
    inforegisters
    addq $32767, %rbx
    inforegisters
    movswq %bx, %rcx

    // movs_r64_r32
    inforegisters
    movq $4294967295, %rax
    inforegisters
    movslq %eax, %rax
    inforegisters
    addq $2147483647, %rbx
    inforegisters
    movslq %ebx, %rcx

    // movs_r64_r8
    inforegisters
    addq $255, %rax
    inforegisters
    movsbq %al, %rax
    inforegisters
    addq $127, %rbx
    inforegisters
    movsbq %bl, %rcx
    inforegisters
    nop
