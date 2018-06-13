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

  // ADDal  
  mov eax, $0
  add al, 1
  
  mov eax, $1
  add al, 1
  
  mov eax, $0x7F
  add al, 1
  
  mov eax, $0xFF
  add al, 1

  // ADDax  
  mov eax, $0
  add ax, 1
  
  mov eax, $1
  add ax, 1
  
  mov eax, $0x7F
  add ax, 1
  
  mov eax, $0xFF
  add ax, 1
  
  mov eax, $0x7FFF
  add ax, 1
  
  mov eax, $0xFFFF
  add ax, 1

  // ADDeax  
  mov eax, $0
  add eax, 1
  
  mov eax, $1
  add eax, 1
  
  mov eax, $0x7F
  add eax, 1
  
  mov eax, $0xFF
  add eax, 1
  
  mov eax, $0x7FFF
  add eax, 1
  
  mov eax, $0xFFFF
  add eax, 1
  
  mov eax, $0x7FFFFFFF
  add eax, 1
  
  mov eax, $0xFFFFFFFF
  add eax, 1

  // ADDr8i8  
  mov ebx, $0
  add bl, 1
  
  mov ebx, $1
  add bl, 1
  
  mov ebx, $0x7F
  add bl, 1
  
  mov ebx, $0xFF
  add bl, 1

  // ADDr8u8_64  
  mov r8, $0
  add r8b, 0x7F
  
  mov r8, $1
  add r8b, 0x7F
  
  mov r8, $0x7F
  add r8b, 0x7F
  
  mov r8, $0xFF
  add r8b, 0x7F

  // ADDr8s8_64  
  mov r8, $0
  add r8b, 0xFF /* Sign-extended to 64-bits */
  
  mov r8, $1
  add r8b, 0xFF /* Sign-extended to 64-bits */
  
  mov r8, $0x7F
  add r8b, 0xFF /* Sign-extended to 64-bits */
  
  mov r8, $0xFF
  add r8b, 0xFF /* Sign-extended to 64-bits */

  // ADDr8r8  
  mov ebx, $0
  mov eax, $0
  add bl, al
  
  mov ebx, $1
  mov eax, $0
  add bl, al
  
  mov ebx, $0xFF
  mov eax, $1
  add bl, al
  
  mov ebx, $0x7F
  mov eax, $1
  add bl, al
  
  mov ebx, $0x7F
  mov eax, $0xFF
  add bl, al
  
  mov ebx, $0xFF
  mov eax, $0xFF
  add bl, al

  // ADDr8r8_64  
  add $0, $0
  
  add $1, $0
  
  add $0xFF, $1
  
  add $0x7F, $1
  
  add $0x7F, $0xFF
  
  add $0xFF, $0xFF

  // ADDr16u8  
  add $0, 0x7F
  
  add $1, 0x7F
  
  add $0x7F, 0x7F
  
  add $0xFF, 0x7F
  
  add $0x7FFF, 0x7F
  
  add $0xFFFF, 0x7F

  // ADDr16s8  
  add $0, 0xFF /* Sign-extended to 16-bits */
  
  add $1, 0xFF /* Sign-extended to 16-bits */
  
  add $0x7F, 0xFF /* Sign-extended to 16-bits */
  
  add $0xFF, 0xFF /* Sign-extended to 16-bits */
  
  add $0x7FFF, 0xFF /* Sign-extended to 16-bits */
  
  add $0xFFFF, 0xFF /* Sign-extended to 16-bits */

  // ADDr16i16  
  add $0, 0xFFFF
  
  add $1, 0xFFFF
  
  add $0x7F, 0xFFFF
  
  add $0xFF, 0xFFFF
  
  add $0x7FFF, 0xFFFF
  
  add $0xFFFF, 0xFFFF

  // ADDr16r16  
  add $0, $0
  
  add $1, $0
  
  add $0xFF, $1
  
  add $0x7F, $1
  
  add $0x7F, $0xFF
  
  add $0xFF, $0xFF
  
  add $0x7FFF, $1
  
  add $0x7FFF, $0xFFFF
  
  add $0xFFFF, $0xFFFF

  // ADDr32u8  
  add $0, 0x7F
  
  add $1, 0x7F
  
  add $0x7F, 0x7F
  
  add $0xFF, 0x7F
  
  add $0x7FFF, 0x7F
  
  add $0xFFFF, 0x7F
  
  add $0x7FFFFFFF, 0x7F
  
  add $0xFFFFFFFF, 0x7F

  // ADDr32s8  
  add $0, 0xFF
  
  add $1, 0xFF
  
  add $0x7F, 0xFF
  
  add $0xFF, 0xFF
  
  add $0x7FFF, 0xFF
  
  add $0xFFFF, 0xFF
  
  add $0x7FFFFFFF, 0xFF
  
  add $0xFFFFFFFF, 0xFF

  // ADDr32i32  
  add $0, 0x7FFFFFFF
  
  add $1, 0x7FFFFFFF
  
  add $0x7F, 0x7FFFFFFF
  
  add $0xFF, 0x7FFFFFFF
  
  add $0x7FFF, 0x7FFFFFFF
  
  add $0xFFFF, 0x7FFFFFFF
  
  add $0x7FFFFFFF, 0x7FFFFFFF
  
  add $0xFFFFFFFF, 0x7FFFFFFF

  // ADDr32r32  
  add $0, $0
  
  add $1, $0
  
  add $0xFFFFFFFF, $1
  
  add $0xFFFFFFFF, $0xFFFFFFFF
  
  add $0x7FFFFFFF, $1
  
  add $0, $0x10
  
  add $0x7F, $0x10

  // ADDr64u8_64  
  add $0, 0x7F
  
  add $1, 0x7F
  
  add $0x7F, 0x7F
  
  add $0xFF, 0x7F
  
  add $0x7FFF, 0x7F
  
  add $0xFFFF, 0x7F
  
  add $0x7FFFFFFF, 0x7F
  
  add $0xFFFFFFFF, 0x7F
  
  add $0x7FFFFFFFFFFFFFFF, 0x7F
  
  add $0xFFFFFFFFFFFFFFFF, 0x7F

  // ADDr64s8_64  
  add $0, 0xFF /* Sign-extended */
  
  add $1, 0xFF /* Sign-extended */
  
  add $0x7F, 0xFF /* Sign-extended */
  
  add $0xFF, 0xFF /* Sign-extended */
  
  add $0x7FFF, 0xFF /* Sign-extended */
  
  add $0xFFFF, 0xFF /* Sign-extended */
  
  add $0x7FFFFFFF, 0xFF /* Sign-extended */
  
  add $0xFFFFFFFF, 0xFF /* Sign-extended */
  
  add $0x7FFFFFFFFFFFFFFF, 0xFF /* Sign-extended */
  
  add $0xFFFFFFFFFFFFFFFF, 0xFF /* Sign-extended */

  // ADDr64u32_64  
  add $0, 0x7FFFFFFF
  
  add $1, 0x7FFFFFFF
  
  add $0x7F, 0x7FFFFFFF
  
  add $0xFF, 0x7FFFFFFF
  
  add $0x7FFF, 0x7FFFFFFF
  
  add $0xFFFF, 0x7FFFFFFF
  
  add $0x7FFFFFFF, 0x7FFFFFFF
  
  add $0xFFFFFFFF, 0x7FFFFFFF
  
  add $0x7FFFFFFFFFFFFFFF, 0x7FFFFFFF
  
  add $0xFFFFFFFFFFFFFFFF, 0x7FFFFFFF

  // ADDr64s32_64  
  .byte 0x48;  /* REX.W */
  add $0, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  add $1, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  add $0x7F, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  add $0xFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  add $0x7FFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  add $0xFFFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  add $0x7FFFFFFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  add $0xFFFFFFFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  add $0x7FFFFFFFFFFFFFFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  add $0xFFFFFFFFFFFFFFFF, 0xFFFFFFFF /* Sign-extended */

  // ADDr64r64_64  
  add $0, $0
  
  add $1, $0
  
  add $0xFFFFFFFF, $1
  
  add $0xFFFFFFFF, $0xFFFFFFFF
  
  add $0x7FFFFFFF, $1
  
  add $0, $0x10
  
  add $0x7F, $0x10
  
  add $0x7FFFFFFFFFFFFFFF, $1
  
  add $0x7FFFFFFFFFFFFFFF, $0x7FFFFFFFFFFFFFFF
  
  add $0x7FFFFFFFFFFFFFFF, $0xFFFFFFFFFFFFFFFF
  
  add $0xFFFFFFFFFFFFFFFF, $0xFFFFFFFFFFFFFFFF

  nop
