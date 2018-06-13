.section .text
.globl _start

_start:
  // CMOVLEr16r16  
  movq $0x4141414141414141, %rax
  cmovlew %ax, %bx

  // CMOVLEr32r32  
  movq $0x4141414141414141, %rax
  cmovlel %eax, %ebx

  // CMOVLEr64r64  
  movq $0x4141414141414141, %rax
  cmovleq %rax, %rbx

  // CMOVLEr16m16  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovlew -8(%rsp), %bx

  // CMOVLEr32m32  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovlel  -8(%rsp), %ebx

  // CMOVLEr64m64  
  movq $0x4141414141414141, %rax
  pushq %rax
  cmovleq  -8(%rsp), %rbx

  nop
