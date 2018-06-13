.section .text
.globl _start

_start:
  // INCr8  
  movl $0, %eax
  incb %al
  
  movl $1, %eax
  incb %al
  
  movl $0x7F, %eax
  incb %al
  
  movl $0xFF, %eax
  incb %al

  // INCr8_64  
  movb $0, %al
  incb %al
  
  movb $1, %al
  incb %al
  
  movb $0x7F, %al
  incb %al
  
  movb $0xFF, %al
  incb %al

  // INCr16  
  movw $0, %ax
  incw %ax
  
  movw $1, %ax
  incw %ax
  
  movw $0x7F, %ax
  incw %ax
  
  movw $0xFF, %ax
  incw %ax
  
  movw $0x7FFF, %ax
  incw %ax
  
  movw $0xFFFF, %ax
  incw %ax

  // INCr32  
  movl  $0, %eax
  incl %eax
  
  movl  $1, %eax
  incl %eax
  
  movl  $0x7F, %eax
  incl %eax
  
  movl  $0xFF, %eax
  incl %eax
  
  movl  $0x7FFF, %eax
  incl %eax
  
  movl  $0xFFFF, %eax
  incl %eax
  
  movl  $0x7FFFFFFF, %eax
  incl %eax
  
  movl  $0xFFFFFFFF, %eax
  incl %eax

  // INCr64_64  
  movq  $0, %rax
  incq %rax
  
  movq  $1, %rax
  incq %rax
  
  movq  $0x7F, %rax
  incq %rax
  
  movq  $0xFF, %rax
  incq %rax
  
  movq  $0x7FFF, %rax
  incq %rax
  
  movq  $0xFFFF, %rax
  incq %rax
  
  movq  $0x7FFFFFFF, %rax
  incq %rax
  
  movq  $0xFFFFFFFF, %rax
  incq %rax
  
  movq  $0x7FFFFFFFFFFFFFFF, %rax
  incq %rax
  
  movq  $0xFFFFFFFFFFFFFFFF, %rax
  incq %rax

  nop
