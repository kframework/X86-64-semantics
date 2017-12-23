.section .text
.globl _start

_start:
    // movs_r64_r16
    addq $65535, %rax
    movswq %ax, %rax
    addq $32767, %rbx
    movswq %bx, %rcx

    // movs_r64_r32
    movq $4294967295, %rax
    movslq %eax, %rax
    addq $2147483647, %rbx
    movslq %ebx, %rcx

    // movs_r64_r8
    addq $255, %rax
    movsbq %al, %rax
    addq $127, %rbx
    movsbq %bl, %rcx
    nop
