.section .text
.globl _start

_start:
  // DIVSSv128m128_04  
  movq  $0,  %rax
  movq  %rax, %xmm4
  movdqu %xmm4, -16(%rsp)
  divss -16(%rsp), %xmm0
  
  movq  $0x3f800000,  %rax
  movq  %rax, %xmm4
  movdqu %xmm4, -16(%rsp)
  divss -16(%rsp), %xmm0
  
  movq  $0x40490fdb,  %rax
  movq  %rax, %xmm4
  movdqu %xmm4, -16(%rsp)
  divss -16(%rsp), %xmm0
  
  movq  $0x47c34f80,  %rax
  movq  %rax, %xmm4
  movdqu %xmm4, -16(%rsp)
  divss -16(%rsp), %xmm0
  
  movq  $0x3ff0000000000000,  %rax
  movq  %rax, %xmm4
  movdqu %xmm4, -16(%rsp)
  divss -16(%rsp), %xmm0
  
  movq  $0x400921fb54442d18,  %rax
  movq  %rax, %xmm4
  movdqu %xmm4, -16(%rsp)
  divss -16(%rsp), %xmm0
  
  movq  $0x40f869f000000000,  %rax
  movq  %rax, %xmm4
  movdqu %xmm4, -16(%rsp)
  divss -16(%rsp), %xmm0
  
  movq  $0x4141414141414141,  %rax
  movq  %rax, %xmm4
  movdqu %xmm4, -16(%rsp)
  divss -16(%rsp), %xmm0


  // VDIVSSv128m128_45  
  movq  $0,  %rax
  movq  %rax, %xmm5
  movdqu %xmm4, -16(%rsp)
  vdivss -16(%rsp), %xmm4, %xmm1
  
  movq  $0x3f800000,  %rax
  movq  %rax, %xmm5
  movdqu %xmm4, -16(%rsp)
  vdivss -16(%rsp), %xmm4, %xmm1
  
  movq  $0x40490fdb,  %rax
  movq  %rax, %xmm5
  movdqu %xmm4, -16(%rsp)
  vdivss -16(%rsp), %xmm4, %xmm1
  
  movq  $0x47c34f80,  %rax
  movq  %rax, %xmm5
  movdqu %xmm4, -16(%rsp)
  vdivss -16(%rsp), %xmm4, %xmm1
  
  movq  $0x3ff0000000000000,  %rax
  movq  %rax, %xmm5
  movdqu %xmm4, -16(%rsp)
  vdivss -16(%rsp), %xmm4, %xmm1
  
  movq  $0x400921fb54442d18,  %rax
  movq  %rax, %xmm5
  movdqu %xmm4, -16(%rsp)
  vdivss -16(%rsp), %xmm4, %xmm1
  
  movq  $0x40f869f000000000,  %rax
  movq  %rax, %xmm5
  movdqu %xmm4, -16(%rsp)
  vdivss -16(%rsp), %xmm4, %xmm1
  
  movq  $0x4141414141414141,  %rax
  movq  %rax, %xmm5
  movdqu %xmm4, -16(%rsp)
  vdivss -16(%rsp), %xmm4, %xmm1

  // VDIVSSv256m256_45  
  movq  $0,  %rax
  movq  %rax, %xmm5
  movdqu %xmm4, -32(%rsp)
  vdivss -32(%rsp), %ymm4, %ymm1
  
  movq  $0x3f800000,  %rax
  movq  %rax, %xmm5
  movdqu %xmm4, -32(%rsp)
  vdivss -32(%rsp), %ymm4, %ymm1
  
  movq  $0x40490fdb,  %rax
  movq  %rax, %xmm5
  movdqu %xmm4, -32(%rsp)
  vdivss -32(%rsp), %ymm4, %ymm1
  
  movq  $0x47c34f80,  %rax
  movq  %rax, %xmm5
  movdqu %xmm4, -32(%rsp)
  vdivss -32(%rsp), %ymm4, %ymm1
  
  movq  $0x3ff0000000000000,  %rax
  movq  %rax, %xmm5
  movdqu %xmm4, -32(%rsp)
  vdivss -32(%rsp), %ymm4, %ymm1
  
  movq  $0x400921fb54442d18,  %rax
  movq  %rax, %xmm5
  movdqu %xmm4, -32(%rsp)
  vdivss -32(%rsp), %ymm4, %ymm1
  
  movq  $0x40f869f000000000,  %rax
  movq  %rax, %xmm5
  movdqu %xmm4, -32(%rsp)
  vdivss -32(%rsp), %ymm4, %ymm1
  
  movq  $0x4141414141414141,  %rax
  movq  %rax, %xmm5
  movdqu %xmm4, -32(%rsp)
  vdivss -32(%rsp), %ymm4, %ymm1

  nop
