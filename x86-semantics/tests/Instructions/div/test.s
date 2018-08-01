.section .text
.globl _start

_start:
  // DIVax  
  movq $0, %rax
  movq $0, %rbx
  
  divb %bl
  
  movq $1, %rax
  movq $0, %rbx
  
  divb %bl
  
  movq $0, %rax
  movq $1, %rbx
  
  divb %bl
  
  movq $1, %rax
  movq $1, %rbx
  
  divb %bl
  
  movq $1, %rax
  movq $2, %rbx
  
  divb %bl
  
  movq $0xFFFF, %rax
  movq $1, %rbx
  
  divb %bl
  
  movq $0xFFFF, %rax
  movq $2, %rbx
  
  divb %bl
  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx
  
  divb %bl
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx
  
  divb %bl
  
  movq $0x7FFF, %rax
  movq $1, %rbx
  
  divb %bl
  
  movq $0x7FFF, %rax
  movq $2, %rbx
  
  divb %bl
  
  movq $0x7FFF, %rax
  movq $0xFF, %rbx
  
  divb %bl
  
  movq $0x7FFF, %rax
  movq $0xF7, %rbx
  
  divb %bl

  // DIVax_64  
  movq $0, %rax
  movq $0, %r8
  
  divb %r8b
  
  movq $1, %rax
  movq $0, %r8
  
  divb %r8b
  
  movq $0, %rax
  movq $1, %r8
  
  divb %r8b
  
  movq $1, %rax
  movq $1, %r8
  
  divb %r8b
  
  movq $1, %rax
  movq $2, %r8
  
  divb %r8b
  
  movq $0xFFFF, %rax
  movq $1, %r8
  
  divb %r8b
  
  movq $0xFFFF, %rax
  movq $2, %r8
  
  divb %r8b
  
  movq $0xFFFF, %rax
  movq $0xFF, %r8
  
  divb %r8b
  
  movq $0xFFFF, %rax
  movq $0xF7, %r8
  
  divb %r8b
  
  movq $0x7FFF, %rax
  movq $1, %r8
  
  divb %r8b
  
  movq $0x7FFF, %rax
  movq $2, %r8
  
  divb %r8b
  
  movq $0x7FFF, %rax
  movq $0xFF, %r8
  
  divb %r8b
  
  movq $0x7FFF, %rax
  movq $0xF7, %r8
  
  divb %r8b

  // DIVdxax  
  movq $0, %rax
  movq $0, %rbx
  movq $0, %rdx
  
  divw %bx
  
  movq $1, %rax
  movq $0, %rbx
  movq $0, %rdx
  
  divw %bx
  
  movq $0, %rax
  movq $1, %rbx
  movq $0, %rdx
  
  divw %bx
  
  movq $1, %rax
  movq $1, %rbx
  movq $0, %rdx
  
  divw %bx
  
  movq $1, %rax
  movq $2, %rbx
  movq $0, %rdx
  
  divw %bx
  
  movq $0xFFFF, %rax
  movq $1, %rbx
  movq $0, %rdx
  
  divw %bx
  
  movq $0xFFFF, %rax
  movq $2, %rbx
  movq $0, %rdx
  
  divw %bx
  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx
  movq $0, %rdx
  
  divw %bx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx
  movq $0, %rdx
  
  divw %bx
  
  movq $0xFFFF, %rax
  movq $1, %rbx
  movq $0xFFFF, %rdx
  
  divw %bx
  
  movq $0xFFFF, %rax
  movq $2, %rbx
  movq $0xFFFF, %rdx
  
  divw %bx
  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx
  movq $0xFFFF, %rdx
  
  divw %bx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx
  movq $0xFFFF, %rdx
  
  divw %bx
  
  movq $0xFFFF, %rax
  movq $1, %rbx
  movq $0x7FFF, %rdx
  
  divw %bx
  
  movq $0xFFFF, %rax
  movq $2, %rbx
  movq $0x7FFF, %rdx
  
  divw %bx
  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx
  movq $0x7FFF, %rdx
  
  divw %bx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx
  movq $0x7FFF, %rdx
  
  divw %bx

  // DIVedxeax  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx
  movq $0, %rdx
  
  divl %ebx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx
  movq $0, %rdx
  
  divl %ebx
  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx
  movq $0xFFFF, %rdx
  
  divl %ebx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx
  movq $0xFFFF, %rdx
  
  divl %ebx
  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx
  movq $0x7FFF, %rdx
  
  divl %ebx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx
  movq $0x7FFF, %rdx
  
  divl %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFF, %rbx
  movq $0xFFFFFFFF, %rdx
  
  divl %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xF7, %rbx
  movq $0xFFFFFFFF, %rdx
  
  divl %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFF, %rbx
  movq $0x7FFFFFFF, %rdx
  
  divl %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xF7, %rbx
  movq $0x7FFFFFFF, %rdx
  
  divl %ebx
  
  movq $0xffffffff, %rax
  movq $32, %rbx
  movq $0xffffffff, %rdx
  
  divl %ebx

  // DIVrdxrax_64  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx
  movq $0, %rdx
  
  divl %ebx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx
  movq $0, %rdx
  
  divl %ebx
  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx
  movq $0xFFFF, %rdx
  
  divl %ebx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx
  movq $0xFFFF, %rdx
  
  divl %ebx
  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx
  movq $0x7FFF, %rdx
  
  divl %ebx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx
  movq $0x7FFF, %rdx
  
  divl %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFF, %rbx
  movq $0xFFFFFFFF, %rdx
  
  divl %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xF7, %rbx
  movq $0xFFFFFFFF, %rdx
  
  divl %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFF, %rbx
  movq $0x7FFFFFFF, %rdx
  
  divl %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xF7, %rbx
  movq $0x7FFFFFFF, %rdx
  
  divl %ebx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFF, %rbx
  movq $0xFFFFFFFFFFFFFFFF, %rdx
  
  divl %ebx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xF7, %rbx
  movq $0xFFFFFFFFFFFFFFFF, %rdx
  
  divl %ebx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFF, %rbx
  movq $0x7FFFFFFFFFFFFFFF, %rdx
  
  divl %ebx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xF7, %rbx
  movq $0x7FFFFFFFFFFFFFFF, %rdx
  
  divl %ebx

  nop
