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

  // MOVHPDv128m64  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
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
  
  
  movhpd    (%rsp), %xmm0
  movhpd  8(%rsp), %xmm1
  movhpd 16(%rsp), %xmm2
  movhpd 24(%rsp), %xmm3
  movhpd 32(%rsp), %xmm4
  movhpd 40(%rsp), %xmm5
  movhpd 48(%rsp), %xmm6
  movhpd 56(%rsp), %xmm7
  
  
  
  vmovhpd    (%rsp), %xmm0, %xmm7
  vmovhpd  8(%rsp), %xmm1, %xmm6
  vmovhpd 16(%rsp), %xmm2, %xmm5
  vmovhpd 24(%rsp), %xmm3, %xmm4
  vmovhpd 32(%rsp), %xmm4, %xmm3
  vmovhpd 40(%rsp), %xmm5, %xmm2
  vmovhpd 48(%rsp), %xmm6, %xmm1
  vmovhpd 56(%rsp), %xmm7, %xmm0
  
  leaq 64(%rsp), %rsp

  nop
