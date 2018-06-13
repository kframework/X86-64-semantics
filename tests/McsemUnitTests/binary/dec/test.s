.section .text
.globl _start

_start:
  // DECr8  
  movl $0, %eax
  decb %al
  
  movl $1, %eax
  decb %al
  
  movl $0x7F, %eax
  decb %al
  
  movl $0xFF, %eax
  decb %al

  // DECr8_64  
  movb $0, %al
  decb %al
  
  movb $1, %al
  decb %al
  
  movb $0x7F, %al
  decb %al
  
  movb $0xFF, %al
  decb %al

  // DECr16  
  movw $0, %ax
  decw %ax
  
  movw $1, %ax
  decw %ax
  
  movw $0x7F, %ax
  decw %ax
  
  movw $0xFF, %ax
  decw %ax
  
  movw $0x7FFF, %ax
  decw %ax
  
  movw $0xFFFF, %ax
  decw %ax

  // DECr32  
  movl  $0, %eax
  decl %eax
  
  movl  $1, %eax
  decl %eax
  
  movl  $0x7F, %eax
  decl %eax
  
  movl  $0xFF, %eax
  decl %eax
  
  movl  $0x7FFF, %eax
  decl %eax
  
  movl  $0xFFFF, %eax
  decl %eax
  
  movl  $0x7FFFFFFF, %eax
  decl %eax
  
  movl  $0xFFFFFFFF, %eax
  decl %eax

  // DECr64_64  
  movq  $0, %rax
  decq %rax
  
  movq  $1, %rax
  decq %rax
  
  movq  $0x7F, %rax
  decq %rax
  
  movq  $0xFF, %rax
  decq %rax
  
  movq  $0x7FFF, %rax
  decq %rax
  
  movq  $0xFFFF, %rax
  decq %rax
  
  movq  $0x7FFFFFFF, %rax
  decq %rax
  
  movq  $0xFFFFFFFF, %rax
  decq %rax
  
  movq  $0x7FFFFFFFFFFFFFFF, %rax
  decq %rax
  
  movq  $0xFFFFFFFFFFFFFFFF, %rax
  decq %rax

  nop
