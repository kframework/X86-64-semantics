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

  // MULSDv128v128_01  
  mov QWORD PTR [rsp - 16], $0
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $TEST_END
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $128
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $4
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $TEST_END
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $#if APPLE_SAFE_TESTS
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $128
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $16
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $0
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $TEST_END
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $128
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $16
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $4
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $TEST_END
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $#endif
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $#if HAS_FEATURE_AVX
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $128
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $0
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $TEST_END
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $128
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $1
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $TEST_END
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $#if APPLE_SAFE_TESTS
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $64
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $0x3ff0000000000000
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $0x400921fb54442d18
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
  
  mov QWORD PTR [rsp - 16], $0x40f869f000000000
  vmulsd xmm1, xmm4, QWORD PTR [rsp - 16]
#endif  // APPLE_SAFE_TESTS

#endif

  nop
