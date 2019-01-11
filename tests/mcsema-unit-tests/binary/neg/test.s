.section .text
.globl _start

_start:
  // NEGr8  
  movl $0, %eax
  negb %al
  
  movl $1, %eax
  negb %al
  
  movl $0x7F, %eax
  negb %al
  
  movl $0xFF, %eax
  negb %al

  // NEGr8_64  
  movb $0, %al
  negb %al
  
  movb $1, %al
  negb %al
  
  movb $0x7F, %al
  negb %al
  
  movb $0xFF, %al
  negb %al

  // NEGr16  
  movw $0, %ax
  negw %ax
  
  movw $1, %ax
  negw %ax
  
  movw $0x7F, %ax
  negw %ax
  
  movw $0xFF, %ax
  negw %ax
  
  movw $0x7FFF, %ax
  negw %ax
  
  movw $0xFFFF, %ax
  negw %ax

  // NEGr32  
  movl  $0, %eax
  negl %eax
  
  movl  $1, %eax
  negl %eax
  
  movl  $0x7F, %eax
  negl %eax
  
  movl  $0xFF, %eax
  negl %eax
  
  movl  $0x7FFF, %eax
  negl %eax
  
  movl  $0xFFFF, %eax
  negl %eax
  
  movl  $0x7FFFFFFF, %eax
  negl %eax
  
  movl  $0xFFFFFFFF, %eax
  negl %eax

  // NEGr64_64  
  movq  $0, %rax
  negq %rax
  
  movq  $1, %rax
  negq %rax
  
  movq  $0x7F, %rax
  negq %rax
  
  movq  $0xFF, %rax
  negq %rax
  
  movq  $0x7FFF, %rax
  negq %rax
  
  movq  $0xFFFF, %rax
  negq %rax
  
  movq  $0x7FFFFFFF, %rax
  negq %rax
  
  movq  $0xFFFFFFFF, %rax
  negq %rax
  
  movq  $0x7FFFFFFFFFFFFFFF, %rax
  negq %rax
  
  movq  $0xFFFFFFFFFFFFFFFF, %rax
  negq %rax

  nop
