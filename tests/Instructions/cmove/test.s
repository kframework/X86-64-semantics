.section .text
.globl _start

_start:
  // CMOVZr64r64  
  addq $65535, %rax
  addq $1, %rbx
  adcw %bx, %ax
  cmoveq %rax, %rbx
  adcw %bx, %ax
  cmoveq %rax, %rbx
  
  movq $0x4141414141414141, %rax
  cmoveq %rax, %rbx


  nop
