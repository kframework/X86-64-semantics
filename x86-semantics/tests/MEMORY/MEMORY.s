.section .text
.globl _start

_start:
  // MEMORY  
  movq $61438, %rax
  movq %rax, -8(%rsp)

  addq $0xabcd234500000000, %rax
  movq %rax, -16(%rsp)

  movq -12(%rsp), %rbx
  
  nop
