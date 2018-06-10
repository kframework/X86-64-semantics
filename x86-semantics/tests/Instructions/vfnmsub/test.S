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
0xFFFF)
    
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

  vfnmsub132pd   %xmm4, %xmm5, %xmm0 
  vfnmsub132ps   %xmm4, %xmm6, %xmm0 
  vfnmsub132sd   %xmm4, %xmm7, %xmm0 
  vfnmsub132ss   %xmm4, %xmm8, %xmm0 
  vfnmsub132pd   %ymm4, %ymm9, %ymm0 
  vfnmsub132ps   %ymm4, %ymm9, %ymm0 

  vfnmsub213pd   %xmm4, %xmm5, %xmm0 
  vfnmsub213ps   %xmm4, %xmm6, %xmm0 
  vfnmsub213sd   %xmm4, %xmm7, %xmm0 
  vfnmsub213ss   %xmm4, %xmm8, %xmm0 
  vfnmsub213pd   %ymm4, %ymm9, %ymm0 
  vfnmsub213ps   %ymm4, %ymm9, %ymm0 

  vfnmsub231pd   %xmm4, %xmm5, %xmm0 
  vfnmsub231ps   %xmm4, %xmm6, %xmm0 
  vfnmsub231sd   %xmm4, %xmm7, %xmm0 
  vfnmsub231ss   %xmm4, %xmm8, %xmm0 
  vfnmsub231pd   %ymm4, %ymm9, %ymm0 
  vfnmsub231ps   %ymm4, %ymm9, %ymm0 
TEST_END

