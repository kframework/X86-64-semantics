.section .text
.globl _start

_start:
  // CMOVPr16r16  
  movq $0x4141414141414141, %rax
  cmovpw %ax, %bx

  // CMOVPr32r32  
  movq $0x4141414141414141, %rax
  cmovpl %eax, %ebx

  // CMOVPr64r64  
  movq $0x4141414141414141, %rax
  cmovpq %rax, %rbx

  // CMOVPr16m16  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovpw -8(%rsp), %bx

  // CMOVPr32m32  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovpl  -8(%rsp), %ebx

  // CMOVPr64m64  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovpq  -8(%rsp), %rbx

  nop
