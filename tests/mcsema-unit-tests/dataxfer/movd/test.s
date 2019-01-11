.section .text
.globl _start

_start:
  // MOVDv128r32  
  movq  $0,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movd %eax, %xmm4
  movd %xmm4, %eax
  
  movd %xmm0, -16(%rsp)
  movd -16(%rsp), %xmm4
  
  vmovd %eax, %xmm4
  vmovd %xmm4, %eax
  
  vmovd %xmm0, -16(%rsp)
  vmovd -16(%rsp), %xmm4
  
  movq  $1,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movd %eax, %xmm4
  movd %xmm4, %eax
  
  movd %xmm0, -16(%rsp)
  movd -16(%rsp), %xmm4
  
  vmovd %eax, %xmm4
  vmovd %xmm4, %eax
  
  vmovd %xmm0, -16(%rsp)
  vmovd -16(%rsp), %xmm4
  
  movq  $0xFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movd %eax, %xmm4
  movd %xmm4, %eax
  
  movd %xmm0, -16(%rsp)
  movd -16(%rsp), %xmm4
  
  vmovd %eax, %xmm4
  vmovd %xmm4, %eax
  
  vmovd %xmm0, -16(%rsp)
  vmovd -16(%rsp), %xmm4
  
  movq  $0xFFFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movd %eax, %xmm4
  movd %xmm4, %eax
  
  movd %xmm0, -16(%rsp)
  movd -16(%rsp), %xmm4
  
  vmovd %eax, %xmm4
  vmovd %xmm4, %eax
  
  vmovd %xmm0, -16(%rsp)
  vmovd -16(%rsp), %xmm4
  
  movq  $0xFFFFFFFF,  %rax
  movq  %rax, %xmm0
  movddup %xmm0, %xmm1
  vbroadcastsd %xmm1, %ymm4
  
  movd %eax, %xmm4
  movd %xmm4, %eax
  
  movd %xmm0, -16(%rsp)
  movd -16(%rsp), %xmm4
  
  vmovd %eax, %xmm4
  vmovd %xmm4, %eax
  
  vmovd %xmm0, -16(%rsp)
  vmovd -16(%rsp), %xmm4

  nop
