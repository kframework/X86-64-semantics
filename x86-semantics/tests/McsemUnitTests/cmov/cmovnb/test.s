.section .text
.globl _start

_start:
  // CMOVNBr16r16  
  movq $0x4141414141414141, %rax
  cmovnbw %ax, %bx

  // CMOVNBr32r32  
  movq $0x4141414141414141, %rax
  cmovnbl %eax, %ebx

  // CMOVNBr64r64  
  movq $0x4141414141414141, %rax
  cmovnbq %rax, %rbx

  // CMOVNBr16m16  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnbw -8(%rsp), %bx

  // CMOVNBr32m32  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnbl  -8(%rsp), %ebx

  // CMOVNBr64m64  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnbq  -8(%rsp), %rbx

  nop
