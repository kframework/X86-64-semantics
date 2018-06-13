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

/*
 * Note: older versions of the Intel manual have SF undefined for IMUL.
 */

  // IMULal  
  mov eax, $0
  mov ebx, $0
  
  imul bl
  
  mov eax, $0xFF
  mov ebx, $0xFF
  
  imul bl

  // IMULax  
  mov eax, $0
  mov ebx, $0
  
  imul bx
  
  mov eax, $1
  mov ebx, $0x7FFF
  
  imul bx
  
  mov eax, $1
  mov ebx, $0xFFFF
  
  imul bx
  
  mov eax, $0xFFFF
  mov ebx, $0xFFFF
  
  imul bx

  // IMULeax  
  mov eax, $0
  mov ebx, $0
  
  imul ebx
  
  mov eax, $0xFFFF
  mov ebx, $0xFFFF
  
  imul ebx
  
  mov eax, $0xFFFFFFFF
  mov ebx, $0xFFFF
  
  imul ebx
  
  mov eax, $0xFFFFFFFF
  mov ebx, $0xFFFFFFFF
  
  imul ebx

  // IMULrax_64  
  mov rax, $0
  mov rbx, $0
  
  imul rbx
  
  mov rax, $0xFFFF
  mov rbx, $0xFFFF
  
  imul rbx
  
  mov rax, $0xFFFFFFFF
  mov rbx, $0xFFFF
  
  imul rbx
  
  mov rax, $0xFFFFFFFF
  mov rbx, $0xFFFFFFFF
  
  imul rbx
  
  mov rax, $0xFFFFFFFFFFFFFFFF
  mov rbx, $0xFFFFFFFF
  
  imul rbx
  
  mov rax, $0xFFFFFFFFFFFFFFFF
  mov rbx, $0xFFFFFFFFFFFFFFFF
  
  imul rbx

  // IMULr16r16  
  imul $0, $0
  
  imul $1, $0x7FFF
  
  imul $1, $0xFFFF
  
  imul $0xFFFF, $0xFFFF

  // IMULr32r32  
  imul $0, $0
  
  imul $0xFFFF, $0xFFFF
  
  imul $0xFFFFFFFF, $0xFFFF
  
  imul $0xFFFFFFFF, $0xFFFFFFFF

  // IMULr64r64_64  
  imul $0, $1
  
  imul $0xFFFF, $0xFFFF
  
  imul $0xFFFFFFFF, $0xFFFF
  
  imul $0xFFFFFFFF, $0xFFFFFFFF
  
  imul $0xFFFFFFFF, $0x7FFFFFFF
  
  imul $0x7FFFFFFF, $0xFFFFFFFF
  
  imul $0xFFFFFFFFFFFFFFFF, $0xFFFFFFFF
  
  imul $0xFFFFFFFFFFFFFFFF, $0xFFFFFFFFFFFFFFFF

  // IMULr16r16i8  
  imul ax, $0, 7
  
  imul ax, $1, 7
  
  imul ax, $2, 7
  
  imul ax, $0x7FFF, 7
  
  imul ax, $0xFFFF), 7

  // IMULr16r16i16  
  imul ax, $0, 0x7FFF
  
  imul ax, $1, 0x7FFF
  
  imul ax, $2, 0x7FFF
  
  imul ax, $0x7FFF, 0x7FFF
  
  imul ax, $0xFFFF, 0x7FFF

  // IMULr32r32i8  
  imul eax, $0, 7
  
  imul eax, $1, 7
  
  imul eax, $2, 7
  
  imul eax, $0x7FFF, 7
  
  imul eax, $0xFFFF, 7
  
  imul eax, $0x7FFFFFFF, 7
  
  imul eax, $0xFFFFFFFF, 7

  // IMULr32r32s32  
  imul eax, $0, 0xFFFFFFF
  
  imul eax, $1, 0xFFFFFFF
  
  imul eax, $2, 0xFFFFFFF
  
  imul eax, $0x7FFF, 0xFFFFFFF
  
  imul eax, $0xFFFF, 0xFFFFFFF
  
  imul eax, $0x7FFFFFFF, 0xFFFFFFF
  
  imul eax, $0xFFFFFFFF, 0xFFFFFFF

  // IMULr32r32u32  
  imul eax, $0, 0x7FFFFFFF
  
  imul eax, $1, 0x7FFFFFFF
  
  imul eax, $2, 0x7FFFFFFF
  
  imul eax, $0x7FFF, 0x7FFFFFFF
  
  imul eax, $0xFFFF, 0x7FFFFFFF
  
  imul eax, $0x7FFFFFFF, 0x7FFFFFFF
  
  imul eax, $0xFFFFFFFF, 0x7FFFFFFF

  // IMULr64r64i8_64  
  imul rax, $0, 7
  
  imul rax, $1, 7
  
  imul rax, $2, 7
  
  imul rax, $0x7FFF, 7
  
  imul rax, $0xFFFF, 7
  
  imul rax, $0x7FFFFFFF, 7
  
  imul rax, $0xFFFFFFFF, 7
  
  imul rax, $0x7FFFFFFFFFFFFFFF, 7
  
  imul rax, $0xFFFFFFFFFFFFFFFF), 7

  // IMULr64r64s32_64  
  imul rax, $0, 0xFFFFFFF
  
  imul rax, $1, 0xFFFFFFF
  
  imul rax, $2, 0xFFFFFFF
  
  imul rax, $0x7FFF, 0xFFFFFFF
  
  imul rax, $0xFFFF, 0xFFFFFFF
  
  imul rax, $0x7FFFFFFF, 0xFFFFFFF
  
  imul rax, $0xFFFFFFFF, 0xFFFFFFF
  
  imul rax, $0x7FFFFFFFFFFFFFFF, 0xFFFFFFF
  
  imul rax, $0xFFFFFFFFFFFFFFFF, 0xFFFFFFF

  // IMULr64r64u32_64  
  imul rax, $0, 0x7FFFFFFF
  
  imul rax, $1, 0x7FFFFFFF
  
  imul rax, $2, 0x7FFFFFFF
  
  imul rax, $0x7FFF, 0x7FFFFFFF
  
  imul rax, $0xFFFF, 0x7FFFFFFF
  
  imul rax, $0x7FFFFFFF, 0x7FFFFFFF
  
  imul rax, $0xFFFFFFFF, 0x7FFFFFFF
  
  imul rax, $0x7FFFFFFFFFFFFFFF, 0x7FFFFFFF
  
  imul rax, $0xFFFFFFFFFFFFFFFF, 0x7FFFFFFF

  nop
