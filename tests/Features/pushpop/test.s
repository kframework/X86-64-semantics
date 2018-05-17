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

  pushq 24(%rsp)
  popq 8(%rsp) 
  
  pushw 32(%rsp)
  popw 16(%rsp) 

  pushq $0xabcd
  popw -16(%rsp)

  nop
