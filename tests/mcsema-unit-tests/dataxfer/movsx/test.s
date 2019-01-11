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

  // MOVSXr16r8  
  movb $0x70, %al
  movw $0xFFFFFFFFFFFFFFFF, %bx
  movsbw %al, %bx
  
  
  movb $0x80, %al
  movw $0xFFFFFFFFFFFFFFFF, %bx
  movsbw %al, %bx
  

  // MOVSXr32r16  
  movw $0x7000, %ax
  movl $0xFFFFFFFFFFFFFFFF, %ebx
  movswl %ax, %ebx
  
  movw $0x8000, %ax
  movl $0xFFFFFFFFFFFFFFFF, %ebx
  movswl %ax, %ebx

  // MOVSXr32r8  
  movb $0x70, %al
  movl $0xFFFFFFFFFFFFFFFF, %ebx
  movsbl %al, %ebx
  
  movb $0x80, %al
  movl $0xFFFFFFFFFFFFFFFF, %ebx
  movsbl %al, %ebx

  // MOVSXr64r8  
  movb $0x70, %al
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  movsbq %al, %rbx
  
  movb $0x80, %al
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  movsbq %al, %rbx

  // MOVSXr64r16  
  movw $0x7000, %ax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  movswq %ax, %rbx
  
  movw $0x8000, %ax
  movq $0xFFFFFFFFFFFFFFFF, %rbx
  movswq %ax, %rbx


  nop
