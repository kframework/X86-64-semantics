.section .text
.globl _start

_start:
  // CMOVZr16r16  
  movq $0x4141414141414141, %rax
  cmovzw %ax, %bx

  // CMOVZr32r32  
  movq $0x4141414141414141, %rax
  cmovzl %eax, %ebx

  // CMOVZr64r64  
  movq $0x4141414141414141, %rax
  cmovzq %rax, %rbx

  // CMOVZr16m16  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovzw -8(%rsp), %bx

  // CMOVZr32m32  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovzl  -8(%rsp), %ebx

  // CMOVZr64m64  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovzq  -8(%rsp), %rbx

  nop
