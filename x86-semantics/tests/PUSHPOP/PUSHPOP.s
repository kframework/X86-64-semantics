.section .text
.globl _start

_start:
  // MEMORY  

  pushq %rsp
  popq %rsp

  pushw %sp
  popw %sp

  pushq %rsp
  pushw %sp
  popw %bx
  popq %rax

  pushq 16(%rsp)
  popq (%rsp) 
  
  pushw 24(%rsp)
  popw 8(%rsp) 

  pushq $0xabcd
  popw -16(%rsp)

  nop
