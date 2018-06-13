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
  mov ecx, $0
  mov ebx, $0
  
  mulx edx, eax, ebx
  
  mov ecx, $1
  mov ebx, $0x7FFF
  
  mulx edx, eax, ebx
  
  mov ecx, $1
  mov ebx, $0xFFFF
  
  mulx edx, eax, ebx
  
  mov ecx, $0xFFFF
  mov ebx, $0xFFFF
  
  mulx edx, eax, ebx
  
  mov ecx, $0xFFFFFFFF
  mov ebx, $0xFFFF
  
  mulx edx, eax, ebx
  
  mov ecx, $0xFFFFFFFF
  mov ebx, $0xFFFFFFFF
  
  mulx edx, eax, ebx

  // MULXrdx_64  
  mov rcx, $0
  mov rbx, $1
  
  mulx rdx, rax, rbx
  
  mov rcx, $0xFFFF
  mov rbx, $0xFFFF
  
  mulx rdx, rax, rbx
  
  mov rcx, $0xFFFFFFFF
  mov rbx, $0xFFFF
  
  mulx rdx, rax, rbx
  
  mov rcx, $0xFFFFFFFF
  mov rbx, $0xFFFFFFFF
  
  mulx rdx, rax, rbx
  
  mov rcx, $0xFFFFFFFF
  mov rbx, $0x7FFFFFFF
  
  mulx rdx, rax, rbx
  
  mov rcx, $0x7FFFFFFF
  mov rbx, $0xFFFFFFFF
  
  mulx rdx, rax, rbx
  
  mov rcx, $0xFFFFFFFFFFFFFFFF
  mov rbx, $0xFFFFFFFF
  
  mulx rdx, rax, rbx
  
  mov rcx, $0xFFFFFFFFFFFFFFFF
  mov rbx, $0xFFFFFFFFFFFFFFFF
  
  mulx rdx, rax, rbx

  nop
