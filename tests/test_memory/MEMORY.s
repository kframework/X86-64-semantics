.section .text
.globl _start

_start:
  // MEMORY  
  movq $56, %rsp
  movq $61438, %rax
  movq %rax, (%rsp)

  movq $48, %rsp
  addq $0xabcd234500000000, %rax
  movq %rax, (%rsp)

  movq $52, %rsp
  movq (%rsp), %rbx
  
  nop
