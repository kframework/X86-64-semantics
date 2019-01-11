.section .text
.globl _start

_start:
  // ADCal  
  movq $0, %rax
  movq %rax, %mm0
  
  movq $1, %rax
  movq %rax, %mm0
  
  movq $0x7F, %rax
  movq %rax, %mm0
  
  movq $0xFF, %rax
  movq %rax, %mm0


  nop
