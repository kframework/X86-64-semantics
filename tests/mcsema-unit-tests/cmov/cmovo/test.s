.section .text
.globl _start

_start:
  // CMOVOr16r16  
  movq $0x4141414141414141, %rax
  cmovow %ax, %bx

  // CMOVOr32r32  
  movq $0x4141414141414141, %rax
  cmovol %eax, %ebx

  // CMOVOr64r64  
  movq $0x4141414141414141, %rax
  cmovoq %rax, %rbx

  // CMOVOr16m16  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovow -8(%rsp), %bx

  // CMOVOr32m32  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovol  -8(%rsp), %ebx

  // CMOVOr64m64  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovoq  -8(%rsp), %rbx

  nop
