TEST_BEGIN(XCHG, 1)
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
0x7FFFFFFF, 
0xFFFFFFFF, 
0x4141414141414141, 
0x5115151515115151, 
0x8000000000000000, 
0x5500000000000000, 
0x5555555555555555, 
0xAA00000000000000, 
0xAAAAAAAAAAAAAAAA, 
0x0F0F0F0F0F0F0F0F, 
0xF7F7F7F7F7F7F7F7, 
0xEFEFEFEFEFEFEFEF, 
0xFEFEFEFEFEFEFEFE)
    
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

  maxpd  %xmm5, %xmm4 
  maxps  %xmm6, %xmm4 
  maxsd  %xmm7, %xmm4 
  maxss  %xmm8, %xmm4 
  vmaxsd  %xmm4, %xmm7, %xmm0 
  vmaxss  %xmm4, %xmm8, %xmm0 

  vmaxpd  %xmm4, %xmm5, %xmm0 
  vmaxps  %xmm4, %xmm6, %xmm0 

  vmaxpd  %ymm5, %ymm4, %ymm0 
  vmaxps  %ymm6, %ymm4, %ymm0 

  minpd  %xmm5, %xmm4 
  minps  %xmm6, %xmm4 
  minsd  %xmm7, %xmm4 
  minss  %xmm8, %xmm4 
  vminsd  %xmm4, %xmm7, %xmm0 
  vminss  %xmm4, %xmm8, %xmm0 

  vminpd  %xmm4, %xmm5, %xmm0 
  vminps  %xmm4, %xmm6, %xmm0 

  vminpd  %ymm5, %ymm4, %ymm0 
  vminps  %ymm6, %ymm4, %ymm0 

TEST_END

