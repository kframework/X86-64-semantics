.section .text
.globl _start

_start:
  // IDIVax  
  movq $0, %rax
  movq $0, %rbx
  
  idivb %bl
  
  movq $1, %rax
  movq $0, %rbx
  
  idivb %bl
  
  movq $0, %rax
  movq $1, %rbx
  
  idivb %bl
  
  movq $1, %rax
  movq $1, %rbx
  
  idivb %bl
  
  movq $1, %rax
  movq $2, %rbx
  
  idivb %bl
  
  movq $0xFFFF, %rax
  movq $1, %rbx
  
  idivb %bl
  
  movq $0xFFFF, %rax
  movq $2, %rbx
  
  idivb %bl
  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx
  
  idivb %bl
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx
  
  idivb %bl
  
  movq $0x7FFF, %rax
  movq $1, %rbx
  
  idivb %bl
  
  movq $0x7FFF, %rax
  movq $2, %rbx
  
  idivb %bl
  
  movq $0x7FFF, %rax
  movq $0xFF, %rbx
  
  idivb %bl
  
  movq $0x7FFF, %rax
  movq $0xF7, %rbx
  
  idivb %bl

  // IDIVax_64  
  movq $0, %rax
  movq $0, %r8
  
  idivb %r8b
  
  movq $1, %rax
  movq $0, %r8
  
  idivb %r8b
  
  movq $0, %rax
  movq $1, %r8
  
  idivb %r8b
  
  movq $1, %rax
  movq $1, %r8
  
  idivb %r8b
  
  movq $1, %rax
  movq $2, %r8
  
  idivb %r8b
  
  movq $0xFFFF, %rax
  movq $1, %r8
  
  idivb %r8b
  
  movq $0xFFFF, %rax
  movq $2, %r8
  
  idivb %r8b
  
  movq $0xFFFF, %rax
  movq $0xFF, %r8
  
  idivb %r8b
  
  movq $0xFFFF, %rax
  movq $0xF7, %r8
  
  idivb %r8b
  
  movq $0x7FFF, %rax
  movq $1, %r8
  
  idivb %r8b
  
  movq $0x7FFF, %rax
  movq $2, %r8
  
  idivb %r8b
  
  movq $0x7FFF, %rax
  movq $0xFF, %r8
  
  idivb %r8b
  
  movq $0x7FFF, %rax
  movq $0xF7, %r8
  
  idivb %r8b

  // IDIVdxax  
  movq $0, %rax
  movq $0, %rbx,
  movq $0, %rdx
  
  idivb %bx
  
  movq $1, %rax
  movq $0, %rbx,
  movq $0, %rdx
  
  idivb %bx
  
  movq $0, %rax
  movq $1, %rbx,
  movq $0, %rdx
  
  idivb %bx
  
  movq $1, %rax
  movq $1, %rbx,
  movq $0, %rdx
  
  idivb %bx
  
  movq $1, %rax
  movq $2, %rbx,
  movq $0, %rdx
  
  idivb %bx
  
  movq $0xFFFF, %rax
  movq $1, %rbx,
  movq $0, %rdx
  
  idivb %bx
  
  movq $0xFFFF, %rax
  movq $2, %rbx,
  movq $0, %rdx
  
  idivb %bx
  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx,
  movq $0, %rdx
  
  idivb %bx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx,
  movq $0, %rdx
  
  idivb %bx
  
  movq $0xFFFF, %rax
  movq $1, %rbx,
  movq $0xFFFF, %rdx
  
  idivb %bx
  
  movq $0xFFFF, %rax
  movq $2, %rbx,
  movq $0xFFFF, %rdx
  
  idivb %bx
  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx,
  movq $0xFFFF, %rdx
  
  idivb %bx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx,
  movq $0xFFFF, %rdx
  
  idivb %bx
  
  movq $0xFFFF, %rax
  movq $1, %rbx,
  movq $0x7FFF, %rdx
  
  idivb %bx
  
  movq $0xFFFF, %rax
  movq $2, %rbx,
  movq $0x7FFF, %rdx
  
  idivb %bx
  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx,
  movq $0x7FFF, %rdx
  
  idivb %bx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx,
  movq $0x7FFF, %rdx
  
  idivb %bx

  // IDIVedxeax  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx,
  movq $0, %rdx
  
  idivl %ebx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx,
  movq $0, %rdx
  
  idivl %ebx
  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx,
  movq $0xFFFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx,
  movq $0xFFFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx,
  movq $0x7FFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx,
  movq $0x7FFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFF, %rbx,
  movq $0xFFFFFFFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xF7, %rbx,
  movq $0xFFFFFFFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFF, %rbx,
  movq $0x7FFFFFFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xF7, %rbx,
  movq $0x7FFFFFFF, %rdx
  
  idivl %ebx
  
  movq $0xffffffff, %rax
  movq $32, %rbx,
  movq $0xffffffff, %rdx
  
  idivl %ebx

  // IDIVrdxrax_64  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx,
  movq $0, %rdx
  
  idivl %ebx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx,
  movq $0, %rdx
  
  idivl %ebx
  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx,
  movq $0xFFFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx,
  movq $0xFFFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFF, %rax
  movq $0xFF, %rbx,
  movq $0x7FFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFF, %rax
  movq $0xF7, %rbx,
  movq $0x7FFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFF, %rbx,
  movq $0xFFFFFFFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xF7, %rbx,
  movq $0xFFFFFFFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFF, %rbx,
  movq $0x7FFFFFFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFFFFFF, %rax
  movq $0xF7, %rbx,
  movq $0x7FFFFFFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFF, %rbx,
  movq $0xFFFFFFFFFFFFFFFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xF7, %rbx,
  movq $0xFFFFFFFFFFFFFFFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFF, %rbx,
  movq $0x7FFFFFFFFFFFFFFF, %rdx
  
  idivl %ebx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xF7, %rbx,
  movq $0x7FFFFFFFFFFFFFFF, %rdx
  
  idivl %ebx

  nop
