.section .text
.globl _start

_start:
  // CMOVNSr16r16  
  movq $0x4141414141414141, %rax
  cmovnsw %ax, %bx

  // CMOVNSr32r32  
  movq $0x4141414141414141, %rax
  cmovnsl %eax, %ebx

  // CMOVNSr64r64  
  movq $0x4141414141414141, %rax
  cmovnsq %rax, %rbx

  // CMOVNSr16m16  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnsw -8(%rsp), %bx

  // CMOVNSr32m32  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnsl  -8(%rsp), %ebx

  // CMOVNSr64m64  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnsq  -8(%rsp), %rbx

  nop
