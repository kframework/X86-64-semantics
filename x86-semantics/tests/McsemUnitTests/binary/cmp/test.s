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

  // CMPr8r8  
  mov ax, $0
  mov bx, $0
  cmp al, bl
  
  mov ax, $0
  mov bx, $1
  cmp al, bl
  
  mov ax, $1
  mov bx, $0
  cmp al, bl
  
  mov ax, $1
  mov bx, $1
  cmp al, bl
  
  mov ax, $0
  mov bx, $0xFF
  cmp al, bl
  
  mov ax, $0x10
  mov bx, $0
  cmp al, bl
  
  mov ax, $0xFF
  mov bx, $0x11
  cmp al, bl

  // CMPr16r16  
  cmp $0, $0
  
  cmp $0, $1
  
  cmp $1, $0
  
  cmp $1, $1
  
  cmp $0, $0xFFFF
  
  cmp $0x10, $0
  
  cmp $0xFF, $0x11

  // CMPr16i16  
  cmp $0, 0xFFFF
  
  cmp $1, 0xFFFF
  
  cmp $0x7FFF, 0xFFFF
  
  cmp $0xFFFF, 0xFFFF

  // CMPr32r32  
  cmp $0, $0
  
  cmp $0, $1
  
  cmp $1, $0
  
  cmp $1, $1
  
  cmp $0, $0xFFFFFFFF
  
  cmp $0x10, $0
  
  cmp $0xFF, $0x11

  // CMPr32i32  
  cmp $0, 0xFFFFFFFF
  
  cmp $1, 0xFFFFFFFF
  
  cmp $0x7FFFFFFF, 0xFFFFFFFF
  
  cmp $0xFFFFFFFF, 0xFFFFFFFF

  // CMPr64r64_64  
  cmp $0, $0
  
  cmp $0, $1
  
  cmp $1, $0
  
  cmp $1, $1
  
  cmp $0, $0xFFFFFFFFFFFFFFFF
  
  cmp $1, $0xFFFFFFFFFFFFFFFF
  
  cmp $0xFFFFFFFFFFFFFFFF, $1
  
  cmp $0xFFFFFFFFFFFFFFFF, $0x7FFFFFFFFFFFFFFF
  
  cmp $0x7FFFFFFFFFFFFFFF, $0xFFFFFFFFFFFFFFFF
  
  cmp $0xFFFFFFFFFFFFFFFF, $0xFFFFFFFFFFFFFFFF

  // CMPr64s32_64  
  .byte 0x48;  /* REX.W */
  cmp $0, 0xFFFFFFFF
  
  .byte 0x48;  /* REX.W */
  cmp $1, 0xFFFFFFFF
  
  .byte 0x48;  /* REX.W */
  cmp $0xFFFFFFFF, 0xFFFFFFFF
  
  .byte 0x48;  /* REX.W */
  cmp $0xFFFFFFFFFFFFFFFF, 0xFFFFFFFF
  
  .byte 0x48;  /* REX.W */
  cmp $0x7FFFFFFFFFFFFFFF, 0xFFFFFFFF

  // CMPr64u32_64  
  cmp $0, 0x7FFFFFFF
  
  cmp $1, 0x7FFFFFFF
  
  cmp $0xFFFFFFFF, 0x7FFFFFFF
  
  cmp $0xFFFFFFFFFFFFFFFF, 0x7FFFFFFF
  
  cmp $0x7FFFFFFFFFFFFFFF, 0x7FFFFFFF


  nop
