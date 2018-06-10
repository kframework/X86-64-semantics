.section .text
.globl _start

_start:
  // XCHG  
  movq  $0,  %rax
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
  
  movq  $1,  %rax
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
  
  movq  $0x41,  %rax
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
  
  movq  $0x51,  %rax
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
  
  movq  $0x80,  %rax
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
  
  movq  $0x55,  %rax
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
  
  movq  $0xAA,  %rax
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
  
  movq  $0x0F,  %rax
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
  
  movq  $0xF7,  %rax
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
  
  movq  $0xFE,  %rax
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
  
  movq  $0xEF,  %rax
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
  
  movq  $0x7F,  %rax
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
  
  movq  $0xFF,  %rax
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
  
  movq  $0x4141,  %rax
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
  
  movq  $0x5151,  %rax
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
  
  movq  $0x8000,  %rax
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
  
  movq  $0x5500,  %rax
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
  
  movq  $0x5555,  %rax
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
  
  movq  $0xAA00,  %rax
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
  
  movq  $0xAAAA,  %rax
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
  
  movq  $0x0F0F,  %rax
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
  
  movq  $0xF7F7,  %rax
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
  
  movq  $0xFEFE,  %rax
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
  
  movq  $0xEFEF,  %rax
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
  
  movq  $0x7FFF,  %rax
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
  
  movq  $0xFFFF,  %rax
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


  nop
