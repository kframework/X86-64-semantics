.section .text
.globl _start

_start:
  // CMOVBr16r16  
  movq $0x4141414141414141, %rax
  cmovbw %ax, %bx

  // CMOVBr32r32  
  movq $0x4141414141414141, %rax
  cmovbl %eax, %ebx

  // CMOVBr64r64  
  movq $0x4141414141414141, %rax
  cmovbq %rax, %rbx

  // CMOVBr16m16  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovbw -8(%rsp), %bx

  // CMOVBr32m32  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovbl  -8(%rsp), %ebx

  // CMOVBr64m64  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovbq  -8(%rsp), %rbx

  nop
