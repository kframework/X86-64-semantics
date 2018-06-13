.section .text
.globl _start

_start:
  // ADDPSv128m128_04  
  movq  $0,  %rax
  movq  %rax, %xmm4
  addps -16(%rsp), %xmm0
  
  movq  $0x4141414141414141,  %rax
  movq  %rax, %xmm4
  addps -16(%rsp), %xmm0


  // VADDPSv128m128_45  
  movq  $0,  %rax
  movq  %rax, %xmm5
  vaddps -16(%rsp), %xmm4, %xmm1
  
  movq  $0x4141414141414141,  %rax
  movq  %rax, %xmm5
  vaddps -16(%rsp), %xmm4, %xmm1

  // VADDPSv256m256_45  
  movq  $0,  %rax
  movq  %rax, %xmm5
  vaddps -32(%rsp), %ymm4, %ymm1
  
  movq  $0x4141414141414141,  %rax
  movq  %rax, %xmm5
  vaddps -32(%rsp), %ymm4, %ymm1

  nop
