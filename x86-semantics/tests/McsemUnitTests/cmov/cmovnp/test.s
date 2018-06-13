.section .text
.globl _start

_start:
  // CMOVNPr16r16  
  movq $0x4141414141414141, %rax
  cmovnpw %ax, %bx

  // CMOVNPr32r32  
  movq $0x4141414141414141, %rax
  cmovnpl %eax, %ebx

  // CMOVNPr64r64  
  movq $0x4141414141414141, %rax
  cmovnpq %rax, %rbx

  // CMOVNPr16m16  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnpw -8(%rsp), %bx

  // CMOVNPr32m32  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnpl  -8(%rsp), %ebx

  // CMOVNPr64m64  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnpq  -8(%rsp), %rbx

  nop
