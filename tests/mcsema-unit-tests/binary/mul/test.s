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

  // MULal  
  movl $0, %eax
  movl $0, %ebx
  
  mulb %bl
  
  movl $0x7F, %eax
  movl $0x7F, %ebx
  
  mulb %bl
  
  movl $0xFF, %eax
  movl $0x7F, %ebx
  
  mulb %bl
  
  movl $0xFF, %eax
  movl $0xFF, %ebx
  
  mulb %bl

  // MULal_64  
  movq $0, %rax
  movq $0, %r8
  
  mulb %r8b
  
  movq $0x7F, %rax
  movq $0x7F, %r8
  
  mulb %r8b
  
  movq $0xFF, %rax
  movq $0x7F, %r8
  
  mulb %r8b
  
  movq $0xFF, %rax
  movq $0xFF, %r8
  
  mulb %r8b

  // MULax  
  movl $0, %eax
  movl $0, %ebx
  
  mulw %bx
  
  movl $1, %eax
  movl $0x7FFF, %ebx
  
  mulw %bx
  
  movl $1, %eax
  movl $0xFFFF, %ebx
  
  mulw %bx
  
  movl $0xFFFF, %eax
  movl $0xFFFF, %ebx
  
  mulw %bx

  // MULeax  
  movl $0, %eax
  movl $0, %ebx
  
  mull %ebx
  
  movl $1, %eax
  movl $0x7FFF, %ebx
  
  mull %ebx
  
  movl $1, %eax
  movl $0xFFFF, %ebx
  
  mull %ebx
  
  movl $0xFFFF, %eax
  movl $0xFFFF, %ebx
  
  mull %ebx
  
  movl $0xFFFFFFFF, %eax
  movl $0xFFFF, %ebx
  
  mull %ebx
  
  movl $0xFFFFFFFF, %eax
  movl $0xFFFFFFFF, %ebx
  
  mull %ebx

  // MULrax_64  
  movq $0, %rax
  movq $1, %rbx
  
  mulq %rbx
  
  movq $0xFFFF, %rax
  movq $0xFFFF, %rbx
  
  mulq %rbx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFF, %rbx
  
  mulq %rbx
  
  movq $0xFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  
  mulq %rbx
  
  movq $0xFFFFFFFF, %rax
  movq $0x7FFFFFFF, %rbx
  
  mulq %rbx
  
  movq $0x7FFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  
  mulq %rbx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFF, %rbx
  
  mulq %rbx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  
  mulq %rbx

  nop
