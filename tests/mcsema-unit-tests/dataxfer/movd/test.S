TEST_BEGIN(MOVDv128r32, 1)
TEST_INPUTS(
    0,
    1,
    0xFF,
    0xFFFF,
    0xFFFFFFFF)

  movq  ARG1_64,  %rax
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
TEST_END
