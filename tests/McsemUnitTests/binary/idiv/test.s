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

  // IDIVax  
  movl $0, %eax
  movl $0, %ebx
  
  idivb %bl
  
  movl $1, %eax
  movl $0, %ebx
  
  idivb %bl
  
  movl $0, %eax
  movl $1, %ebx
  
  idivb %bl
  
  movl $1, %eax
  movl $1, %ebx
  
  idivb %bl
  
  movl $1, %eax
  movl $2, %ebx
  
  idivb %bl
  
  movl $0xFFFF, %eax
  movl $1, %ebx
  
  idivb %bl
  
  movl $0xFFFF, %eax
  movl $2, %ebx
  
  idivb %bl
  
  movl $0xFFFF, %eax
  movl $0xFF, %ebx
  
  idivb %bl
  
  movl $0xFFFF, %eax
  movl $0xF7, %ebx
  
  idivb %bl
  
  movl $0x7FFF, %eax
  movl $1, %ebx
  
  idivb %bl
  
  movl $0x7FFF, %eax
  movl $2, %ebx
  
  idivb %bl
  
  movl $0x7FFF, %eax
  movl $0xFF, %ebx
  
  idivb %bl
  
  movl $0x7FFF, %eax
  movl $0xF7, %ebx
  
  idivb %bl

  // IDIVax_64  
  movq $0, %rax
  movq $0, %r8
  
  idivb %r8b
  
  movq $1, %rax
  movq $0, %r8
  
  idivb %r8b
  
  movq $0, %rax
  movq $1, %r8
  
  idivb %r8b
  
  movq $1, %rax
  movq $1, %r8
  
  idivb %r8b
  
  movq $1, %rax
  movq $2, %r8
  
  idivb %r8b
  
  movq $0xFFFF, %rax
  movq $1, %r8
  
  idivb %r8b
  
  movq $0xFFFF, %rax
  movq $2, %r8
  
  idivb %r8b
  
  movq $0xFFFF, %rax
  movq $0xFF, %r8
  
  idivb %r8b
  
  movq $0xFFFF, %rax
  movq $0xF7, %r8
  
  idivb %r8b
  
  movq $0x7FFF, %rax
  movq $1, %r8
  
  idivb %r8b
  
  movq $0x7FFF, %rax
  movq $2, %r8
  
  idivb %r8b
  
  movq $0x7FFF, %rax
  movq $0xFF, %r8
  
  idivb %r8b
  
  movq $0x7FFF, %rax
  movq $0xF7, %r8
  
  idivb %r8b

  // IDIVdxax  
  movl $0, %eax
  movl $0, %ebx
  movl $0, %edx
  
  idivw %bx
  
  movl $1, %eax
  movl $0, %ebx
  movl $0, %edx
  
  idivw %bx
  
  movl $0, %eax
  movl $1, %ebx
  movl $0, %edx
  
  idivw %bx
  
  movl $1, %eax
  movl $1, %ebx
  movl $0, %edx
  
  idivw %bx
  
  movl $1, %eax
  movl $2, %ebx
  movl $0, %edx
  
  idivw %bx
  
  movl $0xFFFF, %eax
  movl $1, %ebx
  movl $0, %edx
  
  idivw %bx
  
  movl $0xFFFF, %eax
  movl $2, %ebx
  movl $0, %edx
  
  idivw %bx
  
  movl $0xFFFF, %eax
  movl $0xFF, %ebx
  movl $0, %edx
  
  idivw %bx
  
  movl $0xFFFF, %eax
  movl $0xF7, %ebx
  movl $0, %edx
  
  idivw %bx
  
  movl $0xFFFF, %eax
  movl $1, %ebx
  movl $0xFFFF, %edx
  
  idivw %bx
  
  movl $0xFFFF, %eax
  movl $2, %ebx
  movl $0xFFFF, %edx
  
  idivw %bx
  
  movl $0xFFFF, %eax
  movl $0xFF, %ebx
  movl $0xFFFF, %edx
  
  idivw %bx
  
  movl $0xFFFF, %eax
  movl $0xF7, %ebx
  movl $0xFFFF, %edx
  
  idivw %bx
  
  movl $0xFFFF, %eax
  movl $1, %ebx
  movl $0x7FFF, %edx
  
  idivw %bx
  
  movl $0xFFFF, %eax
  movl $2, %ebx
  movl $0x7FFF, %edx
  
  idivw %bx
  
  movl $0xFFFF, %eax
  movl $0xFF, %ebx
  movl $0x7FFF, %edx
  
  idivw %bx
  
  movl $0xFFFF, %eax
  movl $0xF7, %ebx
  movl $0x7FFF, %edx
  
  idivw %bx

  // IDIVedxeax  
  movl $0xFFFF, %eax
  movl $0xFF, %ebx
  movl $0, %edx
  
  idivl %ebx
  
  movl $0xFFFF, %eax
  movl $0xF7, %ebx
  movl $0, %edx
  
  idivl %ebx
  
  movl $0xFFFF, %eax
  movl $0xFF, %ebx
  movl $0xFFFF, %edx
  
  idivl %ebx
  
  movl $0xFFFF, %eax
  movl $0xF7, %ebx
  movl $0xFFFF, %edx
  
  idivl %ebx
  
  movl $0xFFFF, %eax
  movl $0xFF, %ebx
  movl $0x7FFF, %edx
  
  idivl %ebx
  
  movl $0xFFFF, %eax
  movl $0xF7, %ebx
  movl $0x7FFF, %edx
  
  idivl %ebx
  
  movl $0xFFFFFFFF, %eax
  movl $0xFF, %ebx
  movl $0xFFFFFFFF, %edx
  
  idivl %ebx
  
  movl $0xFFFFFFFF, %eax
  movl $0xF7, %ebx
  movl $0xFFFFFFFF, %edx
  
  idivl %ebx
  
  movl $0xFFFFFFFF, %eax
  movl $0xFF, %ebx
  movl $0x7FFFFFFF, %edx
  
  idivl %ebx
  
  movl $0xFFFFFFFF, %eax
  movl $0xF7, %ebx
  movl $0x7FFFFFFF, %edx
  
  idivl %ebx

  // IDIVrdxrax_64  
  movl $0xFFFF, %eax
  movl $0xFF, %ebx
  movl $0, %edx
  
  idivl %ebx
  
  movl $0xFFFF, %eax
  movl $0xF7, %ebx
  movl $0, %edx
  
  idivl %ebx
  
  movl $0xFFFF, %eax
  movl $0xFF, %ebx
  movl $0xFFFF, %edx
  
  idivl %ebx
  
  movl $0xFFFF, %eax
  movl $0xF7, %ebx
  movl $0xFFFF, %edx
  
  idivl %ebx
  
  movl $0xFFFF, %eax
  movl $0xFF, %ebx
  movl $0x7FFF, %edx
  
  idivl %ebx
  
  movl $0xFFFF, %eax
  movl $0xF7, %ebx
  movl $0x7FFF, %edx
  
  idivl %ebx
  
  movl $0xFFFFFFFF, %eax
  movl $0xFF, %ebx
  movl $0xFFFFFFFF, %edx
  
  idivl %ebx
  
  movl $0xFFFFFFFF, %eax
  movl $0xF7, %ebx
  movl $0xFFFFFFFF, %edx
  
  idivl %ebx
  
  movl $0xFFFFFFFF, %eax
  movl $0xFF, %ebx
  movl $0x7FFFFFFF, %edx
  
  idivl %ebx
  
  movl $0xFFFFFFFF, %eax
  movl $0xF7, %ebx
  movl $0x7FFFFFFF, %edx
  
  idivl %ebx
  
  movl $0xFFFFFFFFFFFFFFFF, %eax
  movl $0xFF, %ebx
  movl $0xFFFFFFFFFFFFFFFF, %edx
  
  idivl %ebx
  
  movl $0xFFFFFFFFFFFFFFFF, %eax
  movl $0xF7, %ebx
  movl $0xFFFFFFFFFFFFFFFF, %edx
  
  idivl %ebx
  
  movl $0xFFFFFFFFFFFFFFFF, %eax
  movl $0xFF, %ebx
  movl $0x7FFFFFFFFFFFFFFF, %edx
  
  idivl %ebx
  
  movl $0xFFFFFFFFFFFFFFFF, %eax
  movl $0xF7, %ebx
  movl $0x7FFFFFFFFFFFFFFF, %edx
  
  idivl %ebx

  nop
