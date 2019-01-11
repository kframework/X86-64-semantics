.section .text
.globl _start

_start:
  // CMOVNBEr16r16  
  movq $0x4141414141414141, %rax
  cmovnbew %ax, %bx

  // CMOVNBEr32r32  
  movq $0x4141414141414141, %rax
  cmovnbel %eax, %ebx

  // CMOVNBEr64r64  
  movq $0x4141414141414141, %rax
  cmovnbeq %rax, %rbx

  // CMOVNBEr16m16  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnbew -8(%rsp), %bx

  // CMOVNBEr32m32  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnbel  -8(%rsp), %ebx

  // CMOVNBEr64m64  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnbeq  -8(%rsp), %rbx

  nop
