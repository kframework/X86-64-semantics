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

  // NOTr8  
  movl $0, %eax
  notb %al
  
  movl $1, %eax
  notb %al
  
  movl $0xFF, %eax
  notb %al
  
  movl $0x7F, %eax
  notb %al

  // NOTr8_64  
  movq $0, %r8
  notb %r8b
  
  movq $1, %r8
  notb %r8b
  
  movq $0xFF, %r8
  notb %r8b
  
  movq $0x7F, %r8
  notb %r8b

  // NOTr16  
  movw $0, %ax
  notw %ax
  
  movw $1, %ax
  notw %ax
  
  movw $0xFF, %ax
  notw %ax
  
  movw $0x7F, %ax
  notw %ax
  
  movw $0xFFFF, %ax
  notw %ax
  
  movw $0x7FFF, %ax
  notw %ax

  // NOTr32  
  movl $0, %eax
  notl %eax
  
  movl $1, %eax
  notl %eax
  
  movl $0xFF, %eax
  notl %eax
  
  movl $0x7F, %eax
  notl %eax
  
  movl $0xFFFF, %eax
  notl %eax
  
  movl $0x7FFF, %eax
  notl %eax
  
  movl $0xFFFFFFFF, %eax
  notl %eax
  
  movl $0x7FFFFFFF, %eax
  notl %eax

  // NOTr64_64  
  movq $0, %rax
  notq %rax
  
  movq $1, %rax
  notq %rax
  
  movq $0xFF, %rax
  notq %rax
  
  movq $0x7F, %rax
  notq %rax
  
  movq $0xFFFF, %rax
  notq %rax
  
  movq $0x7FFF, %rax
  notq %rax
  
  movq $0xFFFFFFFF, %rax
  notq %rax
  
  movq $0x7FFFFFFF, %rax
  notq %rax
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  notq %rax
  
  movq $0x7FFFFFFFFFFFFFFF, %rax
  notq %rax

  nop
