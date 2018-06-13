.section .text
.globl _start

_start:
  // CMOVSr16r16  
  movq $0x4141414141414141, %rax
  cmovsw %ax, %bx

  // CMOVSr32r32  
  movq $0x4141414141414141, %rax
  cmovsl %eax, %ebx

  // CMOVSr64r64  
  movq $0x4141414141414141, %rax
  cmovsq %rax, %rbx

  // CMOVSr16m16  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovsw -8(%rsp), %bx

  // CMOVSr32m32  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovsl  -8(%rsp), %ebx

  // CMOVSr64m64  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovsq  -8(%rsp), %rbx

  nop
