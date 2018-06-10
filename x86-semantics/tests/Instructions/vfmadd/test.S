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
0xAAAAAAAA, 
0x0F0F0F0F, 
0xF7F7F7F7, 
0xFEFEFEFE, 
0xEFEFEFEF)
    
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

  vfmadd132pd   %xmm4, %xmm5, %xmm0 
  vfmadd132ps   %xmm4, %xmm6, %xmm0 
  vfmadd132sd   %xmm4, %xmm7, %xmm0 
  vfmadd132ss   %xmm4, %xmm8, %xmm0 
  vfmadd132pd   %ymm4, %ymm9, %ymm0 
  vfmadd132ps   %ymm4, %ymm9, %ymm0 

  vfmadd213pd   %xmm4, %xmm5, %xmm0 
  vfmadd213ps   %xmm4, %xmm6, %xmm0 
  vfmadd213sd   %xmm4, %xmm7, %xmm0 
  vfmadd213ss   %xmm4, %xmm8, %xmm0 
  vfmadd213pd   %ymm4, %ymm9, %ymm0 
  vfmadd213ps   %ymm4, %ymm9, %ymm0 

  vfmadd231pd   %xmm4, %xmm5, %xmm0 
  vfmadd231ps   %xmm4, %xmm6, %xmm0 
  vfmadd231sd   %xmm4, %xmm7, %xmm0 
  vfmadd231ss   %xmm4, %xmm8, %xmm0 
  vfmadd231pd   %ymm4, %ymm9, %ymm0 
  vfmadd231ps   %ymm4, %ymm9, %ymm0 
  vzeroall
TEST_END

