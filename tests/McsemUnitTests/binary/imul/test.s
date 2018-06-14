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
  movl $0, %eax
  movl $0, %ebx
  
  imulb %bl
  
  movl $0xFF, %eax
  movl $0xFF, %ebx
  
  imulb %bl

  // IMULax  
  movl $0, %eax
  movl $0, %ebx
  
  imulw %bx
  
  movl $1, %eax
  movl $0x7FFF, %ebx
  
  imulw %bx
  
  movl $1, %eax
  movl $0xFFFF, %ebx
  
  imulw %bx
  
  movl $0xFFFF, %eax
  movl $0xFFFF, %ebx
  
  imulw %bx

  // IMULeax  
  movl $0, %eax
  movl $0, %ebx
  
  imull %ebx
  
  movl $0xFFFF, %eax
  movl $0xFFFF, %ebx
  
  imull %ebx
  
  movl $0xFFFFFFFF, %eax
  movl $0xFFFF, %ebx
  
  imull %ebx
  
  movl $0xFFFFFFFF, %eax
  movl $0xFFFFFFFF, %ebx
  
  imull %ebx

  // IMULrax_64  
  movq $0, %rax
  movq $0, %rbx
  
  imulq %rbx
  
  movq $0xFFFF, %rax
  movq $0xFFFF, %rbx
  
  imulq %rbx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFF, %rbx
  
  imulq %rbx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  
  imulq %rbx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  
  imulq %rbx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  
  imulq %rbx

  // IMULr16r16  
  movw $0, %ax
  movw $0, %bx
  imulw %ax, %bx
  
  movw $1, %ax
  movw $0x7FFF, %bx
  imulw %ax, %bx
  
  movw $1, %ax
  movw $0xFFFF, %bx
  imulw %ax, %bx
  
  movw $0xFFFF, %ax
  movw $0xFFFF, %bx
  imulw %ax, %bx

  // IMULr32r32  
  movl $0, %eax
  movl $0, %ebx
  imul %eax, %ebx
  
  movl $0xFFFF, %eax
  movl $0xFFFF, %ebx
  imul %eax, %ebx
  
  movl $0xFFFFFFFF, %eax
  movl $0xFFFF, %ebx
  imul %eax, %ebx
  
  movl $0xFFFFFFFF, %eax
  movl $0xFFFFFFFF, %ebx
  imul %eax, %ebx

  // IMULr64r64_64  
  movq $0, %rax
  movq $1, %rbx
  imul %rax, %rbx
  
  movq $0xFFFF, %rax
  movq $0xFFFF, %rbx
  imul %rax, %rbx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFF, %rbx
  imul %rax, %rbx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  imul %rax, %rbx
  
  movq $0xFFFFFFFF, %rax
  movq $0x7FFFFFFF, %rbx
  imul %rax, %rbx
  
  movq $0x7FFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  imul %rax, %rbx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  imul %rax, %rbx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  imul %rax, %rbx

  // IMULr16r16i8  
  movw $0, %bx
  imulw $7, %bx, %ax
  
  movw $1, %bx
  imulw $7, %bx, %ax
  
  movw $2, %bx
  imulw $7, %bx, %ax
  
  movw $0x7FFF, %bx
  imulw $7, %bx, %ax
  
  movw $0xFFFF, %bx
  imulw $7, %bx, %ax

  // IMULr16r16i16  
  movw $0, %bx
  imulw $0x7FFF, %bx, %ax
  
  movw $1, %bx
  imulw $0x7FFF, %bx, %ax
  
  movw $2, %bx
  imulw $0x7FFF, %bx, %ax
  
  movw $0x7FFF, %bx
  imulw $0x7FFF, %bx, %ax
  
  movw $0xFFFF, %bx
  imulw $0x7FFF, %bx, %ax

  // IMULr32r32i8  
  movl $0, %ebx
  imull $7, %ebx, %eax
  
  movl $1, %ebx
  imull $7, %ebx, %eax
  
  movl $2, %ebx
  imull $7, %ebx, %eax
  
  movl $0x7FFF, %ebx
  imull $7, %ebx, %eax
  
  movl $0xFFFF, %ebx
  imull $7, %ebx, %eax
  
  movl $0x7FFFFFFF, %ebx
  imull $7, %ebx, %eax
  
  movl $0xFFFFFFFF, %ebx
  imull $7, %ebx, %eax

  // IMULr32r32s32  
  movl $0, %ebx
  imull $0x7FFF, %ebx, %eax
  
  movl $1, %ebx
  imull $0x7FFF, %ebx, %eax
  
  movl $2, %ebx
  imull $0x7FFF, %ebx, %eax
  
  movl $0x7FFF, %ebx
  imull $0x7FFF, %ebx, %eax
  
  movl $0xFFFF, %ebx
  imull $0x7FFF, %ebx, %eax
  
  movl $0x7FFFFFFF, %ebx
  imull $0x7FFF, %ebx, %eax
  
  movl $0xFFFFFFFF, %ebx
  imull $0x7FFF, %ebx, %eax

  // IMULr32r32u32  
  movl $0, %ebx
  imull $0x7FFFFFFF, %ebx, %eax
  
  movl $1, %ebx
  imull $0x7FFFFFFF, %ebx, %eax
  
  movl $2, %ebx
  imull $0x7FFFFFFF, %ebx, %eax
  
  movl $0x7FFF, %ebx
  imull $0x7FFFFFFF, %ebx, %eax
  
  movl $0xFFFF, %ebx
  imull $0x7FFFFFFF, %ebx, %eax
  
  movl $0x7FFFFFFF, %ebx
  imull $0x7FFFFFFF, %ebx, %eax
  
  movl $0xFFFFFFFF, %ebx
  imull $0x7FFFFFFF, %ebx, %eax

  // IMULr64r64i8_64  
  movq $0, %rbx
  imulq $0x7, %rbx, %rax
  
  movq $1, %rbx
  imulq $0x7, %rbx, %rax
  
  movq $2, %rbx
  imulq $0x7, %rbx, %rax
  
  movq $0x7FFF, %rbx
  imulq $0x7, %rbx, %rax
  
  movq $0xFFFF, %rbx
  imulq $0x7, %rbx, %rax
  
  movq $0x7FFFFFFF, %rbx
  imulq $0x7, %rbx, %rax
  
  movq $0xFFFFFFFF, %rbx
  imulq $0x7, %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  imulq $0x7, %rbx, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  imulq $0x7, %rbx, %rax

  // IMULr64r64s32_64  
  movq $0, %rbx
  imulq $0xFFFFFFF, %rbx, %rax
  
  movq $1, %rbx
  imulq $0xFFFFFFF, %rbx, %rax
  
  movq $2, %rbx
  imulq $0xFFFFFFF, %rbx, %rax
  
  movq $0x7FFF, %rbx
  imulq $0xFFFFFFF, %rbx, %rax
  
  movq $0xFFFF, %rbx
  imulq $0xFFFFFFF, %rbx, %rax
  
  movq $0x7FFFFFFF, %rbx
  imulq $0xFFFFFFF, %rbx, %rax
  
  movq $0xFFFFFFFF, %rbx
  imulq $0xFFFFFFF, %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  imulq $0xFFFFFFF, %rbx, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  imulq $0xFFFFFFF, %rbx, %rax

  // IMULr64r64u32_64  
  movq $0, %rbx
  imulq $0x7FFFFFFF, %rbx, %rax
  
  movq $1, %rbx
  imulq $0x7FFFFFFF, %rbx, %rax
  
  movq $2, %rbx
  imulq $0x7FFFFFFF, %rbx, %rax
  
  movq $0x7FFF, %rbx
  imulq $0x7FFFFFFF, %rbx, %rax
  
  movq $0xFFFF, %rbx
  imulq $0x7FFFFFFF, %rbx, %rax
  
  movq $0x7FFFFFFF, %rbx
  imulq $0x7FFFFFFF, %rbx, %rax
  
  movq $0xFFFFFFFF, %rbx
  imulq $0x7FFFFFFF, %rbx, %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rbx
  imulq $0x7FFFFFFF, %rbx, %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  imulq $0x7FFFFFFF, %rbx, %rax

  nop
