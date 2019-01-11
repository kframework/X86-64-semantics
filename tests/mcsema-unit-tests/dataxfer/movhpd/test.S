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

TEST_BEGIN_64(MOVHPDv128m64, 1)
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

    leaq -64(%rsp), %rsp

    movhpd %xmm0,   (%rsp)
    movhpd %xmm1, 8(%rsp)
    movhpd %xmm2,16(%rsp)
    movhpd %xmm3,24(%rsp)
    movhpd %xmm4,32(%rsp)
    movhpd %xmm5,40(%rsp)
    movhpd %xmm6,48(%rsp)
    movhpd %xmm7,56(%rsp)

    movhpd    (%rsp), %xmm0
    movhpd  8(%rsp), %xmm1
    movhpd 16(%rsp), %xmm2
    movhpd 24(%rsp), %xmm3
    movhpd 32(%rsp), %xmm4
    movhpd 40(%rsp), %xmm5
    movhpd 48(%rsp), %xmm6
    movhpd 56(%rsp), %xmm7

    vmovhpd %xmm0,   (%rsp)
    vmovhpd %xmm1, 8(%rsp)
    vmovhpd %xmm2,16(%rsp)
    vmovhpd %xmm3,24(%rsp)
    vmovhpd %xmm4,32(%rsp)
    vmovhpd %xmm5,40(%rsp)
    vmovhpd %xmm6,48(%rsp)
    vmovhpd %xmm7,56(%rsp)


    vmovhpd    (%rsp), %xmm0, %xmm7
    vmovhpd  8(%rsp), %xmm1, %xmm6
    vmovhpd 16(%rsp), %xmm2, %xmm5
    vmovhpd 24(%rsp), %xmm3, %xmm4
    vmovhpd 32(%rsp), %xmm4, %xmm3
    vmovhpd 40(%rsp), %xmm5, %xmm2
    vmovhpd 48(%rsp), %xmm6, %xmm1
    vmovhpd 56(%rsp), %xmm7, %xmm0

    leaq 64(%rsp), %rsp
TEST_END_64
