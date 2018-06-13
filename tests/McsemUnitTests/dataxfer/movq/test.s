.section .text
.globl _start

_start:
/* NOTE:
 * YMM0 - YMM3 are filled will 0xFF.
 * YMM4 and on are filled with 0x0. */

  // MOVQv128r64_64  
  movq $0, %rax
  movq %rax, %xmm0
  movq %xmm0, -16(%rsp)
  movq -16(%rsp), %xmm0
  
  vmovq %rax, %xmm1
  vmovq %xmm1, %rbx
  vmovq %xmm1, %xmm0
  vmovq %xmm0, -16(%rsp)
  vmovq -16(%rsp), %xmm0
  
  movq $1, %rax
  movq %rax, %xmm0
  movq %xmm0, -16(%rsp)
  movq -16(%rsp), %xmm0
  
  vmovq %rax, %xmm1
  vmovq %xmm1, %rbx
  vmovq %xmm1, %xmm0
  vmovq %xmm0, -16(%rsp)
  vmovq -16(%rsp), %xmm0
  
  movq $0xFF, %rax
  movq %rax, %xmm0
  movq %xmm0, -16(%rsp)
  movq -16(%rsp), %xmm0
  
  vmovq %rax, %xmm1
  vmovq %xmm1, %rbx
  vmovq %xmm1, %xmm0
  vmovq %xmm0, -16(%rsp)
  vmovq -16(%rsp), %xmm0
  
  movq $0xFFFF, %rax
  movq %rax, %xmm0
  movq %xmm0, -16(%rsp)
  movq -16(%rsp), %xmm0
  
  vmovq %rax, %xmm1
  vmovq %xmm1, %rbx
  vmovq %xmm1, %xmm0
  vmovq %xmm0, -16(%rsp)
  vmovq -16(%rsp), %xmm0
  
  movq $0xFFFFFFFF, %rax
  movq %rax, %xmm0
  movq %xmm0, -16(%rsp)
  movq -16(%rsp), %xmm0
  
  vmovq %rax, %xmm1
  vmovq %xmm1, %rbx
  vmovq %xmm1, %xmm0
  vmovq %xmm0, -16(%rsp)
  vmovq -16(%rsp), %xmm0
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq %rax, %xmm0
  movq %xmm0, -16(%rsp)
  movq -16(%rsp), %xmm0
  
  vmovq %rax, %xmm1
  vmovq %xmm1, %rbx
  vmovq %xmm1, %xmm0
  vmovq %xmm0, -16(%rsp)
  vmovq -16(%rsp), %xmm0

  nop
