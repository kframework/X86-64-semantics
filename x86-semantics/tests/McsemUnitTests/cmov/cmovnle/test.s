.section .text
.globl _start

_start:
  // CMOVNLEr16r16  
  movq $0x4141414141414141, %rax
  cmovnlew %ax, %bx

  // CMOVNLEr32r32  
  movq $0x4141414141414141, %rax
  cmovnlel %eax, %ebx

  // CMOVNLEr64r64  
  movq $0x4141414141414141, %rax
  cmovnleq %rax, %rbx

  // CMOVNLEr16m16  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnlew -8(%rsp), %bx

  // CMOVNLEr32m32  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnlel  -8(%rsp), %ebx

  // CMOVNLEr64m64  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovnleq  -8(%rsp), %rbx

  nop
