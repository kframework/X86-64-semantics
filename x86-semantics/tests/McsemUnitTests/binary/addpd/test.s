.section .text
.globl _start

_start:
  // ADDPDv128m128_04  
  movq  $0,  %rax
  movq  %rax, %xmm4
  addpd -16(%rsp), %xmm0
  
  movq  $0x4141414141414141,  %rax
  movq  %rax, %xmm4
  addpd -16(%rsp), %xmm0


  // VADDPDv128m128_45  
  movq  $0,  %rax
  movq  %rax, %xmm5
  vaddpd -16(%rsp), %xmm4, %xmm1
  
  movq  $0x4141414141414141,  %rax
  movq  %rax, %xmm5
  vaddpd -16(%rsp), %xmm4, %xmm1

  // VADDPDv256m256_45  
  movq  $0,  %rax
  movq  %rax, %xmm5
  vaddpd -32(%rsp), %ymm4, %ymm1
  
  movq  $0x4141414141414141,  %rax
  movq  %rax, %xmm5
  vaddpd -32(%rsp), %ymm4, %ymm1

  nop
