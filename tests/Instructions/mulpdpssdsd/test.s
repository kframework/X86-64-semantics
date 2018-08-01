.section .text
.globl _start

_start:
  // COMISS  
  
  movq  $0x3f800000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulps %xmm1, %xmm0
  
  
  movq  $0x3f800000,  %rax
  movq  $0x40000000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulps %xmm1, %xmm0
  
  
  movq  $0x40000000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulps %xmm1, %xmm0
  
  
  movq  $0x3f800000,  %rax
  movq  $0x7f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulps %xmm1, %xmm0
  
  
  movq  $0x7f800000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulps %xmm1, %xmm0
  
  
  movq  $0x3f800000,  %rax
  movq  $0xff800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulps %xmm1, %xmm0
  
  
  movq  $0xff800000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulps %xmm1, %xmm0
  
  
  movq  $0x7f800000,  %rax
  movq  $0x7f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulps %xmm1, %xmm0
  
  
  movq  $0xff800000,  %rax
  movq  $0xff800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulps %xmm1, %xmm0
  
  
  movq  $0x3f800000,  %rax
  movq  $0x7fc00000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulps %xmm1, %xmm0
  
  
  movq  $0x7fc00000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulps %xmm1, %xmm0
  
  
  movq  $0x7fc00000,  %rax
  movq  $0x7fc00000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulps %xmm1, %xmm0
  
  
  movq  $0x7f800000,  %rax
  movq  $0x7fc00000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulps %xmm1, %xmm0
  
  
  movq  $0x7fc00000,  %rax
  movq  $0x7f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulps %xmm1, %xmm0

  // COMISD  
  
  movq  $0x3f800000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulpd %xmm1, %xmm0
  
  
  movq  $0x3f800000,  %rax
  movq  $0x40000000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulpd %xmm1, %xmm0
  
  
  movq  $0x40000000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulpd %xmm1, %xmm0
  
  
  movq  $0x3f800000,  %rax
  movq  $0x7f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulpd %xmm1, %xmm0
  
  
  movq  $0x7f800000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulpd %xmm1, %xmm0
  
  
  movq  $0x3f800000,  %rax
  movq  $0xff800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulpd %xmm1, %xmm0
  
  
  movq  $0xff800000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulpd %xmm1, %xmm0
  
  
  movq  $0x7f800000,  %rax
  movq  $0x7f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulpd %xmm1, %xmm0
  
  
  movq  $0xff800000,  %rax
  movq  $0xff800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulpd %xmm1, %xmm0
  
  
  movq  $0x3f800000,  %rax
  movq  $0x7fc00000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulpd %xmm1, %xmm0
  
  
  movq  $0x7fc00000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulpd %xmm1, %xmm0
  
  
  movq  $0x7fc00000,  %rax
  movq  $0x7fc00000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulpd %xmm1, %xmm0
  
  
  movq  $0x7f800000,  %rax
  movq  $0x7fc00000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulpd %xmm1, %xmm0
  
  
  movq  $0x7fc00000,  %rax
  movq  $0x7f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulpd %xmm1, %xmm0

  // UCOMISS  
  
  movq  $0x3f800000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulss %xmm1, %xmm0
  
  
  movq  $0x3f800000,  %rax
  movq  $0x40000000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulss %xmm1, %xmm0
  
  
  movq  $0x40000000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulss %xmm1, %xmm0
  
  
  movq  $0x3f800000,  %rax
  movq  $0x7f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulss %xmm1, %xmm0
  
  
  movq  $0x7f800000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulss %xmm1, %xmm0
  
  
  movq  $0x3f800000,  %rax
  movq  $0xff800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulss %xmm1, %xmm0
  
  
  movq  $0xff800000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulss %xmm1, %xmm0
  
  
  movq  $0x7f800000,  %rax
  movq  $0x7f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulss %xmm1, %xmm0
  
  
  movq  $0xff800000,  %rax
  movq  $0xff800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulss %xmm1, %xmm0
  
  
  movq  $0x3f800000,  %rax
  movq  $0x7fc00000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulss %xmm1, %xmm0
  
  
  movq  $0x7fc00000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulss %xmm1, %xmm0
  
  
  movq  $0x7fc00000,  %rax
  movq  $0x7fc00000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulss %xmm1, %xmm0
  
  
  movq  $0x7f800000,  %rax
  movq  $0x7fc00000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulss %xmm1, %xmm0
  
  
  movq  $0x7fc00000,  %rax
  movq  $0x7f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulss %xmm1, %xmm0

  // UCOMISD  
  
  movq  $0x3f800000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulsd %xmm1, %xmm0
  
  
  movq  $0x3f800000,  %rax
  movq  $0x40000000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulsd %xmm1, %xmm0
  
  
  movq  $0x40000000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulsd %xmm1, %xmm0
  
  
  movq  $0x3f800000,  %rax
  movq  $0x7f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulsd %xmm1, %xmm0
  
  
  movq  $0x7f800000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulsd %xmm1, %xmm0
  
  
  movq  $0x3f800000,  %rax
  movq  $0xff800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulsd %xmm1, %xmm0
  
  
  movq  $0xff800000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulsd %xmm1, %xmm0
  
  
  movq  $0x7f800000,  %rax
  movq  $0x7f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulsd %xmm1, %xmm0
  
  
  movq  $0xff800000,  %rax
  movq  $0xff800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulsd %xmm1, %xmm0
  
  
  movq  $0x3f800000,  %rax
  movq  $0x7fc00000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulsd %xmm1, %xmm0
  
  
  movq  $0x7fc00000,  %rax
  movq  $0x3f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulsd %xmm1, %xmm0
  
  
  movq  $0x7fc00000,  %rax
  movq  $0x7fc00000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulsd %xmm1, %xmm0
  
  
  movq  $0x7f800000,  %rax
  movq  $0x7fc00000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulsd %xmm1, %xmm0
  
  
  movq  $0x7fc00000,  %rax
  movq  $0x7f800000,  %rbx
  movq %rax, %xmm0
  movq %rbx, %xmm1
  
  mulsd %xmm1, %xmm0





  nop
