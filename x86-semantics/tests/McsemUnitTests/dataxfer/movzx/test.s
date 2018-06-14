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

  // MOVZXr16r8  
  movb $0x70, %al
  movw $0xFFFFFFFFFFFFFFFF, %bx
  movzbw %al, %bx
  
  
  movb $0x80, %al
  movw $0xFFFFFFFFFFFFFFFF, %bx
  movzbw %al, %bx
  

  // MOVZXr32r16  
  movw $0x7000, %ax
  movl $0xFFFFFFFFFFFFFFFF, %ebx
  movzwl %ax, %ebx
  
  movw $0x8000, %ax
  movl $0xFFFFFFFFFFFFFFFF, %ebx
  movzwl %ax, %ebx

  // MOVZXr32r8  
  movb $0x70, %al
  movl $0xFFFFFFFFFFFFFFFF, %ebx
  movzbl %al, %ebx
  
  movb $0x80, %al
  movl $0xFFFFFFFFFFFFFFFF, %ebx
  movzbl %al, %ebx

  // MOVZXr64r8  
  movb $0x70, %al
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  movzbq %al, %rbx
  
  movb $0x80, %al
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  movzbq %al, %rbx

  // MOVZXr64r16  
  movw $0x7000, %ax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  movzwq %ax, %rbx
  
  movw $0x8000, %ax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  movzwq %ax, %rbx


  nop
