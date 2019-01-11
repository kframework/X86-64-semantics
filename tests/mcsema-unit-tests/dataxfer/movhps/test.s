.section .text
.globl _start

_start:
/*
 * Copyright (c) 2017 Trail of Bits, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

  // MOVHPSv128m64  
  movq  $0,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $1,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x41,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x51,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x80,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x55,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xAA,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x0F,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xF7,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xFE,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xEF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x7F,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xFF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x4141,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x5151,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x8000,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x5500,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x5555,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xAA00,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xAAAA,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x0F0F,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xF7F7,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xFEFE,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xEFEF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x7FFF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xFFFF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x41414141,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x51515151,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x55000000,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x55555555,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xAAFFFFFF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xAAAAAAAA,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x0F0F0F0F,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xF7F7F7F7,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xFEFEFEFE,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xEFEFEFEF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x7FFFFFFF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xFFFFFFFF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x4141414141414141,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x5115151515115151,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x8000000000000000,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x5500000000000000,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x5555555555555555,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xAA00000000000000,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xAAAAAAAAAAAAAAAA,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x0F0F0F0F0F0F0F0F,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xF7F7F7F7F7F7F7F7,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xEFEFEFEFEFEFEFEF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xFEFEFEFEFEFEFEFE,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0x7FFFFFFFFFFFFFFF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp
  
  movq  $0xFFFFFFFFFFFFFFFF,  %rax
  movq  %rax, %xmm0
  
  movddup %xmm0, %xmm1
  movsldup %xmm0, %xmm2
  movshdup %xmm0, %xmm3
  vbroadcastsd %xmm1, %ymm4
  vbroadcastsd %xmm2, %ymm5
  vbroadcastsd %xmm3, %ymm6
  vbroadcastss %xmm1, %ymm7
  
  leaq -64(%rsp), %rsp
  
  
  movhps    (%rsp), %xmm0
  movhps  8(%rsp), %xmm1
  movhps 16(%rsp), %xmm2
  movhps 24(%rsp), %xmm3
  movhps 32(%rsp), %xmm4
  movhps 40(%rsp), %xmm5
  movhps 48(%rsp), %xmm6
  movhps 56(%rsp), %xmm7
  
  
  
  vmovhps    (%rsp), %xmm0, %xmm7
  vmovhps  8(%rsp), %xmm1, %xmm6
  vmovhps 16(%rsp), %xmm2, %xmm5
  vmovhps 24(%rsp), %xmm3, %xmm4
  vmovhps 32(%rsp), %xmm4, %xmm3
  vmovhps 40(%rsp), %xmm5, %xmm2
  vmovhps 48(%rsp), %xmm6, %xmm1
  vmovhps 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp

  nop
