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

  // XCHGr8r8  
  movl $0, %eax
  xchgb %al, %ah
  
  movl $0x4141, %eax
  xchgb %al, %ah
  
  movl $0xFFEE, %eax
  xchgb %al, %ah
  
  movl $0xEEFF, %eax
  xchgb %al, %ah

  // XCHGr16r16  
  movw $0, %ax
  movw $0, %bx
  xchgw %bx, %ax
  
  movw $0x4141, %ax
  movw $0x5151, %bx
  xchgw %bx, %ax
  
  movw $0xFFEE, %ax
  movw $0xEEFF, %bx
  xchgw %bx, %ax
  
  movw $0xEEFF, %ax
  movw $0xFFEE, %bx
  xchgw %bx, %ax

  // XCHGr32r32  
  movl $0, %eax
  movl $0, %ebx
  xchgl %ebx, %eax
  
  movl $0x41414141, %eax
  movl $0x51515151, %ebx
  xchgl %ebx, %eax
  
  movl $0xFFEEFFEE, %eax
  movl $0xEEFFEEFF, %ebx
  xchgl %ebx, %eax
  
  movl $0xEEFFEEFF, %eax
  movl $0xFFEEFFEE, %ebx
  xchgl %ebx, %eax

/* Want to test that the high-order bits of ARG1_64 and ARG2_64 get cleared */
  // XCHGr32r32_64  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xEEEEEEEEEEEEEEEE, %rbx
  xchgl %ebx, %eax

  // XCHGr64r64_64  
  movq $0, %rax
  movq $1, %rbx
  xchgq %rax, %rbx
  
  movq $1, %rax
  movq $0, %rbx
  xchgq %rax, %rbx
  
  movq $0xFFFFFFFFFFFFFFFF, %rax
  movq $0xEEEEEEEEEEEEEEEE, %rbx
  xchgq %rax, %rbx

  nop
