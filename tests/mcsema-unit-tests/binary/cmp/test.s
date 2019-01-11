.section .text
.globl _start

_start:
  // CMPr8r8  
  movw $0, %ax
  movw $0, %bx
  cmpb %al, %bl
  
  movw $0, %ax
  movw $1, %bx
  cmpb %al, %bl
  
  movw $1, %ax
  movw $0, %bx
  cmpb %al, %bl
  
  movw $1, %ax
  movw $1, %bx
  cmpb %al, %bl
  
  movw $0, %ax
  movw $0xFF, %bx
  cmpb %al, %bl
  
  movw $0x10, %ax
  movw $0, %bx
  cmpb %al, %bl
  
  movw $0xFF, %ax
  movw $0x11, %bx
  cmpb %al, %bl

  // CMPr16r16  
  movw $0, %ax
  movw $0, %bx
  cmpw %bx, %ax
  
  movw $0, %ax
  movw $1, %bx
  cmpw %bx, %ax
  
  movw $1, %ax
  movw $0, %bx
  cmpw %bx, %ax
  
  movw $1, %ax
  movw $1, %bx
  cmpw %bx, %ax
  
  movw $0, %ax
  movw $0xFFFF, %bx
  cmpw %bx, %ax
  
  movw $0x10, %ax
  movw $0, %bx
  cmpw %bx, %ax
  
  movw $0xFF, %ax
  movw $0x11, %bx
  cmpw %bx, %ax

  // CMPr16i16  
  movw $0, %ax
  cmpw $0xFFFF, %ax
  
  movw $1, %ax
  cmpw $0xFFFF, %ax
  
  movw $0x7FFF, %ax
  cmpw $0xFFFF, %ax
  
  movw $0xFFFF, %ax
  cmpw $0xFFFF, %ax

  // CMPr32r32  
  movl $0, %eax
  movl $0, %ebx
  cmpl %ebx, %eax
  
  movl $0, %eax
  movl $1, %ebx
  cmpl %ebx, %eax
  
  movl $1, %eax
  movl $0, %ebx
  cmpl %ebx, %eax
  
  movl $1, %eax
  movl $1, %ebx
  cmpl %ebx, %eax
  
  movl $0, %eax
  movl $0xFFFFFFFF, %ebx
  cmpl %ebx, %eax
  
  movl $0x10, %eax
  movl $0, %ebx
  cmpl %ebx, %eax
  
  movl $0xFF, %eax
  movl $0x11, %ebx
  cmpl %ebx, %eax



  // CMPr64r64_64  
  movq $0, %rax
  movq $0, %rbx
  cmpq %rax, %rbx
  
  movq $0, %rax
  movq $1, %rbx
  cmpq %rax, %rbx
  
  movq $1, %rax
  movq $0, %rbx
  cmpq %rax, %rbx
  
  movq $1, %rax
  movq $1, %rbx
  cmpq %rax, %rbx
  
  movq $0, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  cmpq %rax, %rbx
  
  movq $1, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  cmpq %rax, %rbx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $1, %rbx
  cmpq %rax, %rbx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  cmpq %rax, %rbx
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  cmpq %rax, %rbx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  cmpq %rax, %rbx

  nop
