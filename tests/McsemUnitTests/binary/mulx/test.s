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

  // MULXedx  
  movl $0, %ecx
  movl $0, %ebx
  
  mulxl %ebx, %eax, %edx
  
  movl $1, %ecx
  movl $0x7FFF, %ebx
  
  mulxl %ebx, %eax, %edx
  
  movl $1, %ecx
  movl $0xFFFF, %ebx
  
  mulxl %ebx, %eax, %edx
  
  movl $0xFFFF, %ecx
  movl $0xFFFF, %ebx
  
  mulxl %ebx, %eax, %edx
  
  movl $0xFFFFFFFF, %ecx
  movl $0xFFFF, %ebx
  
  mulxl %ebx, %eax, %edx
  
  movl $0xFFFFFFFF, %ecx
  movl $0xFFFFFFFF, %ebx
  
  mulxl %ebx, %eax, %edx

  // MULXrdx_64  
  mov  $0, %rcx
  mov  $1, %rbx
  
  mulxq %rbx, %rax, %rdx
  
  mov  $0xFFFF, %rcx
  mov  $0xFFFF, %rbx
  
  mulxq %rbx, %rax, %rdx
  
  mov  $0xFFFFFFFF, %rcx
  mov  $0xFFFF, %rbx
  
  mulxq %rbx, %rax, %rdx
  
  mov  $0xFFFFFFFF, %rcx
  mov  $0xFFFFFFFF, %rbx
  
  mulxq %rbx, %rax, %rdx
  
  mov  $0xFFFFFFFF, %rcx
  mov  $0x7FFFFFFF, %rbx
  
  mulxq %rbx, %rax, %rdx
  
  mov  $0x7FFFFFFF, %rcx
  mov  $0xFFFFFFFF, %rbx
  
  mulxq %rbx, %rax, %rdx
  
  mov  $0xFFFFFFFFFFFFFFFF, %rcx
  mov  $0xFFFFFFFF, %rbx
  
  mulxq %rbx, %rax, %rdx
  
  mov  $0xFFFFFFFFFFFFFFFF, %rcx
  mov  $0xFFFFFFFFFFFFFFFF, %rbx
  
  mulxq %rbx, %rax, %rdx

  nop
