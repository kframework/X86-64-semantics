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

  vfmaddsub132pd   %xmm4, %xmm5, %xmm0 
  vfmaddsub132ps   %xmm4, %xmm6, %xmm0 
  vfmaddsub213pd   %xmm4, %xmm7, %xmm0 
  vfmaddsub213ps   %xmm4, %xmm8, %xmm0 
  vfmaddsub231pd   %ymm4, %ymm9, %ymm0 
  vfmaddsub231ps   %ymm4, %ymm9, %ymm0 

  vfmaddsub132pd   %xmm4, %xmm5, %xmm0 
  vfmaddsub132ps   %xmm4, %xmm6, %xmm0 
  vfmaddsub213pd   %xmm4, %xmm7, %xmm0 
  vfmaddsub213ps   %xmm4, %xmm8, %xmm0 
  vfmaddsub231pd   %ymm4, %ymm9, %ymm0 
  vfmaddsub231ps   %ymm4, %ymm9, %ymm0 

  vfmsubadd132pd   %xmm4, %xmm5, %xmm0 
  vfmsubadd132ps   %xmm4, %xmm6, %xmm0 
  vfmsubadd213pd   %xmm4, %xmm7, %xmm0 
  vfmsubadd213ps   %xmm4, %xmm8, %xmm0 
  vfmsubadd231pd   %ymm4, %ymm9, %ymm0 
  vfmsubadd231ps   %ymm4, %ymm9, %ymm0 

  vfmsubadd132pd   %xmm4, %xmm5, %xmm0 
  vfmsubadd132ps   %xmm4, %xmm6, %xmm0 
  vfmsubadd213pd   %xmm4, %xmm7, %xmm0 
  vfmsubadd213ps   %xmm4, %xmm8, %xmm0 
  vfmsubadd231pd   %ymm4, %ymm9, %ymm0 
  vfmsubadd231ps   %ymm4, %ymm9, %ymm0 
TEST_END

