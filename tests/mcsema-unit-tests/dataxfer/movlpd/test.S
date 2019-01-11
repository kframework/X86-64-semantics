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

TEST_BEGIN_64(MOVLPDv128m64, 1)
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
0xFEFEFEFEFEFEFEFE, 
0x7FFFFFFFFFFFFFFF,
0xFFFFFFFFFFFFFFFF)

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

    movlpd %xmm0,   (%rsp)
    movlpd %xmm1, 8(%rsp)
    movlpd %xmm2,16(%rsp)
    movlpd %xmm3,24(%rsp)
    movlpd %xmm4,32(%rsp)
    movlpd %xmm5,40(%rsp)
    movlpd %xmm6,48(%rsp)
    movlpd %xmm7,56(%rsp)

    movlpd    (%rsp), %xmm0
    movlpd  8(%rsp), %xmm1
    movlpd 16(%rsp), %xmm2
    movlpd 24(%rsp), %xmm3
    movlpd 32(%rsp), %xmm4
    movlpd 40(%rsp), %xmm5
    movlpd 48(%rsp), %xmm6
    movlpd 56(%rsp), %xmm7

    vmovlpd %xmm0,   (%rsp)
    vmovlpd %xmm1, 8(%rsp)
    vmovlpd %xmm2,16(%rsp)
    vmovlpd %xmm3,24(%rsp)
    vmovlpd %xmm4,32(%rsp)
    vmovlpd %xmm5,40(%rsp)
    vmovlpd %xmm6,48(%rsp)
    vmovlpd %xmm7,56(%rsp)


    vmovlpd    (%rsp), %xmm0, %xmm7
    vmovlpd  8(%rsp), %xmm1, %xmm6
    vmovlpd 16(%rsp), %xmm2, %xmm5
    vmovlpd 24(%rsp), %xmm3, %xmm4
    vmovlpd 32(%rsp), %xmm4, %xmm3
    vmovlpd 40(%rsp), %xmm5, %xmm2
    vmovlpd 48(%rsp), %xmm6, %xmm1
    vmovlpd 56(%rsp), %xmm7, %xmm0

    leaq 64(%rsp), %rsp
TEST_END_64
