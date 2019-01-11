.section .text
.globl _start

_start:
  // MOVDDUPv128v128  
  movq $0x0000000000000000, %rax
  movq %rax, %xmm0
  movq $0x0000000000000000, %rax
  movq %rax, %xmm1
  movddup %xmm0, %xmm1
  
  movq $0xfedcba9876543210, %rax
  movq %rax, %xmm0
  movq $0x0000000000000000, %rax
  movq %rax, %xmm1
  movddup %xmm0, %xmm1
  
  movq $0xfedcba9876543210, %rax
  movq %rax, %xmm0
  movq $0xffffffffffffffff, %rax
  movq %rax, %xmm1
  movddup %xmm0, %xmm1

  // MOVDDUPv128m64  
  movq $0x0000000000000000, %rax
  pushq %rax
  movq $0x0000000000000000, %rax
  movq %rax, %xmm0
  movddup (%rsp), %xmm0
  
  movq $0x0000000000000000, %rax
  pushq %rax
  movq $0xfedcba9876543210, %rax
  movq %rax, %xmm0
  movddup (%rsp), %xmm0
  
  movq $0xffffffffffffffff, %rax
  pushq %rax
  movq $0xfedcba9876543210, %rax
  movq %rax, %xmm0
  movddup (%rsp), %xmm0

#if HAS_FEATURE_AVX

  // VMOVDDUPv128v128  
  movq $0x0000000000000000, %rax
  movq %rax, %xmm0
  movq $0x0000000000000000, %rax
  movq %rax, %xmm1
  vmovddup %xmm0, %xmm1
  
  movq $0xfedcba9876543210, %rax
  movq %rax, %xmm0
  movq $0x0000000000000000, %rax
  movq %rax, %xmm1
  vmovddup %xmm0, %xmm1
  
  movq $0xfedcba9876543210, %rax
  movq %rax, %xmm0
  movq $0xffffffffffffffff, %rax
  movq %rax, %xmm1
  vmovddup %xmm0, %xmm1

  // VMOVDDUPv128m64  
  movq $0x0000000000000000, %rax
  pushq %rax
  movq $0x0000000000000000, %rax
  movq %rax, %xmm0
  vmovddup (%rsp), %xmm0
  
  movq $0x0000000000000000, %rax
  pushq %rax
  movq $0xfedcba9876543210, %rax
  movq %rax, %xmm0
  vmovddup (%rsp), %xmm0
  
  movq $0xffffffffffffffff, %rax
  pushq %rax
  movq $0xfedcba9876543210, %rax
  movq %rax, %xmm0
  vmovddup (%rsp), %xmm0

  nop
