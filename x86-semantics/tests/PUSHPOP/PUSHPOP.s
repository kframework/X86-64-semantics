.section .text
.globl _start

_start:
  // MEMORY  

  pushq %rsp
  popq %rsp

  pushw %sp
  popw %sp

  movq $0xabcd, (%rsp)
  pushq (%rsp)
  popq (%rsp) 
  
  pushw (%rsp)
  popw (%rsp) 

  pushq $0xef89
  popq (%rsp)

  nop
