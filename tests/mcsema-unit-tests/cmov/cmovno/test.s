.section .text
.globl _start

_start:
  // CMOVNOr16r16  
  movq $0x4141414141414141, %rax
  cmovnow %ax, %bx

  // CMOVNOr32r32  
  movq $0x4141414141414141, %rax
  cmovnol %eax, %ebx

  // CMOVNOr64r64  
  movq $0x4141414141414141, %rax
  cmovnoq %rax, %rbx

  // CMOVNOr16m16  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnow -8(%rsp), %bx

  // CMOVNOr32m32  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnol  -8(%rsp), %ebx

  // CMOVNOr64m64  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnoq  -8(%rsp), %rbx

  nop
