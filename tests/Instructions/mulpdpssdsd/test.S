TEST_BEGIN(COMISS, 1)
TEST_INPUTS(
0,    
1,    
0x41, 
0x51, 
0x80, 
0x55, 
0xAA, 
0x0F, 
0xF7, 
0xFE, 
0xEF, 
0x7F, 
0xFF, 
0x4141, 
0x5151, 
0x8000, 
0x5500, 
0x5555, 
0xAA00, 
0xAAAA, 
0x0F0F, 
0xF7F7, 
0xFEFE, 
0xEFEF, 
0x7FFF, 
0xFFFF, 
0x41414141, 
0x51515151, 
0x55000000, 
0x55555555, 
0xAAFFFFFF, 
0xAAAAAAAA, 
0x0F0F0F0F, 
0xF7F7F7F7, 
0xFEFEFEFE, 
0xEFEFEFEF, 
0x4141414141414141, 
0x5115151515115151)

    
  movq  ARG1_64,  %rax
  movq  %rax, %xmm0  

  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3

  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6

  vbroadcastss %xmm1, %ymm7
  vbroadcastss %xmm2, %ymm8
  vbroadcastss %xmm3, %ymm9

  mulsd %xmm4, %xmm5
  mulsd %xmm6, %xmm7
  mulsd %xmm8, %xmm9

  mulss %xmm5, %xmm4
  mulss %xmm7, %xmm6
  mulss %xmm9, %xmm8

  mulpd %xmm4, %xmm5
  mulpd %xmm6, %xmm7
  mulpd %xmm8, %xmm9

  mulps %xmm5, %xmm4
  mulps %xmm7, %xmm6
  mulps %xmm9, %xmm8
TEST_END

