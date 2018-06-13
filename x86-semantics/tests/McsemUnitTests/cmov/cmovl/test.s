.section .text
.globl _start

_start:
  // CMOVLr16r16  
  movq $0x4141414141414141, %rax
  cmovlw %ax, %bx

  // CMOVLr32r32  
  movq $0x4141414141414141, %rax
  cmovll %eax, %ebx

  // CMOVLr64r64  
  movq $0x4141414141414141, %rax
  cmovlq %rax, %rbx

  // CMOVLr16m16  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovlw -8(%rsp), %bx

  // CMOVLr32m32  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovll  -8(%rsp), %ebx

  // CMOVLr64m64  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovlq  -8(%rsp), %rbx

  nop
