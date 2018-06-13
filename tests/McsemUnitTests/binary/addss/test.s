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
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

  // ADDSSv128v128_04  
  mov DWORD PTR [rsp - 16], $0
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $TEST_END
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $128
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $4
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $TEST_END
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $#if APPLE_SAFE_TESTS
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $128
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $16
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $0
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $TEST_END
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $128
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $16
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $4
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $TEST_END
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $#endif  // APPLE_SAFE_TESTS
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $#if HAS_FEATURE_AVX
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $128
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $0
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $TEST_END
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $128
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $1
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $TEST_END
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $#if APPLE_SAFE_TESTS
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $64
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $0x3f800000
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $0x40490fdb
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
  
  mov DWORD PTR [rsp - 16], $0x47c34f80
  vaddss xmm1, xmm4, DWORD PTR [rsp - 16]
#endif  // APPLE_SAFE_TESTS
#endif  // HAS_FEATURE_AVX

  nop
