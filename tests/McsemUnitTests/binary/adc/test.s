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

  // ADCal  
  mov eax, $0
  adc al, 1
  
  mov eax, $1
  adc al, 1
  
  mov eax, $0x7F
  adc al, 1
  
  mov eax, $0xFF
  adc al, 1

  // ADCax  
  mov eax, $0
  adc ax, 1
  
  mov eax, $1
  adc ax, 1
  
  mov eax, $0x7F
  adc ax, 1
  
  mov eax, $0xFF
  adc ax, 1
  
  mov eax, $0x7FFF
  adc ax, 1
  
  mov eax, $0xFFFF
  adc ax, 1

  // ADCeax  
  mov eax, $0
  adc eax, 1
  
  mov eax, $1
  adc eax, 1
  
  mov eax, $0x7F
  adc eax, 1
  
  mov eax, $0xFF
  adc eax, 1
  
  mov eax, $0x7FFF
  adc eax, 1
  
  mov eax, $0xFFFF
  adc eax, 1
  
  mov eax, $0x7FFFFFFF
  adc eax, 1
  
  mov eax, $0xFFFFFFFF
  adc eax, 1

  // ADCr8i8  
  mov ebx, $0
  adc bl, 1
  
  mov ebx, $1
  adc bl, 1
  
  mov ebx, $0x7F
  adc bl, 1
  
  mov ebx, $0xFF
  adc bl, 1

  // ADCr8u8_64  
  mov r8, $0
  adc r8b, 0x7F
  
  mov r8, $1
  adc r8b, 0x7F
  
  mov r8, $0x7F
  adc r8b, 0x7F
  
  mov r8, $0xFF
  adc r8b, 0x7F

  // ADCr8s8_64  
  mov r8, $0
  adc r8b, 0xFF /* Sign-extended to 64-bits */
  
  mov r8, $1
  adc r8b, 0xFF /* Sign-extended to 64-bits */
  
  mov r8, $0x7F
  adc r8b, 0xFF /* Sign-extended to 64-bits */
  
  mov r8, $0xFF
  adc r8b, 0xFF /* Sign-extended to 64-bits */

  // ADCr8r8  
  mov ebx, $0
  mov eax, $0
  adc bl, al
  
  mov ebx, $1
  mov eax, $0
  adc bl, al
  
  mov ebx, $0xFF
  mov eax, $1
  adc bl, al
  
  mov ebx, $0x7F
  mov eax, $1
  adc bl, al
  
  mov ebx, $0x7F
  mov eax, $0xFF
  adc bl, al
  
  mov ebx, $0xFF
  mov eax, $0xFF
  adc bl, al

  // ADCr8r8_64  
  adc $0, $0
  
  adc $1, $0
  
  adc $0xFF, $1
  
  adc $0x7F, $1
  
  adc $0x7F, $0xFF
  
  adc $0xFF, $0xFF

  // ADCr16u8  
  adc $0, 0x7F
  
  adc $1, 0x7F
  
  adc $0x7F, 0x7F
  
  adc $0xFF, 0x7F
  
  adc $0x7FFF, 0x7F
  
  adc $0xFFFF, 0x7F

  // ADCr16s8  
  adc $0, 0xFF /* Sign-extended to 16-bits */
  
  adc $1, 0xFF /* Sign-extended to 16-bits */
  
  adc $0x7F, 0xFF /* Sign-extended to 16-bits */
  
  adc $0xFF, 0xFF /* Sign-extended to 16-bits */
  
  adc $0x7FFF, 0xFF /* Sign-extended to 16-bits */
  
  adc $0xFFFF, 0xFF /* Sign-extended to 16-bits */

  // ADCr16i16  
  adc $0, 0xFFFF
  
  adc $1, 0xFFFF
  
  adc $0x7F, 0xFFFF
  
  adc $0xFF, 0xFFFF
  
  adc $0x7FFF, 0xFFFF
  
  adc $0xFFFF, 0xFFFF

  // ADCr16r16  
  adc $0, $0
  
  adc $1, $0
  
  adc $0xFF, $1
  
  adc $0x7F, $1
  
  adc $0x7F, $0xFF
  
  adc $0xFF, $0xFF
  
  adc $0x7FFF, $1
  
  adc $0x7FFF, $0xFFFF
  
  adc $0xFFFF, $0xFFFF

  // ADCr32u8  
  adc $0, 0x7F
  
  adc $1, 0x7F
  
  adc $0x7F, 0x7F
  
  adc $0xFF, 0x7F
  
  adc $0x7FFF, 0x7F
  
  adc $0xFFFF, 0x7F
  
  adc $0x7FFFFFFF, 0x7F
  
  adc $0xFFFFFFFF, 0x7F

  // ADCr32s8  
  adc $0, 0xFF
  
  adc $1, 0xFF
  
  adc $0x7F, 0xFF
  
  adc $0xFF, 0xFF
  
  adc $0x7FFF, 0xFF
  
  adc $0xFFFF, 0xFF
  
  adc $0x7FFFFFFF, 0xFF
  
  adc $0xFFFFFFFF, 0xFF

  // ADCr32i32  
  adc $0, 0x7FFFFFFF
  
  adc $1, 0x7FFFFFFF
  
  adc $0x7F, 0x7FFFFFFF
  
  adc $0xFF, 0x7FFFFFFF
  
  adc $0x7FFF, 0x7FFFFFFF
  
  adc $0xFFFF, 0x7FFFFFFF
  
  adc $0x7FFFFFFF, 0x7FFFFFFF
  
  adc $0xFFFFFFFF, 0x7FFFFFFF

  // ADCr32r32  
  adc $0, $0
  
  adc $1, $0
  
  adc $0xFFFFFFFF, $1
  
  adc $0xFFFFFFFF, $0xFFFFFFFF
  
  adc $0x7FFFFFFF, $1
  
  adc $0, $0x10
  
  adc $0x7F, $0x10

  // ADCr64u8_64  
  adc $0, 0x7F
  
  adc $1, 0x7F
  
  adc $0x7F, 0x7F
  
  adc $0xFF, 0x7F
  
  adc $0x7FFF, 0x7F
  
  adc $0xFFFF, 0x7F
  
  adc $0x7FFFFFFF, 0x7F
  
  adc $0xFFFFFFFF, 0x7F
  
  adc $0x7FFFFFFFFFFFFFFF, 0x7F
  
  adc $0xFFFFFFFFFFFFFFFF, 0x7F

  // ADCr64s8_64  
  adc $0, 0xFF /* Sign-extended */
  
  adc $1, 0xFF /* Sign-extended */
  
  adc $0x7F, 0xFF /* Sign-extended */
  
  adc $0xFF, 0xFF /* Sign-extended */
  
  adc $0x7FFF, 0xFF /* Sign-extended */
  
  adc $0xFFFF, 0xFF /* Sign-extended */
  
  adc $0x7FFFFFFF, 0xFF /* Sign-extended */
  
  adc $0xFFFFFFFF, 0xFF /* Sign-extended */
  
  adc $0x7FFFFFFFFFFFFFFF, 0xFF /* Sign-extended */
  
  adc $0xFFFFFFFFFFFFFFFF, 0xFF /* Sign-extended */

  // ADCr64u32_64  
  adc $0, 0x7FFFFFFF
  
  adc $1, 0x7FFFFFFF
  
  adc $0x7F, 0x7FFFFFFF
  
  adc $0xFF, 0x7FFFFFFF
  
  adc $0x7FFF, 0x7FFFFFFF
  
  adc $0xFFFF, 0x7FFFFFFF
  
  adc $0x7FFFFFFF, 0x7FFFFFFF
  
  adc $0xFFFFFFFF, 0x7FFFFFFF
  
  adc $0x7FFFFFFFFFFFFFFF, 0x7FFFFFFF
  
  adc $0xFFFFFFFFFFFFFFFF, 0x7FFFFFFF

  // ADCr64s32_64  
  .byte 0x48;  /* REX.W */
  adc $0, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  adc $1, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  adc $0x7F, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  adc $0xFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  adc $0x7FFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  adc $0xFFFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  adc $0x7FFFFFFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  adc $0xFFFFFFFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  adc $0x7FFFFFFFFFFFFFFF, 0xFFFFFFFF /* Sign-extended */
  
  .byte 0x48;  /* REX.W */
  adc $0xFFFFFFFFFFFFFFFF, 0xFFFFFFFF /* Sign-extended */

  // ADCr64r64_64  
  adc $0, $0
  
  adc $1, $0
  
  adc $0xFFFFFFFF, $1
  
  adc $0xFFFFFFFF, $0xFFFFFFFF
  
  adc $0x7FFFFFFF, $1
  
  adc $0, $0x10
  
  adc $0x7F, $0x10
  
  adc $0x7FFFFFFFFFFFFFFF, $1
  
  adc $0x7FFFFFFFFFFFFFFF, $0x7FFFFFFFFFFFFFFF
  
  adc $0x7FFFFFFFFFFFFFFF, $0xFFFFFFFFFFFFFFFF
  
  adc $0xFFFFFFFFFFFFFFFF, $0xFFFFFFFFFFFFFFFF

  nop
