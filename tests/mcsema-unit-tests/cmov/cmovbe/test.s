.section .text
.globl _start

_start:
  // CMOVBEr16r16  
  movq $0x4141414141414141, %rax
  cmovbew %ax, %bx

  // CMOVBEr32r32  
  movq $0x4141414141414141, %rax
  cmovbel %eax, %ebx

  // CMOVBEr64r64  
  movq $0x4141414141414141, %rax
  cmovbeq %rax, %rbx

  // CMOVBEr16m16  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovbew -8(%rsp), %bx

  // CMOVBEr32m32  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovbel  -8(%rsp), %ebx

  // CMOVBEr64m64  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovbeq  -8(%rsp), %rbx

  nop
