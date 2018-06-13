.section .text
.globl _start

_start:
  // CMOVNLr16r16  
  movq $0x4141414141414141, %rax
  cmovnlw %ax, %bx

  // CMOVNLr32r32  
  movq $0x4141414141414141, %rax
  cmovnll %eax, %ebx

  // CMOVNLr64r64  
  movq $0x4141414141414141, %rax
  cmovnlq %rax, %rbx

  // CMOVNLr16m16  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnlw -8(%rsp), %bx

  // CMOVNLr32m32  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnll  -8(%rsp), %ebx

  // CMOVNLr64m64  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnlq  -8(%rsp), %rbx

  nop
