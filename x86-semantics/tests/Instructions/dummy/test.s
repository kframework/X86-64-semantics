.section .text
.globl _start

_start:
  // XCHG  
  movq  $0xffffffff,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  
  vbroadcastsd %xmm1, %ymm4

  movq $0x0, %rax
  movq %rax, %xmm4
  

  nop
