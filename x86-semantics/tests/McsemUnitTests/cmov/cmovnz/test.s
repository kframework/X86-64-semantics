.section .text
.globl _start

_start:
  // CMOVNZr16r16  
  movq $0x4141414141414141, %rax
  cmovnzw %ax, %bx

  // CMOVNZr32r32  
  movq $0x4141414141414141, %rax
  cmovnzl %eax, %ebx

  // CMOVNZr64r64  
  movq $0x4141414141414141, %rax
  cmovnzq %rax, %rbx

  // CMOVNZr16m16  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnzw -8(%rsp), %bx

  // CMOVNZr32m32  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnzl  -8(%rsp), %ebx

  // CMOVNZr64m64  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnzq  -8(%rsp), %rbx

  nop
