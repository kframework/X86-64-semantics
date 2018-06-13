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

  // SBBal  
  mov eax, $0
  sbb al, 1
  
  mov eax, $1
  sbb al, 1
  
  mov eax, $0x7F
  sbb al, 1
  
  mov eax, $0xFF
  sbb al, 1

  // SBBax  
  mov eax, $0
  sbb ax, 1
  
  mov eax, $1
  sbb ax, 1
  
  mov eax, $0x7F
  sbb ax, 1
  
  mov eax, $0xFF
  sbb ax, 1
  
  mov eax, $0x7FFF
  sbb ax, 1
  
  mov eax, $0xFFFF
  sbb ax, 1

  // SBBeax  
  mov eax, $0
  sbb eax, 1
  
  mov eax, $1
  sbb eax, 1
  
  mov eax, $0x7F
  sbb eax, 1
  
  mov eax, $0xFF
  sbb eax, 1
  
  mov eax, $0x7FFF
  sbb eax, 1
  
  mov eax, $0xFFFF
  sbb eax, 1
  
  mov eax, $0x7FFFFFFF
  sbb eax, 1
  
  mov eax, $0xFFFFFFFF
  sbb eax, 1

  // SBBr8i8  
  mov ebx, $0
  sbb bl, 1
  
  mov ebx, $1
  sbb bl, 1
  
  mov ebx, $0x7F
  sbb bl, 1
  
  mov ebx, $0xFF
  sbb bl, 1

  // SBBr8u8_64  
  mov r8, $0
  sbb r8b, 0x7F
  
  mov r8, $1
  sbb r8b, 0x7F
  
  mov r8, $0x7F
  sbb r8b, 0x7F
  
  mov r8, $0xFF
  sbb r8b, 0x7F

  // SBBr8s8_64  
  mov r8, $0
  sbb r8b, 0xFF /* Sign-extended to 64-bits */
  
  mov r8, $1
  sbb r8b, 0xFF /* Sign-extended to 64-bits */
  
  mov r8, $0x7F
  sbb r8b, 0xFF /* Sign-extended to 64-bits */
  
  mov r8, $0xFF
  sbb r8b, 0xFF /* Sign-extended to 64-bits */

  // SBBr8r8  
  mov ebx, $0
  mov eax, $0
  sbb bl, al
  
  mov ebx, $1
  mov eax, $0
  sbb bl, al
  
  mov ebx, $0xFF
  mov eax, $1
  sbb bl, al
  
  mov ebx, $0x7F
  mov eax, $1
  sbb bl, al
  
  mov ebx, $0x7F
  mov eax, $0xFF
  sbb bl, al
  
  mov ebx, $0xFF
  mov eax, $0xFF
  sbb bl, al

  // SBBr8r8_64  
  mov r8, $0
  mov r9, $0
  sbb r9b, r8b
  
  mov r8, $1
  mov r9, $0
  sbb r9b, r8b
  
  mov r8, $0xFF
  mov r9, $1
  sbb r9b, r8b
  
  mov r8, $0x7F
  mov r9, $1
  sbb r9b, r8b
  
  mov r8, $0x7F
  mov r9, $0xFF
  sbb r9b, r8b
  
  mov r8, $0xFF
  mov r9, $0xFF
  sbb r9b, r8b

  // SBBr16u8  
  mov ebx, $0
  sbb bx, 0x7F
  
  mov ebx, $1
  sbb bx, 0x7F
  
  mov ebx, $0x7F
  sbb bx, 0x7F
  
  mov ebx, $0xFF
  sbb bx, 0x7F
  
  mov ebx, $0x7FFF
  sbb bx, 0x7F
  
  mov ebx, $0xFFFF
  sbb bx, 0x7F

  // SBBr16s8  
  mov ebx, $0
  sbb bx, 0xFF /* Sign-extended to 16-bits */
  
  mov ebx, $1
  sbb bx, 0xFF /* Sign-extended to 16-bits */
  
  mov ebx, $0x7F
  sbb bx, 0xFF /* Sign-extended to 16-bits */
  
  mov ebx, $0xFF
  sbb bx, 0xFF /* Sign-extended to 16-bits */
  
  mov ebx, $0x7FFF
  sbb bx, 0xFF /* Sign-extended to 16-bits */
  
  mov ebx, $0xFFFF
  sbb bx, 0xFF /* Sign-extended to 16-bits */

  // SBBr16i16  
  mov ebx, $0
  sbb bx, 0xFFFF
  
  mov ebx, $1
  sbb bx, 0xFFFF
  
  mov ebx, $0x7F
  sbb bx, 0xFFFF
  
  mov ebx, $0xFF
  sbb bx, 0xFFFF
  
  mov ebx, $0x7FFF
  sbb bx, 0xFFFF
  
  mov ebx, $0xFFFF
  sbb bx, 0xFFFF

  // SBBr16r16  
  mov ebx, $0
  mov edx, $0
  sbb bx, dx
  
  mov ebx, $1
  mov edx, $0
  sbb bx, dx
  
  mov ebx, $0xFF
  mov edx, $1
  sbb bx, dx
  
  mov ebx, $0x7F
  mov edx, $1
  sbb bx, dx
  
  mov ebx, $0x7F
  mov edx, $0xFF
  sbb bx, dx
  
  mov ebx, $0xFF
  mov edx, $0xFF
  sbb bx, dx
  
  mov ebx, $0x7FFF
  mov edx, $1
  sbb bx, dx
  
  mov ebx, $0x7FFF
  mov edx, $0xFFFF
  sbb bx, dx
  
  mov ebx, $0xFFFF
  mov edx, $0xFFFF
  sbb bx, dx

  // SBBr32u8  
  mov ebx, $0
  sbb ebx, 0x7F
  
  mov ebx, $1
  sbb ebx, 0x7F
  
  mov ebx, $0x7F
  sbb ebx, 0x7F
  
  mov ebx, $0xFF
  sbb ebx, 0x7F
  
  mov ebx, $0x7FFF
  sbb ebx, 0x7F
  
  mov ebx, $0xFFFF
  sbb ebx, 0x7F
  
  mov ebx, $0x7FFFFFFF
  sbb ebx, 0x7F
  
  mov ebx, $0xFFFFFFFF
  sbb ebx, 0x7F

  // SBBr32s8  
  mov ebx, $0
  sbb ebx, 0xFF
  
  mov ebx, $1
  sbb ebx, 0xFF
  
  mov ebx, $0x7F
  sbb ebx, 0xFF
  
  mov ebx, $0xFF
  sbb ebx, 0xFF
  
  mov ebx, $0x7FFF
  sbb ebx, 0xFF
  
  mov ebx, $0xFFFF
  sbb ebx, 0xFF
  
  mov ebx, $0x7FFFFFFF
  sbb ebx, 0xFF
  
  mov ebx, $0xFFFFFFFF
  sbb ebx, 0xFF

  // SBBr32i32  
  mov ebx, $0
  sbb ebx, 0x7FFFFFFF
  
  mov ebx, $1
  sbb ebx, 0x7FFFFFFF
  
  mov ebx, $0x7F
  sbb ebx, 0x7FFFFFFF
  
  mov ebx, $0xFF
  sbb ebx, 0x7FFFFFFF
  
  mov ebx, $0x7FFF
  sbb ebx, 0x7FFFFFFF
  
  mov ebx, $0xFFFF
  sbb ebx, 0x7FFFFFFF
  
  mov ebx, $0x7FFFFFFF
  sbb ebx, 0x7FFFFFFF
  
  mov ebx, $0xFFFFFFFF
  sbb ebx, 0x7FFFFFFF

  // SBBr32r32  
  sbb $0, $0
  
  sbb $1, $0
  
  sbb $0xFFFFFFFF, $1
  
  sbb $0xFFFFFFFF, $0xFFFFFFFF
  
  sbb $0x7FFFFFFF, $1
  
  sbb $0, $0x10
  
  sbb $0x7F, $0x10

  // SBBr64u8_64  
  sbb $0, 0x7F
  
  sbb $1, 0x7F
  
  sbb $0x7F, 0x7F
  
  sbb $0xFF, 0x7F
  
  sbb $0x7FFF, 0x7F
  
  sbb $0xFFFF, 0x7F
  
  sbb $0x7FFFFFFF, 0x7F
  
  sbb $0xFFFFFFFF, 0x7F
  
  sbb $0x7FFFFFFFFFFFFFFF, 0x7F
  
  sbb $0xFFFFFFFFFFFFFFFF, 0x7F

  // SBBr64s8_64  
  sbb $0, 0xFF /* Sign-extended */
  
  sbb $1, 0xFF /* Sign-extended */
  
  sbb $0x7F, 0xFF /* Sign-extended */
  
  sbb $0xFF, 0xFF /* Sign-extended */
  
  sbb $0x7FFF, 0xFF /* Sign-extended */
  
  sbb $0xFFFF, 0xFF /* Sign-extended */
  
  sbb $0x7FFFFFFF, 0xFF /* Sign-extended */
  
  sbb $0xFFFFFFFF, 0xFF /* Sign-extended */
  
  sbb $0x7FFFFFFFFFFFFFFF, 0xFF /* Sign-extended */
  
  sbb $0xFFFFFFFFFFFFFFFF, 0xFF /* Sign-extended */

  // SBBr64u32_64  
  sbb $0, 0x7FFFFFFF
  
  sbb $1, 0x7FFFFFFF
  
  sbb $0x7F, 0x7FFFFFFF
  
  sbb $0xFF, 0x7FFFFFFF
  
  sbb $0x7FFF, 0x7FFFFFFF
  
  sbb $0xFFFF, 0x7FFFFFFF
  
  sbb $0x7FFFFFFF, 0x7FFFFFFF
  
  sbb $0xFFFFFFFF, 0x7FFFFFFF
  
  sbb $0x7FFFFFFFFFFFFFFF, 0x7FFFFFFF
  
  sbb $0xFFFFFFFFFFFFFFFF, 0x7FFFFFFF

  // SBBr64s32_64  
  .byte 0x48;  /* REX.W */
  sbb $0, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  sbb $1, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  sbb $0x7F, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  sbb $0xFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  sbb $0x7FFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  sbb $0xFFFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  sbb $0x7FFFFFFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  sbb $0xFFFFFFFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  sbb $0x7FFFFFFFFFFFFFFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  sbb $0xFFFFFFFFFFFFFFFF, 0xFFFFFFFF /* Sign-extended */

  // SBBr64r64_64  
  sbb $0, $0
  
  sbb $1, $0
  
  sbb $0xFFFFFFFF, $1
  
  sbb $0xFFFFFFFF, $0xFFFFFFFF
  
  sbb $0x7FFFFFFF, $1
  
  sbb $0, $0x10
  
  sbb $0x7F, $0x10
  
  sbb $0x7FFFFFFFFFFFFFFF, $1
  
  sbb $0x7FFFFFFFFFFFFFFF, $0x7FFFFFFFFFFFFFFF
  
  sbb $0x7FFFFFFFFFFFFFFF, $0xFFFFFFFFFFFFFFFF
  
  sbb $0xFFFFFFFFFFFFFFFF, $0xFFFFFFFFFFFFFFFF

  nop
